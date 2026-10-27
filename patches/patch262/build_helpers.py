#!/usr/bin/env python3
"""Compile the typed PATCH262 helpers; stubs/tests never enter the APK.
Use --test for host behavioral checks, --emit-smali to regenerate tracked Smali.
"""
import argparse, hashlib, shutil, subprocess, tempfile
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
parser=argparse.ArgumentParser()
parser.add_argument('--android-jar',type=Path,required=True)
parser.add_argument('--r8-jar',type=Path)
parser.add_argument('--test',action='store_true')
parser.add_argument('--emit-smali',action='store_true')
a=parser.parse_args()
expected={'android.jar':'84072541cbb711eff89f7277100ff854929a446dba7ceb1b195c340e0b4fd3cb','r8.jar':'900dfbc649519969fc5a4c7520d6b7355338e565fa1249874e0190b8d61b1199'}
for name,path in [('android.jar',a.android_jar),('r8.jar',a.r8_jar)]:
 if path and hashlib.sha256(path.read_bytes()).hexdigest()!=expected[name]:raise SystemExit('Unexpected dependency SHA-256: '+str(path))
def run(*args):subprocess.run([str(x) for x in args],check=True)
with tempfile.TemporaryDirectory(prefix='patch262-') as t:
 temp=Path(t);classes=temp/'classes';classes.mkdir()
 sources=sorted((HERE/'src').rglob('*.java'))+sorted((HERE/'stubs').rglob('*.java'))
 run('java','com.sun.tools.javac.Main','-source','8','-target','8','-encoding','UTF-8','-cp',a.android_jar,'-d',classes,*sources)
 if a.test:
  tests=temp/'tests';tests.mkdir()
  run('java','com.sun.tools.javac.Main','-source','8','-target','8','-encoding','UTF-8','-cp',str(a.android_jar)+':'+str(classes),'-d',tests,*sorted((HERE/'tests').rglob('*.java')))
  run('java','-cp',str(tests)+':'+str(classes)+':'+str(a.android_jar),'com.shabakaty.cinemana.ca1.Flow262Test')
 if a.emit_smali:
  if not a.r8_jar:raise SystemExit('--r8-jar is required to regenerate Smali')
  dex=temp/'dex';dex.mkdir();smali=temp/'smali';smali.mkdir()
  program=[]
  for prefix in ['ContinueActions262','MkvCancel262']:
   program+=sorted((classes/'com/shabakaty/cinemana/ca1').glob(prefix+'*.class'))
  java_home=Path(shutil.which('java')).resolve().parents[1]
  run('java','-cp',a.r8_jar,'com.android.tools.r8.D8','--release','--min-api','21','--lib',a.android_jar,'--lib',java_home,'--output',dex,*program)
  apktool=ROOT/'Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar'
  run('java','com.sun.tools.javac.Main','-cp',apktool,'-d',temp,HERE/'Disassemble262.java')
  run('java','-cp',str(temp)+':'+str(apktool),'Disassemble262',dex/'classes.dex',smali)
  dest=ROOT/'Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1'
  for prefix in ['ContinueActions262','MkvCancel262']:
   for old in dest.glob(prefix+'*.smali'):old.unlink()
  files=list((smali/'com/shabakaty/cinemana/ca1').glob('*.smali'))
  if not files:raise SystemExit('No helper classes generated')
  for file in files:shutil.copyfile(file,dest/file.name)
  print('Regenerated',len(files),'helper classes; no stubs or tests packaged.')
