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
    // Process-lifetime singleton: do not terminate or replace worker on service destruction.
    private static final ThreadLocal<Integer> DELAY=new ThreadLocal<>();
    private static final ExecutorService READER=Executors.newSingleThreadExecutor(r->new Thread(r,"cp-owner-read"));
    private static OwnerProcessReads processReads;
    private OwnerProcessReads reads;
    private OwnerProcessReads.Lease lease;
    private volatile boolean destroyed;
    private static synchronized OwnerProcessReads getReads(String packageName){
        if(processReads!=null)return processReads;
        processReads=new OwnerProcessReads(new OwnerPageRead(new OwnerPageRead.Source(){
            public void checkOwnerWorker(){
                if(Looper.myLooper()==Looper.getMainLooper()||!Thread.currentThread().getName().equals("cp-owner-read"))
                    throw new IllegalStateException("worker");
                if(Build.VERSION.SDK_INT>=28&&!packageName.concat(":owner").equals(android.app.Application.getProcessName()))
                    throw new IllegalStateException("process");
            }
            public List<BoundedDownloadRead.AppRow> page(String after)throws Exception{
                Integer pause=DELAY.get();
                DELAY.remove();
                if(pause!=null&&pause>0){
                    android.util.Log.i("CPComposeOwner","CP_OWNER_FIXTURE_DELAY_BEGIN");
                    Thread.sleep(pause);
                    android.util.Log.i("CPComposeOwner","CP_OWNER_FIXTURE_DELAY_END");
                }
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
        }),task->{
            final Integer delay=DELAY.get();
            READER.execute(()->{
                if(delay!=null)DELAY.set(delay);
                try{task.run();}finally{DELAY.remove();}
            });
        });
        return processReads;
    }
    @Override public void onCreate(){
        super.onCreate();
        reads=getReads(getPackageName());
        controlThread=new HandlerThread("cp-owner-control",android.os.Process.THREAD_PRIORITY_BACKGROUND);
        controlThread.start();
        control=new Handler(controlThread.getLooper(),this::handle);
        endpoint=new Messenger(control);
    }
    @Override public IBinder onBind(Intent intent){return endpoint.getBinder();}
    private boolean same(Messenger a,Messenger b){return a!=null&&b!=null&&a.getBinder().equals(b.getBinder());}
    private void detach(){
        if(client!=null&&death!=null)client.getBinder().unlinkToDeath(death,0);
        if(lease!=null)reads.detach(lease);
        lease=null;client=null;death=null;
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
            if(m.arg1!=0||m.arg2!=0)return true;
            detach();lease=reads.attach();final OwnerProcessReads.Lease attached=lease;long g=attached.generation;
            client=to;death=()->control.post(()->{if(lease==attached&&same(client,to))detach();});
            try{client.getBinder().linkToDeath(death,0);}catch(RemoteException e){detach();return true;}
            send(to,ATTACHED,0,meta(g));return true;
        }
        if(!same(client,to))return true;
        Bundle request=m.peekData();
        final OwnerProcessReads.Lease accepted=lease;
        if(accepted==null||!reads.isCurrent(accepted)||request==null||request.getLong("generation",-1)!=accepted.generation)return true;
        final long g=accepted.generation;
        if(m.what==DETACH){detach();return true;}
        if(m.what!=READ||m.arg1<=0)return true;
        final int serial=m.arg1;
        OwnerPageSession.Move move=m.arg2==1?OwnerPageSession.Move.FIRST:m.arg2==2?OwnerPageSession.Move.NEXT:m.arg2==3?OwnerPageSession.Move.REFRESH:null;
        // Debug-only synthetic delay, same UID, fixed bound; never a production command.
        int delay=request.getInt("fixtureDelayMs",0);
        if(delay<0||delay>8000||(delay!=0&&(getApplicationInfo().flags&android.content.pm.ApplicationInfo.FLAG_DEBUGGABLE)==0)){
            send(to,REJECTED,serial,meta(g));return true;
        }
        OwnerProcessReads.Submission submission;
        DELAY.set(delay);
        try{
            submission=reads.submit(accepted,serial,move,result->control.post(()->{
                    if(destroyed||!same(client,to)||lease!=accepted||!reads.isCurrent(accepted))return;
                    if(result==null){send(to,REJECTED,serial,meta(g));return;}
                    if(!reads.canDeliver(accepted,result))return;
                    Bundle out=meta(g);out.putString("status",result.status.name());out.putBoolean("more",result.hasMore);
                    int n=result.rows.size();int[] indices=new int[n];long[] progress=new long[n],total=new long[n];String[] states=new String[n],observations=new String[n];
                    for(int i=0;i<n;i++){OwnerPageRead.Row row=result.rows.get(i);indices[i]=row.index;progress[i]=row.progressBytes;total[i]=row.totalBytes;states[i]=row.transport.name();observations[i]=row.result.name();}
                    out.putIntArray("indices",indices);out.putLongArray("progress",progress);out.putLongArray("total",total);out.putStringArray("states",states);out.putStringArray("observations",observations);
                    send(to,PAGE,serial,out);
            }));
        }finally{DELAY.remove();}
        if(submission!=OwnerProcessReads.Submission.ACCEPTED)send(to,REJECTED,serial,meta(g));
        return true;
    }
    @Override public void onDestroy(){
        destroyed=true;
        if(control!=null)control.post(()->{detach();controlThread.quitSafely();});
        // READER is intentionally process-owned; old work retains its slot until it returns.
        super.onDestroy();
    }
}
