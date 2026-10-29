package com.shabakaty.downloader;

import android.content.SharedPreferences;
import com.connectsdk.R;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: Once.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f73 {
    public boolean a;

    /* JADX INFO: compiled from: Once.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.OnceBuilder", f = "Once.kt", l = {R.styleable.AppCompatTheme_editTextBackground}, m = "executeSuspend")
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
            return f73.this.a(null, null, this);
        }
    }

    public f73(String str, nn0 nn0Var) {
        SharedPreferences sharedPreferences = e73.b;
        if (sharedPreferences != null) {
            this.a = sharedPreferences.getBoolean(str, false);
        } else {
            j32.l("preference");
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, tm1<? super ud0<? super qv4>, ? extends Object> tm1Var, ud0<? super f73> ud0Var) {
        a aVar;
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
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f73 f73Var = (f73) aVar.u;
            j96.i(obj);
            return f73Var;
        }
        j96.i(obj);
        e73 e73Var = e73.a;
        aVar.u = this;
        aVar.x = 1;
        return e73Var.a(str, tm1Var, aVar) == te0Var ? te0Var : this;
    }
}
