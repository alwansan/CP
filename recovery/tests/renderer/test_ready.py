#!/usr/bin/env python3
"""Test the actual reconstructed H26410SoftwareRenderer.b() ready-state method."""
import subprocess
from pathlib import Path
from tempfile import TemporaryDirectory

ROOT=Path(__file__).resolve().parents[3]
SOURCE=ROOT/"recovery/generated/java/com/shabakaty/cinemana/player/H26410SoftwareRenderer.java"
ANCHOR="public boolean b()"

def extract(text):
    i=text.index(ANCHOR);start=text.rfind("\n",0,i)+1;brace=text.index("{",i);depth=0
    for k in range(brace,len(text)):
        depth+=(text[k]=="{")-(text[k]=="}")
        if depth==0:return text[start:k+1]
    raise ValueError("Missing end brace")

def main():
    method=extract(SOURCE.read_text("utf-8"))
    with TemporaryDirectory(prefix="high10ready-") as temp:
        code=Path(temp)/"H26410SoftwareRenderer.java"
        code.write_text(r"""public final class H26410SoftwareRenderer {
    Object surface;
    boolean configured;
    int lastLoggedReadyState=-1;
    int logCount;
    String lastEvent;
    static class PlayerDiagnosticLog {
        static int calls;
        static Object last;
        static void value(String name,Object result) {calls++;last=result;}
    }
    void logSurfaceState(String s) {logCount++;lastEvent=s;}
""" + method + "\n}\n","utf-8")
        test=Path(temp)/"ReadyTest.java"
        test.write_text(r"""public final class ReadyTest {
    static int count;
    static void check(boolean b,String name) {
        count++;if(!b)throw new AssertionError(name);
    }
    public static void main(String[] args) {
        H26410SoftwareRenderer player=new H26410SoftwareRenderer();
        check(!player.b(),"null surface not ready");
        check(player.lastLoggedReadyState==0,"ready int state false");
        check(Boolean.FALSE.equals(H26410SoftwareRenderer.PlayerDiagnosticLog.last),
            "ready log value false");
        int logs=player.logCount;
        check(!player.b(),"still not ready");
        check(player.logCount==logs,"no duplicate unchanged state log");
        player.surface=new Object();
        check(!player.b(),"unconfigured renderer not ready");
        player.configured=true;
        check(player.b(),"configured and surface ready");
        check(player.lastLoggedReadyState==1,"ready int state true");
        check(Boolean.TRUE.equals(H26410SoftwareRenderer.PlayerDiagnosticLog.last),
            "ready log value true");
        check("isReady_true".equals(player.lastEvent),"ready transition diagnostic");
        logs=player.logCount;
        check(player.b(),"ready stays ready");
        check(player.logCount==logs,"ready state logging not repeated");
        player.surface=null;
        check(!player.b(),"surface loss resets ready state");
        check("isReady_false".equals(player.lastEvent),"surface loss diagnostic");
        System.out.println("PASS: "+count+" actual H26410SoftwareRenderer.b tests");
    }
}
""","utf-8")
        subprocess.run(["javac","-encoding","UTF-8","-d",temp,str(code),str(test)],check=True)
        subprocess.run(["java","-cp",temp,"ReadyTest"],check=True)

if __name__=="__main__":main()
