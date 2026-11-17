package com.shabakaty.cinemana.local;

import android.os.Environment;
import android.os.Process;
import android.util.Log;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;

/** Diagnostic-only, bounded nonblocking admission. Never a download receipt or recovery ledger. */
public final class TraceWriterDL {
    private static final String TAG="CPDLTrace";
    private static final int CAP=4096, CHUNK=128;
    private static final ArrayBlockingQueue<Event> Q=new ArrayBlockingQueue<>(CAP);
    private static final AtomicBoolean ARMED=new AtomicBoolean();
    private static final AtomicLong DROPPED=new AtomicLong();
    private static final ThreadPoolExecutor EXEC=new ThreadPoolExecutor(1,1,30,TimeUnit.SECONDS,
            new LinkedBlockingQueue<Runnable>(1),r->{Thread t=new Thread(r,"cpdl-trace");t.setDaemon(true);return t;});
    static {EXEC.allowCoreThreadTimeOut(true);}
    private static final class Event {
        final long time=System.currentTimeMillis(); final int pid=Process.myPid();
        final String thread=Thread.currentThread().getName(), msg;
        Event(String msg){this.msg=msg;}
        String line(){return time+" "+msg;}
    }
    public static void offer(String message){
        if(message==null)return;
        try {
            if(!Q.offer(new Event(message))){
                long n=DROPPED.incrementAndGet();
                if(n==1||n%128==0)Log.w(TAG,"diagnostic_queue_full total="+n);
                return;
            }
            arm();
        }catch(RuntimeException e){Log.w(TAG,"diagnostic_enqueue_failed",e);}
    }
    private static void arm(){
        if(!ARMED.compareAndSet(false,true))return;
        try{EXEC.execute(TraceWriterDL::drain);}catch(RuntimeException e){ARMED.set(false);Log.w(TAG,"diagnostic_worker_rejected",e);}
    }
    private static void drain(){
        ArrayList<Event> batch=new ArrayList<>(CHUNK);
        try{
            while(true){
                batch.clear(); Q.drainTo(batch,CHUNK);
                if(batch.isEmpty())return;
                try{write(batch);}catch(IOException|RuntimeException e){
                    DROPPED.addAndGet(batch.size());Log.w(TAG,"diagnostic_write_failed count="+batch.size(),e);
                }
            }
        }finally{ARMED.set(false);if(!Q.isEmpty())arm();}
    }
    private static void write(List<Event> batch)throws IOException{
        File dir=new File(Environment.getExternalStorageDirectory(),"Cinemana/work/log");
        if(!dir.isDirectory()&&!dir.mkdirs()&&!dir.isDirectory())throw new IOException("log directory unavailable");
        try(BufferedWriter raw=new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(dir,"downloads.log"),true),StandardCharsets.UTF_8));
            BufferedWriter diag=new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(dir,"diagnostics.log"),true),StandardCharsets.UTF_8))){
            for(Event e:batch){
                String line=e.line();raw.write(line);raw.newLine();
                diag.write("UTC_MS="+e.time+" PID="+e.pid+" THREAD="+e.thread+" EVENT="+UUID.randomUUID().toString().replace("-","")+" MESSAGE="+line);diag.newLine();
            }
        }
    }
}
