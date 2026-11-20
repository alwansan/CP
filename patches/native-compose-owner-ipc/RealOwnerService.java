package cp.realowner;

import android.app.Service;
import android.content.Intent;
import android.content.Context;
import android.app.Application;
import android.os.*;
import com.shabakaty.cinemana.htmlbridge.model.*;
import java.util.*;
import java.util.concurrent.*;

/** Private read-only bridge over the existing main-process DAO. No queue or mutation commands. */
public final class RealOwnerService extends Service {
    public static final int ATTACH=1, READ=2, DETACH=3, ATTACHED=4, PAGE=5, REJECTED=6;
    private HandlerThread controlThread;
    private Handler control;
    private Messenger endpoint, client;
    private IBinder.DeathRecipient death;
    // Process-lifetime singleton: do not terminate or replace worker on service destruction.
    private static final ExecutorService READER=Executors.newSingleThreadExecutor(r->new Thread(r,"cp-owner-read"));
    private static OwnerProcessReads processReads;
    private OwnerProcessReads reads;
    private OwnerProcessReads.Lease lease;
    private volatile boolean destroyed;
    private static synchronized OwnerProcessReads getReads(Context app){
        if(Build.VERSION.SDK_INT<28||!"com.cinemana.pro".equals(app.getPackageName())||
            !app.getPackageName().equals(Application.getProcessName())||
            !"com.shabakaty.cinemana.CinemanaApplication".equals(app.getClass().getName()))
            throw new IllegalStateException("real owner process required");
        if(processReads==null)processReads=new OwnerProcessReads(new OwnerPageRead(new ExistingOwnerPageSource(app)),READER);
        return processReads;
    }
    @Override public void onCreate(){
        super.onCreate();
        reads=getReads(getApplicationContext());
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
            if(m.arg1!=0||m.arg2!=0||(m.peekData()!=null&&!m.peekData().isEmpty()))return true;
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
        if(m.what==DETACH){if(m.arg1==0&&m.arg2==0&&request.keySet().equals(Collections.singleton("generation")))detach();return true;}
        if(m.what!=READ||m.arg1<=0)return true;
        final int serial=m.arg1;
        OwnerPageSession.Move move=m.arg2==1?OwnerPageSession.Move.FIRST:m.arg2==2?OwnerPageSession.Move.NEXT:m.arg2==3?OwnerPageSession.Move.REFRESH:null;
        // No arbitrary cursor, test delay, or command payload is accepted.
        if(!request.keySet().equals(Collections.singleton("generation"))){
            send(to,REJECTED,serial,meta(g));return true;
        }
        OwnerProcessReads.Submission submission;
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
