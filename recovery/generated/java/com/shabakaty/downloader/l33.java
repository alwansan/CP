package com.shabakaty.downloader;

import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: OSObservable.java */
/* JADX INFO: loaded from: classes.dex */
public class l33<ObserverType, StateType> {
    public String a;
    public List<Object> b = new ArrayList();
    public boolean c;

    /* JADX INFO: compiled from: OSObservable.java */
    public class a implements Runnable {
        public final /* synthetic */ Method r;
        public final /* synthetic */ Object s;
        public final /* synthetic */ Object t;

        public a(l33 l33Var, Method method, Object obj, Object obj2) {
            this.r = method;
            this.s = obj;
            this.t = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.r.invoke(this.s, this.t);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
            }
        }
    }

    public l33(String str, boolean z) {
        this.a = str;
        this.c = z;
    }

    public boolean a(StateType statetype) {
        boolean z = false;
        for (Object obj : this.b) {
            if (obj instanceof WeakReference) {
                obj = ((WeakReference) obj).get();
            }
            if (obj != null) {
                try {
                    Method declaredMethod = obj.getClass().getDeclaredMethod(this.a, statetype.getClass());
                    declaredMethod.setAccessible(true);
                    if (this.c) {
                        com.onesignal.o0.x(new a(this, declaredMethod, obj, statetype));
                    } else {
                        try {
                            declaredMethod.invoke(obj, statetype);
                        } catch (IllegalAccessException e) {
                            e.printStackTrace();
                        } catch (InvocationTargetException e2) {
                            e2.printStackTrace();
                        }
                    }
                    z = true;
                } catch (NoSuchMethodException e3) {
                    e3.printStackTrace();
                }
            }
        }
        return z;
    }
}
