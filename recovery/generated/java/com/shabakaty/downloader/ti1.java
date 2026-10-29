package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.shabakaty.cinemana.domain.models.local.Comment;
import com.shabakaty.cinemana.utils.StatusView;
import com.shabakaty.usermanagement.UserManagement;
import java.util.List;

/* JADX INFO: compiled from: FragmentCommentsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ti1 extends si1 implements lm0.a {
    public static final SparseIntArray Y;
    public final mm0 W;
    public long X;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        Y = sparseIntArray;
        sparseIntArray.put(R.id.textInputEditText, 8);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ti1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 9, null, Y);
        super(gl0Var, view, 2, (AppCompatImageView) objArrS[7], (View) objArrS[2], (RecyclerView) objArrS[3], (ConstraintLayout) objArrS[0], (TextView) objArrS[1], (StatusView) objArrS[4], (TextInputEditText) objArrS[8], (TextInputLayout) objArrS[5], (SimpleDraweeView) objArrS[6]);
        this.X = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.W = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.U = (v60) obj;
            synchronized (this) {
                this.X |= 4;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.V = (g70) obj;
            synchronized (this) {
                this.X |= 8;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        v60 v60Var = this.U;
        if (v60Var != null) {
            v60Var.K0();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    /* JADX WARN: Code duplicated, block: B:48:0x0096 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0098  */
    /* JADX WARN: Code duplicated, block: B:50:0x009b  */
    /* JADX WARN: Code duplicated, block: B:52:0x009e  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:56:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:66:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:77:0x012e  */
    /* JADX WARN: Code duplicated, block: B:80:0x013a  */
    /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String value;
        String string;
        boolean zEquals;
        List list;
        tj.a aVar;
        int i;
        boolean zIsLoggedIn;
        long j2;
        int i2;
        int i3;
        long j3;
        UserManagement userManagement;
        long j4;
        long j5;
        synchronized (this) {
            j = this.X;
            this.X = 0L;
        }
        v60 v60Var = this.U;
        g70 g70Var = this.V;
        if ((27 & j) != 0) {
            if ((j & 25) == 0) {
                value = null;
            } else {
                xv2<String> xv2Var = g70Var != null ? g70Var.j : null;
                E(0, xv2Var);
                if (xv2Var != null) {
                    value = xv2Var.getValue();
                } else {
                    value = null;
                }
            }
            long j6 = j & 26;
            if (j6 != 0) {
                mj<List<Comment>> mjVar = g70Var != null ? g70Var.k : null;
                E(1, mjVar);
                tj tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
                if (tjVar != null) {
                    aVar = tjVar.a;
                    list = (List) tjVar.b;
                } else {
                    list = null;
                    aVar = null;
                }
                zEquals = aVar != null ? aVar.equals(tj.a.SUCCESS) : false;
                if (j6 != 0) {
                    if (zEquals) {
                        j4 = j | 64;
                        j5 = 1024;
                    } else {
                        j4 = j | 32;
                        j5 = 512;
                    }
                    j = j4 | j5;
                }
                int size = list != null ? list.size() : 0;
                int i4 = zEquals ? 0 : 8;
                string = Integer.toString(size);
                i = i4;
            }
            if ((64 & j) == 0) {
                zIsLoggedIn = false;
            } else {
                if (g70Var != null) {
                    userManagement = g70Var.f;
                } else {
                    userManagement = null;
                }
                if (userManagement != null) {
                    zIsLoggedIn = userManagement.isLoggedIn();
                } else {
                    zIsLoggedIn = false;
                }
            }
            j2 = j & 26;
            if (j2 != 0) {
                if (!zEquals) {
                    zIsLoggedIn = false;
                }
                if (j2 != 0) {
                    if (zIsLoggedIn) {
                        j3 = 256;
                    } else {
                        j3 = 128;
                    }
                    j |= j3;
                }
                if (zIsLoggedIn) {
                    i3 = 0;
                } else {
                    i3 = 8;
                }
                i2 = i3;
            } else {
                i2 = 0;
            }
            if ((26 & j) != 0) {
                this.M.setVisibility(i2);
                int i5 = i;
                this.N.setVisibility(i5);
                this.O.setVisibility(i5);
                fo3.a(this.O, list, null, null);
                this.Q.setVisibility(i5);
                nl6.r(this.Q, string);
                this.R.setStatus(aVar);
                this.S.setVisibility(i2);
                this.T.setVisibility(i2);
            }
            if ((16 & j) != 0) {
                AppCompatImageView appCompatImageView = this.M;
                nl6.q(appCompatImageView, appCompatImageView.getResources().getString(R.string.submit));
                st2.c(this.M, this.W, null);
                RecyclerView recyclerView = this.O;
                nl6.q(recyclerView, recyclerView.getResources().getString(R.string.comments));
            }
            if ((20 & j) != 0) {
                this.R.setNavigator(v60Var);
            }
            if ((j & 25) != 0) {
                oy1.c(this.T, value, null, null, null);
            }
        }
        value = null;
        string = null;
        zEquals = false;
        list = null;
        aVar = null;
        i = 0;
        if ((64 & j) == 0) {
            zIsLoggedIn = false;
        } else {
            if (g70Var != null) {
                userManagement = g70Var.f;
            } else {
                userManagement = null;
            }
            if (userManagement != null) {
                zIsLoggedIn = userManagement.isLoggedIn();
            } else {
                zIsLoggedIn = false;
            }
        }
        j2 = j & 26;
        if (j2 != 0) {
            if (!zEquals) {
                zIsLoggedIn = false;
            }
            if (j2 != 0) {
                if (zIsLoggedIn) {
                    j3 = 256;
                } else {
                    j3 = 128;
                }
                j |= j3;
            }
            if (zIsLoggedIn) {
                i3 = 0;
            } else {
                i3 = 8;
            }
            i2 = i3;
        } else {
            i2 = 0;
        }
        if ((26 & j) != 0) {
            this.M.setVisibility(i2);
            int i6 = i;
            this.N.setVisibility(i6);
            this.O.setVisibility(i6);
            fo3.a(this.O, list, null, null);
            this.Q.setVisibility(i6);
            nl6.r(this.Q, string);
            this.R.setStatus(aVar);
            this.S.setVisibility(i2);
            this.T.setVisibility(i2);
        }
        if ((16 & j) != 0) {
            AppCompatImageView appCompatImageView2 = this.M;
            nl6.q(appCompatImageView2, appCompatImageView2.getResources().getString(R.string.submit));
            st2.c(this.M, this.W, null);
            RecyclerView recyclerView2 = this.O;
            nl6.q(recyclerView2, recyclerView2.getResources().getString(R.string.comments));
        }
        if ((20 & j) != 0) {
            this.R.setNavigator(v60Var);
        }
        if ((j & 25) != 0) {
            oy1.c(this.T, value, null, null, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.X != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.X = 16L;
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
                this.X |= 1;
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
            this.X |= 2;
        }
        return true;
    }
}
