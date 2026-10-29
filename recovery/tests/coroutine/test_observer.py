#!/usr/bin/env python3
"""Compile and test restored coroutine body, extracted from real source."""
from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess

ROOT=Path(__file__).resolve().parents[3]
SOURCE=ROOT/"recovery/generated/java/com/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl.java"
ANCHOR="public final Object t(Object result)"

def extract(text):
    pos=text.index(ANCHOR)
    line=text.rfind("\n",0,pos)+1
    begin=text.index("{",pos)
    depth=0
    for idx in range(begin,len(text)):
        if text[idx]=="{": depth+=1
        if text[idx]=="}":
            depth-=1
            if depth==0: return text[line:idx+1]
    raise ValueError("unterminated method")

def main():
    method=extract(SOURCE.read_text("utf-8"))
    with TemporaryDirectory(prefix="coroutine-test-") as directory:
        src=Path(directory)/"ObserverWhileStartedImpl.java"
        src.write_text(r"""public class ObserverWhileStartedImpl {
    public hn1 s;
    static class Emission {
        public int v=0;
        public Object w;
        public ObserverWhileStartedImpl x;
        Emission(ObserverWhileStartedImpl x, Object w) {this.x=x;this.w=w;}
""" + method + r"""
    }
}
interface hn1 { Object o(Object data, Object continuation); }
class te0 { static final Object r = new Object(); }
class qv4 { static final Object a = new Object(); }
class j96 {
    static int calls;
    static void i(Object o) {
        calls++;
        if (o instanceof Failure) throw ((Failure)o).error;
    }
}
class Failure {
    RuntimeException error=new IllegalArgumentException("failed result");
}
""", "utf-8")
        test=Path(directory)/"ObserverTest.java"
        test.write_text(r"""public class ObserverTest {
    static int checks;
    static void expect(boolean p, String name) {
        checks++;
        if (!p) throw new AssertionError(name);
    }
    public static void main(String[] args) {
        ObserverWhileStartedImpl parent = new ObserverWhileStartedImpl();
        int[] dispatched={0};
        parent.s=(data, cont) -> {
            expect("episode".equals(data), "forward emitted element");
            dispatched[0]++;
            return qv4.a;
        };
        ObserverWhileStartedImpl.Emission e =
            new ObserverWhileStartedImpl.Emission(parent,"episode");
        expect(e.t(qv4.a)==qv4.a,"normal dispatch returns Unit");
        expect(e.v==1,"records continuation state");
        expect(dispatched[0]==1,"callback called once");
        expect(e.t(qv4.a)==qv4.a,"resume with Unit returns Unit");
        expect(dispatched[0]==1,"resume must not call callback twice");

        parent.s=(data, cont) -> te0.r;
        e=new ObserverWhileStartedImpl.Emission(parent,"episode");
        expect(e.t(qv4.a)==te0.r,"suspended callback propagates marker");
        expect(e.v==1,"state marked before suspension");
        expect(e.t(qv4.a)==qv4.a,"resume after suspension returns Unit");

        e=new ObserverWhileStartedImpl.Emission(parent,"episode");
        e.v=2;
        try { e.t(qv4.a); throw new AssertionError("expected state exception"); }
        catch (IllegalStateException ex) {
            expect(ex.getMessage().contains("resume"),"invalid state rejected");
        }
        e=new ObserverWhileStartedImpl.Emission(parent,"episode");
        try {e.t(new Failure());throw new AssertionError("expected failure");}
        catch (IllegalArgumentException ex) {expect(true,"failed coroutine result propagated");}
        expect(j96.calls>=3,"result checked during start and resume");
        System.out.println("PASS: "+checks+" coroutine continuation tests");
    }
}
""","utf-8")
        subprocess.run(["javac","-encoding","UTF-8","-d",directory,str(src),str(test)],check=True)
        subprocess.run(["java","-cp",directory,"ObserverTest"],check=True)

if __name__=="__main__":main()
