#!/usr/bin/env python3
"""Regression tests for failures apktool alone does not reject."""
import contextlib,io,re,runpy,unittest
from pathlib import Path
from unittest.mock import patch
ROOT=Path(__file__).resolve().parents[1]
CHECK=ROOT/'scripts/validate_recovery.py'
class ReferenceGuardTests(unittest.TestCase):
 def rejected(self,change):
  read=Path.read_text;err=io.StringIO()
  def changed(p,*a,**kw):return change(p,read(p,*a,**kw))
  with patch.object(Path,'read_text',changed),contextlib.redirect_stdout(io.StringIO()),contextlib.redirect_stderr(err):
   with self.assertRaises(SystemExit) as cm:runpy.run_path(str(CHECK),run_name='__main__')
  self.assertEqual(cm.exception.code,1)
  return err.getvalue()
 def test_private_context_field_is_rejected(self):
  msg=self.rejected(lambda p,s:s.replace('.field public static app:Landroid/content/Context;','.field static app:Landroid/content/Context;') if p.name=='Ui7.smali' else s)
  self.assertIn('kw0$l: inaccessible field Ui7.app:',msg)
 def test_missing_process_cancellation_hook_is_rejected(self):
  msg=self.rejected(lambda p,s:re.sub(r'(?ms)^\.method public static register\(Ljava/lang/Process;\)V.*?^\.end method','',s) if p.name=='MkvCancel262.smali' else s)
  self.assertIn('missing MkvCancel262.register',msg)
 def test_moved_classes_exist_in_exactly_one_dex_source(self):
  for name in ['i42.smali','n54.smali']:
   self.assertEqual(len(list((ROOT/'Cinemana_PATCH252_Project/app').glob('smali*/com/shabakaty/downloader/'+name))),1)
if __name__=='__main__':unittest.main()
