package com.alwansan.cinemana.composelab;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;

/** Legacy startup fixture: counts real invocation; never used for nativeui. */
public final class LabStartupApplication extends Application {
    public LabStartupApplication(){LabStartupEvidence.constructed(false,getClass().getName());}
    @Override protected void attachBaseContext(Context base){
        LabStartupEvidence.classify(base,false);
        super.attachBaseContext(base);
        LabStartupEvidence.attached(false);
    }
    @Override public void onCreate(){super.onCreate();LabStartupEvidence.created(false);}
    @Override public void onConfigurationChanged(Configuration config){super.onConfigurationChanged(config);LabStartupEvidence.config(config.orientation);}
}
