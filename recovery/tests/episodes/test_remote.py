#!/usr/bin/env python3
"""Compile exact recovered Episodes107.remote plus original helpers against fake async server."""
from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess

ROOT=Path(__file__).resolve().parents[3]
SOURCE=ROOT/"recovery/generated/java/com/shabakaty/cinemana/ca1/Episodes107.java"
ANCHORS=[
    "static List<Object> remote(",
    "static String field(",
    "static boolean episodic(",
    "static boolean sameWork(",
    "static /* synthetic */ void lambda$remote$5(",
    "static /* synthetic */ void lambda$remote$6(",
    "static /* synthetic */ void lambda$remote$8("
]
def extract(source,anchor):
    point=source.index(anchor)
    start=source.rfind("\n",0,point)+1
    begin=source.index("{",point)
    depth=0
    for k in range(begin,len(source)):
        depth += (source[k]=="{")-(source[k]=="}")
        if depth==0:return source[start:k+1]
    raise ValueError("unterminated Java method "+anchor)

def main():
    text=SOURCE.read_text("utf-8")
    methods="\n\n".join(extract(text,anchor) for anchor in ANCHORS)
    with TemporaryDirectory(prefix="episode-remote-") as root:
        root=Path(root)
        src=root/"Episodes107.java"
        src.write_text(r"""import java.util.*;
import java.util.concurrent.*;
import java.io.*;
public class Episodes107 {
    interface Sink { void take(Object value); }
    static Object callback(Class<?> type, Sink sink) {return sink;}
""" + methods + "\n}\n",encoding="utf-8")
        (root/"Continue106.java").write_text(r"""import java.lang.reflect.*;
class Continue106 {
    static Exception error;
    static int logs,subscriptions;
    static String lastLog;
    static class Model {
        String nb,rootSeries,kind,episodeDesc;
        Object info;
        Model(String nb,String root,String kind) {this.nb=nb;this.rootSeries=root;this.kind=kind;}
        public void p(Object d,Object info) {this.info=info;}
    }
    static class Repository {
        final Client a=new Client();
        final VideoService b=new VideoService();
        final Downloads d=new Downloads();
    }
    static class Client {
        final Request request=new Request();
        public Request b(String nb,String cache) {
            if(!cache.equals("cacheable-for-authorized, max-age=900"))
                throw new AssertionError("wrong cache policy");
            return request;
        }
    }
    static class Request {
        final java.util.List<Object> items=new java.util.ArrayList<>();
        Throwable failure;
        boolean throwOnRequest;
        public Disposable g(Object ok,Object err,Object complete,Object ignored) {
            if(throwOnRequest) throw new IllegalArgumentException("request not available");
            if(failure!=null) ((Episodes107.Sink)err).take(failure);
            else {
                ((Episodes107.Sink)ok).take(items);
                ((Episodes107.Sink)complete).take(null);
            }
            return new Disposable();
        }
    }
    static class Disposable {boolean disposed;public void h() {disposed=true;subscriptions++;}}
    static class Downloads {final Mapper c=new Mapper(); final Description d=new Description();}
    static class Mapper {boolean reject;
        public Model mapDtoToDomain(Object dto) {
            if(reject) throw new IllegalStateException("mapping failure");
            return (Model) dto;
        }}
    static class Description {public String a(Object o) {return "episode description";}}
    static class VideoService {public String a(String nb) {return "info:"+nb;}}
    static Object get(Object obj,String key) throws Exception {
        Field f=obj.getClass().getDeclaredField(key);
        f.setAccessible(true); return f.get(obj);
    }
    static void set(Object obj,String key,Object value) throws Exception {
        Field f=obj.getClass().getDeclaredField(key);
        f.setAccessible(true); f.set(obj,value);
    }
    static String text(Object obj,String name) throws Exception {
        Object v=get(obj,name);return v==null?"":v.toString();
    }
    static Object call(Object obj,String method,Object...args) throws Exception {
        for(Method m:obj.getClass().getDeclaredMethods())
            if(m.getName().equals(method)&&m.getParameterCount()==args.length){
                m.setAccessible(true);
                try{return m.invoke(obj,args);}
                catch(InvocationTargetException e) {
                    if(e.getCause() instanceof Exception)throw (Exception)e.getCause();
                    throw e;
                }
            }
        throw new NoSuchMethodException(method+" "+obj.getClass());
    }
    static void log(String kind,Exception e){logs++;lastLog=kind;error=e;}
}
class BuildConfig {static final String FLAVOR="";}
""",encoding="utf-8")
        (root/"RemoteTest.java").write_text(r"""import java.util.*;
public class RemoteTest {
    static int tests;
    static void ok(boolean pass,String label) {
        tests++; if(!pass) throw new AssertionError(label);
    }
    static Continue106.Model video(String id,String root,String kind) {
        return new Continue106.Model(id,root,kind);
    }
    static Continue106.Repository repo(){return new Continue106.Repository();}
    public static void main(String[] args) throws Throwable {
        Continue106.subscriptions=0;Continue106.logs=0;
        Continue106.Model active=video("x","series-25","2");
        Continue106.Repository repository=repo();
        Continue106.Model same=video("x","0","2");
        Continue106.Model sameRoot=video("y","series-25","2");
        Continue106.Model unrelated=video("other","elsewhere","2");
        Continue106.Model movie=video("x","series-25","1");
        repository.a.request.items.addAll(Arrays.asList(same,sameRoot,unrelated,movie));
        List<Object> result=Episodes107.remote(repository,active);
        ok(result.size()==2,"only episodes of same series included");
        ok(result.get(0)==same && result.get(1)==sameRoot,"original episode order retained");
        ok(same.rootSeries.equals("series-25"),"missing root copied from active video");
        ok("info:x".equals(same.info),"download related video details fetched");
        ok("episode description".equals(same.episodeDesc),"episode description filled");
        ok(Continue106.subscriptions==1,"subscription disposed upon success");
        ok(Continue106.logs==0,"successful response not logged as error");

        repository=repo();
        repository.a.request.failure=new IllegalStateException("backend error");
        result=Episodes107.remote(repository,active);
        ok(result.isEmpty(),"error response returns empty result");
        ok(Continue106.subscriptions==2,"error response also disposed");
        ok(Continue106.logs==1,"error recorded");
        ok(Continue106.error.getMessage().contains("request failed"),"error cause wrapped");

        repository=repo();
        repository.a.request.items.add(same);
        repository.d.c.reject=true;
        result=Episodes107.remote(repository,active);
        ok(result.isEmpty(),"mapping error returns partial result safely");
        ok(Continue106.subscriptions==3,"mapper error also disposed");
        ok(Continue106.logs==2,"mapping failure recorded");

        repository=repo();
        repository.a.request.throwOnRequest=true;
        result=Episodes107.remote(repository,active);
        ok(result.isEmpty(),"request thrown error returns empty");
        ok(Continue106.subscriptions==3,"no subscription to dispose when request fails");
        ok(Continue106.logs==3,"request failure logged");

        System.out.println("PASS: "+tests+" restored Episodes107.remote tests");
    }
}
""",encoding="utf-8")
        for name,body in [("xc0","public interface xc0 { void accept(Object obj); }"),("j2","public interface j2 { void run(); }")]:
            p=root/"com/shabakaty/downloader"/(name+".java")
            p.parent.mkdir(parents=True,exist_ok=True)
            p.write_text("package com.shabakaty.downloader;\n"+body+"\n",encoding="utf-8")
        files=[src,root/"Continue106.java",root/"RemoteTest.java",*list((root/"com/shabakaty/downloader").glob("*.java"))]
        subprocess.run(["javac","-encoding","UTF-8","-d",str(root),*map(str,files)],check=True)
        subprocess.run(["java","-cp",str(root),"RemoteTest"],check=True)

if __name__=="__main__": main()
