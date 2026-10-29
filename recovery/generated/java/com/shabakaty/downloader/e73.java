package com.shabakaty.downloader;

import android.content.SharedPreferences;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: Once.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e73 {
    public static final e73 a = new e73();
    public static SharedPreferences b;

    /* JADX INFO: compiled from: Once.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.Once", f = "Once.kt", l = {27}, m = "executeSuspend")
    public static final class a extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public a(ud0<? super a> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return e73.this.a(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, tm1<? super ud0<? super qv4>, ? extends Object> tm1Var, ud0<? super qv4> ud0Var) {
        a aVar;
        Object objB;
        if (ud0Var instanceof a) {
            aVar = (a) ud0Var;
            int i = aVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                aVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                aVar = new a(ud0Var);
            }
        } else {
            aVar = new a(ud0Var);
        }
        Object obj = aVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = aVar.x;
        try {
            if (i2 == 0) {
                j96.i(obj);
                if (!b(str)) {
                    aVar.u = str;
                    aVar.x = 1;
                    if (tm1Var.invoke(aVar) == te0Var) {
                        return te0Var;
                    }
                }
                return qv4.a;
            }
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) aVar.u;
            j96.i(obj);
            objB = qv4.a;
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        if (!(objB instanceof dt3.a)) {
            a.c(str);
        }
        return qv4.a;
    }

    public final boolean b(String str) {
        j32.e(str, "mark");
        SharedPreferences sharedPreferences = b;
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str, false);
        }
        j32.l("preference");
        throw null;
    }

    public final void c(String str) {
        j32.e(str, "mark");
        SharedPreferences sharedPreferences = b;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putBoolean(str, true).apply();
        } else {
            j32.l("preference");
            throw null;
        }
    }
}
