package cp.nativegate.test;
import android.app.*;
import android.content.*;
import android.net.Uri;
import android.os.*;
import android.view.accessibility.AccessibilityNodeInfo;
import android.graphics.Rect;
import android.util.Log;
import java.io.*;
import java.util.*;
import java.util.regex.Pattern;

public final class GateInstrumentation extends Instrumentation {
    private void require(boolean ok,String why){if(!ok)throw new AssertionError(why);}
    private boolean renderer;
    private static final String TAG="CPNativeGate";
    private static final String PKG="com.cinemana.pro";
    private int recoveries=0;
    private String stage="start";
    private String str(CharSequence x){return x==null?"":x.toString();}
    private String shell(String command) throws IOException {
        try(InputStream in=new ParcelFileDescriptor.AutoCloseInputStream(getUiAutomation().executeShellCommand(command));
            ByteArrayOutputStream out=new ByteArrayOutputStream()){
            byte[] buf=new byte[4096];int n;
            while((n=in.read(buf))!=-1){if(out.size()+n>1024*1024)throw new IOException("diagnostic output too large");out.write(buf,0,n);}
            return out.toString("UTF-8");
        }
    }
    static boolean launcherFocus(String focus) {
        return Pattern.compile("mCurrentFocus=Window\\{[^\\n}]*Application Not Responding: com\\.google\\.android\\.apps\\.nexuslauncher\\}").matcher(focus).find()
            && Pattern.compile("mFocusedApp=ActivityRecord\\{[^\\n}]* com\\.cinemana\\.pro/").matcher(focus).find();
    }
    private void guardSelfTest(){
        String focus="mCurrentFocus=Window{abc u0 Application Not Responding: com.google.android.apps.nexuslauncher}\nmFocusedApp=ActivityRecord{abc u0 com.cinemana.pro/.Example t8}";
        require(launcherFocus(focus),"launcher guard positive");
        require(!launcherFocus(focus.replace("com.google.android.apps.nexuslauncher",PKG)),"app ANR must not be dismissed");
        require(!launcherFocus(focus.replace("com.cinemana.pro/", "other.app/")),"unrelated foreground");
        require(!launcherFocus(""),"empty focus");
        Log.i(TAG,"CP_NATIVE_GATE_LAUNCHER_GUARD_PASS assertions=4");
    }
    private void setStage(String value){stage=value;Log.i(TAG,"CP_NATIVE_GATE_STAGE "+stage);}
    private boolean recoverLauncher(AccessibilityNodeInfo root){
        if(recoveries>=2)return false;
        List<AccessibilityNodeInfo> titles=root.findAccessibilityNodeInfosByViewId("android:id/alertTitle");
        List<AccessibilityNodeInfo> buttons=root.findAccessibilityNodeInfosByViewId("android:id/aerr_close");
        try{
            if(titles.size()!=1||buttons.size()!=1)return false;
            AccessibilityNodeInfo title=titles.get(0),button=buttons.get(0);
            if(!"android".equals(str(title.getPackageName()))||
               !"Pixel Launcher isn't responding".equals(str(title.getText()))||
               !"android".equals(str(button.getPackageName()))||
               !"android.widget.Button".equals(str(button.getClassName()))||
               !"Close app".equals(str(button.getText()))||
               !button.isEnabled()||!button.isClickable()||!button.isVisibleToUser())return false;
            Rect bounds=new Rect();button.getBoundsInScreen(bounds);
            if(bounds.isEmpty()||bounds.left<0||bounds.top<0)return false;
            String focus;
            try{focus=shell("dumpsys window displays");}
            catch(IOException e){Log.w(TAG,"ANR focus evidence unavailable",e);return false;}
            if(!launcherFocus(focus))return false;
            Log.i(TAG,"CP_NATIVE_GATE_LAUNCHER_ANR_EVIDENCE "+stage+" "+bounds);
            for(String line:focus.split("\n"))if(line.contains("mCurrentFocus=")||line.contains("mFocusedApp="))Log.i(TAG,line.trim());
            if(!button.performAction(AccessibilityNodeInfo.ACTION_CLICK))return false;
            recoveries++;
            Log.i(TAG,"CP_NATIVE_GATE_LAUNCHER_ANR_RECOVERED "+recoveries);
            SystemClock.sleep(1000);
            return true;
        } finally{
            for(AccessibilityNodeInfo n:titles)n.recycle();
            for(AccessibilityNodeInfo n:buttons)n.recycle();
        }
    }
    private void describe(AccessibilityNodeInfo node,int depth,int[] budget){
        if(node==null||depth>16||budget[0]--<=0)return;
        String text=str(node.getText()),desc=str(node.getContentDescription());
        if(!text.isEmpty()||!desc.isEmpty()){
            Log.i(TAG,"window "+str(node.getPackageName())+" "+str(node.getViewIdResourceName())+" text="+text.substring(0,Math.min(160,text.length()))+" desc="+desc.substring(0,Math.min(160,desc.length())));
        }
        for(int x=0;x<node.getChildCount()&&budget[0]>0;x++){
            AccessibilityNodeInfo child=node.getChild(x);
            if(child!=null){try{describe(child,depth+1,budget);}finally{child.recycle();}}
        }
    }
    private void diagnose(){
        Log.e(TAG,"CP_NATIVE_GATE_FAILURE_STAGE "+stage+" recoveries="+recoveries);
        try{
            AccessibilityNodeInfo root=getUiAutomation().getRootInActiveWindow();
            if(root!=null){try{Log.i(TAG,"active root "+str(root.getPackageName()));describe(root,0,new int[]{160});}finally{root.recycle();}}
            for(String line:shell("dumpsys window displays").split("\n"))
                if(line.contains("mCurrentFocus=")||line.contains("mFocusedApp="))Log.i(TAG,line.trim());
        }catch(Exception e){Log.w(TAG,"diagnostics unavailable",e);}
    }
    @Override public void onCreate(Bundle args){super.onCreate(args);renderer="true".equals(args.getString("renderer"));start();}
    private AccessibilityNodeInfo find(String text,long timeout) {
        long end=SystemClock.elapsedRealtime()+timeout;
        do {
            AccessibilityNodeInfo root=getUiAutomation().getRootInActiveWindow();
            if(root!=null) {
                try {
                    if(recoverLauncher(root))continue;
                    for(AccessibilityNodeInfo n:root.findAccessibilityNodeInfosByText(text)) {
                        CharSequence t=n.getText(),d=n.getContentDescription();
                        if(PKG.equals(str(n.getPackageName()))&&n.isVisibleToUser()&&(text.contentEquals(t==null?"":t)||text.contentEquals(d==null?"":d)))return n;
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
            guardSelfTest();
            android.accessibilityservice.AccessibilityServiceInfo info=getUiAutomation().getServiceInfo();
            info.flags|=android.accessibilityservice.AccessibilityServiceInfo.FLAG_REPORT_VIEW_IDS;
            getUiAutomation().setServiceInfo(info);
            setStage("startup-provider");
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
            setStage("diagnostic-activity");
            Intent i=new Intent().setClassName(PKG,"cp.nativegate.NativeGateActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(i);
            find("CP_SAME_PACKAGE_NATIVEUI_READY "+ui,45000).recycle();
            Bundle after=ctx.getContentResolver().call(Uri.parse("content://com.cinemana.pro.cp-nativeui-gate"),"snapshot",null,null);
            require(after!=null&&after.getBoolean("ready")&&after.getInt("pid")==ui,"UI process changed");
            String markerResult="CP_NATIVEUI_FACTORY_IN_PACKAGE_PASS main="+main+" ui="+ui+"\n";
            if(renderer){
                setStage("compose-launch");
                ctx.startActivity(new Intent().setClassName("com.cinemana.pro","com.alwansan.cinemana.composelab.NativeUiProbeActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
                find("CP_SAME_PACKAGE_COMPOSE_READY",45000).recycle();
                setStage("compose-content");
                find("PID: "+ui,15000).recycle();
                find("CP_COMPOSE_ROW_1",15000).recycle();
                find("CP_COMPOSE_COUNT_0",15000).recycle();
                setStage("compose-click");
                clickText("CP_COMPOSE_INCREMENT");
                find("CP_COMPOSE_COUNT_1",15000).recycle();
                Bundle rendered=ctx.getContentResolver().call(uri,"snapshot",null,null);
                require(rendered!=null&&rendered.getBoolean("ready")&&rendered.getInt("pid")==ui,"renderer changed UI process");
                markerResult+="CP_SAME_PACKAGE_COMPOSE_RENDER_PASS main="+main+" ui="+ui+" clicks=1 rows=48_fixture\n";
            }
            result.putString("stream",markerResult);
            finish(Activity.RESULT_OK,result);
        } catch(Throwable t){diagnose();Log.e(TAG,"Gate failed",t);result.putString("stream","CP_NATIVEUI_FACTORY_IN_PACKAGE_FAIL "+android.util.Log.getStackTraceString(t));finish(Activity.RESULT_CANCELED,result);}
    }
}
