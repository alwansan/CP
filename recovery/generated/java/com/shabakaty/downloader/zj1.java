package com.shabakaty.downloader;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.user.NotificationsList;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentNotificationsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class zj1 extends yj1 {
    public final StatusView R;
    public long S;

    /* JADX WARN: Illegal instructions before constructor call */
    public zj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, null);
        super(gl0Var, view, 2, (AppCompatImageView) objArrS[3], (TextView) objArrS[4], (RecyclerView) objArrS[1]);
        this.S = -1L;
        this.M.setTag(null);
        ((FrameLayout) objArrS[0]).setTag(null);
        StatusView statusView = (StatusView) objArrS[2];
        this.R = statusView;
        statusView.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.P = (l13) obj;
            synchronized (this) {
                this.S |= 4;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.Q = (o13) obj;
            synchronized (this) {
                this.S |= 8;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0057  */
    /* JADX WARN: Code duplicated, block: B:35:0x005a  */
    /* JADX WARN: Code duplicated, block: B:38:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0071  */
    /* JADX WARN: Code duplicated, block: B:44:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0090  */
    /* JADX WARN: Code duplicated, block: B:57:0x0093  */
    /* JADX WARN: Code duplicated, block: B:62:0x009f  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        tj.a value;
        List<VideoModel> list;
        int i2;
        long j2;
        mj<NotificationsList> mjVar;
        tj tjVar;
        tj.a aVar;
        NotificationsList notificationsList;
        boolean zEquals;
        long j3;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        l13 l13Var = this.P;
        o13 o13Var = this.Q;
        if ((27 & j) != 0) {
            long j4 = j & 25;
            if (j4 != 0) {
                xv2<tj.a> xv2Var = o13Var != null ? o13Var.d : null;
                E(0, xv2Var);
                value = xv2Var != null ? xv2Var.getValue() : null;
                boolean z = value == tj.a.SUCCESS;
                if (j4 != 0) {
                    j |= z ? 64L : 32L;
                }
                if (!z) {
                    i = 8;
                }
                j2 = j & 26;
                if (j2 != 0) {
                    if (o13Var != null) {
                        mjVar = o13Var.g;
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
                        notificationsList = (NotificationsList) tjVar.b;
                        aVar = tjVar.a;
                    } else {
                        aVar = null;
                        notificationsList = null;
                    }
                    if (notificationsList != null) {
                        list = notificationsList.notifications;
                    } else {
                        list = null;
                    }
                    if (aVar != null) {
                        zEquals = aVar.equals(tj.a.EMPTY);
                    } else {
                        zEquals = false;
                    }
                    if (j2 != 0) {
                        if (zEquals) {
                            j3 = 256;
                        } else {
                            j3 = 128;
                        }
                        j |= j3;
                    }
                    if (zEquals) {
                        i2 = 8;
                    }
                    if ((26 & j) != 0) {
                        this.M.setVisibility(i2);
                        this.N.setVisibility(i2);
                        fo3.a(this.O, list, null, null);
                    }
                    if ((20 & j) != 0) {
                        this.R.setNavigator(l13Var);
                    }
                    if ((25 & j) != 0) {
                        this.R.setStatus(value);
                        this.O.setVisibility(i);
                    }
                    if ((j & 16) != 0) {
                        TextView textView = this.N;
                        d3.a(textView, R.string.nothing_to_show_txt, textView);
                        RecyclerView recyclerView = this.O;
                        nl6.q(recyclerView, recyclerView.getResources().getString(R.string.notifications_txt));
                    }
                }
                list = null;
            } else {
                value = null;
            }
            i = 0;
            j2 = j & 26;
            if (j2 != 0) {
                if (o13Var != null) {
                    mjVar = o13Var.g;
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
                    notificationsList = (NotificationsList) tjVar.b;
                    aVar = tjVar.a;
                } else {
                    aVar = null;
                    notificationsList = null;
                }
                if (notificationsList != null) {
                    list = notificationsList.notifications;
                } else {
                    list = null;
                }
                if (aVar != null) {
                    zEquals = aVar.equals(tj.a.EMPTY);
                } else {
                    zEquals = false;
                }
                if (j2 != 0) {
                    if (zEquals) {
                        j3 = 256;
                    } else {
                        j3 = 128;
                    }
                    j |= j3;
                }
                if (zEquals) {
                    i2 = 8;
                }
                if ((26 & j) != 0) {
                    this.M.setVisibility(i2);
                    this.N.setVisibility(i2);
                    fo3.a(this.O, list, null, null);
                }
                if ((20 & j) != 0) {
                    this.R.setNavigator(l13Var);
                }
                if ((25 & j) != 0) {
                    this.R.setStatus(value);
                    this.O.setVisibility(i);
                }
                if ((j & 16) != 0) {
                    TextView textView2 = this.N;
                    d3.a(textView2, R.string.nothing_to_show_txt, textView2);
                    RecyclerView recyclerView2 = this.O;
                    nl6.q(recyclerView2, recyclerView2.getResources().getString(R.string.notifications_txt));
                }
            }
            list = null;
        } else {
            i = 0;
            value = null;
            list = null;
        }
        i2 = 0;
        if ((26 & j) != 0) {
            this.M.setVisibility(i2);
            this.N.setVisibility(i2);
            fo3.a(this.O, list, null, null);
        }
        if ((20 & j) != 0) {
            this.R.setNavigator(l13Var);
        }
        if ((25 & j) != 0) {
            this.R.setStatus(value);
            this.O.setVisibility(i);
        }
        if ((j & 16) != 0) {
            TextView textView3 = this.N;
            d3.a(textView3, R.string.nothing_to_show_txt, textView3);
            RecyclerView recyclerView3 = this.O;
            nl6.q(recyclerView3, recyclerView3.getResources().getString(R.string.notifications_txt));
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.S != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.S = 16L;
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
                this.S |= 1;
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
            this.S |= 2;
        }
        return true;
    }
}
