package cp.ipcprobe;
import android.app.*;
import android.content.*;
import android.net.Uri;
import android.os.*;
public final class IpcProbe extends Instrumentation {
    private void require(boolean b,String s){if(!b)throw new AssertionError(s);}
    @Override public void onCreate(Bundle b){super.onCreate(b);start();}
    @Override public void onStart(){
        Bundle out=new Bundle();
        try {
            Context app=getTargetContext().getApplicationContext();
            require("com.cinemana.pro".equals(app.getPackageName())&&app.getPackageName().equals(Application.getProcessName()),"wrong main process");
            require("com.shabakaty.cinemana.CinemanaApplication".equals(app.getClass().getName()),"wrong legacy Application");
            Bundle r=app.getContentResolver().call(Uri.parse("content://com.cinemana.pro.cp-real-owner-ipc-probe"),"probe",null,null);
            require(r!=null&&r.getInt("ownerPid")==android.os.Process.myPid()&&r.getInt("uiPid")>0&&r.getInt("uiPid")!=android.os.Process.myPid(),"wrong PID evidence");
            require(r.getInt("first",-1)==0&&r.getInt("refresh",-1)==0&&r.getBoolean("nextBlocked")&&r.getBoolean("freshGeneration"),"missing read/session evidence");
            out.putString("stream","CP_REAL_OWNER_IPC_PASS owner="+r.getInt("ownerPid")+" ui="+r.getInt("uiPid")+" rows=0 refresh=1 nextBlocked=1 freshGeneration=1\n");
            finish(Activity.RESULT_OK,out);
        }catch(Throwable t){out.putString("stream","CP_REAL_OWNER_IPC_FAIL "+android.util.Log.getStackTraceString(t));finish(Activity.RESULT_CANCELED,out);}
    }
}
