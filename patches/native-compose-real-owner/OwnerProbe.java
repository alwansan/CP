package cp.ownerprobe;
import android.app.*;
import android.content.Context;
import android.os.*;
import java.util.concurrent.atomic.AtomicBoolean;
import com.shabakaty.cinemana.htmlbridge.model.*;

public final class OwnerProbe extends Instrumentation {
    private void require(boolean ok,String why){if(!ok)throw new AssertionError(why);}
    @Override public void onCreate(Bundle args){super.onCreate(args);start();}
    @Override public void onStart(){
        Bundle result=new Bundle();
        try{
            Context app=getTargetContext().getApplicationContext();
            require(app instanceof Application,"not application context");
            require("com.cinemana.pro".equals(app.getPackageName())&&app.getPackageName().equals(Application.getProcessName()),"not real owner process");
            require("com.shabakaty.cinemana.CinemanaApplication".equals(app.getClass().getName()),"wrong original Application");
            require(Looper.myLooper()!=Looper.getMainLooper(),"instrumentation on main");
            ExistingOwnerPageSource source=new ExistingOwnerPageSource(app);
            AtomicBoolean rejected=new AtomicBoolean(false);
            runOnMainSync(()->{
                try{source.checkOwnerWorker();}
                catch(IllegalStateException expected){rejected.set("worker required".equals(expected.getMessage()));}
                catch(Exception e){throw new RuntimeException(e);}
            });
            require(rejected.get(),"main thread not rejected");
            // Exact original Room linkage and raw SELECT must succeed, not merely
            // a model result that hides an exception as UNAVAILABLE.
            source.checkOwnerWorker();
            java.util.List<BoundedDownloadRead.AppRow> raw=source.page(null);
            require(raw!=null&&raw.size()<=25,"raw page limit");
            OwnerPageRead reader=new OwnerPageRead(source);
            OwnerPageRead.Page first=reader.read(null);
            require(first.status==OwnerPageRead.Status.OBSERVED,"original Room page not observed: "+first.status);
            require(first.rows.size()<=24,"projected page limit");
            OwnerPageRead.Page second=reader.read(null);
            require(second.status==OwnerPageRead.Status.OBSERVED&&second.rows.size()<=24,"repeat read unavailable");
            result.putString("stream","CP_REAL_OWNER_ROOM_READ_PASS pid="+android.os.Process.myPid()+" raw="+raw.size()+" first="+first.rows.size()+" second="+second.rows.size()+" main_thread_blocked=1\n");
            finish(Activity.RESULT_OK,result);
        }catch(Throwable e){result.putString("stream","CP_REAL_OWNER_ROOM_READ_FAIL "+android.util.Log.getStackTraceString(e));finish(Activity.RESULT_CANCELED,result);}
    }
}
