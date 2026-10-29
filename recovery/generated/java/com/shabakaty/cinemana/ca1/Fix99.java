package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.ImageButton;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class Fix99 {
    private static final WeakHashMap<Object, Boolean> pending = new WeakHashMap<>();

    private static void set(Object obj, String str, Object obj2) throws Exception {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    public static void header(final Object obj) {
        try {
            View view = (View) R94.get(obj, "root");
            final Context context = view.getContext();
            View rootView = view.getRootView();
            View viewFindViewById = rootView.findViewById(context.getResources().getIdentifier("downloads_toolbar", "id", context.getPackageName()));
            ImageButton imageButton = (ImageButton) rootView.findViewWithTag("ca1_delete99");
            if (viewFindViewById != null && imageButton != null) {
                imageButton.setImageDrawable(new Native98.Trash());
                imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Fix99.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Native98.lambda$header$1(context, view2);
                    }
                });
                imageButton.setVisibility(0);
                set(obj, "headerView", imageButton);
                Log94.event(context, "downloads_header99", "activity_downloads; fixed physical left=48dp; no toolbar reparenting");
                return;
            }
            int iIntValue = ((Integer) R94.get(obj, "headerAttempts")).intValue();
            if (iIntValue < 12) {
                set(obj, "headerAttempts", Integer.valueOf(iIntValue + 1));
                view.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Fix99.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Fix99.header(obj);
                    }
                }, 250L);
            }
        } catch (Exception e) {
            Log.e("Cinemana99", "downloads header", e);
        }
    }

    public static boolean shouldRestart(String str, long j, long j2, int i, int i2, int i3) {
        return "mondrian".equals(str) && i == i2 && i3 != 1 && j2 >= 0 && j >= 0 && j2 < j - 100;
    }

    public static void beforeSeek(Object obj, int i, long j) {
        try {
            long jLongValue = ((Long) R94.call(obj, "C", new Object[0])).longValue();
            if (shouldRestart(Build.DEVICE, jLongValue, j, ((Integer) R94.call(obj, "t", new Object[0])).intValue(), i, ((Integer) R94.call(obj, "h", new Object[0])).intValue())) {
                R94.call(obj, "t0", Boolean.FALSE);
                WeakHashMap<Object, Boolean> weakHashMap = pending;
                synchronized (weakHashMap) {
                    weakHashMap.put(obj, Boolean.TRUE);
                }
                event("backseek_restart99", "from_ms=" + jLongValue + " target_ms=" + j + "; stop_reset=false");
            }
        } catch (Exception e) {
            event("backseek_restart99_error", e.getClass().getSimpleName());
        }
    }

    public static void afterSeek(Object obj) {
        boolean z;
        WeakHashMap<Object, Boolean> weakHashMap = pending;
        synchronized (weakHashMap) {
            z = weakHashMap.remove(obj) != null;
        }
        if (z) {
            try {
                R94.call(obj, "g", new Object[0]);
                event("backseek_prepare99", "prepare after native seek; playWhenReady preserved");
            } catch (Exception e) {
                event("backseek_prepare99_error", e.getClass().getSimpleName());
            }
        }
    }

    private static void event(String str, String str2) {
        try {
            Field declaredField = Class.forName("com.shabakaty.cinemana.ca1.Enhancements").getDeclaredField("app");
            declaredField.setAccessible(true);
            Context context = (Context) declaredField.get(null);
            if (context != null) {
                Log94.event(context, str, str2);
            }
        } catch (Exception e) {
            Log.d("Cinemana99", str + " " + str2);
        }
    }
}
