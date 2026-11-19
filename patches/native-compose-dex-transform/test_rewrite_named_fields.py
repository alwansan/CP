import pathlib,tempfile,unittest
from rewrite_named_fields import rewrite,named_fields
class NamedRewriteTest(unittest.TestCase):
    def test_exact_only(self):
        rows=[("id/item",0x7f010001,"id/cpui_item",0x7f020002)]
        with tempfile.TemporaryDirectory() as t:
            p=pathlib.Path(t);d=p/"smali";d.mkdir()
            r=d/"R$id.smali";r.write_text(".class public final Llab/R$id;\n.super Ljava/lang/Object;\n.field public static final item:I = 0x7f010001\n")
            f=d/"Other.smali";original=".class public Llab/Other;\n.super Ljava/lang/Object;\n.method public f()V\n const v0, 0x7f010001\n.end method\n";f.write_text(original)
            fields,u=rewrite(p,rows)
            self.assertEqual(len(fields),1);self.assertEqual(len(u),1)
            self.assertIn("item:I = 0x7f020002",r.read_text())
            self.assertEqual(f.read_text(),original)
            self.assertEqual(len(named_fields(p,rows,True)),1)
    def test_bad_old_value_rejected(self):
        with tempfile.TemporaryDirectory() as t:
            p=pathlib.Path(t);d=p/"smali";d.mkdir()
            (d/"R$id.smali").write_text(".class public Llab/R$id;\n.super Ljava/lang/Object;\n.field public static final item:I = 0x7f010099\n")
            with self.assertRaises(ValueError):named_fields(p,[("id/item",0x7f010001,"id/cpui_item",0x7f020002)])
if __name__=="__main__":unittest.main()
