package com.shabakaty.downloader;

import com.cinemana.pro.R;

/* JADX INFO: compiled from: InnerEpisodesAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e12 extends ej<b41, e52> {

    /* JADX INFO: compiled from: InnerEpisodesAdapter.kt */
    public interface a extends dj<b41> {
        void U1(b41 b41Var);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e12(a aVar) {
        super(w21.r, aVar);
        j32.e(aVar, "listener");
    }

    @Override // com.shabakaty.downloader.ej
    public boolean f(b41 b41Var, b41 b41Var2) {
        b41 b41Var3 = b41Var;
        b41 b41Var4 = b41Var2;
        j32.e(b41Var3, "oldItem");
        j32.e(b41Var4, "newItem");
        return j32.a(b41Var3.b(), b41Var4.b()) && b41Var3.a == b41Var4.a && j32.a(b41Var3.e(), b41Var4.e()) && j32.a(b41Var3.a(), b41Var4.a());
    }

    @Override // com.shabakaty.downloader.ej
    public int i(int i) {
        return R.layout.item_inner_episode;
    }
}
