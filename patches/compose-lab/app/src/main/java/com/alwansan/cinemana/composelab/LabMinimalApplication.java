package com.alwansan.cinemana.composelab;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;

/** Separate Application, no legacy subclass or application getters. */
public final class LabMinimalApplication extends Application {
    public LabMinimalApplication(){LabStartupEvidence.constructed(true,getClass().getName());}
    @Override protected void attachBaseContext(Context base){
        LabStartupEvidence.classify(base,true);
        super.attachBaseContext(base);
        LabStartupEvidence.attached(true);
    }
    @Override public void onCreate(){super.onCreate();LabStartupEvidence.created(true);}
    @Override public void onConfigurationChanged(Configuration config){super.onConfigurationChanged(config);LabStartupEvidence.config(config.orientation);}
}
