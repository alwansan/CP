package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;
import java.util.List;

/* JADX INFO: compiled from: FragmentShowMoreBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class mk1 extends lk1 {
    public a P;
    public long Q;

    /* JADX INFO: compiled from: FragmentShowMoreBindingImpl.java */
    public static class a implements rm1<qv4> {
        public o54 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.b();
            return null;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public mk1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 2, null, null);
        super(gl0Var, view, 2, (WideVerticalVideosView) objArrS[1]);
        this.Q = -1L;
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.M.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
            this.O = (r54) obj;
            synchronized (this) {
                this.Q |= 4;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.N = (o54) obj;
            synchronized (this) {
                this.Q |= 8;
            }
            f(16);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0063 A[PHI: r2 r13
      0x0063: PHI (r2v1 long) = (r2v0 long), (r2v5 long), (r2v5 long) binds: [B:7:0x0019, B:29:0x004f, B:34:0x005a] A[DONT_GENERATE, DONT_INLINE]
      0x0063: PHI (r13v1 int) = (r13v0 int), (r13v3 int), (r13v3 int) binds: [B:7:0x0019, B:29:0x004f, B:34:0x005a] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        tj<List<VideoModel>> tjVar;
        synchronized (this) {
            j = this.Q;
            this.Q = 0L;
        }
        r54 r54Var = this.O;
        o54 o54Var = this.N;
        int i = 0;
        a aVar = null;
        if ((23 & j) != 0) {
            long j2 = j & 21;
            if (j2 != 0) {
                xv2<tj.a> xv2Var = r54Var != null ? r54Var.d : null;
                E(0, xv2Var);
                boolean z = (xv2Var != null ? xv2Var.getValue() : null) == tj.a.ERROR;
                if (j2 != 0) {
                    j |= z ? 64L : 32L;
                }
                if (z) {
                    i = 8;
                }
            }
            if ((j & 22) == 0) {
                tjVar = null;
            } else {
                mj<List<VideoModel>> mjVar = r54Var != null ? r54Var.i : null;
                E(1, mjVar);
                if (mjVar != null) {
                    tjVar = (tj) mjVar.getValue();
                } else {
                    tjVar = null;
                }
            }
        } else {
            tjVar = null;
        }
        long j3 = 24 & j;
        if (j3 != 0 && o54Var != null) {
            a aVar2 = this.P;
            if (aVar2 == null) {
                aVar2 = new a();
                this.P = aVar2;
            }
            aVar = aVar2;
            aVar.r = o54Var;
        }
        if ((j & 21) != 0) {
            this.M.setVisibility(i);
        }
        if (j3 != 0) {
            this.M.setOnScrolledToEnd(aVar);
        }
        if ((j & 22) != 0) {
            this.M.setVideos(tjVar);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.Q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Q = 16L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.Q |= 1;
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.Q |= 2;
        }
        return true;
    }
}
