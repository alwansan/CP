#!/usr/bin/env python3
"""Compile and execute the exact restored Enhancements.transform() method.

Extracts the restored method source from the checked-in Java file; does not
silently substitute a hand-written reimplementation for the method under test.
"""
from pathlib import Path
import subprocess
import tempfile
import sys

REPO = Path(__file__).resolve().parents[3]
FILE = REPO / "recovery/generated/java/com/shabakaty/cinemana/ca1/Enhancements.java"
START = "public static java.util.List transform("
def method_source(text):
    at = text.index(START)
    start = text.rfind("\n", 0, at) + 1
    brace = text.index("{", at)
    depth = 0
    for i in range(brace, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return text[start:i + 1]
    raise ValueError("Unterminated Java method")

def main():
    method = method_source(FILE.read_text("utf-8"))
    with tempfile.TemporaryDirectory(prefix="cinemana-transform-") as temp:
        src = Path(temp) / "Enhancements.java"
        src.write_text(r'''import java.util.*;
import java.lang.reflect.*;
import java.math.*;
public class Enhancements {
    static final Map<Object,State> STATES = new WeakHashMap<>();
    static final Map<String,String> ROOTS = new HashMap<>();
    static int resolutionCalls;
    static int mode;
    static boolean descending;
    static class State {
        List<Object> base = new ArrayList<>();
        String query = "";
        boolean updating;
    }
    static Object get(Object o, String k) {
        try { Field f=o.getClass().getDeclaredField(k); f.setAccessible(true); return f.get(o); }
        catch (Exception e) { return null; }
    }
    static String str(Object o, String k) {
        Object v=get(o,k); return v == null ? "" : String.valueOf(v);
    }
    static String num(String str) {
        StringBuilder b = new StringBuilder();
        for(char c:str.trim().toCharArray()) {
            int v = Character.digit(c,10);
            if(v < 0) return "!";
            b.append(v);
        }
        return b.length()==0 ? "" : new BigInteger(b.toString()).toString();
    }
    static void resolveName(Object p, Object item) { resolutionCalls++; }
    static int compare(Object a, Object b, Map<String,String> roots) {
        int n=str(a,"title").compareToIgnoreCase(str(b,"title"));
        return descending ? -n : n;
    }
''' + method + r'''
}
''', "utf-8")
        test = Path(temp) / "EnhancementsTest.java"
        test.write_text(r'''import java.util.*;
class dz0 {}
class ez0 {}
class zv0 { int d=1; }
class d41 {}
class Episode {
    public String episodeNummer, rootEpisode, title;
    Episode(String n,String root,String title) {
        this.episodeNummer=n; this.rootEpisode=root;this.title=title;
    }
}
public class EnhancementsTest {
    static int count;
    static void eq(Object wanted,Object got,String label) {
        count++;
        if(!Objects.equals(wanted,got))
            throw new AssertionError(label+" expected="+wanted+" got="+got);
    }
    public static void main(String[] a) {
        List<Episode> episodes = new ArrayList<>(Arrays.asList(
            new Episode("2","b","Zorro"),new Episode("1","a","Alpha")));
        List raw = episodes;
        eq(true,Enhancements.transform(new Object(),raw)==raw,"unrecognized adapter identity");
        eq(true,Enhancements.transform(new zv0(),raw)==raw,"disabled zv0 identity");
        eq(0,Enhancements.STATES.size(),"disabled adapters do not create state");

        d41 current=new d41();
        eq(2,Enhancements.transform(current,raw).size(),"empty query preserves elements");
        Enhancements.State state=Enhancements.STATES.get(current);
        eq(2,state.base.size(),"initial snapshot");
        state.query=" ٢ ";
        List filtered=Enhancements.transform(current,raw);
        eq(1,filtered.size(),"numeric episode query");
        eq("2", ((Episode)filtered.get(0)).episodeNummer,"Unicode digit normalization");
        eq(2,raw.size(),"original input untouched");
        state.query="two";
        eq(0,Enhancements.transform(current,raw).size(),"nonnumeric query excludes all");
        state.query="2";
        state.updating=true;
        state.base=new ArrayList<>(Collections.singletonList(episodes.get(1)));
        Enhancements.transform(current,raw);
        eq(1,state.base.size(),"updating retains base");

        Enhancements.resolutionCalls=0;
        List sorted=Enhancements.transform(new dz0(),raw);
        eq("Alpha",((Episode)sorted.get(0)).title,"sort ascending with fallback names");
        eq(2,Enhancements.resolutionCalls,"name resolve for each populated item");
        eq("Zorro",((Episode)raw.get(0)).title,"sorting never mutates caller list");
        eq("Alpha",Enhancements.ROOTS.get("a"),"global roots stay untouched by local fallback map");
        Enhancements.descending=true;
        List reversed=Enhancements.transform(new ez0(),raw);
        eq("Zorro",((Episode)reversed.get(0)).title,"sort descending using comparator policy");
        System.out.println("PASS: "+count+" tests of actual Enhancements.transform Java method");
    }
}
'''.replace('eq("Alpha",Enhancements.ROOTS.get("a"),"global roots stay untouched by local fallback map");',
             'eq(false,Enhancements.ROOTS.containsKey("a"),"global roots stay untouched by local fallback map");'), "utf-8")
        cmd=["javac","-encoding","UTF-8","-d",temp,str(src),str(test)]
        subprocess.run(cmd,check=True)
        subprocess.run(["java","-cp",temp,"EnhancementsTest"],check=True)

if __name__ == "__main__":
    main()
