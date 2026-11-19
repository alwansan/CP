import pathlib
import tempfile
import unittest
from transform_resources import Transform

class TransformTest(unittest.TestCase):
    def test_style_and_reference(self):
        rows=[("style/Theme",0x7f010001,"style/cpui_Theme",0x7f010010),
              ("style/Theme.Dark",0x7f010002,"style/cpui_Theme_Dark",0x7f010011),
              ("attr/accent",0x7f020001,"attr/cpui_accent",0x7f020010),
              ("color/bg",0x7f030001,"color/cpui_bg",0x7f030010)]
        t=Transform(rows,"lab.pkg")
        with tempfile.TemporaryDirectory() as tmp:
            p=pathlib.Path(tmp);r=p/"in"/"values";r.mkdir(parents=True)
            (r/"styles.xml").write_text('<resources><style name="Theme"/><style name="Theme.Dark"><item name="accent">@color/bg</item></style><attr name="accent" format="color"/><color name="bg">#fff</color></resources>')
            t.run(p/"in",p/"out")
            v=(p/"out"/"values"/"styles.xml").read_text()
            self.assertIn('parent="@style/cpui_Theme"',v)
            self.assertIn('name="cpui_accent"',v)
            self.assertIn('@color/cpui_bg',v)
        self.assertEqual(t.reference("@android:color/white"),"@android:color/white")
        self.assertEqual(t.reference("@0x7f030001"),"@color/cpui_bg")
        with self.assertRaises(ValueError):t.reference("@color/missing")
    def test_no_blind_mutation(self):
        t=Transform([("id/a",0x7f010001,"id/cpui_a",0x7f010002)],"lab.pkg")
        self.assertEqual(t.reference("a @id/a string"),"a @id/a string")
        self.assertEqual(t.reference("@+id/a"),"@+id/cpui_a")
        self.assertIn("id/a",t.defined)
if __name__=="__main__":unittest.main()
