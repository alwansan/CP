package com.shabakaty.downloader;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentUserListDetailsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class gl1 extends fl1 {
    public final TextView S;
    public a T;
    public long U;

    /* JADX INFO: compiled from: FragmentUserListDetailsBindingImpl.java */
    public static class a implements rm1<qv4> {
        public cy4 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.b();
            return null;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public gl1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 6, null, null);
        super(gl0Var, view, 3, (AppCompatImageView) objArrS[2], (TextView) objArrS[3], (StatusView) objArrS[5], (WideVerticalVideosView) objArrS[1]);
        this.U = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        TextView textView = (TextView) objArrS[4];
        this.S = textView;
        textView.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.Q = (cy4) obj;
            synchronized (this) {
                this.U |= 8;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.R = (by4) obj;
            synchronized (this) {
                this.U |= 16;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:129:0x018d A[PHI: r2
      0x018d: PHI (r2v3 long) = (r2v2 long), (r2v6 long) binds: [B:117:0x016a, B:127:0x017d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        a aVar;
        String value;
        boolean z;
        tj.a aVar2;
        tj<List<VideoModel>> tjVar;
        int i;
        int i2;
        Drawable drawableB;
        String string;
        Drawable drawableB2;
        Context context;
        int i3;
        synchronized (this) {
            j = this.U;
            this.U = 0L;
        }
        cy4 cy4Var = this.Q;
        by4 by4Var = this.R;
        if ((40 & j) == 0 || cy4Var == null) {
            aVar = null;
        } else {
            aVar = this.T;
            if (aVar == null) {
                aVar = new a();
                this.T = aVar;
            }
            aVar.r = cy4Var;
        }
        if ((55 & j) != 0) {
            long j2 = j & 49;
            if (j2 != 0) {
                xv2<tj.a> xv2Var = by4Var != null ? by4Var.d : null;
                E(0, xv2Var);
                tj.a value2 = xv2Var != null ? xv2Var.getValue() : null;
                boolean zEquals = value2 != null ? value2.equals(tj.a.EMPTY) : false;
                if (j2 != 0) {
                    j |= zEquals ? 2097152L : 1048576L;
                }
                boolean z2 = value2 == tj.a.ERROR;
                if ((j & 49) != 0) {
                    j |= z2 ? 524288L : 262144L;
                }
                i = 8;
                i2 = zEquals ? 0 : 8;
                if (z2) {
                    i = 0;
                }
            } else {
                i = 0;
                i2 = 0;
            }
            if ((j & 50) != 0) {
                mj<List<VideoModel>> mjVar = by4Var != null ? by4Var.j : null;
                E(1, mjVar);
                tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
                aVar2 = tjVar != null ? tjVar.a : null;
            } else {
                aVar2 = null;
                tjVar = null;
            }
            long j3 = 52 & j;
            if (j3 != 0) {
                xv2<String> xv2Var2 = by4Var != null ? by4Var.i : null;
                E(2, xv2Var2);
                value = xv2Var2 != null ? xv2Var2.getValue() : null;
                z = value == "3";
                if (j3 != 0) {
                    j = z ? j | 128 | 8192 | 131072 : j | 64 | 4096 | 65536;
                }
            } else {
                value = null;
                z = false;
            }
        } else {
            value = null;
            z = false;
            aVar2 = null;
            tjVar = null;
            i = 0;
            i2 = 0;
        }
        if ((j & 69632) != 0) {
            boolean z3 = value == "1";
            if ((j & 65536) != 0) {
                j |= z3 ? 2048L : 1024L;
            }
            if ((j & 4096) != 0) {
                j |= z3 ? 32768L : 16384L;
            }
            if ((j & 65536) != 0) {
                string = this.S.getResources().getString(z3 ? R.string.watched_empty_hint_txt : R.string.watch_later_empty_hint_txt);
            } else {
                string = null;
            }
            if ((j & 4096) != 0) {
                if (z3) {
                    context = this.M.getContext();
                    i3 = R.drawable.ic_history;
                } else {
                    context = this.M.getContext();
                    i3 = R.drawable.ic_categories;
                }
                drawableB = ra.b(context, i3);
            } else {
                drawableB = null;
            }
        } else {
            drawableB = null;
            string = null;
        }
        long j4 = j & 64;
        if (j4 == 0) {
            drawableB2 = null;
        } else {
            boolean z4 = value == "2";
            if (j4 != 0) {
                j |= z4 ? 512L : 256L;
            }
            if (z4) {
                drawableB2 = ra.b(this.S.getContext(), R.drawable.ic_add);
            } else {
                drawableB2 = null;
            }
        }
        long j5 = 52 & j;
        if (j5 != 0) {
            if (z) {
                drawableB2 = ra.b(this.S.getContext(), R.drawable.ic_heart);
            }
            if (z) {
                drawableB = ra.b(this.M.getContext(), R.drawable.ic_heart_big);
            }
            if (z) {
                string = this.S.getResources().getString(R.string.favorites_empty_hint_txt);
            }
        } else {
            drawableB = null;
            string = null;
            drawableB2 = null;
        }
        Drawable drawable = drawableB2;
        if ((j & 49) != 0) {
            this.M.setVisibility(i2);
            this.N.setVisibility(i2);
            this.S.setVisibility(i2);
            this.O.setVisibility(i);
        }
        if (j5 != 0) {
            this.M.setImageDrawable(drawableB);
            nl6.r(this.S, string);
            TextView textView = this.S;
            j32.e(textView, "<this>");
            j32.e(textView, "<this>");
            s45.i(textView, null, null, drawable, null, 11);
        }
        if ((32 & j) != 0) {
            TextView textView2 = this.N;
            d3.a(textView2, R.string.nothing_to_show_txt, textView2);
        }
        if ((40 & j) != 0) {
            this.O.setNavigator(cy4Var);
            this.P.setOnScrolledToEnd(aVar);
        }
        if ((j & 50) != 0) {
            this.O.setStatus(aVar2);
            this.P.setVideos(tjVar);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.U != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.U = 32L;
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
        if (i != 2) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.U |= 4;
        }
        return true;
    }
}
