package com.shabakaty.downloader;

import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.slider.Slider;
import com.shabakaty.cinemana.domain.models.local.categories.NewCategoryItem;
import com.shabakaty.cinemana.utils.StatusView;
import com.skydoves.powerspinner.PowerSpinnerView;
import java.util.List;

/* JADX INFO: compiled from: DialogAdvancedSearchFilterBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class vs0 extends us0 implements lm0.a {
    public final MaterialButton d0;
    public final StatusView e0;
    public final mm0 f0;
    public final mm0 g0;
    public final mm0 h0;
    public long i0;

    /* JADX WARN: Illegal instructions before constructor call */
    public vs0(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 17, null, null);
        super(gl0Var, view, 6, (PowerSpinnerView) objArrS[11], (TextView) objArrS[10], (MaterialButton) objArrS[3], (NumberPicker) objArrS[7], (Slider) objArrS[13], (TextView) objArrS[12], (LinearLayout) objArrS[0], (NestedScrollView) objArrS[5], (NumberPicker) objArrS[9], (TextView) objArrS[14], (TextView) objArrS[8], (TextView) objArrS[6], (SimpleDraweeView) objArrS[1], (EditText) objArrS[15], (TextView) objArrS[2]);
        this.i0 = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        this.X.setTag(null);
        this.Y.setTag(null);
        MaterialButton materialButton = (MaterialButton) objArrS[16];
        this.d0 = materialButton;
        materialButton.setTag(null);
        StatusView statusView = (StatusView) objArrS[4];
        this.e0 = statusView;
        statusView.setTag(null);
        this.Z.setTag(null);
        this.a0.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.f0 = new lm0(this, 2);
        this.g0 = new lm0(this, 1);
        this.h0 = new lm0(this, 3);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.b0 = (dz3) obj;
            synchronized (this) {
                this.i0 |= 64;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.c0 = (hz3) obj;
            synchronized (this) {
                this.i0 |= 128;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            dz3 dz3Var = this.b0;
            if (dz3Var != null) {
                dz3Var.T();
                return;
            }
            return;
        }
        if (i == 2) {
            dz3 dz3Var2 = this.b0;
            if (dz3Var2 != null) {
                dz3Var2.f1();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        dz3 dz3Var3 = this.b0;
        if (dz3Var3 != null) {
            dz3Var3.T();
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x015b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x015d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0160  */
    /* JADX WARN: Code duplicated, block: B:110:0x0169  */
    /* JADX WARN: Code duplicated, block: B:111:0x0170  */
    /* JADX WARN: Code duplicated, block: B:113:0x0176  */
    /* JADX WARN: Code duplicated, block: B:116:0x0181 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x0183  */
    /* JADX WARN: Code duplicated, block: B:118:0x0186  */
    /* JADX WARN: Code duplicated, block: B:121:0x018d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0194  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f0  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int iZ;
        int iZ2;
        tj.a value;
        int i;
        String value2;
        int i2;
        int i3;
        Integer value3;
        List list;
        int i4;
        String[] value4;
        int i5;
        int iZ3;
        int i6;
        xv2<String[]> xv2Var;
        xv2<Integer> xv2Var2;
        Integer value5;
        mj<List<NewCategoryItem>> mjVar;
        xv2<Integer> xv2Var3;
        Integer numValueOf;
        int i7;
        Integer numValueOf2;
        Integer num;
        long j2;
        long j3;
        tj.a aVar = tj.a.SUCCESS;
        synchronized (this) {
            j = this.i0;
            this.i0 = 0L;
        }
        dz3 dz3Var = this.b0;
        hz3 hz3Var = this.c0;
        int i8 = 0;
        if ((447 & j) != 0) {
            long j4 = j & 385;
            if (j4 != 0) {
                xv2<tj.a> xv2Var4 = hz3Var != null ? hz3Var.d : null;
                E(0, xv2Var4);
                value = xv2Var4 != null ? xv2Var4.getValue() : null;
                boolean z = value == aVar;
                if (j4 != 0) {
                    if (z) {
                        j2 = j | 1024;
                        j3 = 4096;
                    } else {
                        j2 = j | 512;
                        j3 = 2048;
                    }
                    j = j2 | j3;
                }
                i4 = z ? 0 : 8;
                i = z ? 8 : 0;
            } else {
                value = null;
                i = 0;
                i4 = 0;
            }
            if ((384 & j) != 0) {
                if (hz3Var != null) {
                    String[] value6 = hz3Var.s.getValue();
                    if (value6 == null) {
                        numValueOf = null;
                    } else {
                        int length = value6.length;
                        while (true) {
                            if (i8 >= length) {
                                i8 = -1;
                                break;
                            }
                            int i9 = i8 + 1;
                            if (j32.a(value6[i8], hz3Var.t.getValue())) {
                                break;
                            } else {
                                i8 = i9;
                            }
                        }
                        numValueOf = Integer.valueOf(i8);
                    }
                    i7 = hz3Var.l;
                    String[] value7 = hz3Var.s.getValue();
                    if (value7 != null) {
                        int length2 = value7.length;
                        int i10 = 0;
                        while (true) {
                            if (i10 >= length2) {
                                num = numValueOf;
                                i10 = -1;
                                break;
                            }
                            int i11 = i10 + 1;
                            num = numValueOf;
                            if (j32.a(value7[i10], hz3Var.u.getValue())) {
                                break;
                            }
                            i10 = i11;
                            numValueOf = num;
                        }
                        numValueOf2 = Integer.valueOf(i10);
                        numValueOf = num;
                    }
                    iZ3 = ViewDataBinding.z(numValueOf);
                    i6 = i7 - 1900;
                    iZ2 = ViewDataBinding.z(numValueOf2);
                } else {
                    numValueOf = null;
                    i7 = 0;
                }
                numValueOf2 = null;
                iZ3 = ViewDataBinding.z(numValueOf);
                i6 = i7 - 1900;
                iZ2 = ViewDataBinding.z(numValueOf2);
            } else {
                iZ2 = 0;
                iZ3 = 0;
                i6 = 0;
            }
            if ((j & 386) == 0) {
                value2 = null;
            } else {
                xv2<String> xv2Var5 = hz3Var != null ? hz3Var.m : null;
                E(1, xv2Var5);
                if (xv2Var5 != null) {
                    value2 = xv2Var5.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((420 & j) != 0) {
                if (hz3Var != null) {
                    mjVar = hz3Var.w;
                    xv2Var3 = hz3Var.n;
                } else {
                    mjVar = null;
                    xv2Var3 = null;
                }
                E(2, mjVar);
                E(5, xv2Var3);
                tj tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
                value3 = xv2Var3 != null ? xv2Var3.getValue() : null;
                list = tjVar != null ? (List) tjVar.b : null;
                long j5 = j & 388;
                if (j5 != 0) {
                    tj.a aVar2 = tjVar != null ? tjVar.a : null;
                    boolean zEquals = aVar2 != null ? aVar2.equals(aVar) : false;
                    if (j5 != 0) {
                        j |= zEquals ? 16384L : 8192L;
                    }
                    if (!zEquals) {
                        i3 = 8;
                    }
                }
                if ((j & 392) != 0) {
                    if (hz3Var != null) {
                        xv2Var2 = hz3Var.o;
                    } else {
                        xv2Var2 = null;
                    }
                    E(3, xv2Var2);
                    if (xv2Var2 != null) {
                        value5 = xv2Var2.getValue();
                    } else {
                        value5 = null;
                    }
                    iZ = ViewDataBinding.z(value5);
                } else {
                    iZ = 0;
                }
                if ((j & 400) == 0) {
                    value4 = null;
                } else {
                    if (hz3Var != null) {
                        xv2Var = hz3Var.s;
                    } else {
                        xv2Var = null;
                    }
                    E(4, xv2Var);
                    if (xv2Var != null) {
                        value4 = xv2Var.getValue();
                    } else {
                        value4 = null;
                    }
                }
                i2 = i6;
                i5 = iZ3;
            } else {
                value3 = null;
                list = null;
            }
            i3 = 0;
            if ((j & 392) != 0) {
                if (hz3Var != null) {
                    xv2Var2 = hz3Var.o;
                } else {
                    xv2Var2 = null;
                }
                E(3, xv2Var2);
                if (xv2Var2 != null) {
                    value5 = xv2Var2.getValue();
                } else {
                    value5 = null;
                }
                iZ = ViewDataBinding.z(value5);
            } else {
                iZ = 0;
            }
            if ((j & 400) == 0) {
                value4 = null;
            } else {
                if (hz3Var != null) {
                    xv2Var = hz3Var.s;
                } else {
                    xv2Var = null;
                }
                E(4, xv2Var);
                if (xv2Var != null) {
                    value4 = xv2Var.getValue();
                } else {
                    value4 = null;
                }
            }
            i2 = i6;
            i5 = iZ3;
        } else {
            iZ = 0;
            iZ2 = 0;
            value = null;
            i = 0;
            value2 = null;
            i2 = 0;
            i3 = 0;
            value3 = null;
            list = null;
            i4 = 0;
            value4 = null;
            i5 = 0;
        }
        String str = value2;
        if ((j & 388) != 0) {
            this.M.setVisibility(i3);
            this.N.setVisibility(i3);
        }
        if ((420 & j) != 0) {
            st2.h(this.M, list, value3, null);
        }
        if ((256 & j) != 0) {
            TextView textView = this.N;
            d3.a(textView, R.string.txt_category, textView);
            MaterialButton materialButton = this.O;
            e3.a(materialButton, R.string.txt_clear, materialButton);
            st2.c(this.O, this.f0, null);
            TextView textView2 = this.R;
            d3.a(textView2, R.string.imdb_rating, textView2);
            TextView textView3 = this.V;
            d3.a(textView3, R.string.staff_txt, textView3);
            TextView textView4 = this.W;
            d3.a(textView4, R.string.to_txt, textView4);
            TextView textView5 = this.X;
            d3.a(textView5, R.string.year_filter, textView5);
            st2.c(this.Y, this.g0, null);
            MaterialButton materialButton2 = this.d0;
            e3.a(materialButton2, R.string.show_results_txt, materialButton2);
            st2.c(this.d0, this.h0, null);
            TextView textView6 = this.a0;
            d3.a(textView6, R.string.filter_results_txt, textView6);
            if (ViewDataBinding.G >= 11) {
                this.P.setMinValue(0);
                this.P.setWrapSelectorWheel(false);
                this.U.setMinValue(0);
                this.U.setWrapSelectorWheel(false);
            }
        }
        if ((j & 400) != 0 && ViewDataBinding.G >= 11) {
            this.P.setDisplayedValues(value4);
            this.U.setDisplayedValues(value4);
        }
        if ((384 & j) != 0 && ViewDataBinding.G >= 11) {
            this.P.setMaxValue(i2);
            this.P.setValue(i5);
            this.U.setMaxValue(i2);
            this.U.setValue(iZ2);
        }
        if ((j & 392) != 0) {
            this.Q.setValue(iZ);
        }
        if ((385 & j) != 0) {
            this.T.setVisibility(i4);
            this.e0.setVisibility(i);
            this.e0.setStatus(value);
        }
        if ((320 & j) != 0) {
            this.e0.setNavigator(dz3Var);
        }
        if ((j & 386) != 0) {
            nl6.r(this.Z, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.i0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.i0 = 256L;
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
                this.i0 |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.i0 |= 2;
            }
            return true;
        }
        if (i == 2) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.i0 |= 4;
            }
            return true;
        }
        if (i == 3) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.i0 |= 8;
            }
            return true;
        }
        if (i == 4) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.i0 |= 16;
            }
            return true;
        }
        if (i != 5) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.i0 |= 32;
        }
        return true;
    }
}
