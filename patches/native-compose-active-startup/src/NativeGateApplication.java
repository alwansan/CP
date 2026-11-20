package cp.nativegate;
import android.app.Application;
import android.content.Context;
public final class NativeGateApplication extends Application {
    static int constructed,attached,created,provider;
    static boolean providerBeforeCreate;
    public NativeGateApplication(){constructed++;}
    @Override protected void attachBaseContext(Context base){
        if(!NativeGateFactory.ui()||!"com.cinemana.pro".equals(base.getPackageName()))throw new IllegalStateException("unsafe minimal Application process");
        super.attachBaseContext(base);attached++;
    }
    @Override public void onCreate(){super.onCreate();created++;}
    static boolean ready(){return constructed==1&&attached==1&&created==1&&provider==1&&providerBeforeCreate;}
}
