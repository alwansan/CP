package com.shabakaty.cinemana.ca1;

import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class SpeedSettings120 {
    static String label(int i) {
        return I18n161.t("سرعة التحميل: ") + (i == 0 ? I18n161.t("غير محدود") : String.format(Locale.US, "%.1f MB/s", Double.valueOf(((double) i) / 10.0d)));
    }

    public static void settings(Object obj) {
        try {
            final Object objCall = Continue106.call(obj, "findViewWithTag", "ca1_speed120_title");
            final Object objCall2 = Continue106.call(obj, "findViewWithTag", "ca1_speed120_seek");
            if (objCall != null && objCall2 != null) {
                Object objCall3 = Continue106.call(obj, "getContext", new Object[0]);
                final File fileResolve = Speed120.resolve(objCall3);
                Speed120.attach(objCall3);
                final Object objMake = Continue106.make("android.os.Handler", Continue106.call(Class.forName("android.os.Looper"), "getMainLooper", new Object[0]));
                final AtomicBoolean atomicBoolean = new AtomicBoolean();
                Class<?> cls = Class.forName("android.widget.SeekBar$OnSeekBarChangeListener");
                Continue106.call(objCall2, "setOnSeekBarChangeListener", Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.SpeedSettings120$$ExternalSyntheticLambda2
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj2, Method method, Object[] objArr) {
                        return SpeedSettings120.lambda$settings$1(atomicBoolean, objCall, objCall2, fileResolve, obj2, method, objArr);
                    }
                }));
                Object objCall4 = Continue106.call(Class.forName("android.content.res.ColorStateList"), "valueOf", -2546896);
                Continue106.call(objCall2, "setProgressTintList", objCall4);
                Continue106.call(objCall2, "setThumbTintList", objCall4);
                Speed120.settingsWriter.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.SpeedSettings120$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        SpeedSettings120.lambda$settings$3(objMake, atomicBoolean, objCall2, objCall);
                    }
                });
            }
        } catch (Exception e) {
            Continue106.log("speed_settings_error120", e);
        }
    }

    static /* synthetic */ Object lambda$settings$1(AtomicBoolean atomicBoolean, Object obj, Object obj2, final File file, Object obj3, Method method, Object[] objArr) throws Exception {
        if (method.getName().equals("onProgressChanged")) {
            if (Boolean.TRUE.equals(objArr[2])) {
                atomicBoolean.set(true);
            }
            Continue106.call(obj, "setText", label(((Number) objArr[1]).intValue()));
            return null;
        }
        if (method.getName().equals("onStopTrackingTouch")) {
            final int iIntValue = ((Number) Continue106.call(obj2, "getProgress", new Object[0])).intValue();
            Speed120.settingsWriter.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.SpeedSettings120$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SpeedSettings120.lambda$settings$0(file, iIntValue);
                }
            });
            return null;
        }
        if (method.getName().equals("toString")) {
            return "SpeedSettings120";
        }
        if (method.getName().equals("hashCode")) {
            return Integer.valueOf(System.identityHashCode(obj3));
        }
        if (method.getName().equals("equals")) {
            return Boolean.valueOf(obj3 == objArr[0]);
        }
        return null;
    }

    static /* synthetic */ void lambda$settings$0(File file, int i) {
        try {
            Speed120.save(file, i);
            synchronized (Speed120.class) {
                Speed120.lastPoll = 0L;
            }
        } catch (Exception e) {
            Continue106.log("speed_save_error120", e);
        }
    }

    static /* synthetic */ void lambda$settings$2(AtomicBoolean atomicBoolean, Object obj, int i, Object obj2) {
        if (atomicBoolean.get()) {
            return;
        }
        try {
            Continue106.call(obj, "setProgress", Integer.valueOf(i));
            Continue106.call(obj2, "setText", label(i));
        } catch (Exception e) {
            Continue106.log("speed_ui_error120", e);
        }
    }

    static /* synthetic */ void lambda$settings$3(Object obj, final AtomicBoolean atomicBoolean, final Object obj2, final Object obj3) {
        final int iPoll = Speed120.poll();
        try {
            Continue106.call(obj, "post", new Runnable() { // from class: com.shabakaty.cinemana.ca1.SpeedSettings120$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SpeedSettings120.lambda$settings$2(atomicBoolean, obj2, iPoll, obj3);
                }
            });
        } catch (Exception e) {
            Continue106.log("speed_ui_error120", e);
        }
    }
}
