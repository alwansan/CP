package com.shabakaty.downloader;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class bj implements ud0<Object>, ue0, Serializable {
    public final ud0<Object> r;

    public bj(ud0<Object> ud0Var) {
        this.r = ud0Var;
    }

    @Override // com.shabakaty.downloader.ue0
    public ue0 h() {
        ud0<Object> ud0Var = this.r;
        if (ud0Var instanceof ue0) {
            return (ue0) ud0Var;
        }
        return null;
    }

    @Override // com.shabakaty.downloader.ud0
    public final void i(Object obj) {
        ud0<Object> ud0Var = this;
        while (true) {
            j32.e(ud0Var, "frame");
            bj bjVar = (bj) ud0Var;
            ud0<Object> ud0Var2 = bjVar.r;
            j32.c(ud0Var2);
            try {
                obj = bjVar.t(obj);
                if (obj == te0.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th) {
                obj = j96.b(th);
            }
            bjVar.v();
            if (!(ud0Var2 instanceof bj)) {
                ud0Var2.i(obj);
                return;
            }
            ud0Var = ud0Var2;
        }
    }

    public ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        j32.e(ud0Var, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public StackTraceElement s() {
        int iIntValue;
        String strC;
        j32.e(this, "<this>");
        pm0 pm0Var = (pm0) getClass().getAnnotation(pm0.class);
        String str = null;
        if (pm0Var == null) {
            return null;
        }
        int iV = pm0Var.v();
        if (iV > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num == null ? 0 : num.intValue()) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i = iIntValue >= 0 ? pm0Var.l()[iIntValue] : -1;
        j32.e(this, "continuation");
        ru2.a aVar = ru2.b;
        if (aVar == null) {
            try {
                ru2.a aVar2 = new ru2.a(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
                ru2.b = aVar2;
                aVar = aVar2;
            } catch (Exception unused2) {
                aVar = ru2.a;
                ru2.b = aVar;
            }
        }
        if (aVar != ru2.a) {
            Method method = aVar.a;
            Object objInvoke = method == null ? null : method.invoke(getClass(), new Object[0]);
            if (objInvoke != null) {
                Method method2 = aVar.b;
                Object objInvoke2 = method2 == null ? null : method2.invoke(objInvoke, new Object[0]);
                if (objInvoke2 != null) {
                    Method method3 = aVar.c;
                    Object objInvoke3 = method3 == null ? null : method3.invoke(objInvoke2, new Object[0]);
                    if (objInvoke3 instanceof String) {
                        str = (String) objInvoke3;
                    }
                }
            }
        }
        if (str == null) {
            strC = pm0Var.c();
        } else {
            strC = ((Object) str) + '/' + pm0Var.c();
        }
        return new StackTraceElement(strC, pm0Var.m(), pm0Var.f(), i);
    }

    public abstract Object t(Object obj);

    public String toString() {
        Object objS = s();
        if (objS == null) {
            objS = getClass().getName();
        }
        return j32.j("Continuation at ", objS);
    }

    public void v() {
    }
}
