#!/usr/bin/env python3
"""Read-only class/resource collision inventory. NOT a merge or binary compatibility verdict."""
import argparse
import collections
import json
import pathlib
import re
import subprocess
import struct
import xml.etree.ElementTree as ET
import zipfile

CLASS = re.compile(r"^\s*\.class\s+(?:\S+\s+)*(L[^;\s]+;)\s*$")
RESOURCE = re.compile(r"^\s*resource\s+(0x[0-9a-fA-F]+)\s+(?:[^\s:]+:)?([\w-]+/[\w.]+)(?=\s|$)", re.M)

def original_classes(root):
    out = collections.defaultdict(list)
    roots = sorted(p for p in root.iterdir() if p.is_dir() and re.fullmatch(r"smali(?:_classes\d+)?", p.name))
    if not roots:
        raise ValueError("no smali roots")
    for p in roots:
        for path in p.rglob("*.smali"):
            descriptor = None
            with path.open(encoding="utf-8", errors="strict") as f:
                for line in f:
                    if line.lstrip().startswith(".class "):
                        m = CLASS.match(line.rstrip("\n"))
                        if m:
                            descriptor = m.group(1)
                        break
            if not descriptor:
                raise ValueError("missing class declaration: " + str(path))
            out[descriptor].append(str(path.relative_to(root)))
    if not out:
        raise ValueError("no original classes")
    return out, [p.name for p in roots]

def command(args):
    return subprocess.run(args, check=True, capture_output=True, text=True).stdout

def dex_definitions(data, wanted=None):
    # Read the class_defs table rather than decoding the huge, mixed-encoding
    # dexdump listing. DEX string_data_item uses modified UTF-8, not UTF-8.
    def u32(offset):
        if offset < 0 or offset + 4 > len(data):
            raise ValueError("DEX offset outside file")
        return struct.unpack_from("<I", data, offset)[0]
    if len(data) < 112 or data[:4] != b"dex\n" or data[7] != 0:
        raise ValueError("invalid DEX magic")
    if u32(32) != len(data) or u32(36) != 112 or u32(40) != 0x12345678:
        raise ValueError("unsupported DEX header")
    def table(offset, width):
        count, pos = u32(offset), u32(offset+4)
        if count and (pos < 112 or pos + count*width > len(data)):
            raise ValueError("DEX table outside file")
        return count, pos
    string_count, string_off = table(56,4)
    type_count, type_off = table(64,4)
    class_count, class_off = table(96,32)
    if not class_count:
        raise ValueError("empty class definitions")
    def string(index):
        if index >= string_count:
            raise ValueError("string index outside table")
        pos = u32(string_off + index*4)
        value, shift = 0,0
        for _ in range(5):
            if pos >= len(data):
                raise ValueError("truncated string length")
            byte=data[pos];pos+=1
            value |= (byte & 127) << shift
            if byte < 128:
                break
            shift += 7
        else:
            raise ValueError("invalid uleb128")
        stop=data.find(b"\x00",pos)
        if stop < 0:
            raise ValueError("unterminated DEX string")
        raw=data[pos:stop].replace(b"\xc0\x80",b"\x00")
        units=raw.decode("utf-8","surrogatepass").encode("utf-16-le","surrogatepass")
        if len(units)//2 != value:
            raise ValueError("invalid DEX string length")
        return units.decode("utf-16-le")
    def type_name(index):
        if index >= type_count:
            raise ValueError("type index outside table")
        return string(u32(type_off+index*4))
    def u16(offset):
        if offset < 0 or offset+2>len(data):
            raise ValueError("DEX u16 outside file")
        return struct.unpack_from("<H",data,offset)[0]
    def type_list(pos):
        if not pos:
            return []
        count=u32(pos)
        if pos+4+2*count>len(data):
            raise ValueError("DEX type list outside file")
        return [type_name(u16(pos+4+i*2)) for i in range(count)]
    def uleb(pos):
        value=0
        for shift in range(0,35,7):
            if pos>=len(data):
                raise ValueError("truncated class_data")
            byte=data[pos];pos+=1
            if shift==28 and byte>15:
                raise ValueError("invalid class_data uleb128")
            value|=(byte&127)<<shift
            if byte<128:
                return value,pos
        raise ValueError("invalid class_data uleb128")
    def members(pos,owner):
        fields,methods={},{}
        if not pos:
            return fields,methods
        proto_count,proto_off=table(72,12)
        field_count,field_off=table(80,8)
        method_count,method_off=table(88,8)
        counts=[]
        for _ in range(4):
            n,pos=uleb(pos)
            counts.append(n)
        if sum(counts)>field_count+method_count:
            raise ValueError("class_data counts outside tables")
        for group,n in enumerate(counts):
            idx=0
            for i in range(n):
                diff,pos=uleb(pos)
                if i and not diff:
                    raise ValueError("duplicate encoded member")
                idx+=diff
                flags,pos=uleb(pos)
                if group<2:
                    if idx>=field_count:
                        raise ValueError("field index outside table")
                    at=field_off+idx*8
                    if u16(at)!=owner:
                        raise ValueError("field owner mismatch")
                    sig=string(u32(at+4))+":"+type_name(u16(at+2))
                    target=fields
                else:
                    _,pos=uleb(pos) # code_off
                    if idx>=method_count:
                        raise ValueError("method index outside table")
                    at=method_off+idx*8
                    if u16(at)!=owner:
                        raise ValueError("method owner mismatch")
                    proto=u16(at+2)
                    if proto>=proto_count:
                        raise ValueError("proto index outside table")
                    po=proto_off+proto*12
                    sig=string(u32(at+4))+"("+"".join(type_list(u32(po+8)))+")"+type_name(u32(po+4))
                    target=methods
                if sig in target:
                    raise ValueError("duplicate declared member")
                target[sig]=flags
        return fields,methods
    out=[] if wanted is None else {}
    for i in range(class_count):
        at=class_off+i*32
        idx=u32(at)
        desc=type_name(idx)
        if not re.fullmatch(r"L[^;\s]+;",desc):
            raise ValueError("invalid class descriptor: "+repr(desc))
        if wanted is None:
            out.append(desc)
        elif desc in wanted:
            if desc in out:
                raise ValueError("duplicate class in dex")
            super_idx=u32(at+8)
            fields,methods=members(u32(at+24),idx)
            out[desc]={"flags":u32(at+4),"super":None if super_idx==0xffffffff else type_name(super_idx),
                       "interfaces":sorted(type_list(u32(at+12))),"fields":fields,"methods":methods}
    return out

def lab_classes(apk, dexdump):
    out = collections.defaultdict(list)
    with zipfile.ZipFile(apk) as z:
        names = sorted(n for n in z.namelist() if re.fullmatch(r"classes(?:\d+)?\.dex", n))
        if not names:
            raise ValueError("no DEX")
        for name in names:
            descriptors = dex_definitions(z.read(name))
            for desc in descriptors:
                out[desc].append(name)
    return out, names

# Compare only linkage-relevant declared shape. Not bytecode equivalence, and
# absence of a declared member is not necessarily a failed inherited lookup.
FLAG_BITS={"public":1,"private":2,"protected":4,"static":8,"final":16,
           "synchronized":32,"volatile":64,"bridge":64,"transient":128,
           "varargs":128,"native":256,"interface":512,"abstract":1024,
           "strictfp":2048,"synthetic":4096,"annotation":8192,"enum":16384,
           "constructor":65536,"declared-synchronized":131072}
CLASS_MASK=1|2|4|16|512|1024|8192|16384
MEMBER_MASK=1|2|4|8|16|256|1024
def smali_flags(words):
    flags=0
    for w in words:
        if w not in FLAG_BITS:
            raise ValueError("unknown smali access flag "+w)
        flags|=FLAG_BITS[w]
    return flags

def declared_smali(path):
    out={"flags":None,"super":None,"interfaces":[],"fields":{},"methods":{}}
    for line in path.read_text(encoding="utf-8").splitlines():
        # Class and member directives are at declaration level.
        if line.startswith(".class "):
            parts=line.split()
            out["flags"]=smali_flags(parts[1:-1])
        elif line.startswith(".super "):
            out["super"]=line.split()[1]
        elif line.startswith(".implements "):
            out["interfaces"].append(line.split()[1])
        elif line.startswith(".method ") or line.startswith(".field "):
            parts=line.split(" = ",1)[0].split()
            kind="methods" if parts[0]==".method" else "fields"
            sig=parts[-1]
            if kind=="methods" and "(" not in sig or kind=="fields" and ":" not in sig:
                raise ValueError("invalid declaration "+line)
            if sig in out[kind]:
                raise ValueError("duplicate smali member "+sig)
            out[kind][sig]=smali_flags(parts[1:-1])
    if out["flags"] is None:
        raise ValueError("missing smali class")
    out["interfaces"].sort()
    return out

def declared_lab(apk,wanted):
    result={}
    with zipfile.ZipFile(apk) as z:
        for name in sorted(z.namelist()):
            if re.fullmatch(r"classes(?:\d+)?\.dex",name):
                found=dex_definitions(z.read(name),wanted)
                if set(result)&set(found):
                    raise ValueError("duplicate overlapping dex class")
                result.update(found)
    if set(result)!=set(wanted):
        raise ValueError("overlap declarations incomplete")
    return result

def compare_declared(desc,old,new):
    rows=[]
    for key in ("super","interfaces","flags"):
        a,b=old[key],new[key]
        if key=="flags":
            a,b=a&CLASS_MASK,b&CLASS_MASK
        if a!=b:
            rows.append((desc,"class",key,"SHAPE_DIFF",str(a),str(b)))
    for kind in ("fields","methods"):
        a,b=old[kind],new[kind]
        for sig in sorted(set(a)|set(b)):
            left,right=a.get(sig),b.get(sig)
            if left is None:
                status="LAB_ONLY_DECLARATION"
            elif right is None:
                status="ORIGINAL_ONLY_DECLARATION"
            elif left&MEMBER_MASK!=right&MEMBER_MASK:
                status="ACCESS_SHAPE_DIFF"
            else:
                continue
            rows.append((desc,kind,sig,status,"" if left is None else hex(left),"" if right is None else hex(right)))
    return rows

def original_resources(root):
    out = {}
    for node in ET.parse(root / "res/values/public.xml").getroot().findall("public"):
        key = node.get("type") + "/" + node.get("name")
        val = int(node.get("id"), 16)
        if key in out and out[key] != val:
            raise ValueError("conflicting original resource " + key)
        out[key] = val
    if not out:
        raise ValueError("empty original public resources")
    return out

def lab_resources(apk, aapt2):
    out = {}
    for ident, key in RESOURCE.findall(command([aapt2, "dump", "resources", str(apk)])):
        val = int(ident, 16)
        if key in out and out[key] != val:
            raise ValueError("conflicting lab resource " + key)
        out[key] = val
    if not out:
        raise ValueError("no aapt2 resource entries matched")
    return out

def resource_overlap(old, new):
    old_ids = collections.defaultdict(set)
    for name, val in old.items():
        old_ids[val].add(name)
    same_names = sorted(set(old) & set(new))
    names = [(k, f"0x{old[k]:08x}", f"0x{new[k]:08x}") for k in same_names]
    ids = [(f"0x{val:08x}", ",".join(sorted(old_ids[val] - {name})), name)
           for name, val in sorted(new.items()) if old_ids[val] - {name}]
    return names, ids

def write_tsv(path, header, rows):
    path.write_text("\t".join(header) + "\n" + "".join("\t".join(row) + "\n" for row in rows), encoding="utf-8")

def main():
    p = argparse.ArgumentParser()
    p.add_argument("--original", type=pathlib.Path, required=True)
    p.add_argument("--apk", type=pathlib.Path, required=True)
    p.add_argument("--dexdump", required=True)
    p.add_argument("--aapt2", required=True)
    p.add_argument("--out", type=pathlib.Path, required=True)
    args = p.parse_args()
    old, smali_dirs = original_classes(args.original)
    new, dex_files = lab_classes(args.apk, args.dexdump)
    overlap = sorted(set(old) & set(new))
    prefixes = collections.Counter(d[1:].split("/")[0] for d in overlap)
    namespaces = collections.Counter("/".join(d[1:].split("/")[:2]) for d in overlap)
    old_res, new_res = original_resources(args.original), lab_resources(args.apk, args.aapt2)
    names, ids = resource_overlap(old_res, new_res)
    args.out.mkdir(parents=True, exist_ok=True)
    write_tsv(args.out / "class-overlaps.tsv", ["descriptor","original","lab"], [(k,",".join(old[k]),",".join(new[k])) for k in overlap])
    write_tsv(args.out / "class-original-duplicates.tsv", ["descriptor","paths"], [(k,",".join(v)) for k,v in sorted(old.items()) if len(v)>1])
    write_tsv(args.out / "class-lab-duplicates.tsv", ["descriptor","dex"], [(k,",".join(v)) for k,v in sorted(new.items()) if len(v)>1])
    write_tsv(args.out / "resource-name-overlaps.tsv", ["type/name","original_id","lab_id"], names)
    write_tsv(args.out / "resource-id-overlaps.tsv", ["id","original_other_names","lab_name"], ids)
    parsed_lab=declared_lab(args.apk,set(overlap))
    differences=[]
    for desc in overlap:
        if len(old[desc])!=1:
            raise ValueError("ambiguous original class "+desc)
        parsed_old=declared_smali(args.original/old[desc][0])
        differences.extend(compare_declared(desc,parsed_old,parsed_lab[desc]))
    write_tsv(args.out / "declared-abi-differences.tsv", ["descriptor","kind","member","status","original","lab"], differences)
    summary = dict(declared_abi_scope="shared classes, direct declarations only; inheritance and runtime resolution not proven",
        declared_abi_classes_with_differences=len({row[0] for row in differences}),
        declared_abi_difference_rows=len(differences),
        declared_abi_status_counts=dict(collections.Counter(row[3] for row in differences)),
        scope="static inventory only, not compatibility or merge authorization",
        smali_dirs=smali_dirs, dex_files=dex_files, original_classes=len(old), lab_classes=len(new),
        class_overlap=len(overlap), original_duplicate_descriptors=sum(len(v)>1 for v in old.values()),
        lab_duplicate_descriptors=sum(len(v)>1 for v in new.values()),
        overlap_prefixes=dict(prefixes.most_common()), overlap_namespaces=dict(namespaces.most_common()),
        original_public_resources=len(old_res), lab_resources=len(new_res),
        resource_same_name=len(names), resource_same_name_different_id=sum(a!=b for _,a,b in names),
        resource_id_other_name=len(ids), verdict="BLOCK_RAW_MERGE" if overlap or names or ids else "NO_NAME_COLLISION_FOUND_NOT_COMPATIBILITY_PROOF")
    (args.out / "summary.json").write_text(json.dumps(summary, indent=2) + "\n", encoding="utf-8")
    print("CP_NATIVE_DEPENDENCY_AUDIT_PASS " + json.dumps(summary, separators=(",",":")))
if __name__ == "__main__":
    main()
