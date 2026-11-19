package com.alwansan.cinemana.composelab;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.shabakaty.cinemana.htmlbridge.model.UiProcessPolicy;

/** Standalone startup fixture: counters model legacy hooks, not production initialization.
 * The real Cinemana Application subclasses Dagger and still requires a separate ART gate.
 */
public final class LabStartupApplication extends Application {
    private static UiProcessPolicy.Role role=UiProcessPolicy.Role.UNKNOWN;
    private static String process="";
    private static int attachCount,legacyAttachCount,createCount,legacyCreateCount,providerCount;
    private static boolean providerAfterAttach,providerBeforeCreate;
    @Override protected void attachBaseContext(Context base){
        // Decide before any application-specific initialization.
        String name=Build.VERSION.SDK_INT>=28?Application.getProcessName():null;
        role=UiProcessPolicy.classify(Build.VERSION.SDK_INT,base.getPackageName(),name);
        process=name==null?"":name;
        super.attachBaseContext(base);
        attachCount++;
        if(UiProcessPolicy.preserveLegacyStartup(role))legacyAttachCount++;
    }
    @Override public void onCreate(){
        super.onCreate();
        createCount++;
        if(UiProcessPolicy.preserveLegacyStartup(role))legacyCreateCount++;
    }
    static void providerStarted(){
        providerCount++;
        providerAfterAttach=attachCount==1;
        providerBeforeCreate=createCount==0;
    }
    public static boolean uiReady(){
        return UiProcessPolicy.allowNewUi(role)&&attachCount==1&&createCount==1&&legacyAttachCount==0&&legacyCreateCount==0;
    }
    static android.os.Bundle snapshot(){
        android.os.Bundle b=new android.os.Bundle();
        b.putString("role",role.name());b.putString("process",process);
        b.putInt("pid",android.os.Process.myPid());
        b.putInt("attach",attachCount);b.putInt("legacyAttach",legacyAttachCount);
        b.putInt("create",createCount);b.putInt("legacyCreate",legacyCreateCount);
        b.putInt("provider",providerCount);
        b.putBoolean("providerAfterAttach",providerAfterAttach);b.putBoolean("providerBeforeCreate",providerBeforeCreate);
        b.putBoolean("allowOwnerRead",UiProcessPolicy.allowOwnerRead(role));b.putBoolean("allowNewUi",UiProcessPolicy.allowNewUi(role));
        return b;
    }
}
