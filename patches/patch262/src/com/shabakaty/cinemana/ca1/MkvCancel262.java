package com.shabakaty.cinemana.ca1;
import android.content.Context;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.*;

/** A delete intent fences replay and publication before any bytes are removed. */
public final class MkvCancel262 {
    private static final ConcurrentHashMap<String,Process> processes=new ConcurrentHashMap<String,Process>();
    private static final ConcurrentHashMap<String,Thread> workers=new ConcurrentHashMap<String,Thread>();
    private static final ThreadLocal<Object[]> current=new ThreadLocal<Object[]>();
    private MkvCancel262() {}
    static String id(Object item) throws Exception { return Restart108.str(item,"id"); }
    public static boolean blocked(Object context,Object item) {
        if(!(context instanceof Context)||item==null)return true;
        try {return ((Context)context).getSharedPreferences("ca1_delete_intent",0).getBoolean(id(item),false);}
        catch(Exception e){return true;}
    }
    public static void check(Object context,Object item) throws Exception {
        if(blocked(context,item))throw new IOException("MKV task cancelled by user");
        Fresh121.validate(context,item);
        current.set(new Object[]{context,item});
        workers.put(id(item),Thread.currentThread());
    }
    public static void checkCurrent() throws Exception {
        Object[] job=current.get();
        if(job==null)throw new IOException("Missing MKV request ownership");
        check(job[0],job[1]);
    }
    public static void register(Process process) throws Exception {
        Object[] job=current.get();
        if(job==null){process.destroy();throw new IOException("Missing MKV process ownership");}
        String key=id(job[1]);processes.put(key,process);
        try {checkCurrent();}catch(Exception e){process.destroy();processes.remove(key,process);throw e;}
    }
    public static void unregister(Process process) {
        for(Map.Entry<String,Process> e:processes.entrySet())if(e.getValue()==process)processes.remove(e.getKey(),process);
    }
    public static void clearCurrent(){
        Object[] job=current.get();
        if(job!=null)try{workers.remove(id(job[1]),Thread.currentThread());}catch(Exception ignored){}
        current.remove();
    }
    public static void prepareDelete(Context context,Object snapshot) throws Exception {
        String id=id(snapshot);if(id.isEmpty())throw new IOException("Missing deletion identity");
        Object row=DownloadStore263.combined(context,id);
        Object item=Restart108.get(row,"cinemanaDownloadItem");
        if(item==null)throw new IOException("Download item disappeared before cancellation");
        int task=(int)Restart108.number(item,"downloadTaskId");
        if(!context.getSharedPreferences("ca1_delete_intent",0).edit().putBoolean(id,true).commit())throw new IOException("Unable to persist delete intent");
        Fresh121.deleted(context,id);
        if(task!=0 && Restart108.active(task)) {
            Object downloader=Restart108.call(Class.forName("com.liulishuo.filedownloader.FileDownloader"),"getImpl",new Object[0]);
            Restart108.call(downloader,"pause",new Object[]{Integer.valueOf(task)});
        }
        Class<?> exporter=Class.forName("com.shabakaty.cinemana.features.MkvExporter");
        Object lock=Restart108.get(exporter,"JOB_LOCK");
        Set<?> active=(Set<?>)Restart108.get(exporter,"ACTIVE_JOB_KEYS");
        Object executor=Restart108.get(exporter,"JOB_EXECUTOR");
        String key="item:"+id;
        synchronized(lock) {
            if(executor instanceof ThreadPoolExecutor) {
                ThreadPoolExecutor pool=(ThreadPoolExecutor)executor;
                for(Runnable r:new ArrayList<Runnable>(pool.getQueue())) {
                    String jobKey="";
                    try {jobKey=String.valueOf(Restart108.get(r,"val$jobKey"));}
                    catch(Exception missing){try{jobKey=String.valueOf(Restart108.get(r,"key"));}catch(Exception ignored){}}
                    if(key.equals(jobKey) && pool.remove(r)) active.remove(key);
                }
            }
        }
        long deadline=System.nanoTime()+TimeUnit.SECONDS.toNanos(15);
        for(;;) {
            Process process=processes.get(id);if(process!=null)process.destroy();
            boolean owned;synchronized(lock){owned=active.contains(key);}
            boolean nativeOwned=task!=0 && Restart108.active(task);
            Thread worker=workers.get(id);
            boolean finishing=worker!=null && worker.isAlive();
            if(!owned && !nativeOwned && !finishing)break;
            if(System.nanoTime()>=deadline)throw new IOException("MKV cancellation is pending; media retained for a safe retry");
            Thread.sleep(50);
        }
        Restart108.call(Class.forName("com.shabakaty.cinemana.features.MkvStateStore"),"setBusy",new Object[]{context,item,Boolean.FALSE,"CANCELLED"});
    }
    public static void augmentPaths(java.util.Collection<String> paths) {
        for(String path:new ArrayList<String>(paths)) {
            if(path==null||path.isEmpty())continue;
            if(path.toLowerCase(Locale.ROOT).endsWith(".mp4")) {
                paths.add(path+".temp");
                addMkvPaths(paths,path.substring(0,path.length()-4)+".mkv");
                java.io.File source=new java.io.File(path);
                addMkvPaths(paths,new java.io.File(source.getParentFile(),"(No Sub) "+source.getName().substring(0,source.getName().length()-4)+".mkv").getPath());
            } else if(path.toLowerCase(Locale.ROOT).endsWith(".mkv"))addMkvPaths(paths,path);
        }
    }
    private static void addMkvPaths(java.util.Collection<String> paths,String path) {
        java.io.File output=new java.io.File(path);paths.add(path);paths.add(path+".bak");
        java.io.File parent=output.getParentFile();java.io.File[] files=parent==null?null:parent.listFiles();
        if(files!=null)for(java.io.File f:files)if(f.isFile()&&f.getName().startsWith(output.getName()+".cnm115-")&&f.getName().endsWith(".part"))paths.add(f.getPath());
    }
}
