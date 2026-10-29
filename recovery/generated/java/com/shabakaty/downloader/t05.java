package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.google.android.flexbox.FlexboxLayout;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: VideoInfoCastAndCrewLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class t05 extends s05 {
    public long V;

    /* JADX WARN: Illegal instructions before constructor call */
    public t05(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 7, null, null);
        super(gl0Var, viewArr[0], 1, (RecyclerView) objArrT[2], (TextView) objArrT[1], (TextView) objArrT[0], (FlexboxLayout) objArrT[4], (TextView) objArrT[3], (FlexboxLayout) objArrT[6], (TextView) objArrT[5]);
        this.V = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        C(viewArr);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            G((j15) obj);
        } else {
            if (38 != i) {
                return false;
            }
            H((u15) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.s05
    public void G(j15 j15Var) {
        this.U = j15Var;
        synchronized (this) {
            this.V |= 2;
        }
        f(16);
        x();
    }

    @Override // com.shabakaty.downloader.s05
    public void H(u15 u15Var) {
        this.T = u15Var;
        synchronized (this) {
            this.V |= 4;
        }
        f(38);
        x();
    }

    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x008f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x0091  */
    /* JADX WARN: Code duplicated, block: B:51:0x0094  */
    /* JADX WARN: Code duplicated, block: B:53:0x0097  */
    /* JADX WARN: Code duplicated, block: B:54:0x009c  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f5 A[PHI: r2
      0x00f5: PHI (r2v4 long) = (r2v3 long), (r2v9 long) binds: [B:79:0x00df, B:88:0x00f0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:93:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:96:0x012b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0152  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        boolean z;
        boolean z2;
        List<ob4> list;
        List<ob4> list2;
        boolean zIsEmpty;
        int i2;
        List<ob4> list3;
        long j2;
        long j3;
        int i3;
        long j4;
        long j5;
        boolean zIsEmpty2;
        boolean zIsEmpty3;
        int i4;
        long j6;
        int i5;
        long j7;
        long j8;
        long j9;
        synchronized (this) {
            j = this.V;
            this.V = 0L;
        }
        j15 j15Var = this.U;
        u15 u15Var = this.T;
        int i6 = 0;
        if ((15 & j) != 0) {
            mj<VideoModel> mjVar = u15Var != null ? u15Var.t : null;
            E(0, mjVar);
            tj tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
            VideoModel videoModel = tjVar != null ? (VideoModel) tjVar.b : null;
            if (videoModel != null) {
                list = videoModel.writersInfo;
                list2 = videoModel.directorsInfo;
            } else {
                list = null;
                list2 = null;
            }
            long j10 = j & 13;
            if (j10 != 0) {
                zIsEmpty2 = list != null ? list.isEmpty() : false;
                if (j10 != 0) {
                    j |= zIsEmpty2 ? 32L : 16L;
                }
                zIsEmpty3 = list2 != null ? list2.isEmpty() : false;
                if ((j & 13) != 0) {
                    if (zIsEmpty3) {
                        j8 = j | 2048;
                        j9 = 32768;
                    } else {
                        j8 = j | 1024;
                        j9 = 16384;
                    }
                    j = j8 | j9;
                }
                i4 = zIsEmpty2 ? 8 : 0;
                if (zIsEmpty3) {
                    i = i4;
                    z2 = zIsEmpty3;
                    z = zIsEmpty2;
                    i6 = 8;
                }
                j6 = j & 13;
                if (j6 != 0) {
                    if (videoModel != null) {
                        list3 = videoModel.actorsInfo;
                    } else {
                        list3 = null;
                    }
                    if (list3 != null) {
                        zIsEmpty = list3.isEmpty();
                    } else {
                        zIsEmpty = false;
                    }
                    if (j6 != 0) {
                        if (zIsEmpty) {
                            j7 = 512;
                        } else {
                            j7 = 256;
                        }
                        j |= j7;
                    }
                    if (zIsEmpty) {
                        i5 = 8;
                    } else {
                        i5 = 0;
                    }
                    i2 = i5;
                }
                j2 = j & 13;
                if (j2 != 0) {
                    if (!z2) {
                        zIsEmpty = false;
                    }
                    if (j2 != 0) {
                        if (zIsEmpty) {
                            j5 = 128;
                        } else {
                            j5 = 64;
                        }
                        j |= j5;
                    }
                } else {
                    zIsEmpty = false;
                }
                j3 = j & 13;
                if (j3 == 0) {
                    i3 = 0;
                } else {
                    if (!zIsEmpty) {
                        z = false;
                    }
                    if (j3 != 0) {
                        if (z) {
                            j4 = 8192;
                        } else {
                            j4 = 4096;
                        }
                        j |= j4;
                    }
                    if (z) {
                        i3 = 8;
                    } else {
                        i3 = 0;
                    }
                }
                if ((13 & j) != 0) {
                    this.M.setVisibility(i2);
                    fo3.a(this.M, list3, null, null);
                    this.N.setVisibility(i2);
                    this.O.setVisibility(i3);
                    this.P.setVisibility(i6);
                    this.Q.setVisibility(i6);
                    this.R.setVisibility(i);
                    this.S.setVisibility(i);
                }
                if ((8 & j) != 0) {
                    TextView textView = this.N;
                    d3.a(textView, R.string.actors, textView);
                    TextView textView2 = this.O;
                    d3.a(textView2, R.string.cast_amp_crew, textView2);
                    TextView textView3 = this.Q;
                    d3.a(textView3, R.string.director, textView3);
                    TextView textView4 = this.S;
                    d3.a(textView4, R.string.writer, textView4);
                }
                if ((j & 15) != 0) {
                    st2.a(this.P, list2, j15Var);
                    st2.a(this.R, list, j15Var);
                }
            }
            zIsEmpty2 = false;
            zIsEmpty3 = false;
            i4 = 0;
            i = i4;
            z2 = zIsEmpty3;
            z = zIsEmpty2;
            i6 = 0;
            j6 = j & 13;
            if (j6 != 0) {
                if (videoModel != null) {
                    list3 = videoModel.actorsInfo;
                } else {
                    list3 = null;
                }
                if (list3 != null) {
                    zIsEmpty = list3.isEmpty();
                } else {
                    zIsEmpty = false;
                }
                if (j6 != 0) {
                    if (zIsEmpty) {
                        j7 = 512;
                    } else {
                        j7 = 256;
                    }
                    j |= j7;
                }
                if (zIsEmpty) {
                    i5 = 8;
                } else {
                    i5 = 0;
                }
                i2 = i5;
            }
            j2 = j & 13;
            if (j2 != 0) {
                if (!z2) {
                    zIsEmpty = false;
                }
                if (j2 != 0) {
                    if (zIsEmpty) {
                        j5 = 128;
                    } else {
                        j5 = 64;
                    }
                    j |= j5;
                }
            } else {
                zIsEmpty = false;
            }
            j3 = j & 13;
            if (j3 == 0) {
                i3 = 0;
            } else {
                if (!zIsEmpty) {
                    z = false;
                }
                if (j3 != 0) {
                    if (z) {
                        j4 = 8192;
                    } else {
                        j4 = 4096;
                    }
                    j |= j4;
                }
                if (z) {
                    i3 = 8;
                } else {
                    i3 = 0;
                }
            }
            if ((13 & j) != 0) {
                this.M.setVisibility(i2);
                fo3.a(this.M, list3, null, null);
                this.N.setVisibility(i2);
                this.O.setVisibility(i3);
                this.P.setVisibility(i6);
                this.Q.setVisibility(i6);
                this.R.setVisibility(i);
                this.S.setVisibility(i);
            }
            if ((8 & j) != 0) {
                TextView textView5 = this.N;
                d3.a(textView5, R.string.actors, textView5);
                TextView textView6 = this.O;
                d3.a(textView6, R.string.cast_amp_crew, textView6);
                TextView textView7 = this.Q;
                d3.a(textView7, R.string.director, textView7);
                TextView textView8 = this.S;
                d3.a(textView8, R.string.writer, textView8);
            }
            if ((j & 15) != 0) {
                st2.a(this.P, list2, j15Var);
                st2.a(this.R, list, j15Var);
            }
        }
        i = 0;
        z = false;
        z2 = false;
        list = null;
        list2 = null;
        zIsEmpty = false;
        i2 = 0;
        list3 = null;
        j2 = j & 13;
        if (j2 != 0) {
            if (!z2) {
                zIsEmpty = false;
            }
            if (j2 != 0) {
                if (zIsEmpty) {
                    j5 = 128;
                } else {
                    j5 = 64;
                }
                j |= j5;
            }
        } else {
            zIsEmpty = false;
        }
        j3 = j & 13;
        if (j3 == 0) {
            i3 = 0;
        } else {
            if (!zIsEmpty) {
                z = false;
            }
            if (j3 != 0) {
                if (z) {
                    j4 = 8192;
                } else {
                    j4 = 4096;
                }
                j |= j4;
            }
            if (z) {
                i3 = 8;
            } else {
                i3 = 0;
            }
        }
        if ((13 & j) != 0) {
            this.M.setVisibility(i2);
            fo3.a(this.M, list3, null, null);
            this.N.setVisibility(i2);
            this.O.setVisibility(i3);
            this.P.setVisibility(i6);
            this.Q.setVisibility(i6);
            this.R.setVisibility(i);
            this.S.setVisibility(i);
        }
        if ((8 & j) != 0) {
            TextView textView9 = this.N;
            d3.a(textView9, R.string.actors, textView9);
            TextView textView10 = this.O;
            d3.a(textView10, R.string.cast_amp_crew, textView10);
            TextView textView11 = this.Q;
            d3.a(textView11, R.string.director, textView11);
            TextView textView12 = this.S;
            d3.a(textView12, R.string.writer, textView12);
        }
        if ((j & 15) != 0) {
            st2.a(this.P, list2, j15Var);
            st2.a(this.R, list, j15Var);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.V != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.V = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.V |= 1;
        }
        return true;
    }
}
