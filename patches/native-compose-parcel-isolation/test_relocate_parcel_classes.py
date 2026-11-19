import unittest
from relocate_parcel_classes import rewrite_line,DESC,DOT,NAMES
class RelocationTest(unittest.TestCase):
    def test_descriptor_and_comment(self):
        old="Landroidx/core/app/RemoteActionCompat;"
        line="    const-class v0, "+old+" # "+old+"\n"
        actual,refs,unresolved=rewrite_line(line)
        self.assertEqual(actual,"    const-class v0, "+DESC[old]+" # "+old+"\n")
        self.assertEqual(len(refs),1);self.assertFalse(unresolved)
    def test_exact_reflection(self):
        old="androidx.core.app.RemoteActionCompatParcelizer"
        actual,refs,unresolved=rewrite_line('const-string v0, "'+old+'"')
        self.assertIn(DOT[old],actual);self.assertFalse(unresolved)
        actual,refs,unresolved=rewrite_line('const-string v0, "unknown '+old+'"')
        self.assertEqual(len(unresolved),1);self.assertFalse(refs)
    def test_signature(self):
        old="Landroidx/core/app/RemoteActionCompat"
        actual,refs,unresolved=rewrite_line('"'+old+'<"',True)
        self.assertIn("L"+NAMES[old[1:]]+"<",actual)
        self.assertEqual(len(refs),1)
if __name__=="__main__":unittest.main()
