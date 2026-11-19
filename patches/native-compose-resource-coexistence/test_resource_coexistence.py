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
if __name__=="__main__":unittest.main()
