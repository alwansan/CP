package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentSearchMovieTvShowsTabBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ik1 extends hk1 implements qm1.a {
    public static final ViewDataBinding.e U;
    public final oz2 Q;
    public final StatusView R;
    public final rm1 S;
    public long T;

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(4);
        U = eVar;
        eVar.a(0, new String[]{"no_search_results_layout"}, new int[]{3}, new int[]{R.layout.no_search_results_layout});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ik1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 4, U, null);
        super(gl0Var, view, 2, (WideVerticalVideosView) objArrS[1]);
        this.T = -1L;
        ((ConstraintLayout) objArrS[0]).setTag(null);
        oz2 oz2Var = (oz2) objArrS[3];
        this.Q = oz2Var;
        if (oz2Var != null) {
            oz2Var.B = this;
        }
        StatusView statusView = (StatusView) objArrS[2];
        this.R = statusView;
        statusView.setTag(null);
        this.M.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.S = new qm1(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.Q.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (33 == i) {
            G((Integer) obj);
        } else if (38 == i) {
            this.P = (hz3) obj;
            synchronized (this) {
                this.T |= 8;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.O = (dz3) obj;
            synchronized (this) {
                this.T |= 16;
            }
            f(16);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.hk1
    public void G(Integer num) {
        this.N = num;
        synchronized (this) {
            this.T |= 4;
        }
        f(33);
        x();
    }

    @Override // com.shabakaty.downloader.qm1.a
    public final qv4 c(int i) {
        Integer num = this.N;
        dz3 dz3Var = this.O;
        if (!(dz3Var != null)) {
            return null;
        }
        dz3Var.f(num.intValue());
        return null;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        boolean z;
        tj<List<VideoModel>> tjVar;
        tj<List<VideoModel>> tjVar2;
        tj.a aVar;
        tj.a aVar2;
        tj.a aVar3;
        tj<List<VideoModel>> tjVar3;
        long j2;
        long j3;
        synchronized (this) {
            j = this.T;
            this.T = 0L;
        }
        Integer num = this.N;
        hz3 hz3Var = this.P;
        dz3 dz3Var = this.O;
        long j4 = j & 47;
        if (j4 != 0) {
            z = ViewDataBinding.z(num) == 1;
            if (j4 != 0) {
                if (z) {
                    j2 = j | 128;
                    j3 = 512;
                } else {
                    j2 = j | 64;
                    j3 = 256;
                }
                j = j2 | j3;
            }
        } else {
            z = false;
        }
        long j5 = j & 40;
        long j6 = j & 48;
        if ((j & 960) != 0) {
            if ((j & 320) != 0) {
                mj<List<VideoModel>> mjVar = hz3Var != null ? hz3Var.y : null;
                E(0, mjVar);
                tjVar2 = mjVar != null ? (tj) mjVar.getValue() : null;
                aVar = ((j & 64) == 0 || tjVar2 == null) ? null : tjVar2.a;
            } else {
                tjVar2 = null;
                aVar = null;
            }
            if ((640 & j) != 0) {
                mj<List<VideoModel>> mjVar2 = hz3Var != null ? hz3Var.x : null;
                E(1, mjVar2);
                tjVar = mjVar2 != null ? (tj) mjVar2.getValue() : null;
                aVar2 = ((128 & j) == 0 || tjVar == null) ? null : tjVar.a;
            } else {
                tjVar = null;
                aVar2 = null;
            }
        } else {
            tjVar = null;
            tjVar2 = null;
            aVar = null;
            aVar2 = null;
        }
        long j7 = 47 & j;
        if (j7 != 0) {
            tj.a aVar4 = z ? aVar2 : aVar;
            if (!z) {
                tjVar = tjVar2;
            }
            tjVar3 = tjVar;
            aVar3 = aVar4;
        } else {
            aVar3 = null;
            tjVar3 = null;
        }
        if ((36 & j) != 0) {
            this.Q.G(num);
        }
        if (j5 != 0) {
            this.Q.H(hz3Var);
        }
        if (j6 != 0) {
            this.R.setNavigator(dz3Var);
        }
        if (j7 != 0) {
            this.R.setStatus(aVar3);
            this.M.setVideos(tjVar3);
        }
        if ((j & 32) != 0) {
            this.M.setOnScrolledToEnd(this.S);
        }
        this.Q.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.T != 0) {
                return true;
            }
            return this.Q.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.T = 32L;
        }
        this.Q.p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.T |= 1;
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
            this.T |= 2;
        }
        return true;
    }
}
