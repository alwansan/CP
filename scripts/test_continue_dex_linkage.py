#!/usr/bin/env python3
"""Verify the exact synthetic callback dependency in the SIGNED APK.

PATCH289 passed a broad DEX inventory check yet a device reported NoClassDefFoundError
at Continue106.card. Never touch that method without an explicit on-device test.
"""
import sys
import zipfile
from pathlib import Path
from verify_apk_dex import dex_classes

def verify(apk):
    root=Path(__file__).resolve().parents[1]
    base=root/'Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1'
    name='Continue106$$ExternalSyntheticLambda3'
    descriptor='Lcom/shabakaty/cinemana/ca1/'+name+';'
    callback=(base/(name+'.smali')).read_text()
    owner=(base/'Continue106.smali').read_text()
    original=owner.split('.method public static card(Ljava/lang/Object;)V',1)[1].split('.end method',1)[0]
    assert '.class public final synthetic '+descriptor in callback
    assert '.implements Ljava/lang/Runnable;' in callback
    assert 'Continue106;->lambda$card$5(Ljava/lang/ref/WeakReference;)V' in callback
    alias='Lcom/shabakaty/cinemana/ca1/Continue106$ExternalSyntheticLambda3;'
    compat=(base/'Continue106$ExternalSyntheticLambda3.smali').read_text()
    assert '.class public final '+alias in compat
    assert '.implements Ljava/lang/Runnable;' in compat
    assert 'Continue106;->lambda$card$5(Ljava/lang/ref/WeakReference;)V' in compat
    assert 'new-instance v3, '+alias in original
    assert 'invoke-direct {v3, v0}, '+alias+'-><init>(Ljava/lang/ref/WeakReference;)V' in original
    assert 'Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;' in original
    assert 'View;->post(Ljava/lang/Runnable;)Z' not in original
    # PATCH299: additionally verify the new method cache is in the signed APK.
    helper='Lcom/shabakaty/cinemana/ca1/MethodCache299;'
    helper_src=(base/'MethodCache299.smali').read_text()
    call=owner.split('.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;',1)[1].split('.end method',1)[0]
    assert '.class public final '+helper in helper_src
    assert 'MethodCache299;->declaredMethods(Ljava/lang/Class;)' in call
    assert 'Class;->getDeclaredMethods()' not in call
    with zipfile.ZipFile(apk) as z:
        matches=[]
        helper_matches=[]
        alias_matches=[]
        for n in z.namelist():
            if n.startswith('classes') and n.endswith('.dex'):
                found=dex_classes(z.read(n))
                if descriptor in found:matches.append(n)
                if helper in found:helper_matches.append(n)
                if alias in found:alias_matches.append(n)
        if len(alias_matches)!=1:raise ValueError('MISSING one-dollar ART callback: '+repr(alias_matches))
        if len(helper_matches)!=1:raise ValueError('Reflection helper missing or duplicated in signed DEX: '+repr(helper_matches))
        if len(matches)!=1:
            raise ValueError('Synthetic callback '+descriptor+' expected in exactly one DEX; found '+repr(matches))
    print('PASS PATCH300 both one-dollar and two-dollar callback descriptors in signed APK:',alias_matches[0],matches[0])

if __name__=='__main__':
    try:verify(Path(sys.argv[1]))
    except (AssertionError,ValueError,IndexError,KeyError,zipfile.BadZipFile) as e:sys.exit('FAIL: synthetic callback linkage: '+str(e))
