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
    def test_enum_ids_and_local_values(self):
        rows=[("attr/mode",0x7f010001,"attr/cpui_mode",0x7f010010),
              ("id/async",0x7f020001,"id/cpui_async",0x7f020010),
              ("id/blocking",0x7f020002,"id/cpui_blocking",0x7f020011),
              ("style/Theme",0x7f030001,"style/cpui_Theme",0x7f030010),
              ("layout/page",0x7f040001,"layout/cpui_page",0x7f040010)]
        with tempfile.TemporaryDirectory() as tmp:
            p=pathlib.Path(tmp);r=p/"in"/"values";r.mkdir(parents=True)
            (r/"attrs.xml").write_text('<resources><attr name="mode"><enum name="async" value="0"/><enum name="blocking" value="1"/></attr><style name="Theme"><item name="mode">async</item><item name="android:fontStyle">italic</item></style></resources>')
            l=p/"in"/"layout";l.mkdir()
            (l/"page.xml").write_text('<View xmlns:app="http://schemas.android.com/apk/res-auto" xmlns:android="http://schemas.android.com/apk/res/android" app:mode="blocking" android:tag="async"/>')
            tr=Transform(rows,"lab.pkg");tr.run(p/"in",p/"out")
            v=(p/"out"/"values"/"attrs.xml").read_text()
            self.assertIn('name="cpui_async" value="0"',v)
            self.assertIn('name="cpui_blocking" value="1"',v)
            self.assertIn('name="cpui_mode">cpui_async',v)
            self.assertIn('name="android:fontStyle">italic',v)
            v=(p/"out"/"layout"/"cpui_page.xml").read_text()
            self.assertIn('app:cpui_mode="cpui_blocking"',v)
            self.assertIn('android:tag="async"',v)
            self.assertEqual(set(tr.names),tr.defined)
    def test_no_blind_mutation(self):
        t=Transform([("id/a",0x7f010001,"id/cpui_a",0x7f010002)],"lab.pkg")
        self.assertEqual(t.reference("a @id/a string"),"a @id/a string")
        self.assertEqual(t.reference("@+id/a"),"@+id/cpui_a")
        self.assertIn("id/a",t.defined)
if __name__=="__main__":unittest.main()
