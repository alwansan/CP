package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;

/* JADX INFO: compiled from: FragmentEditProfileBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class jj1 extends ij1 implements lm0.a {
    public static final ViewDataBinding.e q0;
    public static final SparseIntArray r0;
    public final ProgressBar j0;
    public final mm0 k0;
    public final mm0 l0;
    public final mm0 m0;
    public final mm0 n0;
    public a o0;
    public long p0;

    /* JADX INFO: compiled from: FragmentEditProfileBindingImpl.java */
    public static class a implements so1 {
        public g21 a;
    }

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(24);
        q0 = eVar;
        eVar.a(1, new String[]{"item_edit_profile_input", "item_edit_profile_input", "item_edit_profile_input", "item_edit_profile_input", "item_edit_profile_input", "item_edit_profile_input", "item_edit_profile_input"}, new int[]{16, 17, 18, 19, 20, 21, 22}, new int[]{R.layout.item_edit_profile_input, R.layout.item_edit_profile_input, R.layout.item_edit_profile_input, R.layout.item_edit_profile_input, R.layout.item_edit_profile_input, R.layout.item_edit_profile_input, R.layout.item_edit_profile_input});
        SparseIntArray sparseIntArray = new SparseIntArray();
        r0 = sparseIntArray;
        sparseIntArray.put(R.id.profile_scroll_view, 23);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public jj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 24, q0, r0);
        super(gl0Var, view, 16, (MaterialButton) objArrS[5], (TextView) objArrS[4], (TextView) objArrS[6], (TextView) objArrS[11], (MaterialButton) objArrS[12], (ChipGroup) objArrS[8], (TextView) objArrS[7], (SimpleDraweeView) objArrS[2], (MaterialButton) objArrS[13], (MaterialButton) objArrS[15], (TextView) objArrS[14], (Chip) objArrS[10], (Chip) objArrS[9], (r42) objArrS[19], (r42) objArrS[18], (r42) objArrS[21], (r42) objArrS[16], (r42) objArrS[17], (r42) objArrS[22], (r42) objArrS[20], (NestedScrollView) objArrS[23]);
        this.p0 = -1L;
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
        r42 r42Var = this.Z;
        if (r42Var != null) {
            r42Var.B = this;
        }
        r42 r42Var2 = this.a0;
        if (r42Var2 != null) {
            r42Var2.B = this;
        }
        r42 r42Var3 = this.b0;
        if (r42Var3 != null) {
            r42Var3.B = this;
        }
        r42 r42Var4 = this.c0;
        if (r42Var4 != null) {
            r42Var4.B = this;
        }
        r42 r42Var5 = this.d0;
        if (r42Var5 != null) {
            r42Var5.B = this;
        }
        r42 r42Var6 = this.e0;
        if (r42Var6 != null) {
            r42Var6.B = this;
        }
        r42 r42Var7 = this.f0;
        if (r42Var7 != null) {
            r42Var7.B = this;
        }
        ((FrameLayout) objArrS[0]).setTag(null);
        ((ConstraintLayout) objArrS[1]).setTag(null);
        ProgressBar progressBar = (ProgressBar) objArrS[3];
        this.j0 = progressBar;
        progressBar.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.k0 = new lm0(this, 4);
        this.l0 = new lm0(this, 1);
        this.m0 = new lm0(this, 2);
        this.n0 = new lm0(this, 3);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.c0.B(rh2Var);
        this.d0.B(rh2Var);
        this.a0.B(rh2Var);
        this.Z.B(rh2Var);
        this.f0.B(rh2Var);
        this.b0.B(rh2Var);
        this.e0.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.i0 = (f21) obj;
            synchronized (this) {
                this.p0 |= 65536;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.h0 = (g21) obj;
            synchronized (this) {
                this.p0 |= 131072;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            f21 f21Var = this.i0;
            if (f21Var != null) {
                f21Var.t0();
                return;
            }
            return;
        }
        if (i == 2) {
            f21 f21Var2 = this.i0;
            if (f21Var2 != null) {
                f21Var2.d1();
                return;
            }
            return;
        }
        if (i == 3) {
            f21 f21Var3 = this.i0;
            if (f21Var3 != null) {
                f21Var3.P0();
                return;
            }
            return;
        }
        if (i != 4) {
            return;
        }
        f21 f21Var4 = this.i0;
        if (f21Var4 != null) {
            f21Var4.q1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x016b  */
    /* JADX WARN: Code duplicated, block: B:26:0x005c A[PHI: r2
      0x005c: PHI (r2v3 long) = (r2v0 long), (r2v5 long) binds: [B:9:0x0030, B:23:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x008d  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00da  */
    /* JADX WARN: Code duplicated, block: B:91:0x0132  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String value;
        boolean zEquals;
        boolean zEquals2;
        String value2;
        String value3;
        String value4;
        int i;
        String value5;
        String value6;
        String strA;
        String value7;
        a aVar;
        xv2<String> xv2Var;
        xv2<String> xv2Var2;
        synchronized (this) {
            j = this.p0;
            this.p0 = 0L;
        }
        g21 g21Var = this.h0;
        if ((421259 & j) != 0) {
            long j2 = j & 393217;
            if (j2 == 0) {
                i = 0;
            } else {
                xv2<Boolean> xv2Var3 = g21Var != null ? g21Var.g : null;
                E(0, xv2Var3);
                boolean zA = ViewDataBinding.A(xv2Var3 != null ? xv2Var3.getValue() : null);
                if (j2 != 0) {
                    j |= zA ? 1048576L : 524288L;
                }
                if (zA) {
                    i = 0;
                } else {
                    i = 8;
                }
            }
            if ((393218 & j) == 0) {
                zEquals2 = false;
                zEquals = false;
            } else {
                xv2<String> xv2Var4 = g21Var != null ? g21Var.n : null;
                E(1, xv2Var4);
                String value8 = xv2Var4 != null ? xv2Var4.getValue() : null;
                String lowerCase = value8 != null ? value8.toLowerCase() : null;
                if (lowerCase != null) {
                    zEquals = lowerCase.equals("female");
                    zEquals2 = lowerCase.equals("male");
                } else {
                    zEquals2 = false;
                    zEquals = false;
                }
            }
            if ((393224 & j) == 0) {
                value2 = null;
            } else {
                xv2<String> xv2Var5 = g21Var != null ? g21Var.p : null;
                E(3, xv2Var5);
                if (xv2Var5 != null) {
                    value2 = xv2Var5.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j & 393344) == 0) {
                value6 = null;
            } else {
                xv2<String> xv2Var6 = g21Var != null ? g21Var.q : null;
                E(7, xv2Var6);
                if (xv2Var6 != null) {
                    value6 = xv2Var6.getValue();
                } else {
                    value6 = null;
                }
            }
            if ((j & 393472) == 0) {
                value5 = null;
            } else {
                xv2<String> xv2Var7 = g21Var != null ? g21Var.s : null;
                E(8, xv2Var7);
                if (xv2Var7 != null) {
                    value5 = xv2Var7.getValue();
                } else {
                    value5 = null;
                }
            }
            if ((402432 & j) != 0) {
                if (g21Var != null) {
                    xv2Var2 = g21Var.m;
                    xv2Var = g21Var.l;
                } else {
                    xv2Var = null;
                    xv2Var2 = null;
                }
                E(10, xv2Var2);
                E(13, xv2Var);
                value4 = xv2Var2 != null ? xv2Var2.getValue() : null;
                value3 = xv2Var != null ? xv2Var.getValue() : null;
                strA = el3.a(el3.a(value3, " "), value4);
            } else {
                value3 = null;
                value4 = null;
                strA = null;
            }
            if ((j & 395264) == 0) {
                value7 = null;
            } else {
                xv2<String> xv2Var8 = g21Var != null ? g21Var.o : null;
                E(11, xv2Var8);
                if (xv2Var8 != null) {
                    value7 = xv2Var8.getValue();
                } else {
                    value7 = null;
                }
            }
            if ((j & 393216) == 0 || g21Var == null) {
                aVar = null;
            } else {
                aVar = this.o0;
                if (aVar == null) {
                    aVar = new a();
                    this.o0 = aVar;
                }
                aVar.a = g21Var;
            }
            if ((j & 409600) == 0) {
                value = null;
            } else {
                xv2<String> xv2Var9 = g21Var != null ? g21Var.r : null;
                E(14, xv2Var9);
                if (xv2Var9 != null) {
                    value = xv2Var9.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
            zEquals = false;
            zEquals2 = false;
            value2 = null;
            value3 = null;
            value4 = null;
            i = 0;
            value5 = null;
            value6 = null;
            strA = null;
            value7 = null;
            aVar = null;
        }
        if ((j & 262144) != 0) {
            MaterialButton materialButton = this.M;
            e3.a(materialButton, R.string.change_photo_txt, materialButton);
            st2.c(this.M, this.l0, null);
            TextView textView = this.O;
            d3.a(textView, R.string.general_txt, textView);
            TextView textView2 = this.P;
            d3.a(textView2, R.string.date_of_birth_txt, textView2);
            st2.c(this.Q, this.m0, null);
            ChipGroup chipGroup = this.R;
            nl6.q(chipGroup, chipGroup.getResources().getString(R.string.gender_txt));
            TextView textView3 = this.S;
            d3.a(textView3, R.string.gender_txt, textView3);
            SimpleDraweeView simpleDraweeView = this.T;
            nl6.q(simpleDraweeView, simpleDraweeView.getResources().getString(R.string.user_image_txt));
            MaterialButton materialButton2 = this.U;
            e3.a(materialButton2, R.string.save_changes_txt, materialButton2);
            st2.c(this.U, this.n0, null);
            MaterialButton materialButton3 = this.V;
            e3.a(materialButton3, R.string.change_password_txt, materialButton3);
            st2.c(this.V, this.k0, null);
            TextView textView4 = this.W;
            d3.a(textView4, R.string.security_txt, textView4);
            Chip chip = this.X;
            nl6.r(chip, chip.getResources().getString(R.string.female_txt));
            Chip chip2 = this.Y;
            nl6.r(chip2, chip2.getResources().getString(R.string.male_txt));
            this.Z.G(this.v.getResources().getString(R.string.city_txt));
            this.a0.G(this.v.getResources().getString(R.string.country_txt));
            this.b0.G(this.v.getResources().getString(R.string.current_password_txt));
            r42 r42Var = this.b0;
            Boolean bool = Boolean.TRUE;
            r42Var.H(bool);
            this.c0.G(this.v.getResources().getString(R.string.first_name_txt));
            this.d0.G(this.v.getResources().getString(R.string.last_name_txt));
            this.e0.G(this.v.getResources().getString(R.string.new_password_txt));
            this.e0.H(bool);
            this.f0.G(this.v.getResources().getString(R.string.phone_number_txt));
        }
        if ((j & 402432) != 0) {
            nl6.r(this.N, strA);
        }
        if ((409600 & j) != 0) {
            nl6.r(this.Q, value);
        }
        if ((j & 393216) != 0) {
            ChipGroup chipGroup2 = this.R;
            j32.e(chipGroup2, "<this>");
            chipGroup2.setOnCheckedChangeListener(new l91(aVar));
        }
        if ((j & 393472) != 0) {
            oy1.c(this.T, value5, null, null, null);
        }
        if ((393218 & j) != 0) {
            i90.a(this.X, zEquals);
            i90.a(this.Y, zEquals2);
        }
        if ((j & 395264) != 0) {
            this.Z.I(value7);
        }
        if ((j & 393344) != 0) {
            this.a0.I(value6);
        }
        if ((401408 & j) != 0) {
            this.c0.I(value3);
        }
        if ((394240 & j) != 0) {
            this.d0.I(value4);
        }
        if ((393224 & j) != 0) {
            this.f0.I(value2);
        }
        if ((j & 393217) != 0) {
            this.j0.setVisibility(i);
        }
        this.c0.j();
        this.d0.j();
        this.a0.j();
        this.Z.j();
        this.f0.j();
        this.b0.j();
        this.e0.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.p0 != 0) {
                return true;
            }
            return this.c0.o() || this.d0.o() || this.a0.o() || this.Z.o() || this.f0.o() || this.b0.o() || this.e0.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.p0 = 262144L;
        }
        this.c0.p();
        this.d0.p();
        this.a0.p();
        this.Z.p();
        this.f0.p();
        this.b0.p();
        this.e0.p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 1;
                    break;
                }
                return true;
            case 1:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 2;
                    break;
                }
                return true;
            case 2:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 4;
                    break;
                }
                return true;
            case 3:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 8;
                    break;
                }
                return true;
            case 4:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 16;
                    break;
                }
                return true;
            case 5:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 32;
                    break;
                }
                return true;
            case 6:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 64;
                    break;
                }
                return true;
            case 7:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 128;
                    break;
                }
                return true;
            case 8:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 256;
                    break;
                }
                return true;
            case 9:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 512;
                    break;
                }
                return true;
            case 10:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 1024;
                    break;
                }
                return true;
            case 11:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 2048;
                    break;
                }
                return true;
            case 12:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 4096;
                    break;
                }
                return true;
            case 13:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 8192;
                    break;
                }
                return true;
            case 14:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 16384;
                    break;
                }
                return true;
            case 15:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.p0 |= 32768;
                    break;
                }
                return true;
            default:
                return false;
        }
    }
}
