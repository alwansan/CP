package cp.nativegate;
import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
/** Startup-only diagnostic; no DB, service, owner fixture, or Compose renderer yet. */
public final class NativeGateActivity extends Activity {
    @Override protected void onCreate(Bundle state){
        super.onCreate(state);
        if(!NativeGateFactory.ui()||!(getApplication() instanceof NativeGateApplication)||!NativeGateApplication.ready())
            throw new IllegalStateException("nativeui not isolated");
        try {
            Class<?> c=Class.forName("com.alwansan.cinemana.composelab.NativeUiProbeActivity",false,getClassLoader());
            if(!Activity.class.isAssignableFrom(c))throw new IllegalStateException("missing isolated UI class");
        } catch(ClassNotFoundException e){throw new IllegalStateException(e);}
        int old=getResources().getIdentifier("app_name","string",getPackageName());
        int newer=getResources().getIdentifier("cpui_selected","string",getPackageName());
        if(old==0||newer==0||old==newer)throw new IllegalStateException("merged resources missing");
        getResources().getString(old);getResources().getString(newer);
        TextView v=new TextView(this);
        v.setText("CP_SAME_PACKAGE_NATIVEUI_READY "+android.os.Process.myPid());
        v.setTextSize(22);v.setPadding(24,32,24,32);setContentView(v);
    }
}
