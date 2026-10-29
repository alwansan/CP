package com.shabakaty.downloader;

import android.app.SearchManager;
import android.content.Context;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SearchView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.viewpager2.widget.ViewPager2;
import com.cinemana.pro.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.tabs.TabLayout;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: FragmentSearchBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class gk1 extends fk1 implements lm0.a {
    public static final ViewDataBinding.e b0;
    public static final SparseIntArray c0;
    public final oz2 V;
    public final TextView W;
    public final NestedScrollView X;
    public final mm0 Y;
    public a Z;
    public long a0;

    /* JADX INFO: compiled from: FragmentSearchBindingImpl.java */
    public static class a implements b73 {
        public dz3 a;
    }

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(11);
        b0 = eVar;
        eVar.a(0, new String[]{"no_search_results_layout"}, new int[]{8}, new int[]{R.layout.no_search_results_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        c0 = sparseIntArray;
        sparseIntArray.put(R.id.search_app_bar_layout, 9);
        sparseIntArray.put(R.id.imageView5, 10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public gk1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 11, b0, c0);
        super(gl0Var, view, 5, (AppCompatImageView) objArrS[10], (MaterialButton) objArrS[3], (AppBarLayout) objArrS[9], (WideVerticalVideosView) objArrS[7], (CoordinatorLayout) objArrS[0], (SearchView) objArrS[1], (ViewPager2) objArrS[5], (TabLayout) objArrS[2]);
        this.a0 = -1L;
        oz2 oz2Var = (oz2) objArrS[8];
        this.V = oz2Var;
        if (oz2Var != null) {
            oz2Var.B = this;
        }
        TextView textView = (TextView) objArrS[4];
        this.W = textView;
        textView.setTag(null);
        NestedScrollView nestedScrollView = (NestedScrollView) objArrS[6];
        this.X = nestedScrollView;
        nestedScrollView.setTag(null);
        this.M.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.Y = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.V.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.U = (dz3) obj;
            synchronized (this) {
                this.a0 |= 32;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.T = (hz3) obj;
            synchronized (this) {
                this.a0 |= 64;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        dz3 dz3Var = this.U;
        if (dz3Var != null) {
            dz3Var.E0();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x013d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0142  */
    /* JADX WARN: Code duplicated, block: B:105:0x014c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x014e  */
    /* JADX WARN: Code duplicated, block: B:107:0x0153  */
    /* JADX WARN: Code duplicated, block: B:109:0x0156  */
    /* JADX WARN: Code duplicated, block: B:110:0x0158  */
    /* JADX WARN: Code duplicated, block: B:114:0x0160 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x0162  */
    /* JADX WARN: Code duplicated, block: B:116:0x0165  */
    /* JADX WARN: Code duplicated, block: B:119:0x016c  */
    /* JADX WARN: Code duplicated, block: B:120:0x0173  */
    /* JADX WARN: Code duplicated, block: B:122:0x0176  */
    /* JADX WARN: Code duplicated, block: B:123:0x0179  */
    /* JADX WARN: Code duplicated, block: B:125:0x017c  */
    /* JADX WARN: Code duplicated, block: B:126:0x017e  */
    /* JADX WARN: Code duplicated, block: B:128:0x0181 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0183  */
    /* JADX WARN: Code duplicated, block: B:130:0x0186  */
    /* JADX WARN: Code duplicated, block: B:133:0x018b  */
    /* JADX WARN: Code duplicated, block: B:134:0x018e A[PHI: r2
      0x018e: PHI (r2v20 long) = (r2v2 long), (r2v21 long) binds: [B:113:0x015e, B:132:0x0189] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:135:0x0190  */
    /* JADX WARN: Code duplicated, block: B:138:0x019b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:140:0x019e  */
    /* JADX WARN: Code duplicated, block: B:143:0x01a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:145:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:148:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:149:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:153:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:154:0x01bb A[PHI: r2
      0x01bb: PHI (r2v4 long) = (r2v3 long), (r2v18 long) binds: [B:142:0x01a3, B:151:0x01b5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:157:0x01c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:159:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:161:0x01cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:162:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:163:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:164:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:167:0x01e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:168:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:171:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:173:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:174:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:176:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:177:0x0203  */
    /* JADX WARN: Code duplicated, block: B:179:0x0206 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:180:0x0208  */
    /* JADX WARN: Code duplicated, block: B:181:0x020e  */
    /* JADX WARN: Code duplicated, block: B:182:0x0211  */
    /* JADX WARN: Code duplicated, block: B:185:0x021a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:187:0x021e  */
    /* JADX WARN: Code duplicated, block: B:190:0x0225 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:191:0x0227  */
    /* JADX WARN: Code duplicated, block: B:192:0x0229  */
    /* JADX WARN: Code duplicated, block: B:195:0x0230 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:197:0x0233  */
    /* JADX WARN: Code duplicated, block: B:199:0x0236 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:200:0x0238  */
    /* JADX WARN: Code duplicated, block: B:201:0x023b  */
    /* JADX WARN: Code duplicated, block: B:204:0x0240  */
    /* JADX WARN: Code duplicated, block: B:206:0x0245  */
    /* JADX WARN: Code duplicated, block: B:209:0x0251  */
    /* JADX WARN: Code duplicated, block: B:211:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:213:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:214:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:217:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:220:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:223:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:225:0x0305  */
    /* JADX WARN: Code duplicated, block: B:227:0x0308  */
    /* JADX WARN: Code duplicated, block: B:230:0x0310  */
    /* JADX WARN: Code duplicated, block: B:233:0x0314  */
    /* JADX WARN: Code duplicated, block: B:236:0x0318  */
    /* JADX WARN: Code duplicated, block: B:239:0x031c  */
    /* JADX WARN: Code duplicated, block: B:243:0x032a  */
    /* JADX WARN: Code duplicated, block: B:246:0x032e  */
    /* JADX WARN: Code duplicated, block: B:249:0x033b  */
    /* JADX WARN: Code duplicated, block: B:252:0x0351  */
    /* JADX WARN: Code duplicated, block: B:255:0x035c  */
    /* JADX WARN: Code duplicated, block: B:258:0x0367  */
    /* JADX WARN: Code duplicated, block: B:261:0x0387  */
    /* JADX WARN: Code duplicated, block: B:264:0x0393  */
    /* JADX WARN: Code duplicated, block: B:267:0x039e  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00df  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:83:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:88:0x0113  */
    /* JADX WARN: Code duplicated, block: B:90:0x011c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x011e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0125  */
    /* JADX WARN: Code duplicated, block: B:97:0x0135 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0137  */
    /* JADX WARN: Code duplicated, block: B:99:0x013a  */
    /* JADX WARN: Instruction removed from duplicated block: B:223:0x02fd, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r15v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v9 */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        a aVar;
        LiveData<tj<List<VideoModel>>> liveData;
        ?? r15;
        boolean z;
        int iZ;
        tj<List<VideoModel>> value;
        xv2<String> xv2Var;
        String value2;
        boolean zIsEmpty;
        int i;
        boolean zEquals;
        boolean z2;
        long j2;
        int i2;
        long j3;
        long j4;
        boolean zIsEmpty2;
        boolean z3;
        long j5;
        int i3;
        Fragment fragment;
        ViewPager2 viewPager2;
        TabLayout tabLayout;
        boolean z4;
        Fragment fragmentB;
        boolean z5;
        SearchView searchView;
        Boolean bool;
        Context context;
        Object systemService;
        long j6;
        String strTrim;
        long j7;
        long j8;
        mj<List<VideoModel>> mjVar;
        tj tjVar;
        tj.a aVar2;
        boolean z6;
        long j9;
        List<VideoModel> list;
        tj.a aVar3;
        long j10;
        tj.a aVar4 = tj.a.EMPTY;
        synchronized (this) {
            j = this.a0;
            this.a0 = 0L;
        }
        dz3 dz3Var = this.U;
        hz3 hz3Var = this.T;
        if ((160 & j) == 0 || dz3Var == null) {
            aVar = null;
        } else {
            aVar = this.Z;
            if (aVar == null) {
                aVar = new a();
                this.Z = aVar;
            }
            aVar.a = dz3Var;
        }
        if ((223 & j) != 0) {
            if ((221 & j) != 0) {
                mj<List<VideoModel>> mjVar2 = hz3Var != null ? hz3Var.x : null;
                E(0, mjVar2);
                tj tjVar2 = mjVar2 != null ? (tj) mjVar2.getValue() : null;
                z = (tjVar2 != null ? tjVar2.a : null) == aVar4;
                if ((j & 209) != 0) {
                    j = z ? j | 8192 : j | 4096;
                }
                if ((j & 205) != 0) {
                    j = z ? j | 8388608 : j | 4194304;
                }
            } else {
                z = false;
            }
            if ((j & 194) != 0) {
                xv2<Integer> xv2Var2 = hz3Var != null ? hz3Var.p : null;
                E(1, xv2Var2);
                iZ = ViewDataBinding.z(xv2Var2 != null ? xv2Var2.getValue() : null);
            } else {
                iZ = 0;
            }
            if ((j & 196) != 0) {
                liveData = hz3Var != null ? hz3Var.z : null;
                E(2, liveData);
                value = liveData != null ? liveData.getValue() : null;
                if ((j & 192) != 0 || hz3Var == null) {
                    r15 = 0;
                } else {
                    r15 = hz3Var.q;
                }
                j10 = j & 204;
                r15 = r15;
                if (j10 != 0) {
                    if (hz3Var != null) {
                        xv2Var = hz3Var.v;
                    } else {
                        xv2Var = null;
                    }
                    E(3, xv2Var);
                    if (xv2Var != null) {
                        value2 = xv2Var.getValue();
                    } else {
                        value2 = null;
                    }
                    if (value2 != null) {
                        zIsEmpty = value2.isEmpty();
                    } else {
                        zIsEmpty = false;
                    }
                    if (j10 != 0) {
                        if (zIsEmpty) {
                            j |= 32768;
                        } else {
                            j |= 16384;
                        }
                    }
                }
                if ((j & 8429568) != 0) {
                    if ((j & 8421376) != 0) {
                        if (hz3Var != null) {
                            liveData = hz3Var.z;
                        }
                        E(2, liveData);
                        if (liveData != null) {
                            value = liveData.getValue();
                        }
                        if ((j & 32768) == 0) {
                            zEquals = false;
                        } else {
                            if (value != null) {
                                aVar3 = value.a;
                            } else {
                                aVar3 = null;
                            }
                            if (aVar3 != null) {
                                zEquals = aVar3.equals(aVar4);
                            } else {
                                zEquals = false;
                            }
                        }
                        if ((8388608 & j) != 0) {
                            if (value != null) {
                                list = value.b;
                            } else {
                                list = null;
                            }
                            z2 = list != null;
                        }
                        j8 = j & 8192;
                        if (j8 == 0) {
                            i = 0;
                        } else {
                            if (hz3Var != null) {
                                mjVar = hz3Var.y;
                            } else {
                                mjVar = null;
                            }
                            E(4, mjVar);
                            if (mjVar != null) {
                                tjVar = (tj) mjVar.getValue();
                            } else {
                                tjVar = null;
                            }
                            if (tjVar != null) {
                                aVar2 = tjVar.a;
                            } else {
                                aVar2 = null;
                            }
                            if (aVar2 == aVar4) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if (j8 != 0) {
                                if (z6) {
                                    j9 = 2048;
                                } else {
                                    j9 = 1024;
                                }
                                j |= j9;
                            }
                            if (z6) {
                                i = 8;
                            } else {
                                i = 0;
                            }
                        }
                    } else {
                        zEquals = false;
                    }
                    j8 = j & 8192;
                    if (j8 == 0) {
                        i = 0;
                    } else {
                        if (hz3Var != null) {
                            mjVar = hz3Var.y;
                        } else {
                            mjVar = null;
                        }
                        E(4, mjVar);
                        if (mjVar != null) {
                            tjVar = (tj) mjVar.getValue();
                        } else {
                            tjVar = null;
                        }
                        if (tjVar != null) {
                            aVar2 = tjVar.a;
                        } else {
                            aVar2 = null;
                        }
                        if (aVar2 == aVar4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (j8 != 0) {
                            if (z6) {
                                j9 = 2048;
                            } else {
                                j9 = 1024;
                            }
                            j |= j9;
                        }
                        if (z6) {
                            i = 8;
                        } else {
                            i = 0;
                        }
                    }
                } else {
                    i = 0;
                    zEquals = false;
                    z2 = false;
                }
                if ((j & 209) != 0 || !z) {
                    i = 0;
                }
                j2 = j & 204;
                if (j2 == 0) {
                    i2 = 0;
                } else {
                    if (!zIsEmpty) {
                        zEquals = false;
                    }
                    if (j2 != 0) {
                        if (zEquals) {
                            j7 = 131072;
                        } else {
                            j7 = 65536;
                        }
                        j |= j7;
                    }
                    if (zEquals) {
                        i2 = 0;
                    } else {
                        i2 = 8;
                    }
                }
                j3 = j & 205;
                if (j3 != 0) {
                    if (!z) {
                        z2 = false;
                    }
                    if (j3 != 0) {
                        if (z2) {
                            j |= 2097152;
                        } else {
                            j |= 1048576;
                        }
                    }
                } else {
                    z2 = false;
                }
                j4 = j & 2097152;
                if (j4 != 0) {
                    if (hz3Var != null) {
                        xv2Var = hz3Var.v;
                    }
                    E(3, xv2Var);
                    if (xv2Var != null) {
                        value2 = xv2Var.getValue();
                    }
                    if (value2 != null) {
                        strTrim = value2.trim();
                    } else {
                        strTrim = null;
                    }
                    if (strTrim != null) {
                        zIsEmpty2 = strTrim.isEmpty();
                    } else {
                        zIsEmpty2 = false;
                    }
                    if (j4 != 0) {
                        if (zIsEmpty2) {
                            j |= 524288;
                        } else {
                            j |= 262144;
                        }
                    }
                } else {
                    zIsEmpty2 = false;
                }
                if ((j & 262144) == 0 && value2 == null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((j & 2097152) == 0) {
                    z3 = false;
                } else if (zIsEmpty2) {
                    z3 = true;
                }
                j5 = j & 205;
                if (j5 != 0) {
                    if (!z2) {
                        z3 = false;
                    }
                    if (j5 != 0) {
                        if (z3) {
                            j6 = 512;
                        } else {
                            j6 = 256;
                        }
                        j |= j6;
                    }
                    i3 = z3 ? 0 : 8;
                } else {
                    i3 = 0;
                }
                if ((128 & j) != 0) {
                    this.V.G(3);
                    TextView textView = this.W;
                    d3.a(textView, R.string.recent_searches_hint_txt, textView);
                    MaterialButton materialButton = this.M;
                    nl6.q(materialButton, materialButton.getResources().getString(R.string.filter_settings_txt));
                    fragment = null;
                    st2.c(this.M, this.Y, null);
                    WideVerticalVideosView wideVerticalVideosView = this.O;
                    wideVerticalVideosView.setTitle(wideVerticalVideosView.getResources().getString(R.string.recent_searches_txt));
                    SearchView searchView2 = this.Q;
                    nl6.q(searchView2, searchView2.getResources().getString(R.string.txt_searchHint));
                    searchView = this.Q;
                    bool = Boolean.TRUE;
                    j32.e(searchView, "<this>");
                    if (j32.a(bool, bool)) {
                        searchView.onActionViewExpanded();
                        context = searchView.getContext();
                        if (context == null) {
                            systemService = null;
                        } else {
                            systemService = context.getSystemService("search");
                        }
                        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.SearchManager");
                        Context context2 = searchView.getContext();
                        Objects.requireNonNull(context2, "null cannot be cast to non-null type com.shabakaty.cinemana.ui.home_activity.HomeActivity");
                        searchView.setSearchableInfo(((SearchManager) systemService).getSearchableInfo(((HomeActivity) context2).getComponentName()));
                        searchView.clearFocus();
                    }
                    this.R.setUserInputEnabled(false);
                } else {
                    fragment = null;
                }
                if ((192 & j) != 0) {
                    this.V.H(hz3Var);
                    viewPager2 = this.R;
                    tabLayout = this.S;
                    j32.e(viewPager2, "<this>");
                    if (r15 != 0) {
                        if (!r15.isEmpty()) {
                            if (tabLayout == null && tabLayout.getTabCount() == 0) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            z4 = z5;
                        }
                        if (!z4) {
                            r15 = fragment;
                        }
                        if (r15 != 0 && viewPager2.getAdapter() == null) {
                            fragmentB = jl3.b(viewPager2);
                            if (fragmentB instanceof yy3) {
                                fragment = fragmentB;
                            }
                            if (fragment != null) {
                                viewPager2.setAdapter(new zy3((yy3) fragment));
                                if (tabLayout != null) {
                                    new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, r15, 0)).a();
                                }
                            }
                        }
                    }
                }
                if ((j & 204) != 0) {
                    this.W.setVisibility(i2);
                }
                if ((j & 205) != 0) {
                    this.X.setVisibility(i3);
                }
                if ((j & 194) != 0) {
                    MaterialButton materialButton2 = this.M;
                    HashMap<Integer, String> map = st2.a;
                    j32.e(materialButton2, "<this>");
                    materialButton2.setText(st2.a.get(Integer.valueOf(iZ)));
                }
                if ((j & 196) != 0) {
                    this.O.setVideos(value);
                }
                if ((160 & j) != 0) {
                    st2.i(this.Q, aVar);
                }
                if ((j & 209) != 0) {
                    this.R.setVisibility(i);
                    this.S.setVisibility(i);
                }
                this.V.j();
            }
            liveData = null;
            if ((j & 192) != 0) {
                r15 = 0;
            } else {
                r15 = 0;
            }
            j10 = j & 204;
            r15 = r15;
            if (j10 != 0) {
                if (hz3Var != null) {
                    xv2Var = hz3Var.v;
                } else {
                    xv2Var = null;
                }
                E(3, xv2Var);
                if (xv2Var != null) {
                    value2 = xv2Var.getValue();
                } else {
                    value2 = null;
                }
                if (value2 != null) {
                    zIsEmpty = value2.isEmpty();
                } else {
                    zIsEmpty = false;
                }
                if (j10 != 0) {
                    if (zIsEmpty) {
                        j |= 32768;
                    } else {
                        j |= 16384;
                    }
                }
            }
            if ((j & 8429568) != 0) {
                if ((j & 8421376) != 0) {
                    if (hz3Var != null) {
                        liveData = hz3Var.z;
                    }
                    E(2, liveData);
                    if (liveData != null) {
                        value = liveData.getValue();
                    }
                    if ((j & 32768) == 0) {
                        zEquals = false;
                    } else {
                        if (value != null) {
                            aVar3 = value.a;
                        } else {
                            aVar3 = null;
                        }
                        if (aVar3 != null) {
                            zEquals = aVar3.equals(aVar4);
                        } else {
                            zEquals = false;
                        }
                    }
                    if ((8388608 & j) != 0) {
                        if (value != null) {
                            list = value.b;
                        } else {
                            list = null;
                        }
                        if (list != null) {
                        }
                    }
                    j8 = j & 8192;
                    if (j8 == 0) {
                        i = 0;
                    } else {
                        if (hz3Var != null) {
                            mjVar = hz3Var.y;
                        } else {
                            mjVar = null;
                        }
                        E(4, mjVar);
                        if (mjVar != null) {
                            tjVar = (tj) mjVar.getValue();
                        } else {
                            tjVar = null;
                        }
                        if (tjVar != null) {
                            aVar2 = tjVar.a;
                        } else {
                            aVar2 = null;
                        }
                        if (aVar2 == aVar4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (j8 != 0) {
                            if (z6) {
                                j9 = 2048;
                            } else {
                                j9 = 1024;
                            }
                            j |= j9;
                        }
                        if (z6) {
                            i = 8;
                        } else {
                            i = 0;
                        }
                    }
                } else {
                    zEquals = false;
                }
                j8 = j & 8192;
                if (j8 == 0) {
                    i = 0;
                } else {
                    if (hz3Var != null) {
                        mjVar = hz3Var.y;
                    } else {
                        mjVar = null;
                    }
                    E(4, mjVar);
                    if (mjVar != null) {
                        tjVar = (tj) mjVar.getValue();
                    } else {
                        tjVar = null;
                    }
                    if (tjVar != null) {
                        aVar2 = tjVar.a;
                    } else {
                        aVar2 = null;
                    }
                    if (aVar2 == aVar4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (j8 != 0) {
                        if (z6) {
                            j9 = 2048;
                        } else {
                            j9 = 1024;
                        }
                        j |= j9;
                    }
                    if (z6) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                }
            } else {
                i = 0;
                zEquals = false;
                z2 = false;
            }
            if ((j & 209) != 0) {
                i = 0;
            } else {
                i = 0;
            }
            j2 = j & 204;
            if (j2 == 0) {
                i2 = 0;
            } else {
                if (!zIsEmpty) {
                    zEquals = false;
                }
                if (j2 != 0) {
                    if (zEquals) {
                        j7 = 131072;
                    } else {
                        j7 = 65536;
                    }
                    j |= j7;
                }
                if (zEquals) {
                    i2 = 0;
                } else {
                    i2 = 8;
                }
            }
            j3 = j & 205;
            if (j3 != 0) {
                if (!z) {
                    z2 = false;
                }
                if (j3 != 0) {
                    if (z2) {
                        j |= 2097152;
                    } else {
                        j |= 1048576;
                    }
                }
            } else {
                z2 = false;
            }
            j4 = j & 2097152;
            if (j4 != 0) {
                if (hz3Var != null) {
                    xv2Var = hz3Var.v;
                }
                E(3, xv2Var);
                if (xv2Var != null) {
                    value2 = xv2Var.getValue();
                }
                if (value2 != null) {
                    strTrim = value2.trim();
                } else {
                    strTrim = null;
                }
                if (strTrim != null) {
                    zIsEmpty2 = strTrim.isEmpty();
                } else {
                    zIsEmpty2 = false;
                }
                if (j4 != 0) {
                    if (zIsEmpty2) {
                        j |= 524288;
                    } else {
                        j |= 262144;
                    }
                }
            } else {
                zIsEmpty2 = false;
            }
            if ((j & 262144) == 0) {
                z3 = false;
            } else {
                z3 = false;
            }
            if ((j & 2097152) == 0) {
                z3 = false;
            } else if (zIsEmpty2) {
                z3 = true;
            }
            j5 = j & 205;
            if (j5 != 0) {
                if (!z2) {
                    z3 = false;
                }
                if (j5 != 0) {
                    if (z3) {
                        j6 = 512;
                    } else {
                        j6 = 256;
                    }
                    j |= j6;
                }
                i3 = z3 ? 0 : 8;
            } else {
                i3 = 0;
            }
            if ((128 & j) != 0) {
                this.V.G(3);
                TextView textView2 = this.W;
                d3.a(textView2, R.string.recent_searches_hint_txt, textView2);
                MaterialButton materialButton3 = this.M;
                nl6.q(materialButton3, materialButton3.getResources().getString(R.string.filter_settings_txt));
                fragment = null;
                st2.c(this.M, this.Y, null);
                WideVerticalVideosView wideVerticalVideosView2 = this.O;
                wideVerticalVideosView2.setTitle(wideVerticalVideosView2.getResources().getString(R.string.recent_searches_txt));
                SearchView searchView3 = this.Q;
                nl6.q(searchView3, searchView3.getResources().getString(R.string.txt_searchHint));
                searchView = this.Q;
                bool = Boolean.TRUE;
                j32.e(searchView, "<this>");
                if (j32.a(bool, bool)) {
                    searchView.onActionViewExpanded();
                    context = searchView.getContext();
                    if (context == null) {
                        systemService = null;
                    } else {
                        systemService = context.getSystemService("search");
                    }
                    Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.SearchManager");
                    Context context3 = searchView.getContext();
                    Objects.requireNonNull(context3, "null cannot be cast to non-null type com.shabakaty.cinemana.ui.home_activity.HomeActivity");
                    searchView.setSearchableInfo(((SearchManager) systemService).getSearchableInfo(((HomeActivity) context3).getComponentName()));
                    searchView.clearFocus();
                }
                this.R.setUserInputEnabled(false);
            } else {
                fragment = null;
            }
            if ((192 & j) != 0) {
                this.V.H(hz3Var);
                viewPager2 = this.R;
                tabLayout = this.S;
                j32.e(viewPager2, "<this>");
                if (r15 != 0) {
                    if (!r15.isEmpty()) {
                        if (tabLayout == null) {
                            z5 = false;
                        } else {
                            z5 = true;
                        }
                        if (z5) {
                        }
                    }
                    if (!z4) {
                        r15 = fragment;
                    }
                    if (r15 != 0) {
                        fragmentB = jl3.b(viewPager2);
                        if (fragmentB instanceof yy3) {
                            fragment = fragmentB;
                        }
                        if (fragment != null) {
                            viewPager2.setAdapter(new zy3((yy3) fragment));
                            if (tabLayout != null) {
                                new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, r15, 0)).a();
                            }
                        }
                    }
                }
            }
            if ((j & 204) != 0) {
                this.W.setVisibility(i2);
            }
            if ((j & 205) != 0) {
                this.X.setVisibility(i3);
            }
            if ((j & 194) != 0) {
                MaterialButton materialButton4 = this.M;
                HashMap<Integer, String> map2 = st2.a;
                j32.e(materialButton4, "<this>");
                materialButton4.setText(st2.a.get(Integer.valueOf(iZ)));
            }
            if ((j & 196) != 0) {
                this.O.setVideos(value);
            }
            if ((160 & j) != 0) {
                st2.i(this.Q, aVar);
            }
            if ((j & 209) != 0) {
                this.R.setVisibility(i);
                this.S.setVisibility(i);
            }
            this.V.j();
        }
        liveData = null;
        r15 = 0;
        z = false;
        iZ = 0;
        value = null;
        xv2Var = null;
        value2 = null;
        zIsEmpty = false;
        if ((j & 8429568) != 0) {
            if ((j & 8421376) != 0) {
                if (hz3Var != null) {
                    liveData = hz3Var.z;
                }
                E(2, liveData);
                if (liveData != null) {
                    value = liveData.getValue();
                }
                if ((j & 32768) == 0) {
                    zEquals = false;
                } else {
                    if (value != null) {
                        aVar3 = value.a;
                    } else {
                        aVar3 = null;
                    }
                    if (aVar3 != null) {
                        zEquals = aVar3.equals(aVar4);
                    } else {
                        zEquals = false;
                    }
                }
                if ((8388608 & j) != 0) {
                    if (value != null) {
                        list = value.b;
                    } else {
                        list = null;
                    }
                    if (list != null) {
                    }
                }
                j8 = j & 8192;
                if (j8 == 0) {
                    i = 0;
                } else {
                    if (hz3Var != null) {
                        mjVar = hz3Var.y;
                    } else {
                        mjVar = null;
                    }
                    E(4, mjVar);
                    if (mjVar != null) {
                        tjVar = (tj) mjVar.getValue();
                    } else {
                        tjVar = null;
                    }
                    if (tjVar != null) {
                        aVar2 = tjVar.a;
                    } else {
                        aVar2 = null;
                    }
                    if (aVar2 == aVar4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (j8 != 0) {
                        if (z6) {
                            j9 = 2048;
                        } else {
                            j9 = 1024;
                        }
                        j |= j9;
                    }
                    if (z6) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                }
            } else {
                zEquals = false;
            }
            j8 = j & 8192;
            if (j8 == 0) {
                i = 0;
            } else {
                if (hz3Var != null) {
                    mjVar = hz3Var.y;
                } else {
                    mjVar = null;
                }
                E(4, mjVar);
                if (mjVar != null) {
                    tjVar = (tj) mjVar.getValue();
                } else {
                    tjVar = null;
                }
                if (tjVar != null) {
                    aVar2 = tjVar.a;
                } else {
                    aVar2 = null;
                }
                if (aVar2 == aVar4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (j8 != 0) {
                    if (z6) {
                        j9 = 2048;
                    } else {
                        j9 = 1024;
                    }
                    j |= j9;
                }
                if (z6) {
                    i = 8;
                } else {
                    i = 0;
                }
            }
        } else {
            i = 0;
            zEquals = false;
            z2 = false;
        }
        if ((j & 209) != 0) {
            i = 0;
        } else {
            i = 0;
        }
        j2 = j & 204;
        if (j2 == 0) {
            i2 = 0;
        } else {
            if (!zIsEmpty) {
                zEquals = false;
            }
            if (j2 != 0) {
                if (zEquals) {
                    j7 = 131072;
                } else {
                    j7 = 65536;
                }
                j |= j7;
            }
            if (zEquals) {
                i2 = 0;
            } else {
                i2 = 8;
            }
        }
        j3 = j & 205;
        if (j3 != 0) {
            if (!z) {
                z2 = false;
            }
            if (j3 != 0) {
                if (z2) {
                    j |= 2097152;
                } else {
                    j |= 1048576;
                }
            }
        } else {
            z2 = false;
        }
        j4 = j & 2097152;
        if (j4 != 0) {
            if (hz3Var != null) {
                xv2Var = hz3Var.v;
            }
            E(3, xv2Var);
            if (xv2Var != null) {
                value2 = xv2Var.getValue();
            }
            if (value2 != null) {
                strTrim = value2.trim();
            } else {
                strTrim = null;
            }
            if (strTrim != null) {
                zIsEmpty2 = strTrim.isEmpty();
            } else {
                zIsEmpty2 = false;
            }
            if (j4 != 0) {
                if (zIsEmpty2) {
                    j |= 524288;
                } else {
                    j |= 262144;
                }
            }
        } else {
            zIsEmpty2 = false;
        }
        if ((j & 262144) == 0) {
            z3 = false;
        } else {
            z3 = false;
        }
        if ((j & 2097152) == 0) {
            z3 = false;
        } else if (zIsEmpty2) {
            z3 = true;
        }
        j5 = j & 205;
        if (j5 != 0) {
            if (!z2) {
                z3 = false;
            }
            if (j5 != 0) {
                if (z3) {
                    j6 = 512;
                } else {
                    j6 = 256;
                }
                j |= j6;
            }
            i3 = z3 ? 0 : 8;
        } else {
            i3 = 0;
        }
        if ((128 & j) != 0) {
            this.V.G(3);
            TextView textView3 = this.W;
            d3.a(textView3, R.string.recent_searches_hint_txt, textView3);
            MaterialButton materialButton5 = this.M;
            nl6.q(materialButton5, materialButton5.getResources().getString(R.string.filter_settings_txt));
            fragment = null;
            st2.c(this.M, this.Y, null);
            WideVerticalVideosView wideVerticalVideosView3 = this.O;
            wideVerticalVideosView3.setTitle(wideVerticalVideosView3.getResources().getString(R.string.recent_searches_txt));
            SearchView searchView4 = this.Q;
            nl6.q(searchView4, searchView4.getResources().getString(R.string.txt_searchHint));
            searchView = this.Q;
            bool = Boolean.TRUE;
            j32.e(searchView, "<this>");
            if (j32.a(bool, bool)) {
                searchView.onActionViewExpanded();
                context = searchView.getContext();
                if (context == null) {
                    systemService = null;
                } else {
                    systemService = context.getSystemService("search");
                }
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.SearchManager");
                Context context4 = searchView.getContext();
                Objects.requireNonNull(context4, "null cannot be cast to non-null type com.shabakaty.cinemana.ui.home_activity.HomeActivity");
                searchView.setSearchableInfo(((SearchManager) systemService).getSearchableInfo(((HomeActivity) context4).getComponentName()));
                searchView.clearFocus();
            }
            this.R.setUserInputEnabled(false);
        } else {
            fragment = null;
        }
        if ((192 & j) != 0) {
            this.V.H(hz3Var);
            viewPager2 = this.R;
            tabLayout = this.S;
            j32.e(viewPager2, "<this>");
            if (r15 != 0) {
                if (!r15.isEmpty()) {
                    if (tabLayout == null) {
                        z5 = false;
                    } else {
                        z5 = true;
                    }
                    if (z5) {
                    }
                }
                if (!z4) {
                    r15 = fragment;
                }
                if (r15 != 0) {
                    fragmentB = jl3.b(viewPager2);
                    if (fragmentB instanceof yy3) {
                        fragment = fragmentB;
                    }
                    if (fragment != null) {
                        viewPager2.setAdapter(new zy3((yy3) fragment));
                        if (tabLayout != null) {
                            new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, r15, 0)).a();
                        }
                    }
                }
            }
        }
        if ((j & 204) != 0) {
            this.W.setVisibility(i2);
        }
        if ((j & 205) != 0) {
            this.X.setVisibility(i3);
        }
        if ((j & 194) != 0) {
            MaterialButton materialButton6 = this.M;
            HashMap<Integer, String> map3 = st2.a;
            j32.e(materialButton6, "<this>");
            materialButton6.setText(st2.a.get(Integer.valueOf(iZ)));
        }
        if ((j & 196) != 0) {
            this.O.setVideos(value);
        }
        if ((160 & j) != 0) {
            st2.i(this.Q, aVar);
        }
        if ((j & 209) != 0) {
            this.R.setVisibility(i);
            this.S.setVisibility(i);
        }
        this.V.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.a0 != 0) {
                return true;
            }
            return this.V.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.a0 = 128L;
        }
        this.V.p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.a0 |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.a0 |= 2;
            }
            return true;
        }
        if (i == 2) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.a0 |= 4;
            }
            return true;
        }
        if (i == 3) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.a0 |= 8;
            }
            return true;
        }
        if (i != 4) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.a0 |= 16;
        }
        return true;
    }
}
