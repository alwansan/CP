package cp.nativegate.test;
import android.app.*;
import android.content.*;
import android.net.Uri;
import android.os.*;
import android.view.accessibility.AccessibilityNodeInfo;

public final class GateInstrumentation extends Instrumentation {
    private void require(boolean ok,String why){if(!ok)throw new AssertionError(why);}
    @Override public void onCreate(Bundle args){super.onCreate(args);start();}
    @Override public void onStart(){
        Bundle result=new Bundle();
        try {
            Context ctx=getTargetContext();
            require("com.cinemana.pro".equals(ctx.getPackageName()),"wrong package");
            require("com.shabakaty.cinemana.CinemanaApplication".equals(ctx.getApplicationContext().getClass().getName()),"old Application not preserved");
            int main=android.os.Process.myPid();
            Bundle b=ctx.getContentResolver().call(Uri.parse("content://com.cinemana.pro.cp-nativeui-gate"),"snapshot",null,null);
            require(b!=null&&b.getBoolean("ready"),"startup order");
            require("cp.nativegate.NativeGateApplication".equals(b.getString("application")),"wrong UI Application");
            int ui=b.getInt("pid");
            require(ui>0&&ui!=main,"UI PID not independent");
            Intent i=new Intent().setClassName("com.cinemana.pro","cp.nativegate.NativeGateActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(i);
            String marker="CP_SAME_PACKAGE_NATIVEUI_READY "+ui;
            long deadline=SystemClock.elapsedRealtime()+45000;
            boolean found=false;
            while(SystemClock.elapsedRealtime()<deadline){
                AccessibilityNodeInfo root=getUiAutomation().getRootInActiveWindow();
                if(root!=null){
                    try {found=!root.findAccessibilityNodeInfosByText(marker).isEmpty();}
                    finally {root.recycle();}
                }
                if(found)break;
                SystemClock.sleep(500);
            }
            require(found,"native UI marker not drawn");
            Bundle after=ctx.getContentResolver().call(Uri.parse("content://com.cinemana.pro.cp-nativeui-gate"),"snapshot",null,null);
            require(after!=null&&after.getBoolean("ready")&&after.getInt("pid")==ui,"UI process changed");
            result.putString("stream","CP_NATIVEUI_FACTORY_IN_PACKAGE_PASS main="+main+" ui="+ui+"\n");
            finish(Activity.RESULT_OK,result);
        } catch(Throwable t){result.putString("stream","CP_NATIVEUI_FACTORY_IN_PACKAGE_FAIL "+android.util.Log.getStackTraceString(t));finish(Activity.RESULT_CANCELED,result);}
    }
}
