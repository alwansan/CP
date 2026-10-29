package com.shabakaty.cinemana.ca1;

import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class Dismiss109 {
    static final Map<Object, Hold> holds = new WeakHashMap();

    public static void bind(Object obj, boolean z) {
        ContinueActions262.bindHorizontal(obj, z);
    }

    static final class Hold {
        WeakReference<Object> binding;
        boolean down;
        boolean fired;
        String id;
        int slop = 16;
        Runnable timer;
        WeakReference<Object> view;
        float x;
        float y;

        Hold() {
        }
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        return Continue106.call(obj, str, objArr);
    }

    static /* synthetic */ Object lambda$bind$0(Hold hold, Object obj, Method method, Object[] objArr) throws Throwable {
        if ("onTouch".equals(method.getName())) {
            return Boolean.valueOf(touch(hold, objArr[1]));
        }
        if ("hashCode".equals(method.getName())) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if ("equals".equals(method.getName())) {
            return Boolean.valueOf(obj == objArr[0]);
        }
        return "ContinueHold109";
    }

    static void cancel(Hold hold) throws Exception {
        hold.down = false;
        Object obj = hold.view.get();
        if (obj != null && hold.timer != null) {
            call(obj, "removeCallbacks", hold.timer);
        }
        hold.timer = null;
    }

    static boolean touch(final Hold hold, Object obj) throws Exception {
        Object obj2 = hold.view.get();
        if (obj2 == null) {
            return false;
        }
        int iIntValue = ((Number) call(obj, "getActionMasked", new Object[0])).intValue();
        if (iIntValue == 0) {
            cancel(hold);
            hold.down = true;
            hold.fired = false;
            hold.x = ((Number) call(obj, "getX", new Object[0])).floatValue();
            hold.y = ((Number) call(obj, "getY", new Object[0])).floatValue();
            hold.timer = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Dismiss109$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Dismiss109.lambda$touch$1(hold);
                }
            };
            call(obj2, "postDelayed", hold.timer, 1000L);
            return false;
        }
        if (iIntValue == 2) {
            float fFloatValue = ((Number) call(obj, "getX", new Object[0])).floatValue() - hold.x;
            float fFloatValue2 = ((Number) call(obj, "getY", new Object[0])).floatValue() - hold.y;
            if ((fFloatValue * fFloatValue) + (fFloatValue2 * fFloatValue2) > hold.slop * hold.slop) {
                cancel(hold);
            }
            return hold.fired;
        }
        if (iIntValue == 1 || iIntValue == 3) {
            boolean z = hold.fired;
            cancel(hold);
            return z;
        }
        if (iIntValue == 5) {
            cancel(hold);
        }
        return hold.fired;
    }

    static /* synthetic */ void lambda$touch$1(Hold hold) {
        try {
            Object obj = hold.binding.get();
            Object obj2 = hold.view.get();
            if (hold.down && obj != null && obj2 != null && hold.id.equals(Continue106.text(Continue106.get(obj, "U"), "nb"))) {
                hold.fired = true;
                hold.down = false;
                call(obj2, "cancelLongPress", new Object[0]);
                call(obj2, "setPressed", false);
                try {
                    call(obj2, "performHapticFeedback", 0);
                } catch (Exception e) {
                }
                Continue106.dismiss(hold.id);
            }
        } catch (Exception e2) {
            Continue106.log("continue_hold_remove109", e2);
        }
    }
}
