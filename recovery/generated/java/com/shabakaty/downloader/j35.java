package com.shabakaty.downloader;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: compiled from: ViewGroup.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j35 {

    /* JADX INFO: compiled from: ViewGroup.kt */
    public static final class a implements l04<View> {
        public final /* synthetic */ ViewGroup a;

        public a(ViewGroup viewGroup) {
            this.a = viewGroup;
        }

        @Override // com.shabakaty.downloader.l04
        public Iterator<View> iterator() {
            ViewGroup viewGroup = this.a;
            j32.e(viewGroup, "<this>");
            return new k35(viewGroup);
        }
    }

    public static final l04<View> a(ViewGroup viewGroup) {
        j32.e(viewGroup, "<this>");
        return new a(viewGroup);
    }
}
