#!/usr/bin/env python3
"""Compile only real local-account helpers; API stubs never enter the APK."""
import argparse,subprocess,hashlib,tempfile,shutil
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--android-jar',type=Path,required=True);p.add_argument('--r8-jar',type=Path,required=True);a=p.parse_args()
here=Path(__file__).resolve().parent;root=here.parents[1]
def run(*cmd):subprocess.run([str(x) for x in cmd],check=True)
for file,expected in [(a.android_jar,'6e67dca81d30295e31ee6a28cfb601b6b66aaeaee51a92386ed099a64cea5996'),(a.r8_jar,'900dfbc649519969fc5a4c7520d6b7355338e565fa1249874e0190b8d61b1199')]:
 if hashlib.sha256(file.read_bytes()).hexdigest()!=expected:raise SystemExit('Unexpected build dependency SHA-256: '+str(file))
with tempfile.TemporaryDirectory(prefix='local-account-build-') as temp:
 t=Path(temp);classes=t/'classes';classes.mkdir();dex=t/'dex';dex.mkdir();out=t/'smali'
 run('java','com.sun.tools.javac.Main','-source','8','-target','8','-encoding','UTF-8','-cp',a.android_jar,'-d',classes,*here.glob('src/**/*.java'),*here.glob('stubs/**/*.java'),here.parent/'patch262/src/com/shabakaty/cinemana/ca1/ContinueActions262.java',here.parent/'patch262/src/com/shabakaty/cinemana/ca1/ResumeDisplay263.java',here.parent/'patch262/stubs/com/shabakaty/cinemana/ca1/Continue106.java',here.parent/'patch262/stubs/com/shabakaty/cinemana/ca1/I18n161.java')
 program=list(classes.glob('com/shabakaty/cinemana/local/*.class'))+list(classes.glob('com/shabakaty/cinemana/ca1/ContinueActions262*.class'))
 run('java','-cp',a.r8_jar,'com.android.tools.r8.D8','--release','--min-api','21','--lib',a.android_jar,'--lib',Path(shutil.which('java')).resolve().parents[1],'--classpath',classes,'--output',dex,*program)
 jar=root/'Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar'
 run('java','com.sun.tools.javac.Main','-cp',jar,'-d',t,root/'patches/patch262/Disassemble262.java')
 run('java','-cp',str(t)+':'+str(jar),'Disassemble262',dex/'classes.dex',out)
 dest=root/'Cinemana_PATCH252_Project/app/smali_classes11'
 if dest.exists():shutil.rmtree(dest)
 shutil.copytree(out,dest)
 legacy=root/'Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1'
 for old in legacy.glob('ContinueActions262*.smali'):old.unlink()
 for file in (dest/'com/shabakaty/cinemana/ca1').glob('*.smali'):shutil.move(str(file),legacy/file.name)
 assert not list(dest.glob('com/shabakaty/downloader/*')),'Stubs packaged!'
 print('Generated',len(list(dest.rglob('*.smali'))),'local helper classes, no API stubs')
