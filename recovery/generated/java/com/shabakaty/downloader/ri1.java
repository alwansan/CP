package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentCategoryMoviesTvShowsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ri1 extends qi1 implements qm1.a {
    public static final ViewDataBinding.e V;
    public final rm1 T;
    public long U;

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(5);
        V = eVar;
        eVar.a(0, new String[]{"videos_layout"}, new int[]{4}, new int[]{R.layout.videos_layout});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ri1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, V, null);
        super(gl0Var, view, 4, (a35) objArrS[4], (AppCompatImageView) objArrS[1], (TextView) objArrS[2], (StatusView) objArrS[3]);
        this.U = -1L;
        a35 a35Var = this.M;
        if (a35Var != null) {
            a35Var.B = this;
        }
        this.N.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.T = new qm1(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.M.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.S = (vx) obj;
            synchronized (this) {
                this.U |= 16;
            }
            f(16);
            x();
        } else if (33 == i) {
            G((Integer) obj);
        } else {
            if (38 != i) {
                return false;
            }
            this.R = (rx) obj;
            synchronized (this) {
                this.U |= 64;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.qi1
    public void G(Integer num) {
        this.Q = num;
        synchronized (this) {
            this.U |= 32;
        }
        f(33);
        x();
    }

    @Override // com.shabakaty.downloader.qm1.a
    public final qv4 c(int i) {
        Integer num = this.Q;
        vx vxVar = this.S;
        if (!(vxVar != null)) {
            return null;
        }
        vxVar.f(num.intValue());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0139  */
    /* JADX WARN: Code duplicated, block: B:101:0x013c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0149  */
    /* JADX WARN: Code duplicated, block: B:106:0x014c  */
    /* JADX WARN: Code duplicated, block: B:107:0x014e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0151 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x0153  */
    /* JADX WARN: Code duplicated, block: B:111:0x0156  */
    /* JADX WARN: Code duplicated, block: B:112:0x015b  */
    /* JADX WARN: Code duplicated, block: B:115:0x0164 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x0166  */
    /* JADX WARN: Code duplicated, block: B:119:0x016e  */
    /* JADX WARN: Code duplicated, block: B:121:0x0177  */
    /* JADX WARN: Code duplicated, block: B:123:0x017b  */
    /* JADX WARN: Code duplicated, block: B:124:0x0180  */
    /* JADX WARN: Code duplicated, block: B:127:0x0189 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:129:0x018c  */
    /* JADX WARN: Code duplicated, block: B:132:0x0194 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x0196  */
    /* JADX WARN: Code duplicated, block: B:135:0x0199 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:136:0x019b  */
    /* JADX WARN: Code duplicated, block: B:137:0x019e  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a7 A[PHI: r2
      0x01a7: PHI (r2v6 long) = (r2v5 long), (r2v9 long) binds: [B:131:0x0192, B:139:0x01a1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:145:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:148:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:154:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[PHI: r2
      0x007c: PHI (r2v2 long) = (r2v1 long), (r2v15 long) binds: [B:18:0x004c, B:34:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x00db  */
    /* JADX WARN: Code duplicated, block: B:69:0x00de  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:83:0x010b  */
    /* JADX WARN: Code duplicated, block: B:84:0x010d  */
    /* JADX WARN: Code duplicated, block: B:89:0x0124 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0127  */
    /* JADX WARN: Code duplicated, block: B:94:0x012b  */
    /* JADX WARN: Code duplicated, block: B:96:0x012e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x0133  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int iZ;
        boolean z;
        int i;
        boolean zEquals;
        tj.a aVar;
        List<VideoModel> list;
        tj.a aVar2;
        List<VideoModel> list2;
        mj<List<VideoModel>> mjVar;
        tj tjVar;
        long j2;
        long j3;
        boolean z2;
        boolean zEquals2;
        long j4;
        int i2;
        long j5;
        tj.a aVar3 = tj.a.EMPTY;
        synchronized (this) {
            j = this.U;
            this.U = 0L;
        }
        vx vxVar = this.S;
        Integer num = this.Q;
        rx rxVar = this.R;
        long j6 = 230 & j;
        if (j6 != 0) {
            iZ = ViewDataBinding.z(num);
            z = iZ == 1;
            if (j6 != 0) {
                j = z ? j | 2048 | 32768 | 2097152 : j | 1024 | 16384 | 1048576;
            }
        } else {
            iZ = 0;
            z = false;
        }
        long j7 = j & 193;
        if (j7 == 0) {
            i = 0;
        } else {
            xv2<tj.a> xv2Var = rxVar != null ? rxVar.d : null;
            E(0, xv2Var);
            tj.a value = xv2Var != null ? xv2Var.getValue() : null;
            boolean zEquals3 = value != null ? value.equals(tj.a.ERROR) : false;
            if (j7 != 0) {
                j |= zEquals3 ? 131072L : 65536L;
            }
            if (zEquals3) {
                i = 8;
            } else {
                i = 0;
            }
        }
        if ((3196928 & j) != 0) {
            if ((2131968 & j) != 0) {
                mj<List<VideoModel>> mjVar2 = rxVar != null ? rxVar.i : null;
                E(1, mjVar2);
                tj tjVar2 = mjVar2 != null ? (tj) mjVar2.getValue() : null;
                list2 = ((2097152 & j) == 0 || tjVar2 == null) ? null : (List) tjVar2.b;
                if ((j & 34816) != 0) {
                    aVar2 = tjVar2 != null ? tjVar2.a : null;
                    if ((2048 & j) != 0 && aVar2 != null) {
                        zEquals = aVar2.equals(aVar3);
                    }
                    if ((1064960 & j) != 0) {
                        if (rxVar != null) {
                            mjVar = rxVar.j;
                        } else {
                            mjVar = null;
                        }
                        E(2, mjVar);
                        if (mjVar != null) {
                            tjVar = (tj) mjVar.getValue();
                        } else {
                            tjVar = null;
                        }
                        if ((j & 16384) != 0 || tjVar == null) {
                            aVar = null;
                        } else {
                            aVar = tjVar.a;
                        }
                        if ((j & 1048576) != 0 || tjVar == null) {
                            list = null;
                        } else {
                            list = (List) tjVar.b;
                        }
                    } else {
                        aVar = null;
                        list = null;
                    }
                    j2 = j & 230;
                    if (j2 != 0) {
                        if (!z) {
                            zEquals = false;
                        }
                        if (!z) {
                            aVar2 = aVar;
                        }
                        if (z) {
                            list = list2;
                        }
                        if (j2 != 0) {
                            if (zEquals) {
                                j |= 524288;
                            } else {
                                j |= 262144;
                            }
                        }
                    } else {
                        zEquals = false;
                        list = null;
                        aVar2 = null;
                    }
                    j3 = j & 262144;
                    if (j3 != 0) {
                        if (iZ == 2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (j3 != 0) {
                            if (z2) {
                                j |= 512;
                            } else {
                                j |= 256;
                            }
                        }
                    } else {
                        z2 = false;
                    }
                    if ((j & 512) == 0) {
                        zEquals2 = false;
                    } else {
                        if (rxVar != null) {
                            mjVar = rxVar.j;
                        }
                        E(2, mjVar);
                        if (mjVar != null) {
                            tjVar = (tj) mjVar.getValue();
                        }
                        if (tjVar != null) {
                            aVar = tjVar.a;
                        }
                        if (aVar != null) {
                            zEquals2 = aVar.equals(aVar3);
                        } else {
                            zEquals2 = false;
                        }
                    }
                    if ((j & 262144) != 0 || !z2) {
                        zEquals2 = false;
                    }
                    j4 = 230 & j;
                    if (j4 == 0) {
                        i2 = 0;
                    } else {
                        if (zEquals) {
                            zEquals2 = true;
                        }
                        if (j4 != 0) {
                            if (zEquals2) {
                                j5 = 8192;
                            } else {
                                j5 = 4096;
                            }
                            j |= j5;
                        }
                        if (zEquals2) {
                            i2 = 0;
                        } else {
                            i2 = 8;
                        }
                    }
                    if ((j & 193) != 0) {
                        this.M.v.setVisibility(i);
                    }
                    if ((128 & j) != 0) {
                        this.M.L(this.T);
                        TextView textView = this.O;
                        d3.a(textView, R.string.nothing_to_show_txt, textView);
                    }
                    if ((230 & j) != 0) {
                        this.M.P(list);
                        this.N.setVisibility(i2);
                        this.O.setVisibility(i2);
                        this.P.setStatus(aVar2);
                    }
                    if ((j & 144) != 0) {
                        this.P.setNavigator(vxVar);
                    }
                    this.M.j();
                }
                aVar2 = null;
            } else {
                aVar2 = null;
                list2 = null;
            }
            zEquals = false;
            if ((1064960 & j) != 0) {
                if (rxVar != null) {
                    mjVar = rxVar.j;
                } else {
                    mjVar = null;
                }
                E(2, mjVar);
                if (mjVar != null) {
                    tjVar = (tj) mjVar.getValue();
                } else {
                    tjVar = null;
                }
                if ((j & 16384) != 0) {
                    aVar = null;
                } else {
                    aVar = null;
                }
                if ((j & 1048576) != 0) {
                    list = null;
                } else {
                    list = null;
                }
            } else {
                aVar = null;
                list = null;
            }
            j2 = j & 230;
            if (j2 != 0) {
                if (!z) {
                    zEquals = false;
                }
                if (!z) {
                    aVar2 = aVar;
                }
                if (z) {
                    list = list2;
                }
                if (j2 != 0) {
                    if (zEquals) {
                        j |= 524288;
                    } else {
                        j |= 262144;
                    }
                }
            } else {
                zEquals = false;
                list = null;
                aVar2 = null;
            }
            j3 = j & 262144;
            if (j3 != 0) {
                if (iZ == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (j3 != 0) {
                    if (z2) {
                        j |= 512;
                    } else {
                        j |= 256;
                    }
                }
            } else {
                z2 = false;
            }
            if ((j & 512) == 0) {
                zEquals2 = false;
            } else {
                if (rxVar != null) {
                    mjVar = rxVar.j;
                }
                E(2, mjVar);
                if (mjVar != null) {
                    tjVar = (tj) mjVar.getValue();
                }
                if (tjVar != null) {
                    aVar = tjVar.a;
                }
                if (aVar != null) {
                    zEquals2 = aVar.equals(aVar3);
                } else {
                    zEquals2 = false;
                }
            }
            if ((j & 262144) != 0) {
                zEquals2 = false;
            } else {
                zEquals2 = false;
            }
            j4 = 230 & j;
            if (j4 == 0) {
                i2 = 0;
            } else {
                if (zEquals) {
                    zEquals2 = true;
                }
                if (j4 != 0) {
                    if (zEquals2) {
                        j5 = 8192;
                    } else {
                        j5 = 4096;
                    }
                    j |= j5;
                }
                if (zEquals2) {
                    i2 = 0;
                } else {
                    i2 = 8;
                }
            }
            if ((j & 193) != 0) {
                this.M.v.setVisibility(i);
            }
            if ((128 & j) != 0) {
                this.M.L(this.T);
                TextView textView2 = this.O;
                d3.a(textView2, R.string.nothing_to_show_txt, textView2);
            }
            if ((230 & j) != 0) {
                this.M.P(list);
                this.N.setVisibility(i2);
                this.O.setVisibility(i2);
                this.P.setStatus(aVar2);
            }
            if ((j & 144) != 0) {
                this.P.setNavigator(vxVar);
            }
            this.M.j();
        }
        zEquals = false;
        aVar = null;
        list = null;
        aVar2 = null;
        list2 = null;
        mjVar = null;
        tjVar = null;
        j2 = j & 230;
        if (j2 != 0) {
            if (!z) {
                zEquals = false;
            }
            if (!z) {
                aVar2 = aVar;
            }
            if (z) {
                list = list2;
            }
            if (j2 != 0) {
                if (zEquals) {
                    j |= 524288;
                } else {
                    j |= 262144;
                }
            }
        } else {
            zEquals = false;
            list = null;
            aVar2 = null;
        }
        j3 = j & 262144;
        if (j3 != 0) {
            if (iZ == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (j3 != 0) {
                if (z2) {
                    j |= 512;
                } else {
                    j |= 256;
                }
            }
        } else {
            z2 = false;
        }
        if ((j & 512) == 0) {
            zEquals2 = false;
        } else {
            if (rxVar != null) {
                mjVar = rxVar.j;
            }
            E(2, mjVar);
            if (mjVar != null) {
                tjVar = (tj) mjVar.getValue();
            }
            if (tjVar != null) {
                aVar = tjVar.a;
            }
            if (aVar != null) {
                zEquals2 = aVar.equals(aVar3);
            } else {
                zEquals2 = false;
            }
        }
        if ((j & 262144) != 0) {
            zEquals2 = false;
        } else {
            zEquals2 = false;
        }
        j4 = 230 & j;
        if (j4 == 0) {
            i2 = 0;
        } else {
            if (zEquals) {
                zEquals2 = true;
            }
            if (j4 != 0) {
                if (zEquals2) {
                    j5 = 8192;
                } else {
                    j5 = 4096;
                }
                j |= j5;
            }
            if (zEquals2) {
                i2 = 0;
            } else {
                i2 = 8;
            }
        }
        if ((j & 193) != 0) {
            this.M.v.setVisibility(i);
        }
        if ((128 & j) != 0) {
            this.M.L(this.T);
            TextView textView3 = this.O;
            d3.a(textView3, R.string.nothing_to_show_txt, textView3);
        }
        if ((230 & j) != 0) {
            this.M.P(list);
            this.N.setVisibility(i2);
            this.O.setVisibility(i2);
            this.P.setStatus(aVar2);
        }
        if ((j & 144) != 0) {
            this.P.setNavigator(vxVar);
        }
        this.M.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.U != 0) {
                return true;
            }
            return this.M.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.U = 128L;
        }
        this.M.p();
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
        if (i != 3) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.U |= 8;
        }
        return true;
    }
}
