package com.shabakaty.downloader;

import com.shabakaty.cinemana.data.db.settings.SettingsEntity;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: SafeCollector.common.kt */
/* JADX INFO: loaded from: classes.dex */
public final class rg4 implements te1<pg4> {
    public final /* synthetic */ te1 r;

    /* JADX INFO: compiled from: Collect.kt */
    public static final class a implements ue1<SettingsEntity> {
        public final /* synthetic */ ue1 r;

        /* JADX INFO: renamed from: com.shabakaty.downloader.rg4$a$a, reason: collision with other inner class name */
        @pm0(c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$collectSubtitleStyle$$inlined$map$1$2", f = "SubtitlesSettingsFragment.kt", l = {135}, m = "emit")
        public static final class C0186a extends xd0 {
            public /* synthetic */ Object u;
            public int v;

            public C0186a(ud0 ud0Var) {
                super(ud0Var);
            }

            @Override // com.shabakaty.downloader.bj
            public final Object t(Object obj) {
                this.u = obj;
                this.v |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
                return a.this.b(null, this);
            }
        }

        public a(ue1 ue1Var, rg4 rg4Var) {
            this.r = ue1Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // com.shabakaty.downloader.ue1
        public Object b(Object obj, ud0 ud0Var) {
            C0186a c0186a;
            if (ud0Var instanceof C0186a) {
                c0186a = (C0186a) ud0Var;
                int i = c0186a.v;
                if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                    c0186a.v = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
                } else {
                    c0186a = new C0186a(ud0Var);
                }
            } else {
                c0186a = new C0186a(ud0Var);
            }
            Object obj2 = c0186a.u;
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i2 = c0186a.v;
            if (i2 == 0) {
                j96.i(obj2);
                ue1 ue1Var = this.r;
                pg4 pg4Var = ((SettingsEntity) obj).subtitlesSettings;
                c0186a.v = 1;
                if (ue1Var.b(pg4Var, c0186a) == te0Var) {
                    return te0Var;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(obj2);
            }
            return qv4.a;
        }
    }

    public rg4(te1 te1Var) {
        this.r = te1Var;
    }

    @Override // com.shabakaty.downloader.te1
    public Object d(ue1<? super pg4> ue1Var, ud0 ud0Var) {
        Object objD = this.r.d(new a(ue1Var, this), ud0Var);
        return objD == te0.COROUTINE_SUSPENDED ? objD : qv4.a;
    }
}
