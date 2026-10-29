package com.shabakaty.cinemana.local;

import android.view.View;
import com.liulishuo.filedownloader.BuildConfig;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.URI;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes11.dex */
public final class PosterFallback {
    private static final Map<View, State> states = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: Access modifiers changed from: private */
    static final class State {
        boolean attempted;
        final String key;
        final String primary;
        final String thumbnail;

        State(String str, String str2) {
            this.primary = str;
            this.thumbnail = str2;
            this.key = Integer.toHexString(str.hashCode());
        }
    }

    public static void controller(View view, final Object obj) {
        final State state = states.get(view);
        if (state == null) {
            return;
        }
        final WeakReference weakReference = new WeakReference(view);
        try {
            Class<?> cls = Class.forName("com.facebook.drawee.controller.ControllerListener");
            obj.getClass().getMethod("g", cls).invoke(obj, Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.local.PosterFallback$$ExternalSyntheticLambda0
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                    return PosterFallback.lambda$controller$1(state, weakReference, obj, obj2, method, objArr);
                }
            }));
        } catch (Exception e) {
            LocalRuntime.failure("poster_listener", e);
        }
    }

    static /* synthetic */ void lambda$controller$0(WeakReference weakReference, State state, Object obj) {
        View view = (View) weakReference.get();
        if (view == null || states.get(view) != state || state.attempted || !valid(state.thumbnail) || state.primary.equals(state.thumbnail)) {
            return;
        }
        try {
            if (view.getClass().getMethod("getController", new Class[0]).invoke(view, new Object[0]) != obj) {
                return;
            }
            state.attempted = true;
            LocalRuntime.log("poster_thumbnail_fallback key=" + state.key);
            view.getClass().getMethod("setImageURI", String.class).invoke(view, state.thumbnail);
        } catch (Exception e) {
            LocalRuntime.failure("poster_fallback", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    static /* synthetic */ Object lambda$controller$1(final State state, final WeakReference weakReference, final Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
        String strCauseTypes;
        String name = method.getName();
        if (method.getDeclaringClass() == Object.class) {
            if (name.equals("hashCode")) {
                return Integer.valueOf(System.identityHashCode(obj2));
            }
            if (name.equals("equals")) {
                return Boolean.valueOf(obj2 == objArr[0]);
            }
            return "LocalPosterListener";
        }
        if (name.equals("b")) {
            LocalRuntime.log("poster_ready key=" + state.key);
        }
        if (!name.equals("c")) {
            return null;
        }
        StringBuilder sb = new StringBuilder("poster_failed key=");
        sb.append(state.key);
        sb.append(" type=");
        if (objArr == null || objArr.length <= 1) {
            strCauseTypes = "unknown";
        } else {
            Object obj3 = objArr[1];
            if (obj3 instanceof Throwable) {
                strCauseTypes = LocalRuntime.causeTypes((Throwable) obj3);
            } else {
                strCauseTypes = "unknown";
            }
        }
        sb.append(strCauseTypes);
        LocalRuntime.log(sb.toString());
        View view = (View) weakReference.get();
        if (view == null) {
            return null;
        }
        view.post(new Runnable() { // from class: com.shabakaty.cinemana.local.PosterFallback$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PosterFallback.lambda$controller$0(weakReference, state, obj);
            }
        });
        return null;
    }

    public static String source(View view, String str, String str2) {
        try {
            String resourceEntryName = view.getResources().getResourceEntryName(view.getId());
            if (!"video_info_poster".equals(resourceEntryName) && !"simpleDraweeView2".equals(resourceEntryName)) {
                return str;
            }
            String str3 = str == null ? BuildConfig.FLAVOR : str;
            if (str2 == null) {
                str2 = BuildConfig.FLAVOR;
            }
            if (!valid(str3) && valid(str2)) {
                str3 = str2;
            }
            State state = new State(str3, str2);
            states.put(view, state);
            LocalRuntime.log("poster_begin key=" + state.key + " source=" + valid(str3) + " thumbnail=" + valid(str2));
            if (str3.isEmpty()) {
                return null;
            }
            return str3;
        } catch (Exception unused) {
            return str;
        }
    }

    private static boolean valid(String str) {
        try {
            URI uri = new URI(str);
            return ("https".equals(uri.getScheme()) || "http".equals(uri.getScheme())) && uri.getHost() != null;
        } catch (Exception unused) {
            return false;
        }
    }
}
