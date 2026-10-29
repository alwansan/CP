package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import zendesk.core.ZendeskBlipsProvider;

/* JADX INFO: loaded from: classes9.dex */
public final class SequentialSubtitleSyncHelper {
    private static final String KEY = "sequential_subtitle_sync_tenths";
    private static final int MAX_TENTHS = 864000;
    private static final String PREFS = "cinemana_mod_prefs";
    private static volatile boolean autoEnabled;
    private static volatile long sequentialOffsetUs;

    private static void addHalfSecondButtons(Object obj, Object obj2, Object obj3) throws Exception {
        Context context = (Context) obj;
        LinearLayout linearLayout = (LinearLayout) obj2;
        EditText editText = (EditText) obj3;
        Button button = new Button(context);
        button.setText("− 0.5s");
        button.setTextColor(ThemeEngine142.ink(context));
        linearLayout.addView(button, 0);
        bindStep(button, context, editText, -5);
        Button button2 = new Button(context);
        button2.setText("+ 0.5s");
        button2.setTextColor(ThemeEngine142.ink(context));
        linearLayout.addView(button2, 4);
        bindStep(button2, context, editText, 5);
    }

    private static void addZeroButton(Object obj, Object obj2, Object obj3) throws Exception {
        Context context = (Context) obj;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setPadding(0, 8, 0, 8);
        Button button = new Button(context);
        button.setText("0");
        button.setTextColor(ThemeEngine142.ink(context));
        linearLayout.addView(button, new LinearLayout.LayoutParams(-2, -2));
        bindStep(button, context, (EditText) obj3, Integer.MAX_VALUE);
        ((LinearLayout) obj2).addView(linearLayout);
    }

    private SequentialSubtitleSyncHelper() {
    }

    public static void init(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            try {
                Class.forName("com.shabakaty.cinemana.mod.SubtitleSyncHelper").getMethod(ZendeskBlipsProvider.ACTION_CORE_INIT, Class.forName("com.shabakaty.cinemana.player.CinemanaPlayerControllerView")).invoke(null, obj);
            } catch (Throwable th) {
            }
            Object objCall = call(obj, "getContext", new Class[0], new Object[0]);
            if (objCall == null) {
                return;
            }
            setOffsetTenths(((Number) call(call(objCall, "getSharedPreferences", new Class[]{String.class, Integer.TYPE}, PREFS, 0), "getInt", new Class[]{String.class, Integer.TYPE}, KEY, 0)).intValue());
        } catch (Throwable th2) {
            log("Could not initialize sequential subtitle sync", th2);
        }
    }

    public static long getOffsetUs() {
        long jLongValue;
        try {
            jLongValue = ((Number) Class.forName("com.shabakaty.cinemana.mod.SubtitleSyncHelper").getMethod("getOffsetUs", new Class[0]).invoke(null, new Object[0])).longValue();
        } catch (Throwable th) {
            log("Could not read original player sync offset", th);
            jLongValue = 0;
        }
        return autoEnabled ? jLongValue + sequentialOffsetUs : jLongValue;
    }

    public static long adjustPositionUs(long j) {
        long offsetUs = j - getOffsetUs();
        if (offsetUs < 0) {
            return 0L;
        }
        return offsetUs;
    }

    public static void setAutoEnabled(boolean z) {
        autoEnabled = z;
    }

    public static int getSequentialTenths() {
        return (int) (sequentialOffsetUs / 100000);
    }

    public static void saveSequential(Object obj, int i) {
        if (obj == null) {
            return;
        }
        int iClampTenths = clampTenths(i);
        setOffsetTenths(iClampTenths);
        try {
            Object objCall = call(call(obj, "getSharedPreferences", new Class[]{String.class, Integer.TYPE}, PREFS, 0), "edit", new Class[0], new Object[0]);
            call(objCall, "putInt", new Class[]{String.class, Integer.TYPE}, KEY, Integer.valueOf(iClampTenths));
            call(objCall, "apply", new Class[0], new Object[0]);
        } catch (Throwable th) {
            log("Could not save sequential subtitle sync", th);
        }
    }

    public static void showSequentialDialog(Object obj) {
        String str;
        if (obj == null) {
            return;
        }
        try {
            init(obj);
            final Object objCall = call(obj, "getContext", new Class[0], new Object[0]);
            if (objCall == null) {
                return;
            }
            Class<?> cls = Class.forName("android.content.Context");
            Class<?> cls2 = Class.forName("android.view.View");
            Class<?> cls3 = Class.forName("android.widget.LinearLayout");
            Class<?> cls4 = Class.forName("android.widget.TextView");
            Class<?> cls5 = Class.forName("android.widget.EditText");
            Class<?> cls6 = Class.forName("android.widget.Button");
            Class<?> cls7 = Class.forName("android.widget.LinearLayout$LayoutParams");
            Class<?> cls8 = Class.forName("android.view.ViewGroup$LayoutParams");
            Object objNewInstance = cls3.getConstructor(cls).newInstance(objCall);
            call(objNewInstance, "setOrientation", new Class[]{Integer.TYPE}, 1);
            call(objNewInstance, "setPadding", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE}, 32, 20, 32, 12);
            Object objNewInstance2 = cls4.getConstructor(cls).newInstance(objCall);
            call(objNewInstance2, "setText", new Class[]{CharSequence.class}, "الموجب يؤخر الترجمة، والسالب يقدمها");
            call(objNewInstance2, "setGravity", new Class[]{Integer.TYPE}, 17);
            call(objNewInstance2, "setTextSize", new Class[]{Float.TYPE}, Float.valueOf(16.0f));
            setThemeColor(objNewInstance2, objCall, "inkMuted");
            call(objNewInstance2, "setPadding", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE}, 12, 12, 12, 20);
            addFullWidth(objNewInstance, objNewInstance2, cls3, cls7, cls2, cls8);
            Object objNewInstance3 = cls3.getConstructor(cls).newInstance(objCall);
            call(objNewInstance3, "setOrientation", new Class[]{Integer.TYPE}, 0);
            call(objNewInstance3, "setGravity", new Class[]{Integer.TYPE}, 17);
            final Object objNewInstance4 = cls5.getConstructor(cls).newInstance(objCall);
            call(objNewInstance4, "setGravity", new Class[]{Integer.TYPE}, 17);
            call(objNewInstance4, "setInputType", new Class[]{Integer.TYPE}, 12290);
            call(objNewInstance4, "setSelectAllOnFocus", new Class[]{Boolean.TYPE}, Boolean.TRUE);
            setThemeColor(objNewInstance4, objCall, "ink");
            call(objNewInstance4, "setText", new Class[]{CharSequence.class}, formatTenths(getSequentialTenths()));
            Object objNewInstance5 = cls7.getConstructor(Integer.TYPE, Integer.TYPE).newInstance(0, -2);
            try {
                objNewInstance5.getClass().getField("weight").setFloat(objNewInstance5, 1.0f);
            } catch (Throwable th) {
            }
            call(objNewInstance5, "setMargins", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE}, 12, 0, 12, 0);
            call(objNewInstance5, "setMarginStart", new Class[]{Integer.TYPE}, 4);
            Object objNewInstance6 = cls6.getConstructor(cls).newInstance(objCall);
            call(objNewInstance6, "setText", new Class[]{CharSequence.class}, "− 0.1s");
            setThemeColor(objNewInstance6, objCall, "ink");
            Object objNewInstance7 = cls6.getConstructor(cls).newInstance(objCall);
            call(objNewInstance7, "setText", new Class[]{CharSequence.class}, "+ 0.1s");
            setThemeColor(objNewInstance7, objCall, "ink");
            addWrap(objNewInstance3, objNewInstance6, cls3, cls7, cls2, cls8);
            call(objNewInstance3, "addView", new Class[]{cls2, cls8}, objNewInstance4, objNewInstance5);
            addWrap(objNewInstance3, objNewInstance7, cls3, cls7, cls2, cls8);
            addFullWidth(objNewInstance, objNewInstance3, cls3, cls7, cls2, cls8);
            addZeroButton(objCall, objNewInstance, objNewInstance4);
            Object objNewInstance8 = cls4.getConstructor(cls).newInstance(objCall);
            call(objNewInstance8, "setText", new Class[]{CharSequence.class}, "يُحفظ هذا التوقيت لكل ملفات المجلد التي تُحمّل تلقائيًا");
            call(objNewInstance8, "setGravity", new Class[]{Integer.TYPE}, 17);
            call(objNewInstance8, "setTextSize", new Class[]{Float.TYPE}, Float.valueOf(14.0f));
            setThemeColor(objNewInstance8, objCall, "inkMuted");
            call(objNewInstance8, "setPadding", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE}, 8, 16, 8, 8);
            addFullWidth(objNewInstance, objNewInstance8, cls3, cls7, cls2, cls8);
            addHalfSecondButtons(objCall, objNewInstance3, objNewInstance4);
            bindStep(objNewInstance6, objCall, objNewInstance4, -1);
            bindStep(objNewInstance7, objCall, objNewInstance4, 1);
            Class<?> cls9 = Class.forName("android.app.AlertDialog$Builder");
            Object objNewInstance9 = cls9.getConstructor(cls).newInstance(objCall);
            call(objNewInstance9, "setTitle", new Class[]{CharSequence.class}, "مزامنة متابعة الترجمات");
            call(objNewInstance9, "setView", new Class[]{cls2}, objNewInstance);
            Class<?> cls10 = Class.forName("android.content.DialogInterface$OnClickListener");
            call(objNewInstance9, "setPositiveButton", new Class[]{CharSequence.class, cls10}, "تم", Proxy.newProxyInstance(cls10.getClassLoader(), new Class[]{cls10}, new InvocationHandler() { // from class: com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper.1
                @Override // java.lang.reflect.InvocationHandler
                public Object invoke(Object obj2, Method method, Object[] objArr) {
                    if ("onClick".equals(method.getName())) {
                        SequentialSubtitleSyncHelper.commitText(objCall, objNewInstance4);
                        return null;
                    }
                    return null;
                }
            }));
            call(objNewInstance9, "setNegativeButton", new Class[]{CharSequence.class, cls10}, "إلغاء", null);
            try {
                str = "show";
                try {
                    Class.forName("com.shabakaty.cinemana.ca1.Ui7").getMethod(str, cls9).invoke(null, objNewInstance9);
                } catch (Throwable th2) {
                    call(objNewInstance9, str, new Class[0], new Object[0]);
                }
            } catch (Throwable th3) {
                str = "show";
            }
        } catch (Throwable th4) {
            log("Could not show sequential subtitle sync dialog", th4);
        }
    }

    private static void bindStep(Object obj, final Object obj2, final Object obj3, final int i) throws Exception {
        Class<?> cls = Class.forName("android.view.View$OnClickListener");
        call(obj, "setOnClickListener", new Class[]{cls}, Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper.2
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj4, Method method, Object[] objArr) {
                if ("onClick".equals(method.getName())) {
                    Object obj5 = obj2;
                    Object obj6 = obj3;
                    if (i == Integer.MAX_VALUE) {
                        SequentialSubtitleSyncHelper.saveSequential(obj5, 0);
                    } else {
                        SequentialSubtitleSyncHelper.commitText(obj5, obj6);
                        SequentialSubtitleSyncHelper.saveSequential(obj2, SequentialSubtitleSyncHelper.getSequentialTenths() + i);
                    }
                    try {
                        SequentialSubtitleSyncHelper.call(obj3, "setText", new Class[]{CharSequence.class}, SequentialSubtitleSyncHelper.formatTenths(SequentialSubtitleSyncHelper.getSequentialTenths()));
                        return null;
                    } catch (Throwable th) {
                        SequentialSubtitleSyncHelper.log("Could not update sequential sync value", th);
                        return null;
                    }
                }
                return null;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void commitText(Object obj, Object obj2) {
        try {
            int iClampTenths = clampTenths(Math.round(Float.parseFloat(String.valueOf(call(obj2, "getText", new Class[0], new Object[0])).trim().replace("s", BuildConfig.FLAVOR).replace("S", BuildConfig.FLAVOR).replace(',', '.')) * 10.0f));
            saveSequential(obj, iClampTenths);
            call(obj2, "setText", new Class[]{CharSequence.class}, formatTenths(iClampTenths));
        } catch (Throwable th) {
            try {
                call(obj2, "setText", new Class[]{CharSequence.class}, formatTenths(getSequentialTenths()));
            } catch (Throwable th2) {
            }
            log("Invalid sequential sync value", th);
        }
    }

    private static void addFullWidth(Object obj, Object obj2, Class<?> cls, Class<?> cls2, Class<?> cls3, Class<?> cls4) throws Exception {
        call(obj, "addView", new Class[]{cls3, cls4}, obj2, cls2.getConstructor(Integer.TYPE, Integer.TYPE).newInstance(-1, -2));
    }

    private static void addWrap(Object obj, Object obj2, Class<?> cls, Class<?> cls2, Class<?> cls3, Class<?> cls4) throws Exception {
        call(obj, "addView", new Class[]{cls3, cls4}, obj2, cls2.getConstructor(Integer.TYPE, Integer.TYPE).newInstance(-2, -2));
    }

    private static void setThemeColor(Object obj, Object obj2, String str) {
        try {
            call(obj, "setTextColor", new Class[]{Integer.TYPE}, Integer.valueOf(((Number) Class.forName("com.shabakaty.cinemana.ca1.ThemeEngine142").getMethod(str, Class.forName("android.content.Context")).invoke(null, obj2)).intValue()));
        } catch (Throwable th) {
        }
    }

    private static void setOffsetTenths(int i) {
        sequentialOffsetUs = ((long) clampTenths(i)) * 100000;
    }

    private static int clampTenths(int i) {
        if (i > MAX_TENTHS) {
            return MAX_TENTHS;
        }
        if (i < -864000) {
            return -864000;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String formatTenths(int i) {
        int iAbs = Math.abs(i);
        return (i < 0 ? "-" : "+") + (iAbs / 10) + "." + (iAbs % 10) + "s";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object call(Object obj, String str, Class<?>[] clsArr, Object... objArr) throws Exception {
        if (obj == null) {
            throw new NullPointerException("target for " + str);
        }
        Method method = obj.getClass().getMethod(str, clsArr);
        if (!method.isAccessible()) {
            method.setAccessible(true);
        }
        return method.invoke(obj, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String str, Throwable th) {
        try {
            Class.forName("android.util.Log").getMethod("e", String.class, String.class, Throwable.class).invoke(null, "CinemanaSeqSync", str, th);
        } catch (Throwable th2) {
        }
    }
}
