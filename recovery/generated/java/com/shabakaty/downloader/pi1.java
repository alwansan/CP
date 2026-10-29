package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.cinemana.pro.R;
import com.google.android.material.tabs.TabLayout;
import com.shabakaty.cinemana.domain.models.local.categories.NewCategoryItem;
import com.shabakaty.cinemana.ui.categories_fragment.SortingAscendingDescending;
import com.shabakaty.cinemana.ui.categories_fragment.SortingName;
import com.skydoves.powerspinner.PowerSpinnerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: FragmentCategoryDetailsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class pi1 extends oi1 {
    public static final SparseIntArray W;
    public a U;
    public long V;

    /* JADX INFO: compiled from: FragmentCategoryDetailsBindingImpl.java */
    public static class a implements w63 {
        public vx a;

        @Override // com.shabakaty.downloader.w63
        public void a(Object obj, int i) {
            this.a.Z0(obj, i);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        W = sparseIntArray;
        sparseIntArray.put(R.id.category_toolbar, 5);
        sparseIntArray.put(R.id.tabLayout, 6);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public pi1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 7, null, W);
        super(gl0Var, view, 3, (PowerSpinnerView) objArrS[1], (PowerSpinnerView) objArrS[3], (PowerSpinnerView) objArrS[2], (Toolbar) objArrS[5], (ViewPager2) objArrS[4], (TabLayout) objArrS[6]);
        this.V = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        ((CoordinatorLayout) objArrS[0]).setTag(null);
        this.Q.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.T = (vx) obj;
            synchronized (this) {
                this.V |= 8;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.S = (rx) obj;
            synchronized (this) {
                this.V |= 16;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:104:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:107:0x01df  */
    /* JADX WARN: Code duplicated, block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x009b  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:65:0x0106 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x0108  */
    /* JADX WARN: Code duplicated, block: B:67:0x010f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0112  */
    /* JADX WARN: Code duplicated, block: B:70:0x0115  */
    /* JADX WARN: Code duplicated, block: B:72:0x012f  */
    /* JADX WARN: Code duplicated, block: B:78:0x0147  */
    /* JADX WARN: Code duplicated, block: B:81:0x0157  */
    /* JADX WARN: Code duplicated, block: B:84:0x0163  */
    /* JADX WARN: Code duplicated, block: B:87:0x016f  */
    /* JADX WARN: Code duplicated, block: B:90:0x017f  */
    /* JADX WARN: Code duplicated, block: B:93:0x018b  */
    /* JADX WARN: Code duplicated, block: B:96:0x019b  */
    /* JADX WARN: Code duplicated, block: B:98:0x01c5  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        a aVar;
        List<NewCategoryItem.NewLanguageItem> value;
        String string;
        int i;
        String string2;
        List<SortingAscendingDescending> value2;
        int i2;
        String string3;
        List<SortingName> value3;
        String string4;
        long j2;
        int i3;
        ViewPager2 viewPager2;
        TabLayout tabLayout;
        ArrayList arrayList;
        Fragment fragmentB;
        xv2<List<SortingName>> xv2Var;
        SortingName sortingName;
        String str;
        xv2<List<SortingAscendingDescending>> xv2Var2;
        SortingAscendingDescending sortingAscendingDescending;
        String str2;
        xv2<List<NewCategoryItem.NewLanguageItem>> xv2Var3;
        String str3;
        String str4;
        synchronized (this) {
            j = this.V;
            this.V = 0L;
        }
        vx vxVar = this.T;
        rx rxVar = this.S;
        if ((63 & j) != 0) {
            if (vxVar != null) {
                aVar = this.U;
                if (aVar == null) {
                    aVar = new a();
                    this.U = aVar;
                }
                aVar.a = vxVar;
            } else {
                aVar = null;
            }
            if ((57 & j) != 0) {
                if (rxVar != null) {
                    xv2Var3 = rxVar.q;
                    i = rxVar.n;
                } else {
                    xv2Var3 = null;
                    i = 0;
                }
                E(0, xv2Var3);
                value = xv2Var3 != null ? xv2Var3.getValue() : null;
                if ((49 & j) != 0) {
                    NewCategoryItem.NewLanguageItem newLanguageItem = value != null ? value.get(i) : null;
                    if (newLanguageItem != null) {
                        str4 = newLanguageItem.langArTitle;
                        str3 = newLanguageItem.langEnTitle;
                    } else {
                        str3 = null;
                        str4 = null;
                    }
                    StringBuilder sbA = um3.a(str4);
                    sbA.append(this.M.getResources().getString(R.string.spinner_desc));
                    string2 = sbA.toString();
                    StringBuilder sbA2 = um3.a(str3);
                    sbA2.append(this.M.getResources().getString(R.string.spinner_desc));
                    string = sbA2.toString();
                }
                if ((j & 58) != 0) {
                    if (rxVar != null) {
                        xv2Var2 = rxVar.p;
                        i2 = rxVar.v;
                    } else {
                        xv2Var2 = null;
                        i2 = 0;
                    }
                    E(1, xv2Var2);
                    if (xv2Var2 != null) {
                        value2 = xv2Var2.getValue();
                    } else {
                        value2 = null;
                    }
                    if ((j & 50) != 0) {
                        if (value2 != null) {
                            sortingAscendingDescending = value2.get(i2);
                        } else {
                            sortingAscendingDescending = null;
                        }
                        if (sortingAscendingDescending != null) {
                            str2 = sortingAscendingDescending.name;
                        } else {
                            str2 = null;
                        }
                        StringBuilder sbA3 = um3.a(str2);
                        sbA3.append(this.N.getResources().getString(R.string.spinner_desc));
                        string3 = sbA3.toString();
                    }
                    if ((60 & j) != 0) {
                        if (rxVar != null) {
                            i3 = rxVar.t;
                            xv2Var = rxVar.o;
                        } else {
                            xv2Var = null;
                            i3 = 0;
                        }
                        E(2, xv2Var);
                        if (xv2Var != null) {
                            value3 = xv2Var.getValue();
                        } else {
                            value3 = null;
                        }
                        if ((j & 52) != 0) {
                            if (value3 != null) {
                                sortingName = value3.get(i3);
                            } else {
                                sortingName = null;
                            }
                            if (sortingName != null) {
                                str = sortingName.name;
                            } else {
                                str = null;
                            }
                            StringBuilder sbA4 = um3.a(str);
                            sbA4.append(this.O.getResources().getString(R.string.spinner_desc));
                            string4 = sbA4.toString();
                        } else {
                            string4 = null;
                        }
                        j2 = 57;
                    }
                    if ((j2 & j) != 0) {
                        st2.h(this.M, value, Integer.valueOf(i), aVar);
                    }
                    if ((49 & j) != 0) {
                        nl6.p(this.M, string, string2);
                    }
                    if ((50 & j) != 0) {
                        nl6.q(this.N, string3);
                    }
                    if ((58 & j) != 0) {
                        st2.h(this.N, value2, Integer.valueOf(i2), aVar);
                    }
                    if ((52 & j) != 0) {
                        nl6.q(this.O, string4);
                    }
                    if ((60 & j) != 0) {
                        st2.h(this.O, value3, Integer.valueOf(i3), aVar);
                    }
                    if ((j & 32) != 0) {
                        viewPager2 = this.Q;
                        tabLayout = this.R;
                        j32.e(viewPager2, "<this>");
                        arrayList = new ArrayList();
                        arrayList.add(0, Integer.valueOf(R.string.txt_movies));
                        arrayList.add(1, Integer.valueOf(R.string.txt_tv_shows));
                        if (viewPager2.getAdapter() == null) {
                            fragmentB = jl3.b(viewPager2);
                            if (!(fragmentB instanceof ox)) {
                                fragmentB = null;
                            }
                            if (fragmentB == null) {
                                return;
                            }
                            viewPager2.setAdapter(new tx((ox) fragmentB));
                            if (tabLayout == null) {
                                return;
                            }
                            new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, arrayList, 1)).a();
                        }
                    }
                }
                value2 = null;
                i2 = 0;
                string3 = null;
                if ((60 & j) != 0) {
                    if (rxVar != null) {
                        i3 = rxVar.t;
                        xv2Var = rxVar.o;
                    } else {
                        xv2Var = null;
                        i3 = 0;
                    }
                    E(2, xv2Var);
                    if (xv2Var != null) {
                        value3 = xv2Var.getValue();
                    } else {
                        value3 = null;
                    }
                    if ((j & 52) != 0) {
                        if (value3 != null) {
                            sortingName = value3.get(i3);
                        } else {
                            sortingName = null;
                        }
                        if (sortingName != null) {
                            str = sortingName.name;
                        } else {
                            str = null;
                        }
                        StringBuilder sbA5 = um3.a(str);
                        sbA5.append(this.O.getResources().getString(R.string.spinner_desc));
                        string4 = sbA5.toString();
                    } else {
                        string4 = null;
                    }
                    j2 = 57;
                }
                if ((j2 & j) != 0) {
                    st2.h(this.M, value, Integer.valueOf(i), aVar);
                }
                if ((49 & j) != 0) {
                    nl6.p(this.M, string, string2);
                }
                if ((50 & j) != 0) {
                    nl6.q(this.N, string3);
                }
                if ((58 & j) != 0) {
                    st2.h(this.N, value2, Integer.valueOf(i2), aVar);
                }
                if ((52 & j) != 0) {
                    nl6.q(this.O, string4);
                }
                if ((60 & j) != 0) {
                    st2.h(this.O, value3, Integer.valueOf(i3), aVar);
                }
                if ((j & 32) != 0) {
                    viewPager2 = this.Q;
                    tabLayout = this.R;
                    j32.e(viewPager2, "<this>");
                    arrayList = new ArrayList();
                    arrayList.add(0, Integer.valueOf(R.string.txt_movies));
                    arrayList.add(1, Integer.valueOf(R.string.txt_tv_shows));
                    if (viewPager2.getAdapter() == null) {
                        fragmentB = jl3.b(viewPager2);
                        if (!(fragmentB instanceof ox)) {
                            fragmentB = null;
                        }
                        if (fragmentB == null) {
                            return;
                        }
                        viewPager2.setAdapter(new tx((ox) fragmentB));
                        if (tabLayout == null) {
                            return;
                        }
                        new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, arrayList, 1)).a();
                    }
                }
            }
            value = null;
            i = 0;
            string = null;
            string2 = null;
            if ((j & 58) != 0) {
                if (rxVar != null) {
                    xv2Var2 = rxVar.p;
                    i2 = rxVar.v;
                } else {
                    xv2Var2 = null;
                    i2 = 0;
                }
                E(1, xv2Var2);
                if (xv2Var2 != null) {
                    value2 = xv2Var2.getValue();
                } else {
                    value2 = null;
                }
                if ((j & 50) != 0) {
                    if (value2 != null) {
                        sortingAscendingDescending = value2.get(i2);
                    } else {
                        sortingAscendingDescending = null;
                    }
                    if (sortingAscendingDescending != null) {
                        str2 = sortingAscendingDescending.name;
                    } else {
                        str2 = null;
                    }
                    StringBuilder sbA6 = um3.a(str2);
                    sbA6.append(this.N.getResources().getString(R.string.spinner_desc));
                    string3 = sbA6.toString();
                }
                if ((60 & j) != 0) {
                    if (rxVar != null) {
                        i3 = rxVar.t;
                        xv2Var = rxVar.o;
                    } else {
                        xv2Var = null;
                        i3 = 0;
                    }
                    E(2, xv2Var);
                    if (xv2Var != null) {
                        value3 = xv2Var.getValue();
                    } else {
                        value3 = null;
                    }
                    if ((j & 52) != 0) {
                        if (value3 != null) {
                            sortingName = value3.get(i3);
                        } else {
                            sortingName = null;
                        }
                        if (sortingName != null) {
                            str = sortingName.name;
                        } else {
                            str = null;
                        }
                        StringBuilder sbA7 = um3.a(str);
                        sbA7.append(this.O.getResources().getString(R.string.spinner_desc));
                        string4 = sbA7.toString();
                    } else {
                        string4 = null;
                    }
                    j2 = 57;
                }
                if ((j2 & j) != 0) {
                    st2.h(this.M, value, Integer.valueOf(i), aVar);
                }
                if ((49 & j) != 0) {
                    nl6.p(this.M, string, string2);
                }
                if ((50 & j) != 0) {
                    nl6.q(this.N, string3);
                }
                if ((58 & j) != 0) {
                    st2.h(this.N, value2, Integer.valueOf(i2), aVar);
                }
                if ((52 & j) != 0) {
                    nl6.q(this.O, string4);
                }
                if ((60 & j) != 0) {
                    st2.h(this.O, value3, Integer.valueOf(i3), aVar);
                }
                if ((j & 32) != 0) {
                    viewPager2 = this.Q;
                    tabLayout = this.R;
                    j32.e(viewPager2, "<this>");
                    arrayList = new ArrayList();
                    arrayList.add(0, Integer.valueOf(R.string.txt_movies));
                    arrayList.add(1, Integer.valueOf(R.string.txt_tv_shows));
                    if (viewPager2.getAdapter() == null) {
                        fragmentB = jl3.b(viewPager2);
                        if (!(fragmentB instanceof ox)) {
                            fragmentB = null;
                        }
                        if (fragmentB == null) {
                            return;
                        }
                        viewPager2.setAdapter(new tx((ox) fragmentB));
                        if (tabLayout == null) {
                            return;
                        }
                        new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, arrayList, 1)).a();
                    }
                }
            }
            value2 = null;
            i2 = 0;
            string3 = null;
            if ((60 & j) != 0) {
                if (rxVar != null) {
                    i3 = rxVar.t;
                    xv2Var = rxVar.o;
                } else {
                    xv2Var = null;
                    i3 = 0;
                }
                E(2, xv2Var);
                if (xv2Var != null) {
                    value3 = xv2Var.getValue();
                } else {
                    value3 = null;
                }
                if ((j & 52) != 0) {
                    if (value3 != null) {
                        sortingName = value3.get(i3);
                    } else {
                        sortingName = null;
                    }
                    if (sortingName != null) {
                        str = sortingName.name;
                    } else {
                        str = null;
                    }
                    StringBuilder sbA8 = um3.a(str);
                    sbA8.append(this.O.getResources().getString(R.string.spinner_desc));
                    string4 = sbA8.toString();
                } else {
                    string4 = null;
                }
                j2 = 57;
            }
            if ((j2 & j) != 0) {
                st2.h(this.M, value, Integer.valueOf(i), aVar);
            }
            if ((49 & j) != 0) {
                nl6.p(this.M, string, string2);
            }
            if ((50 & j) != 0) {
                nl6.q(this.N, string3);
            }
            if ((58 & j) != 0) {
                st2.h(this.N, value2, Integer.valueOf(i2), aVar);
            }
            if ((52 & j) != 0) {
                nl6.q(this.O, string4);
            }
            if ((60 & j) != 0) {
                st2.h(this.O, value3, Integer.valueOf(i3), aVar);
            }
            if ((j & 32) != 0) {
                viewPager2 = this.Q;
                tabLayout = this.R;
                j32.e(viewPager2, "<this>");
                arrayList = new ArrayList();
                arrayList.add(0, Integer.valueOf(R.string.txt_movies));
                arrayList.add(1, Integer.valueOf(R.string.txt_tv_shows));
                if (viewPager2.getAdapter() == null) {
                    fragmentB = jl3.b(viewPager2);
                    if (!(fragmentB instanceof ox)) {
                        fragmentB = null;
                    }
                    if (fragmentB == null) {
                        return;
                    }
                    viewPager2.setAdapter(new tx((ox) fragmentB));
                    if (tabLayout == null) {
                        return;
                    }
                    new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, arrayList, 1)).a();
                }
            }
        }
        aVar = null;
        value = null;
        string = null;
        i = 0;
        string2 = null;
        value2 = null;
        i2 = 0;
        string3 = null;
        value3 = null;
        string4 = null;
        j2 = 57;
        i3 = 0;
        if ((j2 & j) != 0) {
            st2.h(this.M, value, Integer.valueOf(i), aVar);
        }
        if ((49 & j) != 0) {
            nl6.p(this.M, string, string2);
        }
        if ((50 & j) != 0) {
            nl6.q(this.N, string3);
        }
        if ((58 & j) != 0) {
            st2.h(this.N, value2, Integer.valueOf(i2), aVar);
        }
        if ((52 & j) != 0) {
            nl6.q(this.O, string4);
        }
        if ((60 & j) != 0) {
            st2.h(this.O, value3, Integer.valueOf(i3), aVar);
        }
        if ((j & 32) != 0) {
            viewPager2 = this.Q;
            tabLayout = this.R;
            j32.e(viewPager2, "<this>");
            arrayList = new ArrayList();
            arrayList.add(0, Integer.valueOf(R.string.txt_movies));
            arrayList.add(1, Integer.valueOf(R.string.txt_tv_shows));
            if (viewPager2.getAdapter() == null) {
                fragmentB = jl3.b(viewPager2);
                if (!(fragmentB instanceof ox)) {
                    fragmentB = null;
                }
                if (fragmentB == null) {
                    return;
                }
                viewPager2.setAdapter(new tx((ox) fragmentB));
                if (tabLayout == null) {
                    return;
                }
                new com.google.android.material.tabs.c(tabLayout, viewPager2, new y35(viewPager2, arrayList, 1)).a();
            }
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
            this.V = 32L;
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
                this.V |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.V |= 2;
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
            this.V |= 4;
        }
        return true;
    }
}
