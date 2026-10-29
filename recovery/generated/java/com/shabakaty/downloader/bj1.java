package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: FragmentDiscoverMoreBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class bj1 extends aj1 {
    public static final ViewDataBinding.e V;
    public c R;
    public a S;
    public b T;
    public long U;

    /* JADX INFO: compiled from: FragmentDiscoverMoreBindingImpl.java */
    public static class a implements rm1<qv4> {
        public rt0 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.M();
            return null;
        }
    }

    /* JADX INFO: compiled from: FragmentDiscoverMoreBindingImpl.java */
    public static class b implements rm1<qv4> {
        public rt0 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.Q1();
            return null;
        }
    }

    /* JADX INFO: compiled from: FragmentDiscoverMoreBindingImpl.java */
    public static class c implements rm1<qv4> {
        public rt0 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.y();
            return null;
        }
    }

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(4);
        V = eVar;
        eVar.a(0, new String[]{"item_more_apps", "item_more_apps", "item_more_apps"}, new int[]{1, 2, 3}, new int[]{R.layout.item_more_apps, R.layout.item_more_apps, R.layout.item_more_apps});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public bj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 4, V, null);
        super(gl0Var, view, 6, (g52) objArrS[2], (g52) objArrS[1], (g52) objArrS[3]);
        this.U = -1L;
        g52 g52Var = (g52) this.M;
        if (g52Var != null) {
            g52Var.B = this;
        }
        g52 g52Var2 = (g52) this.N;
        if (g52Var2 != null) {
            g52Var2.B = this;
        }
        g52 g52Var3 = (g52) this.O;
        if (g52Var3 != null) {
            g52Var3.B = this;
        }
        ((ConstraintLayout) objArrS[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        ((g52) this.N).B(rh2Var);
        ((g52) this.M).B(rh2Var);
        ((g52) this.O).B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.P = (rt0) obj;
            synchronized (this) {
                this.U |= 64;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.Q = (st0) obj;
            synchronized (this) {
                this.U |= 128;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        c cVar;
        a aVar;
        b bVar;
        Boolean value;
        Boolean bool;
        Boolean value2;
        synchronized (this) {
            j = this.U;
            this.U = 0L;
        }
        rt0 rt0Var = (rt0) this.P;
        st0 st0Var = (st0) this.Q;
        long j2 = 320 & j;
        Boolean value3 = null;
        if (j2 == 0 || rt0Var == null) {
            cVar = null;
            aVar = null;
            bVar = null;
        } else {
            cVar = this.R;
            if (cVar == null) {
                cVar = new c();
                this.R = cVar;
            }
            cVar.r = rt0Var;
            aVar = this.S;
            if (aVar == null) {
                aVar = new a();
                this.S = aVar;
            }
            aVar.r = rt0Var;
            bVar = this.T;
            if (bVar == null) {
                bVar = new b();
                this.T = bVar;
            }
            bVar.r = rt0Var;
        }
        if ((425 & j) != 0) {
            if ((j & 385) == 0) {
                value = null;
            } else {
                xv2<Boolean> xv2Var = st0Var != null ? st0Var.f : null;
                E(0, xv2Var);
                if (xv2Var != null) {
                    value = xv2Var.getValue();
                } else {
                    value = null;
                }
            }
            if ((j & 392) == 0) {
                value2 = null;
            } else {
                xv2<Boolean> xv2Var2 = st0Var != null ? st0Var.h : null;
                E(3, xv2Var2);
                if (xv2Var2 != null) {
                    value2 = xv2Var2.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j & 416) != 0) {
                xv2<Boolean> xv2Var3 = st0Var != null ? st0Var.g : null;
                E(5, xv2Var3);
                if (xv2Var3 != null) {
                    value3 = xv2Var3.getValue();
                }
            }
            bool = value3;
            value3 = value2;
        } else {
            value = null;
            bool = null;
        }
        if ((256 & j) != 0) {
            ((g52) this.M).G(this.v.getResources().getString(R.string.muzikna_desc_txt));
            ((g52) this.M).H(ra.b(this.v.getContext(), R.drawable.ic_muzikna_app));
            ((g52) this.M).L(this.v.getResources().getString(R.string.muzikna_txt));
            ((g52) this.N).G(this.v.getResources().getString(R.string.share_desc_txt));
            ((g52) this.N).H(ra.b(this.v.getContext(), R.drawable.ic_share_app));
            ((g52) this.N).L(this.v.getResources().getString(R.string.share_txt));
            ((g52) this.O).G(this.v.getResources().getString(R.string.tv_desc_txt));
            ((g52) this.O).H(ra.b(this.v.getContext(), R.drawable.ic_tv_app));
            ((g52) this.O).L(this.v.getResources().getString(R.string.tv_txt));
        }
        if ((j & 392) != 0) {
            ((g52) this.M).I(value3);
        }
        if (j2 != 0) {
            ((g52) this.M).J(bVar);
            ((g52) this.N).J(aVar);
            ((g52) this.O).J(cVar);
        }
        if ((j & 385) != 0) {
            ((g52) this.N).I(value);
        }
        if ((j & 416) != 0) {
            ((g52) this.O).I(bool);
        }
        ((g52) this.N).j();
        ((g52) this.M).j();
        ((g52) this.O).j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.U != 0) {
                return true;
            }
            return ((g52) this.N).o() || ((g52) this.M).o() || ((g52) this.O).o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.U = 256L;
        }
        ((g52) this.N).p();
        ((g52) this.M).p();
        ((g52) this.O).p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.U |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.U |= 2;
            }
            return true;
        }
        if (i == 2) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.U |= 4;
            }
            return true;
        }
        if (i == 3) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.U |= 8;
            }
            return true;
        }
        if (i == 4) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.U |= 16;
            }
            return true;
        }
        if (i != 5) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.U |= 32;
        }
        return true;
    }
}
