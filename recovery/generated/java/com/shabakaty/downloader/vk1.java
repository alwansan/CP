package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentSubscriptionsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class vk1 extends uk1 {
    public static final SparseIntArray U;
    public final StatusView R;
    public final ConstraintLayout S;
    public long T;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        U = sparseIntArray;
        sparseIntArray.put(R.id.empty_list_img, 6);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public vk1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 7, null, U);
        super(gl0Var, view, 2, (AppCompatImageView) objArrS[6], (TextView) objArrS[4], (TextView) objArrS[3], (RecyclerView) objArrS[5]);
        this.T = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        ((FrameLayout) objArrS[0]).setTag(null);
        StatusView statusView = (StatusView) objArrS[1];
        this.R = statusView;
        statusView.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[2];
        this.S = constraintLayout;
        constraintLayout.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.P = (wf4) obj;
            synchronized (this) {
                this.T |= 4;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.Q = (yf4) obj;
            synchronized (this) {
                this.T |= 8;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0052 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0054  */
    /* JADX WARN: Code duplicated, block: B:35:0x0057  */
    /* JADX WARN: Code duplicated, block: B:38:0x005d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0064  */
    /* JADX WARN: Code duplicated, block: B:41:0x0067  */
    /* JADX WARN: Code duplicated, block: B:42:0x006e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:47:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:53:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x008a  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        List list;
        tj.a value;
        int i;
        int i2;
        long j2;
        mj<List<VideoModel>> mjVar;
        tj tjVar;
        tj.a aVar;
        boolean zEquals;
        long j3;
        synchronized (this) {
            j = this.T;
            this.T = 0L;
        }
        wf4 wf4Var = this.P;
        yf4 yf4Var = this.Q;
        if ((27 & j) != 0) {
            long j4 = j & 25;
            if (j4 != 0) {
                xv2<tj.a> xv2Var = yf4Var != null ? yf4Var.d : null;
                E(0, xv2Var);
                value = xv2Var != null ? xv2Var.getValue() : null;
                boolean z = value == tj.a.SUCCESS;
                if (j4 != 0) {
                    j |= z ? 256L : 128L;
                }
                if (!z) {
                    i2 = 8;
                }
                j2 = 26 & j;
                if (j2 != 0) {
                    if (yf4Var != null) {
                        mjVar = yf4Var.g;
                    } else {
                        mjVar = null;
                    }
                    E(1, mjVar);
                    if (mjVar != null) {
                        tjVar = (tj) mjVar.getValue();
                    } else {
                        tjVar = null;
                    }
                    if (tjVar != null) {
                        aVar = tjVar.a;
                        list = (List) tjVar.b;
                    } else {
                        list = null;
                        aVar = null;
                    }
                    if (aVar != null) {
                        zEquals = aVar.equals(tj.a.EMPTY);
                    } else {
                        zEquals = false;
                    }
                    if (j2 != 0) {
                        if (zEquals) {
                            j3 = 64;
                        } else {
                            j3 = 32;
                        }
                        j |= j3;
                    }
                    if (zEquals) {
                        i = 8;
                    }
                } else {
                    list = null;
                }
                i = 0;
            } else {
                value = null;
            }
            i2 = 0;
            j2 = 26 & j;
            if (j2 != 0) {
                if (yf4Var != null) {
                    mjVar = yf4Var.g;
                } else {
                    mjVar = null;
                }
                E(1, mjVar);
                if (mjVar != null) {
                    tjVar = (tj) mjVar.getValue();
                } else {
                    tjVar = null;
                }
                if (tjVar != null) {
                    aVar = tjVar.a;
                    list = (List) tjVar.b;
                } else {
                    list = null;
                    aVar = null;
                }
                if (aVar != null) {
                    zEquals = aVar.equals(tj.a.EMPTY);
                } else {
                    zEquals = false;
                }
                if (j2 != 0) {
                    if (zEquals) {
                        j3 = 64;
                    } else {
                        j3 = 32;
                    }
                    j |= j3;
                }
                if (zEquals) {
                    i = 8;
                }
            } else {
                list = null;
            }
            i = 0;
        } else {
            list = null;
            value = null;
            i = 0;
            i2 = 0;
        }
        if ((16 & j) != 0) {
            TextView textView = this.M;
            d3.a(textView, R.string.subscriptions_empty_hint_txt, textView);
            TextView textView2 = this.N;
            d3.a(textView2, R.string.nothing_to_show_txt, textView2);
            RecyclerView recyclerView = this.O;
            nl6.q(recyclerView, recyclerView.getResources().getString(R.string.subscriptions_txt));
        }
        if ((20 & j) != 0) {
            this.R.setNavigator(wf4Var);
        }
        if ((j & 25) != 0) {
            this.R.setStatus(value);
            this.O.setVisibility(i2);
        }
        if ((j & 26) != 0) {
            this.S.setVisibility(i);
            fo3.a(this.O, list, null, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.T != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.T = 16L;
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
