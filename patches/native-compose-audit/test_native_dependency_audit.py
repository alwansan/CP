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
    def test_declared_comparison(self):
        with tempfile.TemporaryDirectory() as tmp:
            path=pathlib.Path(tmp)/"A.smali"
            path.write_text(".class public LA;\n.super Ljava/lang/Object;\n.field private x:I = 0x0\n.method public f()V\n.end method\n")
            old=a.declared_smali(path)
            new={"flags":1,"super":"Ljava/lang/Object;","interfaces":[],"fields":{"x:I":9},"methods":{"g()V":1}}
            rows=a.compare_declared("LA;",old,new)
            self.assertEqual({r[3] for r in rows},{"ACCESS_SHAPE_DIFF","ORIGINAL_ONLY_DECLARATION","LAB_ONLY_DECLARATION"})
            self.assertEqual(a.compare_declared("LA;",old,old),[])
    def test_literal_candidates(self):
        with tempfile.TemporaryDirectory() as tmp:
            p=pathlib.Path(tmp)
            f=p/"smali"/"A.smali";f.parent.mkdir()
            f.write_text('.class public LA;\n.field public static final x:I = 0x7f010002\n    const v0, 0x7f010001\n    const/high16 v1, 0x7f020000\n    const-string v2, "0x7f010001"\n    # const v0, 0x7f010001\n')
            old={"color/a":0x7f010001,"color/b":0x7f010002,"id/c":0x7f020000}
            new={"color/a":0x7f010003,"color/d":0x7f010002,"id/d":0x7f020000}
            rows,affected=a.resource_literal_candidates(p,["smali"],old,new)
            self.assertEqual(len(affected),3)
            self.assertEqual(len(rows),3)
            self.assertEqual({r[4] for r in rows},{"2","3","4"})
    def test_resources(self):
        raw="  resource 0x7f010001 anim/foo\n  resource 0x7f010002 com.example:color/bar PUBLIC\n"
        self.assertEqual(a.RESOURCE.findall(raw),[("0x7f010001","anim/foo"),("0x7f010002","color/bar")])
        n,i=a.resource_overlap({"color/a":1,"color/b":2},{"color/a":2,"color/c":1})
        self.assertEqual(len(n),1);self.assertEqual(len(i),2)
if __name__=="__main__":
    unittest.main()
