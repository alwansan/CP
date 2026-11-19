import pathlib,tempfile,unittest,zipfile
from dex_format import versions,api_for
class DexFormatTests(unittest.TestCase):
    def test_headers(self):
        with tempfile.TemporaryDirectory() as t:
            p=pathlib.Path(t)/"a.apk"
            with zipfile.ZipFile(p,"w") as z:
                z.writestr("classes.dex",b"dex\n037\x00...")
                z.writestr("classes2.dex",b"dex\n037\x00...")
                z.writestr("assets/ignored.dex",b"other")
            v=versions(p)
            self.assertEqual(v,{"classes.dex":"037","classes2.dex":"037"})
            self.assertEqual(api_for(v),24)
    def test_mixed_fails(self):
        with self.assertRaises(ValueError):api_for({"classes.dex":"035","classes2.dex":"037"})
    def test_unknown_fails(self):
        with self.assertRaises(ValueError):api_for({"classes.dex":"999"})
if __name__=="__main__":unittest.main()
