package com.shabakaty.downloader;

import android.os.Handler;
import java.util.Objects;

/* JADX INFO: compiled from: VideoRendererEventListener.java */
/* JADX INFO: loaded from: classes.dex */
public interface o25 {

    /* JADX INFO: compiled from: VideoRendererEventListener.java */
    public static final class a {
        public final Handler a;
        public final o25 b;

        public a(Handler handler, o25 o25Var) {
            if (o25Var != null) {
                Objects.requireNonNull(handler);
            } else {
                handler = null;
            }
            this.a = handler;
            this.b = o25Var;
        }
    }

    void B(wh1 wh1Var, cn0 cn0Var);

    void F(int i, long j);

    void I(zm0 zm0Var);

    void N(Object obj, long j);

    void U(zm0 zm0Var);

    void a0(Exception exc);

    void b(p25 p25Var);

    void h(String str);

    void l0(long j, int i);

    void n(String str, long j, long j2);

    @Deprecated
    void t(wh1 wh1Var);
}
