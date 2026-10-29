#!/usr/bin/env python3
"""Compile the actual recovered MkvExporter watcher body and test stable-file guards."""
from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess

SOURCE=Path(__file__).resolve().parents[3]/"recovery/generated/java/com/shabakaty/cinemana/features/MkvExporter.java"
ANCHOR="private static void waitForCompletedVideoAndExport("

def extract(text):
    at=text.index(ANCHOR)
    begin=text.rfind("\n",0,at)+1
    brace=text.index("{",at)
    depth=0
    for i in range(brace,len(text)):
        depth+=(text[i]=="{")-(text[i]=="}")
        if depth==0:return text[begin:i+1]
    raise ValueError("method not closed")

def main():
    watcher=extract(SOURCE.read_text("utf-8"))
    with TemporaryDirectory(prefix="mkv-watcher-") as tmp:
        root=Path(tmp)
        (root/"MkvExporter.java").write_text(r"""import java.io.*;
import java.util.*;
class Context {}
class Environment {
    static File external;
    static File getExternalStorageDirectory(){return external;}
}
public final class MkvExporter {
    private static final String ROOT="Cinemana/work";
    private static final long QUIET_MS=45L;
    private static final long POLL_MS=8L;
    static File candidate;
    static File exported;
    static int calls;
    static int checks;
    static boolean growOnce;
    static final List<String> logs=new ArrayList<>();
    static File locateVideoForItem(Context ctx,String collection,String title,String season,String episode,Object model) {
        calls++;
        if(growOnce && calls==3 && candidate!=null) {
            try(FileOutputStream o=new FileOutputStream(candidate,true)){o.write(1);}
            catch(Exception e){throw new IllegalStateException(e);}
        }
        return candidate;
    }
    static void waitAndExport(Context ctx,File file,Object model) {exported=file;}
    static void appendExternalLog(Context ctx,String event){logs.add(event);}
    static void setField(Object model,String key,Object value) throws Exception {
        java.lang.reflect.Field f=model.getClass().getDeclaredField(key);
        f.setAccessible(true);
        f.set(model,value);
    }
    static String stripExtension(String name) {
        int x=name.lastIndexOf('.');return x<0?name:name.substring(0,x);
    }
    static String buildExpectedBase(String title,String season,String episode) {return title;}
    static boolean nonEmpty(String x) {return x!=null&&!x.isEmpty();}
""" + watcher + "\n}\n", "utf-8")
        (root/"WatcherTest.java").write_text(r"""import java.io.*;
import java.nio.file.*;
public final class WatcherTest {
    static int assertions;
    static final Context ctx=new Context();
    static final class Model {String path;}
    static void check(boolean pass,String label) {
        assertions++;if(!pass)throw new AssertionError(label);
    }
    static File create(File folder,String name,int bytes)throws Exception {
        File f=new File(folder,name);
        byte[] data=new byte[bytes];
        Files.write(f.toPath(),data);
        return f;
    }
    static boolean logContains(String fragment) {
        for(String s:MkvExporter.logs)if(s.contains(fragment))return true;
        return false;
    }
    static void reset(File file) {
        MkvExporter.candidate=file;
        MkvExporter.exported=null;
        MkvExporter.calls=0;
        MkvExporter.growOnce=false;
        MkvExporter.logs.clear();
    }
    static void start(Model model) throws Exception {
        try {
            java.lang.reflect.Method watcher=MkvExporter.class.getDeclaredMethod(
                "waitForCompletedVideoAndExport",Context.class,String.class,String.class,
                String.class,String.class,Object.class);
            watcher.setAccessible(true);
            watcher.invoke(null,ctx,"collection","name","1","2",model);
        } catch (java.lang.reflect.InvocationTargetException e) {
            throw new IllegalStateException("watcher failed",e.getCause());
        }
    }
    public static void main(String[] args) throws Exception {
        File dir=Files.createTempDirectory("mkv-recovery").toFile();
        Environment.external=dir;
        File mp4=create(dir,"episode.mp4",2048);
        reset(mp4);
        Model model=new Model();
        start(model);
        check(MkvExporter.exported==mp4,"stable MP4 selected");
        check("episode.mp4".equals(model.path),"download path assigned");
        check(logContains("final video stable"),"stable source recognized");
        check(logContains("VIDEO_READY_FOR_MKV"),"ready event logged");
        check(MkvExporter.calls>3,"waited several polling cycles");

        File oldMkv=create(dir,"episode.mkv",3000);
        reset(oldMkv);
        model=new Model();
        start(model);
        check(MkvExporter.exported.equals(mp4),"fresh MP4 sibling chosen instead of old MKV");
        check("episode.mp4".equals(model.path),"sibling path assigned");

        File missing=create(dir,"other.mkv",3000);
        reset(missing);
        model=new Model();
        start(model);
        check(MkvExporter.exported==null,"existing MKV without fresh MP4 must not export");
        check(logContains("SKIP_EXISTING_MKV"),"stale MKV skipped with explicit reason");

        File shortSibling=create(dir,"short.mkv",3000);
        create(dir,"short.mp4",100);
        reset(shortSibling);
        start(new Model());
        check(MkvExporter.exported==null,"too-short sibling MP4 must not be exported");
        check(logContains("SKIP_EXISTING_MKV"),"reject undersized MP4");

        File mutable=create(dir,"growing.mp4",2048);
        reset(mutable);
        MkvExporter.growOnce=true;
        model=new Model();
        start(model);
        check(MkvExporter.exported.equals(mutable),"growth resets quiet period then exports");
        check(mutable.length()==2049,"growth simulated during polling");
        check("growing.mp4".equals(model.path),"updated MP4 path stored");
        System.out.println("PASS: "+assertions+" tests of exact MkvExporter stable video watcher");
    }
}
""","utf-8")
        subprocess.run(["javac","-encoding","UTF-8","-d",tmp,str(root/"MkvExporter.java"),str(root/"WatcherTest.java")],check=True)
        subprocess.run(["java","-cp",tmp,"WatcherTest"],check=True)

if __name__=="__main__":main()
