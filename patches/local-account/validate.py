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
helpers=list((root/'smali_classes11').rglob('*.smali'))+list((root/'smali_classes6/com/shabakaty/cinemana/ca1').glob('ContinueActions262*.smali'))+[root/'smali_classes6/com/shabakaty/cinemana/ca1/LocalAccountLog.smali']
assert helpers
for file in helpers:
 s=file.read_text()
 for owner,name,signature in re.findall(r'(Lcom/shabakaty/[^;]+;)->([^\s(;:]+)(\([^\n ]+|:[^\s,]+)',s):
  assert owner in classes,(file,owner)
  target=classes[owner][1]
  # Compiler targets for our bridges and direct legacy calls have declarations here.
  if signature.startswith('('):
   if name in ('onCreate','onPause','onStartJob','onStopJob','clone'):continue
   assert re.search(r'^\.method (?:[^\n]* )?'+re.escape(name+signature)+r'$',target,re.M) or re.search(r'^\.super Landroid/',target,re.M),(file,owner,name,signature)
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

# PATCH267 native contracts: the success branch in UserActions accepts literal "true".
assert 'const-string v0, "true"' in classes['Lcom/shabakaty/downloader/ku1;'][1]
assert 'LocalRuntime;->httpRequest' in classes['Lcom/shabakaty/downloader/jf;'][1]
assert 'PosterFallback;->source' in classes['Lcom/shabakaty/downloader/oy1;'][1]
assert 'PosterFallback;->controller' in classes['Lcom/shabakaty/downloader/oy1;'][1]
listener=classes['Lcom/facebook/drawee/controller/ControllerListener;'][1]
assert '.method public abstract f(Ljava/lang/String;Ljava/lang/Throwable;)V' in listener
assert '.method public abstract b(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V' in listener
assert re.search(r'^\.method public [^\n]*g\(Lcom/facebook/drawee/controller/ControllerListener;\)V',classes['Lcom/facebook/drawee/controller/AbstractDraweeController;'][1],re.M)
for file in (root/'res').glob('layout*/fragment_profile.xml'):assert 'local_account266' not in file.read_text()
layout=ET.parse(root/'res/layout/fragment_user_lists.xml')
icons=layout.findall('.//ImageView');assert len(icons)==3
assert {i.get(ns+'src') for i in icons}=={'@drawable/ic_history','@drawable/ic_heart_big','@drawable/ic_categories'}
assert all(i.get(ns+'tint')=='?cinColorTextPrimary' for i in icons)
print('PASS PATCH267 native response/HTTP/poster contracts; single edit entry; three visible original list icons')

assert 'AccountUi;->watched' in classes['Lcom/shabakaty/downloader/x52;'][1]
assert 'LocalRuntime;->removeProgress' in classes['Lcom/shabakaty/cinemana/ca1/Continue106;'][1]
assert 'LocalRuntime;->resumeProgress' in classes['Lcom/shabakaty/cinemana/ca1/Continue106;'][1]
assert 'LocalRuntime;->profileResume' in classes['Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;'][1]
assert 'AccountUi;->resume' in classes['Lcom/shabakaty/cinemana/ca1/ContinueActions262;'][1]
for owner,field in [('Lcom/shabakaty/downloader/g42;','W:Lcom/facebook/drawee/view/SimpleDraweeView;'),('Lcom/shabakaty/downloader/g42;','X:Landroid/widget/TextView;'),('Lcom/shabakaty/downloader/x52;','Y:Lcom/facebook/drawee/view/SimpleDraweeView;')]:assert field in classes[owner][1]
assert 'getSmallPicture()Ljava/lang/String;' in classes['Lcom/shabakaty/usermanagement/UserManagement;'][1]
assert 'H0(Ljava/lang/String;)V' in classes['Lcom/shabakaty/downloader/hx2;'][1]
print('PASS PATCH268 continue deletion/persistence, resume/watched overlays, avatar refresh and native field contracts')

assert 'ExpiredLink269;->beforeRetry' in classes['Lcom/shabakaty/downloader/ey0;'][1]
assert 'ExpiredLink269;->failed' in classes['Lcom/shabakaty/cinemana/features/DownloadTrace;'][1]
assert '.field public v:Ljava/lang/String;' in classes['Lcom/shabakaty/downloader/pw0;'][1]
assert '.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/shabakaty/downloader/a90;' in classes['Lcom/shabakaty/downloader/ey0;'][1]
assert '.method public final q(Lcom/shabakaty/downloader/a90;Z)V' in classes['Lcom/shabakaty/downloader/ey0;'][1]
assert '.method static isPaused(I)Z' in classes['Lcom/shabakaty/cinemana/ca1/Queue110;'][1]
assert '.field public n:Ljava/util/List;' in classes['Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;'][1]
source=root.parents[1]/'patches/local-account/src/com/shabakaty/cinemana/local'
ui=(source/'AccountUi.java').read_text();assert '"ic_continue"' in ui and 'drawIcon(icon,"ic_btn_play")' not in ui
assert 'Metadata269.merge(Metadata269.local(id),meta)' in (source/'LocalRuntime.java').read_text()
print('PASS PATCH269 original continue renderer, non-downgrading metadata snapshot, stale-URL recovery native contracts')

# Final image failure is callback c; f is only an intermediate-image failure.
poster=(root.parents[1]/'patches/local-account/src/com/shabakaty/cinemana/local/PosterFallback.java').read_text()
assert 'if(name.equals("c"))' in poster and 'if(name.equals("f"))' not in poster
controller=classes['Lcom/facebook/drawee/controller/AbstractDraweeController;'][1]
assert 'final_failed @ onFailure' in controller and 'ControllerListener;->c(Ljava/lang/String;Ljava/lang/Throwable;)V' in controller
home=classes['Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;'][1]
assert 'LocalRuntime;->foreground(Landroid/content/Context;)V' in home.split('.method public onStart()V')[1].split('.end method')[0]
print('PASS PATCH273 foreground entry and native final-image-failure callback contract')

notification=classes['Lcom/shabakaty/downloader/j52;'][1]
assert 'VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;' in notification
assert 'VideoModel;->imgThumbObjUrl:Ljava/lang/String;' in notification
assert 'notification274_small' in notification
assert 'simpleDraweeView2".equals(resource)&&valid(t)' not in poster
print('PASS PATCH274 medium artwork selection and small-thumbnail fallback contract')
