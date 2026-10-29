package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentSearchAllTabBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ek1 extends dk1 implements lm0.a {
    public static final SparseIntArray X;
    public final Flow S;
    public final StatusView T;
    public final mm0 U;
    public final mm0 V;
    public long W;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        X = sparseIntArray;
        sparseIntArray.put(R.id.search_all_movies, 7);
        sparseIntArray.put(R.id.search_all_tv_shows, 8);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ek1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 9, null, X);
        super(gl0Var, view, 4, (ConstraintLayout) objArrS[7], (WideVerticalVideosView) objArrS[2], (ConstraintLayout) objArrS[8], (WideVerticalVideosView) objArrS[4], (MaterialButton) objArrS[3], (MaterialButton) objArrS[5]);
        this.W = -1L;
        ((NestedScrollView) objArrS[0]).setTag(null);
        Flow flow = (Flow) objArrS[1];
        this.S = flow;
        flow.setTag(null);
        StatusView statusView = (StatusView) objArrS[6];
        this.T = statusView;
        statusView.setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.U = new lm0(this, 1);
        this.V = new lm0(this, 2);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.Q = (dz3) obj;
            synchronized (this) {
                this.W |= 16;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.R = (hz3) obj;
            synchronized (this) {
                this.W |= 32;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            dz3 dz3Var = this.Q;
            if (dz3Var != null) {
                dz3Var.F1(1);
                return;
            }
            return;
        }
        if (i != 2) {
            return;
        }
        dz3 dz3Var2 = this.Q;
        if (dz3Var2 != null) {
            dz3Var2.F1(2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011e  */
    /* JADX WARN: Code duplicated, block: B:102:0x0124  */
    /* JADX WARN: Code duplicated, block: B:103:0x0129  */
    /* JADX WARN: Code duplicated, block: B:106:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x0132  */
    /* JADX WARN: Code duplicated, block: B:109:0x0138  */
    /* JADX WARN: Code duplicated, block: B:110:0x013d  */
    /* JADX WARN: Code duplicated, block: B:113:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x0146  */
    /* JADX WARN: Code duplicated, block: B:116:0x0149 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x014b  */
    /* JADX WARN: Code duplicated, block: B:118:0x014e  */
    /* JADX WARN: Code duplicated, block: B:121:0x0154  */
    /* JADX WARN: Code duplicated, block: B:122:0x0157 A[PHI: r2
      0x0157: PHI (r2v4 long) = (r2v3 long), (r2v11 long) binds: [B:112:0x0142, B:120:0x0152] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:125:0x015e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:126:0x0160  */
    /* JADX WARN: Code duplicated, block: B:128:0x0163 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0165  */
    /* JADX WARN: Code duplicated, block: B:130:0x0168  */
    /* JADX WARN: Code duplicated, block: B:133:0x016e  */
    /* JADX WARN: Code duplicated, block: B:134:0x0171 A[PHI: r2
      0x0171: PHI (r2v6 long) = (r2v5 long), (r2v9 long) binds: [B:124:0x015c, B:132:0x016c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:137:0x017a  */
    /* JADX WARN: Code duplicated, block: B:140:0x0187  */
    /* JADX WARN: Code duplicated, block: B:143:0x0194  */
    /* JADX WARN: Code duplicated, block: B:146:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:149:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:152:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:81:0x00ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:87:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:90:0x0106 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0108  */
    /* JADX WARN: Code duplicated, block: B:93:0x010b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x010d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0112  */
    /* JADX WARN: Code duplicated, block: B:96:0x0115  */
    /* JADX WARN: Code duplicated, block: B:99:0x011c A[DONT_INVERT] */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int[] value;
        tj.a value2;
        tj<List<VideoModel>> tjVar;
        tj<List<VideoModel>> tjVar2;
        boolean z;
        boolean z2;
        List<VideoModel> list;
        boolean z3;
        List<VideoModel> list2;
        boolean z4;
        long j2;
        long j3;
        boolean zIsEmpty;
        boolean zIsEmpty2;
        long j4;
        int i;
        long j5;
        int i2;
        long j6;
        long j7;
        synchronized (this) {
            j = this.W;
            this.W = 0L;
        }
        dz3 dz3Var = this.Q;
        hz3 hz3Var = this.R;
        if ((111 & j) != 0) {
            if ((j & 97) == 0) {
                value2 = null;
            } else {
                LiveData<?> liveData = hz3Var != null ? hz3Var.d : null;
                E(0, liveData);
                if (liveData != null) {
                    value2 = liveData.getValue();
                } else {
                    value2 = null;
                }
            }
            long j8 = j & 98;
            if (j8 != 0) {
                LiveData<?> liveData2 = hz3Var != null ? hz3Var.x : null;
                E(1, liveData2);
                tjVar2 = liveData2 != null ? (tj) liveData2.getValue() : null;
                z2 = tjVar2 == null;
                if (j8 != 0) {
                    j = z2 ? j | 262144 : j | 131072;
                }
            } else {
                tjVar2 = null;
                z2 = false;
            }
            long j9 = j & 100;
            if (j9 != 0) {
                LiveData<?> liveData3 = hz3Var != null ? hz3Var.y : null;
                E(2, liveData3);
                tjVar = liveData3 != null ? (tj) liveData3.getValue() : null;
                z = tjVar == null;
                if (j9 != 0) {
                    j = z ? j | 65536 : j | 32768;
                }
            } else {
                tjVar = null;
                z = false;
            }
            if ((j & 104) == 0) {
                value = null;
            } else {
                LiveData<int[]> liveData4 = hz3Var != null ? hz3Var.B : null;
                E(3, liveData4);
                if (liveData4 != null) {
                    value = liveData4.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
            value2 = null;
            tjVar = null;
            tjVar2 = null;
            z = false;
            z2 = false;
        }
        if ((j & 32768) != 0) {
            list = tjVar != null ? tjVar.b : null;
            z3 = list == null;
            if ((131072 & j) != 0) {
                if (tjVar2 != null) {
                    list2 = tjVar2.b;
                } else {
                    list2 = null;
                }
                z4 = list2 == null;
                j2 = j & 100;
                if (j2 != 0) {
                    if (z) {
                        z3 = true;
                    }
                    if (j2 != 0) {
                        if (z3) {
                            j |= 1024;
                        } else {
                            j |= 512;
                        }
                    }
                } else {
                    z3 = false;
                }
                j3 = j & 98;
                if (j3 != 0) {
                    if (z2) {
                        z4 = true;
                    }
                    if (j3 != 0) {
                        if (z4) {
                            j |= 4096;
                        } else {
                            j |= 2048;
                        }
                    }
                } else {
                    z4 = false;
                }
                if ((j & 512) == 0) {
                    zIsEmpty = false;
                } else {
                    if (tjVar != null) {
                        list = tjVar.b;
                    }
                    if (list != null) {
                        zIsEmpty = list.isEmpty();
                    } else {
                        zIsEmpty = false;
                    }
                }
                if ((j & 2048) == 0) {
                    zIsEmpty2 = false;
                } else {
                    if (tjVar2 != null) {
                        list2 = tjVar2.b;
                    }
                    if (list2 != null) {
                        zIsEmpty2 = list2.isEmpty();
                    } else {
                        zIsEmpty2 = false;
                    }
                }
                j4 = j & 100;
                if (j4 == 0) {
                    i = 0;
                } else {
                    if (z3) {
                        zIsEmpty = true;
                    }
                    if (j4 != 0) {
                        if (zIsEmpty) {
                            j7 = 256;
                        } else {
                            j7 = 128;
                        }
                        j |= j7;
                    }
                    if (zIsEmpty) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                }
                j5 = j & 98;
                if (j5 == 0) {
                    i2 = 0;
                } else {
                    if (z4) {
                        zIsEmpty2 = true;
                    }
                    if (j5 != 0) {
                        if (zIsEmpty2) {
                            j6 = 16384;
                        } else {
                            j6 = 8192;
                        }
                        j |= j6;
                    }
                    if (zIsEmpty2) {
                        i2 = 8;
                    } else {
                        i2 = 0;
                    }
                }
                if ((j & 104) != 0) {
                    this.S.setReferencedIds(value);
                }
                if ((j & 80) != 0) {
                    this.T.setNavigator(dz3Var);
                }
                if ((j & 97) != 0) {
                    this.T.setStatus(value2);
                }
                if ((64 & j) != 0) {
                    this.M.setItemCount(5);
                    WideVerticalVideosView wideVerticalVideosView = this.M;
                    wideVerticalVideosView.setTitle(wideVerticalVideosView.getResources().getString(R.string.txt_movies));
                    this.N.setItemCount(5);
                    WideVerticalVideosView wideVerticalVideosView2 = this.N;
                    wideVerticalVideosView2.setTitle(wideVerticalVideosView2.getResources().getString(R.string.txt_tv_shows));
                    MaterialButton materialButton = this.O;
                    e3.a(materialButton, R.string.see_all, materialButton);
                    st2.c(this.O, this.U, null);
                    MaterialButton materialButton2 = this.P;
                    e3.a(materialButton2, R.string.see_all, materialButton2);
                    st2.c(this.P, this.V, null);
                }
                if ((j & 98) != 0) {
                    this.M.setVideos(tjVar2);
                    this.O.setVisibility(i2);
                }
                if ((j & 100) != 0) {
                    this.N.setVideos(tjVar);
                    this.P.setVisibility(i);
                }
            }
            list2 = null;
            j2 = j & 100;
            if (j2 != 0) {
                if (z) {
                    z3 = true;
                }
                if (j2 != 0) {
                    if (z3) {
                        j |= 1024;
                    } else {
                        j |= 512;
                    }
                }
            } else {
                z3 = false;
            }
            j3 = j & 98;
            if (j3 != 0) {
                if (z2) {
                    z4 = true;
                }
                if (j3 != 0) {
                    if (z4) {
                        j |= 4096;
                    } else {
                        j |= 2048;
                    }
                }
            } else {
                z4 = false;
            }
            if ((j & 512) == 0) {
                zIsEmpty = false;
            } else {
                if (tjVar != null) {
                    list = tjVar.b;
                }
                if (list != null) {
                    zIsEmpty = list.isEmpty();
                } else {
                    zIsEmpty = false;
                }
            }
            if ((j & 2048) == 0) {
                zIsEmpty2 = false;
            } else {
                if (tjVar2 != null) {
                    list2 = tjVar2.b;
                }
                if (list2 != null) {
                    zIsEmpty2 = list2.isEmpty();
                } else {
                    zIsEmpty2 = false;
                }
            }
            j4 = j & 100;
            if (j4 == 0) {
                i = 0;
            } else {
                if (z3) {
                    zIsEmpty = true;
                }
                if (j4 != 0) {
                    if (zIsEmpty) {
                        j7 = 256;
                    } else {
                        j7 = 128;
                    }
                    j |= j7;
                }
                if (zIsEmpty) {
                    i = 8;
                } else {
                    i = 0;
                }
            }
            j5 = j & 98;
            if (j5 == 0) {
                i2 = 0;
            } else {
                if (z4) {
                    zIsEmpty2 = true;
                }
                if (j5 != 0) {
                    if (zIsEmpty2) {
                        j6 = 16384;
                    } else {
                        j6 = 8192;
                    }
                    j |= j6;
                }
                if (zIsEmpty2) {
                    i2 = 8;
                } else {
                    i2 = 0;
                }
            }
            if ((j & 104) != 0) {
                this.S.setReferencedIds(value);
            }
            if ((j & 80) != 0) {
                this.T.setNavigator(dz3Var);
            }
            if ((j & 97) != 0) {
                this.T.setStatus(value2);
            }
            if ((64 & j) != 0) {
                this.M.setItemCount(5);
                WideVerticalVideosView wideVerticalVideosView3 = this.M;
                wideVerticalVideosView3.setTitle(wideVerticalVideosView3.getResources().getString(R.string.txt_movies));
                this.N.setItemCount(5);
                WideVerticalVideosView wideVerticalVideosView4 = this.N;
                wideVerticalVideosView4.setTitle(wideVerticalVideosView4.getResources().getString(R.string.txt_tv_shows));
                MaterialButton materialButton3 = this.O;
                e3.a(materialButton3, R.string.see_all, materialButton3);
                st2.c(this.O, this.U, null);
                MaterialButton materialButton4 = this.P;
                e3.a(materialButton4, R.string.see_all, materialButton4);
                st2.c(this.P, this.V, null);
            }
            if ((j & 98) != 0) {
                this.M.setVideos(tjVar2);
                this.O.setVisibility(i2);
            }
            if ((j & 100) != 0) {
                this.N.setVideos(tjVar);
                this.P.setVisibility(i);
            }
        }
        list = null;
        if ((131072 & j) != 0) {
            if (tjVar2 != null) {
                list2 = tjVar2.b;
            } else {
                list2 = null;
            }
            if (list2 == null) {
            }
            j2 = j & 100;
            if (j2 != 0) {
                if (z) {
                    z3 = true;
                }
                if (j2 != 0) {
                    if (z3) {
                        j |= 1024;
                    } else {
                        j |= 512;
                    }
                }
            } else {
                z3 = false;
            }
            j3 = j & 98;
            if (j3 != 0) {
                if (z2) {
                    z4 = true;
                }
                if (j3 != 0) {
                    if (z4) {
                        j |= 4096;
                    } else {
                        j |= 2048;
                    }
                }
            } else {
                z4 = false;
            }
            if ((j & 512) == 0) {
                zIsEmpty = false;
            } else {
                if (tjVar != null) {
                    list = tjVar.b;
                }
                if (list != null) {
                    zIsEmpty = list.isEmpty();
                } else {
                    zIsEmpty = false;
                }
            }
            if ((j & 2048) == 0) {
                zIsEmpty2 = false;
            } else {
                if (tjVar2 != null) {
                    list2 = tjVar2.b;
                }
                if (list2 != null) {
                    zIsEmpty2 = list2.isEmpty();
                } else {
                    zIsEmpty2 = false;
                }
            }
            j4 = j & 100;
            if (j4 == 0) {
                i = 0;
            } else {
                if (z3) {
                    zIsEmpty = true;
                }
                if (j4 != 0) {
                    if (zIsEmpty) {
                        j7 = 256;
                    } else {
                        j7 = 128;
                    }
                    j |= j7;
                }
                if (zIsEmpty) {
                    i = 8;
                } else {
                    i = 0;
                }
            }
            j5 = j & 98;
            if (j5 == 0) {
                i2 = 0;
            } else {
                if (z4) {
                    zIsEmpty2 = true;
                }
                if (j5 != 0) {
                    if (zIsEmpty2) {
                        j6 = 16384;
                    } else {
                        j6 = 8192;
                    }
                    j |= j6;
                }
                if (zIsEmpty2) {
                    i2 = 8;
                } else {
                    i2 = 0;
                }
            }
            if ((j & 104) != 0) {
                this.S.setReferencedIds(value);
            }
            if ((j & 80) != 0) {
                this.T.setNavigator(dz3Var);
            }
            if ((j & 97) != 0) {
                this.T.setStatus(value2);
            }
            if ((64 & j) != 0) {
                this.M.setItemCount(5);
                WideVerticalVideosView wideVerticalVideosView5 = this.M;
                wideVerticalVideosView5.setTitle(wideVerticalVideosView5.getResources().getString(R.string.txt_movies));
                this.N.setItemCount(5);
                WideVerticalVideosView wideVerticalVideosView6 = this.N;
                wideVerticalVideosView6.setTitle(wideVerticalVideosView6.getResources().getString(R.string.txt_tv_shows));
                MaterialButton materialButton5 = this.O;
                e3.a(materialButton5, R.string.see_all, materialButton5);
                st2.c(this.O, this.U, null);
                MaterialButton materialButton6 = this.P;
                e3.a(materialButton6, R.string.see_all, materialButton6);
                st2.c(this.P, this.V, null);
            }
            if ((j & 98) != 0) {
                this.M.setVideos(tjVar2);
                this.O.setVisibility(i2);
            }
            if ((j & 100) != 0) {
                this.N.setVideos(tjVar);
                this.P.setVisibility(i);
            }
        }
        list2 = null;
        j2 = j & 100;
        if (j2 != 0) {
            if (z) {
                z3 = true;
            }
            if (j2 != 0) {
                if (z3) {
                    j |= 1024;
                } else {
                    j |= 512;
                }
            }
        } else {
            z3 = false;
        }
        j3 = j & 98;
        if (j3 != 0) {
            if (z2) {
                z4 = true;
            }
            if (j3 != 0) {
                if (z4) {
                    j |= 4096;
                } else {
                    j |= 2048;
                }
            }
        } else {
            z4 = false;
        }
        if ((j & 512) == 0) {
            zIsEmpty = false;
        } else {
            if (tjVar != null) {
                list = tjVar.b;
            }
            if (list != null) {
                zIsEmpty = list.isEmpty();
            } else {
                zIsEmpty = false;
            }
        }
        if ((j & 2048) == 0) {
            zIsEmpty2 = false;
        } else {
            if (tjVar2 != null) {
                list2 = tjVar2.b;
            }
            if (list2 != null) {
                zIsEmpty2 = list2.isEmpty();
            } else {
                zIsEmpty2 = false;
            }
        }
        j4 = j & 100;
        if (j4 == 0) {
            i = 0;
        } else {
            if (z3) {
                zIsEmpty = true;
            }
            if (j4 != 0) {
                if (zIsEmpty) {
                    j7 = 256;
                } else {
                    j7 = 128;
                }
                j |= j7;
            }
            if (zIsEmpty) {
                i = 8;
            } else {
                i = 0;
            }
        }
        j5 = j & 98;
        if (j5 == 0) {
            i2 = 0;
        } else {
            if (z4) {
                zIsEmpty2 = true;
            }
            if (j5 != 0) {
                if (zIsEmpty2) {
                    j6 = 16384;
                } else {
                    j6 = 8192;
                }
                j |= j6;
            }
            if (zIsEmpty2) {
                i2 = 8;
            } else {
                i2 = 0;
            }
        }
        if ((j & 104) != 0) {
            this.S.setReferencedIds(value);
        }
        if ((j & 80) != 0) {
            this.T.setNavigator(dz3Var);
        }
        if ((j & 97) != 0) {
            this.T.setStatus(value2);
        }
        if ((64 & j) != 0) {
            this.M.setItemCount(5);
            WideVerticalVideosView wideVerticalVideosView7 = this.M;
            wideVerticalVideosView7.setTitle(wideVerticalVideosView7.getResources().getString(R.string.txt_movies));
            this.N.setItemCount(5);
            WideVerticalVideosView wideVerticalVideosView8 = this.N;
            wideVerticalVideosView8.setTitle(wideVerticalVideosView8.getResources().getString(R.string.txt_tv_shows));
            MaterialButton materialButton7 = this.O;
            e3.a(materialButton7, R.string.see_all, materialButton7);
            st2.c(this.O, this.U, null);
            MaterialButton materialButton8 = this.P;
            e3.a(materialButton8, R.string.see_all, materialButton8);
            st2.c(this.P, this.V, null);
        }
        if ((j & 98) != 0) {
            this.M.setVideos(tjVar2);
            this.O.setVisibility(i2);
        }
        if ((j & 100) != 0) {
            this.N.setVideos(tjVar);
            this.P.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.W != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.W = 64L;
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
                this.W |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.W |= 2;
            }
            return true;
        }
        if (i == 2) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.W |= 4;
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
            this.W |= 8;
        }
        return true;
    }
}
