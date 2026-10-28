#!/usr/bin/env python3
"""Linkage checks against actual decoded classes, not test stubs."""
from pathlib import Path
import re,xml.etree.ElementTree as ET
root=Path(__file__).resolve().parents[2]/'Cinemana_PATCH252_Project/app'
classes={}
for file in root.glob('smali*/**/*.smali'):
 s=file.read_text();m=re.search(r'^\.class[^\n]* (L[^;]+;)$',s,re.M)
 if m:classes[m[1]]=(file,s)
checked=0
helpers=list((root/'smali_classes11').rglob('*.smali'))+[root/'smali_classes6/com/shabakaty/cinemana/ca1/LocalAccountLog.smali']
assert helpers
for file in helpers:
 s=file.read_text()
 for owner,name,signature in re.findall(r'(Lcom/shabakaty/[^;]+;)->([^\s(;:]+)(\([^\n ]+|:[^\s,]+)',s):
  assert owner in classes,(file,owner)
  target=classes[owner][1]
  # Compiler targets for our bridges and direct legacy calls have declarations here.
  if signature.startswith('('):
   if name in ('onCreate','onPause','onStartJob','onStopJob','clone'):continue
   assert re.search(r'^\.method [^\n]* '+re.escape(name+signature)+r'$',target,re.M) or re.search(r'^\.super Landroid/',target,re.M),(file,owner,name,signature)
  else:assert re.search(r'^\.field[^\n]* '+re.escape(name+signature)+r'$',target,re.M),(file,owner,name,signature)
  checked+=1
# The API factory and all personal route consumers share the wrapped interface.
assert 'LocalRuntime;->wrap' in classes['Lcom/shabakaty/downloader/t55;'][1]
assert 'LocalRuntime;->overlay' in classes['Lcom/shabakaty/cinemana/domain/models/local/VideoModel;'][1]
assert 'LocalRuntime;->progress' in classes['Lcom/shabakaty/downloader/t25;'][1]
assert 'LocalRuntime;->flushProgressAsync' in classes['Lcom/shabakaty/cinemana/player/VideoPlayerActivity;'][1]
manifest=ET.parse(root/'AndroidManifest.xml');ns='{http://schemas.android.com/apk/res/android}'
application=manifest.getroot().find('application')
assert any(p.get(ns+'name')=='android.permission.POST_NOTIFICATIONS' for p in manifest.getroot().findall('uses-permission'))
assert any(a.get(ns+'name')=='com.shabakaty.cinemana.local.LocalAccountActivity' and a.get(ns+'exported')=='false' for a in application.findall('activity'))
assert any(a.get(ns+'name')=='com.shabakaty.cinemana.local.LocalEpisodeJob' and a.get(ns+'permission')=='android.permission.BIND_JOB_SERVICE' for a in application.findall('service'))
assert all('com/shabakaty/downloader' not in str(f.relative_to(root/'smali_classes11')) for f in (root/'smali_classes11').rglob('*.smali'))
print('PASS local helper linkage:',checked,'member references; API/UI/progress/job wiring; no stub classes packaged')
