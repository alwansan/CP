import unittest
from resource_coexistence import blocks,configs,compare
D="""Package name=com.cinemana.pro id=7f
  type string id=01 entryCount=1
    resource 0x7f010000 string/label PUBLIC
      () "Hello"
      (ar) "Arabic"
  type drawable id=02 entryCount=1
    resource 0x7f020000 drawable/item
      (night) (file) res/drawable-night/item.xml
"""
class Check(unittest.TestCase):
    def test_config(self):
        b=blocks(D);self.assertEqual(len(b),2)
        self.assertEqual(configs(b["string/label"]),{"":1,"ar":1})
        self.assertEqual(compare(b,blocks(D),"prior"),[])
    def test_value_and_config(self):
        b=blocks(D);a=blocks(D.replace('(ar) "Arabic"','(fr) "French"'))
        self.assertEqual({x[2] for x in compare(b,a,"prior")},{"configuration","value_block"})
    def test_duplicates(self):
        with self.assertRaises(ValueError):blocks(D+D)
    def test_flags(self):
        self.assertEqual(compare(blocks(D),blocks(D.replace(" PUBLIC","")),"prior")[0][2],"flags")
    def test_file_path_proof(self):
        import io,zipfile
        def archive(path,data):
            z=io.BytesIO()
            with zipfile.ZipFile(z,"w") as f:f.writestr(path,data)
            return zipfile.ZipFile(z)
        from resource_coexistence import lab_body_compare
        key="drawable/cpui_icon"
        old="res/drawable-hdpi/cpui_icon.png"
        new="res/drawable-hdpi-v4/cpui_icon.png"
        b=["(hdpi) (file) "+old+" type=PNG"]
        a=["(hdpi) (file) "+new+" type=PNG"]
        with archive(old,b"identical") as l,archive(new,b"identical") as r:
            ok,e=lab_body_compare(key,b,a,l,r)
            self.assertTrue(ok);self.assertTrue(e[0]["accepted"])
            self.assertFalse(lab_body_compare(key,b,[a[0].replace("(hdpi)","(mdpi)")],l,r)[0])
            self.assertFalse(lab_body_compare(key,b,[a[0].replace("type=PNG","type=XML")],l,r)[0])
            self.assertFalse(lab_body_compare("drawable/other",b,a,l,r)[0])
            self.assertFalse(lab_body_compare(key,b,[a[0].replace("/cpui_icon.png","/../cpui_icon.png")],l,r)[0])
            self.assertFalse(lab_body_compare(key,b,[],l,r)[0])
        with archive(old,b"identical") as l,archive(new,b"changed") as r:
            self.assertFalse(lab_body_compare(key,b,a,l,r)[0])
        with archive(old,b"identical") as l,archive("res/drawable-hdpi-v4/other.png",b"identical") as r:
            self.assertFalse(lab_body_compare(key,b,a,l,r)[0])
if __name__=="__main__":unittest.main()
