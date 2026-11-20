package cp.nativegate;

import android.app.*;
import android.content.*;
import android.content.pm.ApplicationInfo;
import android.os.Build;

/** Only the exact private nativeui process bypasses the original factory. */
public final class NativeGateFactory extends AppComponentFactory {
    private AppComponentFactory legacy;
    private synchronized AppComponentFactory legacy() {
        if (legacy == null) {
            try {
                legacy=(AppComponentFactory)Class.forName("androidx.core.app.CoreComponentFactory",true,getClass().getClassLoader()).getDeclaredConstructor().newInstance();
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException("Original component factory unavailable",e);
            }
        }
        return legacy;
    }
    static boolean ui() {
        return Build.VERSION.SDK_INT>=28 && "com.cinemana.pro:nativeui".equals(Application.getProcessName());
    }
    @Override public Application instantiateApplication(ClassLoader cl,String name) throws InstantiationException,IllegalAccessException,ClassNotFoundException {
        if(ui()) {
            if(!"com.shabakaty.cinemana.CinemanaApplication".equals(name)) throw new IllegalStateException("unexpected original Application");
            return super.instantiateApplication(cl,"cp.nativegate.NativeGateApplication");
        }
        return legacy().instantiateApplication(cl,name);
    }
    @Override public ClassLoader instantiateClassLoader(ClassLoader cl,ApplicationInfo info) {
        return ui()?super.instantiateClassLoader(cl,info):legacy().instantiateClassLoader(cl,info);
    }
    @Override public Activity instantiateActivity(ClassLoader cl,String name,Intent i) throws InstantiationException,IllegalAccessException,ClassNotFoundException {
        return ui()?super.instantiateActivity(cl,name,i):legacy().instantiateActivity(cl,name,i);
    }
    @Override public Service instantiateService(ClassLoader cl,String name,Intent i) throws InstantiationException,IllegalAccessException,ClassNotFoundException {
        return ui()?super.instantiateService(cl,name,i):legacy().instantiateService(cl,name,i);
    }
    @Override public ContentProvider instantiateProvider(ClassLoader cl,String name) throws InstantiationException,IllegalAccessException,ClassNotFoundException {
        return ui()?super.instantiateProvider(cl,name):legacy().instantiateProvider(cl,name);
    }
    @Override public BroadcastReceiver instantiateReceiver(ClassLoader cl,String name,Intent i) throws InstantiationException,IllegalAccessException,ClassNotFoundException {
        return ui()?super.instantiateReceiver(cl,name,i):legacy().instantiateReceiver(cl,name,i);
    }
}
