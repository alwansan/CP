import pathlib
import struct
import tempfile
import unittest
import native_dependency_audit as a

class AuditTest(unittest.TestCase):
    def test_class_parser(self):
        for line in (".class Landroidx/navigation/NavController$1;", ".class public Lx/Y;", ".class public final synthetic Lx/Y$Z;", ".class interface abstract Lx/Y;"):
            self.assertIsNotNone(a.CLASS.match(line))
    def test_smali_roots(self):
        with tempfile.TemporaryDirectory() as tmp:
            p=pathlib.Path(tmp)
            for directory in ("smali","smali_classes11"):
                f=p/directory/"x"/"Y.smali";f.parent.mkdir(parents=True)
                f.write_text(".class public Lx/Y;\n.super Ljava/lang/Object;\n")
            classes, roots=a.original_classes(p)
            self.assertEqual(len(classes),1)
            self.assertEqual(len(classes["Lx/Y;"]),2)
            self.assertEqual(roots,["smali","smali_classes11"])
    def test_dex_table(self):
        # Minimal DEX-table fixture; not an executable dex.
        raw=b"Lx/\xed\xa0\xbd\xed\xb8\x80;"
        data=bytearray(112+4+4+32+1+len(raw)+1)
        data[:8]=b"dex\n035\x00"
        def put(pos,v): struct.pack_into("<I",data,pos,v)
        for pos,v in [(32,len(data)),(36,112),(40,0x12345678),(56,1),(60,112),(64,1),(68,116),(96,1),(100,120),(112,152),(116,0),(120,0)]:
            put(pos,v)
        data[152]=6
        data[153:153+len(raw)]=raw
        self.assertEqual(a.dex_definitions(bytes(data)),["Lx/😀;"])
        put(120,1)
        with self.assertRaises(ValueError): a.dex_definitions(bytes(data))
    def test_resources(self):
        raw="  resource 0x7f010001 anim/foo\n  resource 0x7f010002 com.example:color/bar PUBLIC\n"
        self.assertEqual(a.RESOURCE.findall(raw),[("0x7f010001","anim/foo"),("0x7f010002","color/bar")])
        n,i=a.resource_overlap({"color/a":1,"color/b":2},{"color/a":2,"color/c":1})
        self.assertEqual(len(n),1);self.assertEqual(len(i),2)
if __name__=="__main__":
    unittest.main()
