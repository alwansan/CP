package com.shabakaty.downloader;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: compiled from: RecyclerViewBindingAdapters.kt */
/* JADX INFO: loaded from: classes.dex */
public final class fo3 {
    public static final <T> void a(RecyclerView recyclerView, List<? extends T> list, Integer num, tj.a aVar) {
        j32.e(recyclerView, "<this>");
        if (list == null) {
            return;
        }
        Object adapter = recyclerView.getAdapter();
        if (adapter instanceof androidx.recyclerview.widget.g) {
            if (aVar != null) {
                List<? extends RecyclerView.e<? extends RecyclerView.b0>> listF = ((androidx.recyclerview.widget.g) adapter).f();
                j32.d(listF, "adapter as ConcatAdapter).adapters");
                Object objC0 = m50.c0(listF, 1);
                w93 w93Var = objC0 instanceof w93 ? (w93) objC0 : null;
                if (w93Var != null) {
                    w93Var.e(iq6.o(aVar));
                }
            }
            List<? extends RecyclerView.e<? extends RecyclerView.b0>> listF2 = ((androidx.recyclerview.widget.g) adapter).f();
            j32.d(listF2, "adapter.adapters");
            adapter = m50.c0(listF2, 0);
        }
        RecyclerView.e eVar = (RecyclerView.e) adapter;
        if (eVar == null) {
            return;
        }
        ej ejVar = eVar instanceof ej ? (ej) eVar : null;
        if (ejVar == null) {
            return;
        }
        if (num != null && num.intValue() != 0 && list.size() > num.intValue()) {
            list = m50.u0(list, num.intValue());
        }
        ejVar.e(list);
    }

    public static /* synthetic */ void b(RecyclerView recyclerView, List list, Integer num, tj.a aVar, int i) {
        if ((i & 2) != 0) {
            num = 0;
        }
        a(recyclerView, list, num, null);
    }

    public static final void c(RecyclerView recyclerView, Integer num) {
        j32.e(recyclerView, "recycler");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
        if (gridLayoutManager == null) {
            return;
        }
        gridLayoutManager.P1(num == null ? 1 : num.intValue());
    }
}
