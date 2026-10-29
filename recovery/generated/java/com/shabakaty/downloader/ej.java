package com.shabakaty.downloader;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.shabakaty.cinemana.ca1.Enhancements;
import java.util.List;

/* JADX INFO: compiled from: BaseDataItemsAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ej<T, B extends ViewDataBinding> extends RecyclerView.e<b<B>> {
    public List<? extends T> a;
    public dj<T> b;
    public LayoutInflater c;

    /* JADX INFO: compiled from: BaseDataItemsAdapter.kt */
    public static class a extends RecyclerView.b0 {
        public a(View view) {
            super(view);
        }
    }

    /* JADX INFO: compiled from: BaseDataItemsAdapter.kt */
    public static class b<B extends ViewDataBinding> extends a {
        public final B a;

        /* JADX WARN: Illegal instructions before constructor call */
        public b(B b) {
            View view = b.v;
            j32.d(view, "viewBinding.root");
            super(view);
            this.a = b;
        }
    }

    /* JADX INFO: compiled from: BaseDataItemsAdapter.kt */
    public static final class c extends androidx.recyclerview.widget.j.b {
        public final /* synthetic */ ej<T, B> a;
        public final /* synthetic */ List<T> b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(ej<T, B> ejVar, List<? extends T> list) {
            this.a = ejVar;
            this.b = list;
        }

        @Override // androidx.recyclerview.widget.j.b
        public boolean areContentsTheSame(int i, int i2) {
            if (i < 0 || i2 < 0) {
                return i == i2;
            }
            ej<T, B> ejVar = this.a;
            return ejVar.f(ejVar.a.get(i), this.b.get(i2));
        }

        @Override // androidx.recyclerview.widget.j.b
        public boolean areItemsTheSame(int i, int i2) {
            if (i < 0 || i2 < 0) {
                return i == i2;
            }
            ej<T, B> ejVar = this.a;
            return ejVar.g(ejVar.a.get(i), this.b.get(i2));
        }

        @Override // androidx.recyclerview.widget.j.b
        public int getNewListSize() {
            return this.b.size();
        }

        @Override // androidx.recyclerview.widget.j.b
        public int getOldListSize() {
            return this.a.a.size();
        }
    }

    public ej(List<? extends T> list, dj<T> djVar) {
        this.a = Enhancements.transform(this, list);
        this.b = djVar;
    }

    public void e(List<? extends T> list) {
        List<? extends T> listTransform = Enhancements.transform(this, list);
        androidx.recyclerview.widget.j.d dVarB = androidx.recyclerview.widget.j.b(new c(this, listTransform), true);
        this.a = listTransform;
        dVarB.a(new androidx.recyclerview.widget.b(this));
    }

    public boolean f(T t, T t2) {
        if (t == null) {
            return false;
        }
        return t.equals(t2);
    }

    public boolean g(T t, T t2) {
        if (t == null) {
            return false;
        }
        return t.equals(t2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemCount() {
        return this.a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        return h(this.a.get(i), i);
    }

    public long h(T t, int i) {
        return super.getItemId(i);
    }

    public abstract int i(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.e
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b<B> bVar, int i) {
        j32.e(bVar, "holder");
        bVar.a.D(11, m50.c0(this.a, i));
        bVar.a.D(3, this.b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public RecyclerView.b0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        j32.e(viewGroup, "parent");
        LayoutInflater layoutInflaterFrom = this.c;
        if (layoutInflaterFrom == null) {
            layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
            this.c = layoutInflaterFrom;
            j32.d(layoutInflaterFrom, "from(view.context).also …\t\tlayoutInflater = it\n\t\t}");
        }
        ViewDataBinding viewDataBindingB = hl0.b(layoutInflaterFrom, i(i), viewGroup, false);
        j32.d(viewDataBindingB, "inflate(inflater, getLay…viewType), parent, false)");
        return new b(viewDataBindingB);
    }
}
