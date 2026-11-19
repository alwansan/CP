import pathlib
import tempfile
import unittest
import native_dependency_audit as a

class AuditTest(unittest.TestCase):
    def test_class_parser(self):
        for line in (".class public Lx/Y;", ".class public final synthetic Lx/Y$Z;", ".class interface abstract Lx/Y;"):
            self.assertIsNotNone(a.CLASS.match(line))
        self.assertEqual(a.DEX_CLASS.findall("  Class descriptor  : 'Lx/Y;'\nClass descriptor  : 'Lz/A;'\n"), ["Lx/Y;","Lz/A;"])
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
    def test_resources(self):
        raw="  resource 0x7f010001 anim/foo\n  resource 0x7f010002 com.example:color/bar PUBLIC\n"
        self.assertEqual(a.RESOURCE.findall(raw),[("0x7f010001","anim/foo"),("0x7f010002","color/bar")])
        n,i=a.resource_overlap({"color/a":1,"color/b":2},{"color/a":2,"color/c":1})
        self.assertEqual(len(n),1);self.assertEqual(len(i),2)
if __name__=="__main__":
    unittest.main()
