package cp.realowner;
import android.app.Application;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.*;
import java.util.*;
import java.util.concurrent.*;
/** Diagnostic caller in the actual :nativeui process. Never used by normal UI. */
public final class UiIpcProbeProvider extends ContentProvider {
    private static final String PKG="com.cinemana.pro";
    private static void require(boolean ok,String msg){if(!ok)throw new IllegalStateException(msg);}
    @Override public boolean onCreate(){
        require(Build.VERSION.SDK_INT>=28&&PKG.equals(getContext().getPackageName())&&
            (PKG+":nativeui").equals(Application.getProcessName()),"wrong probe process");
        return true;
    }
    private static final class Reply {
        final int what,serial,uid;
        final Bundle data;
        Reply(Message m){what=m.what;serial=m.arg1;uid=m.sendingUid;data=new Bundle(m.getData());}
    }
    private static Reply take(BlockingQueue<Reply> q,int what,int serial)throws InterruptedException{
        Reply r=q.poll(12,TimeUnit.SECONDS);
        require(r!=null&&r.what==what&&r.serial==serial&&r.uid==android.os.Process.myUid(),"unexpected IPC reply");
        return r;
    }
    private static void send(Messenger remote,Messenger me,int what,int serial,int move,long generation)throws RemoteException{
        Message m=Message.obtain(null,what,serial,move);m.replyTo=me;
        if(generation>0){Bundle b=new Bundle();b.putLong("generation",generation);m.setData(b);}
        remote.send(m);
    }
    private static int checkPage(Reply r,long generation,int owner){
        Bundle b=r.data;
        require(b.keySet().equals(new HashSet<>(Arrays.asList("generation","ownerPid","status","more","indices","progress","total","states","observations","titles","displayKeys"))),"unexpected page fields");
        require(b.getLong("generation")==generation&&b.getInt("ownerPid")==owner&&"OBSERVED".equals(b.getString("status")),"not observed owner page");
        int[] ix=b.getIntArray("indices");long[] p=b.getLongArray("progress"),t=b.getLongArray("total");
        String[] s=b.getStringArray("states"),o=b.getStringArray("observations"),titles=b.getStringArray("titles"),keys=b.getStringArray("displayKeys");
        require(ix!=null&&p!=null&&t!=null&&s!=null&&o!=null&&ix.length<=24&&ix.length==p.length&&ix.length==t.length&&ix.length==s.length&&ix.length==o.length&&titles!=null&&ix.length==titles.length&&keys!=null&&ix.length==keys.length,"invalid page array lengths");
        // Fresh disposable emulator: this gate is the actual empty owner page,
        // populated Room and transport fixtures are independent tests.
        require(ix.length==0&&!b.getBoolean("more"),"expected empty clean emulator database");
        return ix.length;
    }
    @Override public Bundle call(String method,String arg,Bundle extras){
        require(android.os.Binder.getCallingUid()==android.os.Process.myUid()&&"probe".equals(method)&&arg==null&&extras==null,"unauthorized probe");
        require(Looper.myLooper()!=Looper.getMainLooper(),"probe on UI thread");
        Context app=getContext().getApplicationContext();
        require("cp.nativegate.NativeGateApplication".equals(app.getClass().getName()),"wrong UI Application");
        HandlerThread thread=new HandlerThread("cp-ui-ipc-probe",android.os.Process.THREAD_PRIORITY_BACKGROUND);
        thread.start();
        final BlockingQueue<Reply> q=new ArrayBlockingQueue<>(8);
        Messenger me=new Messenger(new Handler(thread.getLooper(),m->{q.offer(new Reply(m));return true;}));
        CompletableFuture<IBinder> connected=new CompletableFuture<>();
        ServiceConnection conn=new ServiceConnection(){
            @Override public void onServiceConnected(ComponentName n,IBinder b){connected.complete(b);}
            @Override public void onServiceDisconnected(ComponentName n){connected.completeExceptionally(new IllegalStateException("service disconnected"));}
            @Override public void onNullBinding(ComponentName n){connected.completeExceptionally(new IllegalStateException("null binding"));}
        };
        boolean bound=false;
        try{
            bound=app.bindService(new Intent().setClassName(PKG,"cp.realowner.RealOwnerService"),conn,Context.BIND_AUTO_CREATE);
            require(bound,"bind false");
            Messenger remote=new Messenger(connected.get(12,TimeUnit.SECONDS));
            send(remote,me,1,0,0,0);
            Reply a=take(q,4,0);
            long g=a.data.getLong("generation");int owner=a.data.getInt("ownerPid");
            require(g>0&&owner>0&&owner!=android.os.Process.myPid(),"owner/UI PID separation");
            send(remote,me,2,1,1,g);int first=checkPage(take(q,5,1),g,owner);
            send(remote,me,2,2,3,g);int refresh=checkPage(take(q,5,2),g,owner);
            send(remote,me,2,3,2,g);Reply rejected=take(q,6,3);
            require(rejected.data.getLong("generation")==g&&rejected.data.getInt("ownerPid")==owner,"unexpected NEXT rejection");
            send(remote,me,3,0,0,g);
            send(remote,me,1,0,0,0);
            Reply a2=take(q,4,0);long g2=a2.data.getLong("generation");
            require(g2>g&&a2.data.getInt("ownerPid")==owner,"session generation did not advance");
            send(remote,me,2,1,1,g2);checkPage(take(q,5,1),g2,owner);
            send(remote,me,3,0,0,g2);
            Bundle b=new Bundle();b.putInt("ownerPid",owner);b.putInt("uiPid",android.os.Process.myPid());
            b.putInt("first",first);b.putInt("refresh",refresh);b.putBoolean("nextBlocked",true);b.putBoolean("freshGeneration",true);return b;
        }catch(Exception e){throw new IllegalStateException("real owner IPC probe",e);}
        finally{if(bound)app.unbindService(conn);thread.quitSafely();}
    }
    @Override public Cursor query(Uri u,String[] p,String s,String[] a,String sort){throw new UnsupportedOperationException();}
    @Override public String getType(Uri u){throw new UnsupportedOperationException();}
    @Override public Uri insert(Uri u,ContentValues v){throw new UnsupportedOperationException();}
    @Override public int delete(Uri u,String s,String[] a){throw new UnsupportedOperationException();}
    @Override public int update(Uri u,ContentValues v,String s,String[] a){throw new UnsupportedOperationException();}
}
