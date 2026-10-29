package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.cinemana.pro.R;
import com.google.android.material.tabs.TabLayout;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: VideoInfoSeasonsLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class l15 extends k15 {
    public long Q;

    /* JADX WARN: Illegal instructions before constructor call */
    public l15(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 2, null, null);
        super(gl0Var, viewArr[0], 2, (TabLayout) objArrT[0], (ViewPager2) objArrT[1]);
        this.Q = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        C(viewArr);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (35 == i) {
            H((xv2) obj);
        } else {
            if (20 != i) {
                return false;
            }
            G((xv2) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.k15
    public void G(xv2<tj<List<VideoModel>>> xv2Var) {
        E(1, xv2Var);
        this.O = xv2Var;
        synchronized (this) {
            this.Q |= 2;
        }
        f(20);
        x();
    }

    @Override // com.shabakaty.downloader.k15
    public void H(xv2<tj<VideoModel>> xv2Var) {
        E(0, xv2Var);
        this.P = xv2Var;
        synchronized (this) {
            this.Q |= 1;
        }
        f(35);
        x();
    }

    /* JADX WARN: Code duplicated, block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x007e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0093  */
    /* JADX WARN: Code duplicated, block: B:48:0x009e  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b5 A[LOOP:0: B:50:0x00af->B:52:0x00b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:72:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:88:0x011b  */
    /* JADX WARN: Code duplicated, block: B:96:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        VideoModel videoModel;
        List<VideoModel> list;
        int i;
        ViewPager2 viewPager2;
        TabLayout tabLayout;
        ArrayList arrayList;
        Iterator it;
        List listU;
        int iIntValue;
        List list2;
        Fragment fragmentB;
        boolean z;
        Fragment fragment;
        String str;
        Integer numZ;
        synchronized (this) {
            j = this.Q;
            this.Q = 0L;
        }
        xv2<tj<VideoModel>> xv2Var = this.P;
        xv2<tj<List<VideoModel>>> xv2Var2 = this.O;
        if ((j & 7) != 0) {
            tj<VideoModel> value = xv2Var != null ? xv2Var.getValue() : null;
            tj<List<VideoModel>> value2 = xv2Var2 != null ? xv2Var2.getValue() : null;
            videoModel = value != null ? value.b : null;
            list = value2 != null ? value2.b : null;
            long j2 = j & 6;
            if (j2 != 0) {
                tj.a aVar = value2 != null ? value2.a : null;
                boolean zEquals = aVar != null ? aVar.equals(tj.a.SUCCESS) : false;
                if (j2 != 0) {
                    j |= zEquals ? 16L : 8L;
                }
                if (!zEquals) {
                    i = 8;
                }
            }
            if ((j & 6) != 0) {
                this.M.setVisibility(i);
                this.N.setVisibility(i);
            }
            if ((4 & j) != 0) {
                TabLayout tabLayout2 = this.M;
                nl6.q(tabLayout2, tabLayout2.getResources().getString(R.string.txt_season));
            }
            if ((j & 7) != 0) {
                viewPager2 = this.N;
                tabLayout = this.M;
                j32.e(viewPager2, "<this>");
                if (list == null) {
                    listU = null;
                } else {
                    arrayList = new ArrayList(i50.O(list, 10));
                    it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((VideoModel) it.next()).season);
                    }
                    listU = m50.U(arrayList);
                }
                if (listU == null) {
                    return;
                }
                iIntValue = 1;
                if (!listU.isEmpty()) {
                    list2 = listU;
                } else {
                    list2 = null;
                }
                if (list2 == null && viewPager2.getAdapter() == null) {
                    fragmentB = jl3.b(viewPager2);
                    if (!(fragmentB instanceof d15) || (fragmentB instanceof f91)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    fragment = z ? fragmentB : null;
                    if (fragment == null) {
                        return;
                    }
                    viewPager2.setAdapter(new sz3(listU.size(), fragment));
                    if (videoModel != null && (str = videoModel.season) != null && (numZ = me4.z(str)) != null) {
                        iIntValue = numZ.intValue();
                    }
                    viewPager2.c(iIntValue - 1, false);
                    if (tabLayout == null) {
                        return;
                    }
                    new com.google.android.material.tabs.c(tabLayout, viewPager2, true, true, new l91(viewPager2)).a();
                    viewPager2.postDelayed(new le(tabLayout, iIntValue), 800L);
                }
                return;
            }
        }
        videoModel = null;
        list = null;
        i = 0;
        if ((j & 6) != 0) {
            this.M.setVisibility(i);
            this.N.setVisibility(i);
        }
        if ((4 & j) != 0) {
            TabLayout tabLayout3 = this.M;
            nl6.q(tabLayout3, tabLayout3.getResources().getString(R.string.txt_season));
        }
        if ((j & 7) != 0) {
            viewPager2 = this.N;
            tabLayout = this.M;
            j32.e(viewPager2, "<this>");
            if (list == null) {
                listU = null;
            } else {
                arrayList = new ArrayList(i50.O(list, 10));
                it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((VideoModel) it.next()).season);
                }
                listU = m50.U(arrayList);
            }
            if (listU == null) {
                return;
            }
            iIntValue = 1;
            if (!listU.isEmpty()) {
                list2 = listU;
            } else {
                list2 = null;
            }
            if (list2 == null) {
                return;
            }
            fragmentB = jl3.b(viewPager2);
            if (fragmentB instanceof d15) {
                z = true;
            } else {
                z = true;
            }
            if (z) {
            }
            if (fragment == null) {
                return;
            }
            viewPager2.setAdapter(new sz3(listU.size(), fragment));
            if (videoModel != null) {
                iIntValue = numZ.intValue();
            }
            viewPager2.c(iIntValue - 1, false);
            if (tabLayout == null) {
                return;
            }
            new com.google.android.material.tabs.c(tabLayout, viewPager2, true, true, new l91(viewPager2)).a();
            viewPager2.postDelayed(new le(tabLayout, iIntValue), 800L);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.Q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Q = 4L;
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
                this.Q |= 1;
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
            this.Q |= 2;
        }
        return true;
    }
}
