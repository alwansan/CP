#!/usr/bin/env python3
"""Read-only source transform of decoded *standalone* APK resources into scratch.
Not a DEX rewrite, not a merge. Fail closed on unsupported declarations/references.
"""
import argparse
import json
import pathlib
import re
import shutil
import sys
import xml.etree.ElementTree as ET

sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-audit"))
from native_dependency_audit import original_resources,lab_resources,write_tsv
from resource_namespace_plan import allocate,stable_lines

ANDROID="http://schemas.android.com/apk/res/android"
AUTO="http://schemas.android.com/apk/res-auto"
ET.register_namespace("android",ANDROID)
ET.register_namespace("app",AUTO)
ET.register_namespace("xliff","urn:oasis:names:tc:xliff:document:1.2")
ET.register_namespace("tools","http://schemas.android.com/tools")
REF=re.compile(r"^([@?])(\+?)(?:(\*?[\w.]+):)?(?:(\w+)/)?([\w.]+)$")
NUMERIC=re.compile(r"^([@?])(?:0x)?(7f[0-9a-fA-F]{6})$")
TYPE_ALIAS={"string-array":"array","integer-array":"array"}
class Transform:
    def __init__(self,rows,pkg):
        self.names={a:c for a,_,c,_ in rows}
        self.old_ids={b:a for a,b,_,_ in rows}
        self.new_ids={c:d for _,_,c,d in rows}
        self.pkg=pkg
        self.defined=set()
        self.ref_count=0
        self.symbols={}
    def mapped(self,key,definition=False):
        if key not in self.names:
            raise ValueError("unmapped local resource "+key)
        if definition:
            self.defined.add(key)
        return self.names[key].split("/",1)[1]
    def reference(self,value):
        # Exact lexical resource reference only. Preserve literal strings and
        # framework refs; don't blindly replace arbitrary integer constants.
        if not value:
            return value
        raw=value.strip()
        m=NUMERIC.fullmatch(raw)
        if m:
            key=self.old_ids.get(int(m.group(2),16))
            if key is None:
                raise ValueError("unmapped numeric reference "+raw)
            new=self.names[key]
            self.ref_count+=1
            return value.replace(raw,m.group(1)+new,1)
        m=REF.fullmatch(raw)
        if m is None:
            return value
        sig,plus,pkg,typ,name=m.groups()
        if pkg and pkg not in (self.pkg,"*"+self.pkg):
            return value
        if name in ("null","empty") and typ is None and sig=="@":
            return value
        if typ is None:
            if sig=="?":
                typ="attr"
            else:
                return value
        key=typ+"/"+name
        new=self.mapped(key,definition=plus=="+")
        self.ref_count+=1
        return value.replace(raw,sig+plus+typ+"/"+new,1)
    def attr_name(self,name):
        if name.startswith("android:") or name.startswith("*android:"):
            return name
        if ":" in name:
            pkg,local=name.split(":",1)
            if pkg!=self.pkg:
                return name
            name=local
        return self.mapped("attr/"+name)
    def collect_symbols(self,res):
        # AAPT2 emits ID resources for local enum/flag symbols. APKTool
        # may represent them only inside attrs.xml, not as <item type="id">.
        for path in sorted(res.glob("values*/*.xml")):
            if path.name=="public.xml":
                continue
            root=ET.parse(path).getroot()
            for attr in root.findall("attr"):
                attr_name=attr.get("name")
                if not attr_name or "attr/"+attr_name not in self.names:
                    continue
                for symbol in attr:
                    if symbol.tag not in ("enum","flag"):
                        continue
                    name=symbol.get("name")
                    if not name or "id/"+name not in self.names:
                        raise ValueError("unmapped enum/flag symbol "+str(name)+" in "+str(path))
                    group=self.symbols.setdefault(attr_name,{})
                    mapped=self.mapped("id/"+name)
                    if name in group and group[name]!=mapped:
                        raise ValueError("inconsistent symbol mapping "+name)
                    group[name]=mapped
        print("CP_RESOURCE_ENUM_SYMBOLS "+json.dumps(self.symbols,sort_keys=True))
    def symbol_value(self,attr,value):
        group=self.symbols.get(attr,{})
        if not group or not value:
            return value
        # Only local attributes use this map; don't replace framework
        # or arbitrary strings. Preserve separators for flag expressions.
        return "|".join(piece.replace(piece.strip(),group[piece.strip()],1)
                        if piece.strip() in group else piece
                        for piece in value.split("|"))
    def rename_xml(self,path,out,values):
        root=ET.parse(path).getroot()
        if values and root.tag!="resources":
            raise ValueError("bad values root "+str(path))
        if values:
            for child in list(root):
                tag=child.tag
                if tag=="public":
                    root.remove(child)
                    continue
                name=child.get("name")
                if tag=="declare-styleable":
                    # Styleables are generated indices, not compiled resource IDs.
                    # Do not assert that R.styleable arrays were transformed.
                    raise ValueError("declare-styleable requires separate R ABI transform: "+str(path))
                typ=child.get("type") if tag=="item" else TYPE_ALIAS.get(tag,tag)
                if name is None or not typ:
                    raise ValueError("unsupported values declaration "+tag+" in "+str(path))
                key=typ+"/"+name
                child.set("name",self.mapped(key,True))
                if typ=="attr":
                    for symbol in child:
                        if symbol.tag in ("enum","flag"):
                            symbol.set("name",self.mapped("id/"+symbol.get("name"),True))
                if typ=="style":
                    parent=child.get("parent")
                    if parent is not None and parent and not parent.startswith(("@","?")):
                        if parent.startswith("android:"):
                            child.set("parent","@"+parent.replace("android:","android:style/",1))
                        else:
                            child.set("parent","@style/"+parent)
                    elif parent is None and "." in name:
                        implicit=name.rsplit(".",1)[0]
                        if "style/"+implicit not in self.names:
                            raise ValueError("unresolved implicit style parent "+implicit)
                        child.set("parent","@style/"+implicit)
                    for item in child.findall("item"):
                        if "name" in item.attrib:
                            old_attr=item.get("name")
                            local=old_attr.split(":",1)[-1] if old_attr.startswith(self.pkg+":") else old_attr
                            if item.text:
                                item.text=self.symbol_value(local,item.text)
                            item.set("name",self.attr_name(old_attr))
        for el in root.iter():
            for key,val in list(el.attrib.items()):
                new_key=key
                for ns in (AUTO,"http://schemas.android.com/apk/res/"+self.pkg):
                    if key.startswith("{"+ns+"}"):
                        local=key.split("}",1)[1]
                        new_key="{"+AUTO+"}"+self.mapped("attr/"+local)
                        val=self.symbol_value(local,val)
                updated=self.reference(val)
                if new_key!=key:
                    del el.attrib[key]
                el.set(new_key,updated)
            if el.text:
                el.text=self.reference(el.text)
        out.parent.mkdir(parents=True,exist_ok=True)
        ET.ElementTree(root).write(out,encoding="utf-8",xml_declaration=True)
    def run(self,res,out):
        if out.exists():
            raise ValueError("scratch output already exists")
        self.collect_symbols(res)
        for path in sorted(res.rglob("*")):
            if not path.is_file():
                continue
            rel=path.relative_to(res)
            if len(rel.parts)!=2:
                raise ValueError("unsupported resource path "+str(rel))
            folder=rel.parts[0]
            typ=folder.split("-",1)[0]
            if typ=="values":
                if path.name=="public.xml":
                    continue
                self.rename_xml(path,out/rel,True)
            else:
                name,sep,suffix=path.name.partition(".")
                if not sep:
                    raise ValueError("unsupported resource filename "+str(rel))
                renamed=self.mapped(typ+"/"+name,True)+"."+suffix
                target=out/folder/renamed
                if target.exists():
                    raise ValueError("output file collision "+str(target))
                if path.suffix==".xml":
                    self.rename_xml(path,target,False)
                else:
                    target.parent.mkdir(parents=True,exist_ok=True)
                    shutil.copyfile(path,target)
        missing=set(self.names)-self.defined
        if missing:
            raise ValueError("unrepresented decoded resources: "+", ".join(sorted(missing)))

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--original",type=pathlib.Path,required=True)
    p.add_argument("--apk",type=pathlib.Path,required=True)
    p.add_argument("--decoded",type=pathlib.Path,required=True)
    p.add_argument("--aapt2",required=True)
    p.add_argument("--output",type=pathlib.Path,required=True)
    a=p.parse_args()
    old=original_resources(a.original)
    lab=lab_resources(a.apk,a.aapt2)
    rows=allocate(old,lab)
    t=Transform(rows,"com.alwansan.cinemana.composelab")
    t.run(a.decoded/"res",a.output/"res")
    (a.output/"stable.ids").write_text(stable_lines(t.new_ids,"com.cinemana.resourceprobe"))
    (a.output/"AndroidManifest.xml").write_text('<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="com.cinemana.resourceprobe"><application/></manifest>')
    write_tsv(a.output/"mapping.tsv",["lab_name","lab_id","candidate_name","candidate_id"],[(x,f"0x{y:08x}",z,f"0x{w:08x}") for x,y,z,w in rows])
    print("CP_RESOURCE_SOURCE_TRANSFORM_PASS "+json.dumps({"definitions":len(t.defined),"references_rewritten":t.ref_count,"scope":"decoded lab resource tree only"}))
if __name__=="__main__":
    main()
