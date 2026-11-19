package com.alwansan.cinemana.nativeuilab;
import android.app.Service;
import android.content.Intent;
import android.os.*;
import java.io.*;
import java.util.concurrent.*;
/** Bounded synthetic contention fixture, never actual media/engine work. */
public final class LabLoadService extends Service {
    private ExecutorService pool;
    private volatile boolean running;
    @Override public IBinder onBind(Intent intent){return null;}
    @Override public int onStartCommand(Intent intent,int flags,int startId){
        if(pool!=null)return START_NOT_STICKY;
        running=true;pool=Executors.newFixedThreadPool(3);
        long end=SystemClock.elapsedRealtime()+45000;
        for(int i=0;i<2;i++)pool.submit(()->{
            long x=17;while(running&&SystemClock.elapsedRealtime()<end){
                for(int j=0;j<30000;j++)x=(x*1664525L+1013904223L)^j;
                if(x==0)android.util.Log.d("CPNativeLab","fixture tick");
            }
        });
        pool.submit(()->{
            File f=new File(getCacheDir(),"preview-load.bin");
            byte[] block=new byte[65536];
            try(RandomAccessFile out=new RandomAccessFile(f,"rw")){
                while(running&&SystemClock.elapsedRealtime()<end){
                    out.seek(0);for(int i=0;i<16;i++)out.write(block);out.getFD().sync();
                    Thread.sleep(35);
                }
            }catch(Exception ignored){}finally{f.delete();}
        });
        android.util.Log.i("CPNativeLab","load fixture pid="+android.os.Process.myPid());
        new Handler(Looper.getMainLooper()).postDelayed(()->stopSelf(startId),45500);
        return START_NOT_STICKY;
    }
    @Override public void onDestroy(){running=false;if(pool!=null)pool.shutdownNow();super.onDestroy();}
}
