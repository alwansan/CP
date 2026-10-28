#!/usr/bin/env python3
import argparse,subprocess,tempfile
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--android-jar',type=Path,required=True);p.add_argument('--gson-jar',type=Path,required=True);a=p.parse_args();here=Path(__file__).resolve().parent

def run(*cmd):subprocess.run([str(x) for x in cmd],check=True)
with tempfile.TemporaryDirectory(prefix='local-account-tests-') as temp:
 t=Path(temp);main=t/'main';main.mkdir();test=t/'test';test.mkdir()
 run('java','com.sun.tools.javac.Main','-encoding','UTF-8','-cp',a.android_jar,'-d',main,*here.glob('src/**/*.java'),*here.glob('stubs/**/*.java'),here/'tests/LocalAccountStoreTest.java')
 run('java','-cp',main,'LocalAccountStoreTest')
 run('java','com.sun.tools.javac.Main','-encoding','UTF-8','-cp',str(a.android_jar)+':'+str(a.gson_jar)+':'+str(main),'-d',test,*here.glob('tests/runtime/**/*.java'),here/'tests/RuntimeBridgeTest.java')
 run('java','-cp',str(test)+':'+str(main)+':'+str(a.android_jar)+':'+str(a.gson_jar),'com.shabakaty.cinemana.local.RuntimeBridgeTest')
