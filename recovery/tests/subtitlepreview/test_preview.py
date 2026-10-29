#!/usr/bin/env python3
"""Compile and test exact recovered SubtitlePreviewTask.run() method with fake Android handlers."""
from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess

ROOT=Path(__file__).resolve().parents[3]
SOURCE=ROOT/"recovery/generated/java/com/shabakaty/cinemana/mod/SubtitlePreviewTask.java"
ANCHOR="public void run()"

def extract(s):
    i=s.index(ANCHOR);a=s.rfind("\n",0,i)+1;b=s.index("{",i);depth=0
    for k in range(b,len(s)):
        if s[k]=="{":depth+=1
        elif s[k]=="}":
            depth-=1
            if depth==0:return s[a:k+1]
    raise ValueError("unterminated method")

def main():
    method=extract(SOURCE.read_text("utf-8"))
    with TemporaryDirectory(prefix="subtitle-preview-") as directory:
        root=Path(directory)
        (root/"SubtitlePreviewTask.java").write_text(r"""import java.io.*;
class Context {
    File cache;
    Context(File cache) {this.cache=cache;}
    File getCacheDir(){return cache;}
}
class CinemanaPlayerControllerView {
    Object model;
    CinemanaPlayerControllerView(Object model){this.model=model;}
    Object getVideoModel(){return model;}
}
class Uri {
    private final String value;
    private Uri(String value) {this.value=value;}
    static Uri parse(String s){return new Uri(s);}
    String getPath(){return value.startsWith("file:")?value.substring(5):value;}
}
class SubtitlePreviewResult implements Runnable {
    static int callbacks;
    static String last;
    final String message;
    SubtitlePreviewResult(Context ctx,String text,CinemanaPlayerControllerView ctl){
        this.message=text;
    }
    public void run() {last=message; callbacks++;}
}
public class SubtitlePreviewTask implements Runnable {
    private final Context context;
    private final CinemanaPlayerControllerView controller;
    private final String inputPath;
    static String remote;
    static boolean extraction=true;
    static File ffmpeg;
    static String usedStream;
    SubtitlePreviewTask(Context ctx,String path,CinemanaPlayerControllerView ctl) {
        context=ctx;inputPath=path;controller=ctl;
    }
    static String readRemoteText(String s) {
        if("throw".equals(s))throw new IllegalArgumentException("network");
        return remote;
    }
    static File getFfmpeg(Context ctx) {return ffmpeg;}
    static boolean extractEmbedded(File binary,String video,String stream,File output) {
        usedStream=stream;
        if(!extraction)return false;
        try {java.nio.file.Files.writeString(output.toPath(),"1\n00:00:00,000 --> 00:00:01,000\nHello");}
        catch(Exception e){return false;}
        return true;
    }
    static String readText(File input) throws java.io.IOException {
        return java.nio.file.Files.readString(input.toPath());
    }
""" + method + "\n}\n", "utf-8")
        (root/"AndroidStub.java").write_text(r"""class AndroidStub {}
""","utf-8")
        (root/"PreviewTest.java").write_text(r"""import java.io.*;
import java.nio.file.*;
public class PreviewTest {
    static int tests;
    static void check(boolean value,String label){tests++;if(!value)throw new AssertionError(label);}
    static void clear() {SubtitlePreviewResult.callbacks=0;SubtitlePreviewResult.last=null;}
    static void perform(Context ctx,String source,CinemanaPlayerControllerView controller) {
        new SubtitlePreviewTask(ctx,source,controller).run();
    }
    public static void main(String[] a)throws Exception {
        File root=Files.createTempDirectory("subtitle-test").toFile();
        Context context=new Context(root);
        CinemanaPlayerControllerView controller=new CinemanaPlayerControllerView("model");
        SubtitlePreviewTask.remote="  1\nHello  ";
        clear();
        perform(context,"https://example.invalid/subtitles.srt",controller);
        check(SubtitlePreviewResult.callbacks==1,"remote success posted");
        check(SubtitlePreviewResult.last.contains("Hello"),"remote content returned");
        SubtitlePreviewTask.remote="  ";
        clear();
        perform(context,"https://example.invalid/blank.srt",controller);
        check(SubtitlePreviewResult.last.contains("تعذر"),"blank text posts translated failure");
        clear();
        perform(null,"anything",controller);
        check(SubtitlePreviewResult.callbacks==1,"null context still posts error preview");
        clear();
        perform(context,"throw",controller);
        check(SubtitlePreviewResult.last.contains("تعذر"),"caught network exceptions post failure");

        File video=new File(root,"episode.mkv");
        Files.write(video.toPath(), new byte[]{1,2,3,4});
        File ffmpeg=new File(root,"ffmpeg");
        Files.write(ffmpeg.toPath(),new byte[]{1});
        SubtitlePreviewTask.ffmpeg=ffmpeg;
        com.shabakaty.cinemana.features.LocalMkvResolver.value="file:"+video.getAbsolutePath();
        SubtitlePreviewTask.extraction=true;
        clear();
        perform(context,"embedded://mkv/ar",controller);
        check(SubtitlePreviewResult.last.contains("Hello"),"embedded subtitle extracted");
        check("ar".equals(SubtitlePreviewTask.usedStream),"embedded stream forwarded");
        check(!new File(root,"cinemana_subtitle_preview.srt").exists(),"temporary SRT deleted after success");
        SubtitlePreviewTask.extraction=false;
        clear();
        perform(context,"embedded://mkv/en",controller);
        check(SubtitlePreviewResult.last.contains("تعذر"),"failed embedded extraction posts failure");
        com.shabakaty.cinemana.features.LocalMkvResolver.value=new File(root,"absent.mkv").getAbsolutePath();
        clear();
        perform(context,"embedded://mkv/en",controller);
        check(SubtitlePreviewResult.last.contains("تعذر"),"missing MKV posts failure");
        clear();
        perform(context,"embedded://mkv/en",null);
        check(SubtitlePreviewResult.last.contains("تعذر"),"missing video controller posts failure");
        System.out.println("PASS: "+tests+" tests of exact SubtitlePreviewTask.run Java method");
    }
}
""","utf-8")
        sources={
            "android/os/Looper.java":r"""package android.os;
public final class Looper {private static final Looper MAIN=new Looper();public static Looper getMainLooper(){return MAIN;}}
""",
            "android/os/Handler.java":r"""package android.os;
public final class Handler {public Handler(Looper loop){}public boolean post(Runnable r){r.run();return true;}}
""",
            "com/shabakaty/cinemana/features/LocalMkvResolver.java":r"""package com.shabakaty.cinemana.features;
public final class LocalMkvResolver {
    public static String value;
    public static String resolve(Object context,Object model){return value;}
}
""",
            "com/shabakaty/cinemana/ca1/I18n161.java":r"""package com.shabakaty.cinemana.ca1;
public final class I18n161 {public static String t(String input){return input;}}
""",
        }
        files=[root/"SubtitlePreviewTask.java",root/"PreviewTest.java"]
        for rel,txt in sources.items():
            dest=root/rel
            dest.parent.mkdir(parents=True,exist_ok=True)
            dest.write_text(txt,"utf-8")
            files.append(dest)
        subprocess.run(["javac","-encoding","UTF-8","-d",directory,*map(str,files)],check=True)
        subprocess.run(["java","-cp",directory,"PreviewTest"],check=True)

if __name__=="__main__":main()
