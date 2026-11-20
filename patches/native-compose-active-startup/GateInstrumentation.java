package cp.nativegate.test;
import android.app.*;
import android.content.*;
import android.net.Uri;
import android.os.*;
import android.view.accessibility.AccessibilityNodeInfo;

public final class GateInstrumentation extends Instrumentation {
    private void require(boolean ok,String why){if(!ok)throw new AssertionError(why);}
    private boolean renderer;
    @Override public void onCreate(Bundle args){super.onCreate(args);renderer="true".equals(args.getString("renderer"));start();}
    private AccessibilityNodeInfo find(String text,long timeout) {
        long end=SystemClock.elapsedRealtime()+timeout;
        do {
            AccessibilityNodeInfo root=getUiAutomation().getRootInActiveWindow();
            if(root!=null) {
                try {
                    for(AccessibilityNodeInfo n:root.findAccessibilityNodeInfosByText(text)) {
                        CharSequence t=n.getText(),d=n.getContentDescription();
                        if(text.contentEquals(t==null?"":t)||text.contentEquals(d==null?"":d))return n;
                    }
                } finally {root.recycle();}
            }
            SystemClock.sleep(250);
        } while(SystemClock.elapsedRealtime()<end);
        throw new AssertionError("missing drawn text "+text);
    }
    private void clickText(String text){
        AccessibilityNodeInfo n=find(text,30000);
        for(int depth=0;depth<5&&n!=null;depth++){
            if(n.isClickable()&&n.performAction(AccessibilityNodeInfo.ACTION_CLICK)){n.recycle();return;}
            AccessibilityNodeInfo parent=n.getParent();n.recycle();n=parent;
        }
        throw new AssertionError("click failed "+text);
    }
    @Override public void onStart(){
        Bundle result=new Bundle();
        try {
            Context ctx=getTargetContext();
            require("com.cinemana.pro".equals(ctx.getPackageName()),"wrong package");
            require("com.shabakaty.cinemana.CinemanaApplication".equals(ctx.getApplicationContext().getClass().getName()),"old Application not preserved");
            int main=android.os.Process.myPid();
            Uri uri=Uri.parse("content://com.cinemana.pro.cp-nativeui-gate");
            Bundle b=null;
            long readyDeadline=SystemClock.elapsedRealtime()+10000;
            do {
                b=ctx.getContentResolver().call(uri,"snapshot",null,null);
                if(b!=null&&b.getBoolean("ready"))break;
                SystemClock.sleep(100);
            } while(SystemClock.elapsedRealtime()<readyDeadline);
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
            String markerResult="CP_NATIVEUI_FACTORY_IN_PACKAGE_PASS main="+main+" ui="+ui+"\n";
            if(renderer){
                ctx.startActivity(new Intent().setClassName("com.cinemana.pro","com.alwansan.cinemana.composelab.NativeUiProbeActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
                find("CP_SAME_PACKAGE_COMPOSE_READY",45000).recycle();
                find("PID: "+ui,15000).recycle();
                find("CP_COMPOSE_ROW_1",15000).recycle();
                find("CP_COMPOSE_COUNT_0",15000).recycle();
                clickText("CP_COMPOSE_INCREMENT");
                find("CP_COMPOSE_COUNT_1",15000).recycle();
                Bundle rendered=ctx.getContentResolver().call(uri,"snapshot",null,null);
                require(rendered!=null&&rendered.getBoolean("ready")&&rendered.getInt("pid")==ui,"renderer changed UI process");
                markerResult+="CP_SAME_PACKAGE_COMPOSE_RENDER_PASS main="+main+" ui="+ui+" clicks=1 rows=48_fixture\n";
            }
            result.putString("stream",markerResult);
            finish(Activity.RESULT_OK,result);
        } catch(Throwable t){result.putString("stream","CP_NATIVEUI_FACTORY_IN_PACKAGE_FAIL "+android.util.Log.getStackTraceString(t));finish(Activity.RESULT_CANCELED,result);}
    }
}
