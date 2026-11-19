import unittest
from resource_namespace_plan import allocate,stable_lines
class PlanTest(unittest.TestCase):
    def test_stable(self):
        old={"string/title":0x7f04000a,"color/bg":0x7f030002}
        lab={"string/title":0x7f030002,"drawable/icon":0x7f04000a,"color/bg":0x7f050000}
        rows=allocate(old,lab)
        self.assertEqual(rows,allocate(dict(reversed(list(old.items()))),dict(reversed(list(lab.items())))))
        self.assertEqual({c:d for _,_,c,d in rows},{"color/cpui_bg":0x7f030003,"drawable/cpui_icon":0x7f010000,"string/cpui_title":0x7f04000b})
        self.assertIn("com.cinemana.pro:string/title = 0x7f04000a",stable_lines(old,"com.cinemana.pro"))
    def test_deny_collision(self):
        with self.assertRaises(ValueError):allocate({"string/cpui_title":0x7f040001},{"string/title":0x7f040001})
        with self.assertRaises(ValueError):allocate({"string/title":0x7f04ffff},{"string/title":0x7f040001})
        with self.assertRaises(ValueError):allocate({"string/title":0x7f040001,"color/bg":0x7f040002},{"string/title":0x7f040001})
if __name__=="__main__":unittest.main()
