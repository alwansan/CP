#!/usr/bin/env python3
"""Apply reviewed hooks to the exact PATCH265 base. Run once on a clean base."""
from pathlib import Path
import re
root=Path(__file__).resolve().parents[2]/'Cinemana_PATCH252_Project/app'
base=root/'smali/com/shabakaty';runtime='Lcom/shabakaty/cinemana/local/LocalRuntime;'
def replace_method(path,name,body):
 s=path.read_text();pattern=r'(\.method [^\n]* '+re.escape(name)+r'\n).*?\.end method'
 s,n=re.subn(pattern,lambda m:m[1]+body+'\n.end method',s,count=1,flags=re.S)
 if n!=1:raise ValueError(str(path)+' '+name)
 path.write_text(s)
def simple_string(path,method,value=None,call=None):
 body='    .locals 1\n'
 if call:body+=f'    invoke-static {{}}, {runtime}->{call}()Ljava/lang/String;\n    move-result-object v0\n'
 else:body+='    const-string v0, "'+value+'"\n'
 replace_method(path,method,body+'    return-object v0')
p=base/'downloader/t55.smali';s=p.read_text();needle='    check-cast v0, Lcom/shabakaty/downloader/k9;';assert s.count(needle)==1
s=s.replace(needle,'    invoke-static {v0}, '+runtime+'->wrap(Ljava/lang/Object;)Ljava/lang/Object;\n    move-result-object v0\n'+needle);p.write_text(s)
p=base/'cinemana/CinemanaApplication.smali';s=p.read_text();needle='    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->install(Landroid/app/Application;)V';assert s.count(needle)==1;s=s.replace(needle,needle+'\n\n    invoke-static {v1}, '+runtime+'->init(Landroid/content/Context;)V');p.write_text(s)
p=base/'usermanagement/UserManagement.smali'
replace_method(p,'isLoggedIn()Z','    .locals 1\n    # Local UI identity; no remote credentials are implied.\n    const/4 v0, 0x1\n    return v0')
replace_method(p,'observeLoginState()Lcom/shabakaty/downloader/qf1;','    .locals 1\n    sget-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_IN:Lcom/shabakaty/usermanagement/utils/LoginState;\n    invoke-static {v0}, Lcom/shabakaty/downloader/qf1;->d(Ljava/lang/Object;)Lcom/shabakaty/downloader/qf1;\n    move-result-object v0\n    return-object v0')
for method in ['getNewToken()V','refreshTokenIfExpired()V','checkMigrations()V','goZombie()V']:replace_method(p,method,'    .locals 0\n    return-void')
for method in ['getBearerToken','getRefreshToken','getUserEmail','getLastName']:simple_string(p,method+'()Ljava/lang/String;',value='')
simple_string(p,'getUserId()Ljava/lang/String;',value='local')
simple_string(p,'getFirstName()Ljava/lang/String;',call='name')
for method in ['getSmallPicture','getLargePicture','getUserProfilePictureLink']:simple_string(p,method+'()Ljava/lang/String;',call='avatar')
p=base/'usermanagement/data/model/UserScheme.smali'
for method in ['getAccessToken','getEmail','getLastName','getRefreshTime','getRefreshToken','getTokenType']:simple_string(p,method+'()Ljava/lang/String;',value='')
simple_string(p,'getId()Ljava/lang/String;',value='local')
for method in ['getFirstName','getUserName']:simple_string(p,method+'()Ljava/lang/String;',call='name')
for method in ['getPictureLarge','getPictureSmall']:simple_string(p,method+'()Ljava/lang/String;',call='avatar')
replace_method(p,'getLoginStateId()I','    .locals 1\n    const/4 v0, 0x1\n    return v0')
# Prevent writes to AccountManager in offline mode (subjects still read local getters).
s=p.read_text();s=re.sub(r'(\.method public (?:final )?save(?:AccessToken|Email|FirstName|Id|LastName|LoginStateId|PictureLarge|PictureSmall|RefreshTime|RefreshToken|TokenType|UserName)\([^\n]+\)V\n).*?\.end method',lambda m:m[1]+'    .locals 0\n    return-void\n.end method',s,flags=re.S);p.write_text(s)
p=base/'downloader/jf.smali';s=p.read_text();needle='    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z\n\n    move-result v0';assert s.count(needle)==1;s=s.replace(needle,'    # Catalogue reads remain anonymous in local account mode.\n    const/4 v0, 0x0');p.write_text(s)
p=base/'downloader/fh3.smali';replace_method(p,'l()V','    .locals 0\n    # No device registration against a server account.\n    return-void')
p=base/'downloader/jg3.smali'
body='    .locals 1\n    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;\n    move-result-object v0\n    invoke-static {v0}, '+runtime+'->open(Landroid/content/Context;)V\n    return-void'
for name in ['c1()V','h()V','i0()V']:replace_method(p,name,body)
s=p.read_text();needle='    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->profile(Landroid/view/View;)V';assert s.count(needle)==1;s=s.replace(needle,needle+'\n\n    invoke-static {p1}, '+runtime+'->decorate(Landroid/view/View;)V')
needle='    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V';assert s.count(needle)==1;s=s.replace(needle,needle+'\n\n    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;\n    move-result-object v0\n    invoke-static {v0}, '+runtime+'->profileState(Ljava/lang/Object;)V');p.write_text(s)
p=base/'cinemana/ui/login/LoginActivity.smali';replace_method(p,'onCreate(Landroid/os/Bundle;)V','    .locals 0\n    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V\n    invoke-static {p0}, '+runtime+'->open(Landroid/content/Context;)V\n    invoke-virtual {p0}, Landroid/app/Activity;->finish()V\n    return-void')
p=base/'cinemana/domain/models/local/VideoModel.smali';s=p.read_text();start=s.index('.method public final a(Lcom/shabakaty/downloader/s25;');end=s.index('.end method',start);part=s[start:end];part=part.replace('    return-void','    invoke-static {p0}, '+runtime+'->overlay(Ljava/lang/Object;)V\n    return-void');s=s[:start]+part+s[end:];p.write_text(s)
p=base/'downloader/t25.smali';s=p.read_text();start=s.index('.method public q(Ljava/lang/String;J');end=s.index('.end method',start);part=s[start:end];part=part.replace('    .line 1','    invoke-static {p1, p2, p3}, '+runtime+'->progress(Ljava/lang/String;J)V\n\n    .line 1',1);s=s[:start]+part+s[end:];p.write_text(s)
# Existing binding IDs and hierarchy remain intact; add a dedicated action row in the established container.
for p in (root/'res').glob('layout*/fragment_profile.xml'):
 s=p.read_text();marker='<LinearLayout android:orientation="vertical" android:id="@id/ca1_cache_clean124"';a=s.index(marker);b=s.index('>',a)+1
 row='\n                <Button android:layout_width="match_parent" android:layout_height="wrap_content" android:tag="local_account266" android:text="حسابي المحلي والنسخ الاحتياطي" android:textAllCaps="false" />'
 s=s[:b]+row+s[b:];p.write_text(s)
p=root/'AndroidManifest.xml';s=p.read_text();s=s.replace('<application ', '<uses-permission android:name="android.permission.POST_NOTIFICATIONS" />\n    <application ',1)
s=s.replace('</application>','''    <activity android:name="com.shabakaty.cinemana.local.LocalAccountActivity" android:exported="false" android:label="حسابي المحلي" android:theme="@android:style/Theme.Material.NoActionBar" />
        <service android:name="com.shabakaty.cinemana.local.LocalEpisodeJob" android:permission="android.permission.BIND_JOB_SERVICE" android:exported="true" />
    </application>''');p.write_text(s)
p=base/'cinemana/CinemanaApplication.smali';replace_method(p,'e(Ljava/lang/String;)V','    .locals 0\n    return-void')
p=base/'usermanagement/UserManagement.smali';replace_method(p,'logout()Lcom/shabakaty/downloader/f74;','    .locals 1\n    invoke-static {}, '+runtime+'->logout()Lcom/shabakaty/downloader/f74;\n    move-result-object v0\n    return-object v0')
p=base/'cinemana/player/VideoPlayerActivity.smali';s=p.read_text();start=s.index('.method public onPause()V');end=s.index('.end method',start);part=s[start:end];part=part.replace('    return-void','    invoke-static {}, '+runtime+'->flushProgressAsync()V\n    return-void');p.write_text(s[:start]+part+s[end:])
print('Local account API/UI/auth/progress/job hooks applied')
