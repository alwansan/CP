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
    assert 'new-instance v3, '+descriptor in original
    assert 'invoke-direct {v3, v0}, '+descriptor+'-><init>(Ljava/lang/ref/WeakReference;)V' in original
    assert 'Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;' in original
    assert 'View;->post(Ljava/lang/Runnable;)Z' not in original
    with zipfile.ZipFile(apk) as z:
        matches=[]
        for n in z.namelist():
            if n.startswith('classes') and n.endswith('.dex'):
                found=dex_classes(z.read(n))
                if descriptor in found:matches.append(n)
        if len(matches)!=1:
            raise ValueError('Synthetic callback '+descriptor+' expected in exactly one DEX; found '+repr(matches))
    print('PASS stable PATCH288 continue-card callback and synthetic lambda class in signed APK:',matches[0])

if __name__=='__main__':
    try:verify(Path(sys.argv[1]))
    except (AssertionError,ValueError,IndexError,KeyError,zipfile.BadZipFile) as e:sys.exit('FAIL: synthetic callback linkage: '+str(e))
