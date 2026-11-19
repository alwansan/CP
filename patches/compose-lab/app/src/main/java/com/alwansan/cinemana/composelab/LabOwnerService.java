package com.alwansan.cinemana.composelab;

import android.app.Service;
import android.content.Intent;
import android.os.*;
import com.shabakaty.cinemana.htmlbridge.model.*;
import java.util.*;
import java.util.concurrent.*;

/** Synthetic read-only IPC fixture. No original database, command execution, files or engine. */
public final class LabOwnerService extends Service {
    public static final int ATTACH=1, READ=2, DETACH=3, ATTACHED=4, PAGE=5, REJECTED=6;
    private HandlerThread controlThread;
    private Handler control;
    private Messenger endpoint, client;
    private IBinder.DeathRecipient death;
    private ExecutorService reader;
    private OwnerPageSession session;
    private long generation;
    private volatile boolean destroyed;
    @Override public void onCreate(){
        super.onCreate();
        controlThread=new HandlerThread("cp-owner-control",android.os.Process.THREAD_PRIORITY_BACKGROUND);
        controlThread.start();
        reader=Executors.newSingleThreadExecutor(r->{Thread t=new Thread(r,"cp-owner-read");return t;});
        session=new OwnerPageSession(new OwnerPageRead(new OwnerPageRead.Source(){
            public void checkOwnerWorker(){
                if(Looper.myLooper()==Looper.getMainLooper()||!Thread.currentThread().getName().equals("cp-owner-read"))
                    throw new IllegalStateException("worker");
                if(Build.VERSION.SDK_INT>=28&&!getPackageName().concat(":owner").equals(android.app.Application.getProcessName()))
                    throw new IllegalStateException("process");
            }
            public List<BoundedDownloadRead.AppRow> page(String after){
                List<BoundedDownloadRead.AppRow> result=new ArrayList<>();
                for(int i=1;i<=452&&result.size()<25;i++){
                    String id=String.format(Locale.ROOT,"fixture-%04d",i);
                    if(after==null||id.compareTo(after)>0)result.add(new BoundedDownloadRead.AppRow(id,i,0,"fixture",null));
                }
                return result;
            }
            public BoundedDownloadRead.TransferRow transfer(int id){
                return new BoundedDownloadRead.TransferRow(String.format(Locale.ROOT,"fixture-%04d",id),id,id%101,100,DownloadModel.Transport.PROGRESS);
            }
        }));
        control=new Handler(controlThread.getLooper(),this::handle);
        endpoint=new Messenger(control);
    }
    @Override public IBinder onBind(Intent intent){return endpoint.getBinder();}
    private boolean same(Messenger a,Messenger b){return a!=null&&b!=null&&a.getBinder().equals(b.getBinder());}
    private void detach(){
        if(client!=null&&death!=null)client.getBinder().unlinkToDeath(death,0);
        if(generation>0)session.detach(generation);
        client=null;death=null;
    }
    private void send(Messenger to,int what,int serial,Bundle data){
        if(destroyed||to==null)return;
        Message m=Message.obtain(null,what,serial,0);m.setData(data);
        try{to.send(m);}catch(RemoteException e){if(same(to,client))detach();}
    }
    private Bundle meta(long g){Bundle b=new Bundle();b.putLong("generation",g);b.putInt("ownerPid",android.os.Process.myPid());return b;}
    private boolean handle(Message m){
        if(destroyed||m.sendingUid!=android.os.Process.myUid()||m.replyTo==null)return true;
        final Messenger to=m.replyTo;
        if(m.what==ATTACH){
            if(m.arg1!=0||m.arg2!=0||generation==Long.MAX_VALUE)return true;
            detach();long g=++generation;
            if(!session.attach(g))return true;
            client=to;death=()->control.post(()->{if(g==generation&&same(client,to))detach();});
            try{client.getBinder().linkToDeath(death,0);}catch(RemoteException e){detach();return true;}
            send(to,ATTACHED,0,meta(g));return true;
        }
        if(!same(client,to))return true;
        Bundle request=m.peekData();
        if(request==null||request.getLong("generation",-1)!=generation)return true;
        final long g=generation;
        if(m.what==DETACH){detach();return true;}
        if(m.what!=READ||m.arg1<=0)return true;
        final int serial=m.arg1;
        OwnerPageSession.Move move=m.arg2==1?OwnerPageSession.Move.FIRST:m.arg2==2?OwnerPageSession.Move.NEXT:m.arg2==3?OwnerPageSession.Move.REFRESH:null;
        OwnerPageSession.Ticket ticket=session.begin(g,serial,move);
        if(ticket==null){send(to,REJECTED,serial,meta(g));return true;}
        try{
            reader.execute(()->{
                OwnerPageSession.View view=null;
                try{view=session.execute(ticket);}catch(Exception e){if(e instanceof InterruptedException)Thread.currentThread().interrupt();}
                final OwnerPageSession.View result=view;
                control.post(()->{
                    if(destroyed||!same(client,to)||g!=generation)return;
                    if(result==null){send(to,REJECTED,serial,meta(g));return;}
                    if(!session.isCurrent(result))return;
                    Bundle out=meta(g);out.putString("status",result.status.name());out.putBoolean("more",result.hasMore);
                    int n=result.rows.size();int[] indices=new int[n];long[] progress=new long[n],total=new long[n];String[] states=new String[n],observations=new String[n];
                    for(int i=0;i<n;i++){OwnerPageRead.Row row=result.rows.get(i);indices[i]=row.index;progress[i]=row.progressBytes;total[i]=row.totalBytes;states[i]=row.transport.name();observations[i]=row.result.name();}
                    out.putIntArray("indices",indices);out.putLongArray("progress",progress);out.putLongArray("total",total);out.putStringArray("states",states);out.putStringArray("observations",observations);
                    send(to,PAGE,serial,out);
                });
            });
        }catch(RejectedExecutionException e){session.abandon(ticket);send(to,REJECTED,serial,meta(g));}
        return true;
    }
    @Override public void onDestroy(){
        destroyed=true;
        if(control!=null)control.post(()->{detach();controlThread.quitSafely();});
        if(reader!=null)reader.shutdownNow();
        super.onDestroy();
    }
}
