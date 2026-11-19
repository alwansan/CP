#!/usr/bin/env python3
"""Read-only class/resource collision inventory. NOT a merge or binary compatibility verdict."""
import argparse
import collections
import json
import pathlib
import re
import subprocess
import tempfile
import xml.etree.ElementTree as ET
import zipfile

CLASS = re.compile(r"^\s*\.class\s+(?:\S+\s+)*(L[^;\s]+;)\s*$")
DEX_CLASS = re.compile(r"^\s*Class descriptor\s*:\s*'([^']+)'\s*$", re.M)
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

def lab_classes(apk, dexdump):
    out = collections.defaultdict(list)
    with zipfile.ZipFile(apk) as z, tempfile.TemporaryDirectory() as t:
        names = sorted(n for n in z.namelist() if re.fullmatch(r"classes(?:\d+)?\.dex", n))
        if not names:
            raise ValueError("no DEX")
        for name in names:
            path = pathlib.Path(t, name)
            path.write_bytes(z.read(name))
            text = command([dexdump, str(path)])
            descriptors = DEX_CLASS.findall(text)
            if not descriptors:
                raise ValueError("no class descriptors in " + name)
            for desc in descriptors:
                out[desc].append(name)
    return out, names

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
    summary = dict(scope="static inventory only, not compatibility or merge authorization",
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
