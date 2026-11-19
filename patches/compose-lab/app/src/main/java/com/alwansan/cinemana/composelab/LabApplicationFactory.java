package com.alwansan.cinemana.composelab;
import android.app.Application;
import android.os.Build;
import androidx.core.app.CoreComponentFactory;
import com.shabakaty.cinemana.htmlbridge.model.NativeApplicationChoice;

/** Android-instantiated factory. Fixed names; no context or Intent before attach. */
public final class LabApplicationFactory extends CoreComponentFactory {
    private static final String PKG="com.alwansan.cinemana.composelab";
    private static final String LEGACY=PKG+".LabStartupApplication";
    private static final String MINIMAL=PKG+".LabMinimalApplication";
    @Override public Application instantiateApplication(ClassLoader cl,String name)
            throws InstantiationException,IllegalAccessException,ClassNotFoundException {
        String process=Build.VERSION.SDK_INT>=28?Application.getProcessName():null;
        String selected=NativeApplicationChoice.choose(Build.VERSION.SDK_INT,PKG,process,name,LEGACY,MINIMAL);
        return super.instantiateApplication(cl,selected);
    }
}
