package com.shabakaty.downloader;

import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.shabakaty.cinemana.data.db.settings.AppSettingsEntity;
import com.shabakaty.cinemana.data.db.settings.SettingsEntity;

/* JADX INFO: compiled from: FragmentAppSettingsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class li1 extends ki1 implements i63.a {
    public final MaterialButton a0;
    public final View.OnClickListener b0;
    public final View.OnClickListener c0;
    public b d0;
    public a e0;
    public long f0;

    /* JADX INFO: compiled from: FragmentAppSettingsBindingImpl.java */
    public static class a implements df2 {
        public rb a;
    }

    /* JADX INFO: compiled from: FragmentAppSettingsBindingImpl.java */
    public static class b implements nm4 {
        public rb a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public li1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 14, null, null);
        super(gl0Var, view, 1, (TextView) objArrS[1], (ChipGroup) objArrS[4], (Chip) objArrS[5], (Chip) objArrS[6], (TextView) objArrS[11], (TextView) objArrS[3], (TextView) objArrS[13], (TextView) objArrS[12], (TextView) objArrS[7], (Chip) objArrS[9], (ChipGroup) objArrS[8], (Chip) objArrS[10]);
        this.f0 = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        ((ScrollView) objArrS[0]).setTag(null);
        MaterialButton materialButton = (MaterialButton) objArrS[2];
        this.a0 = materialButton;
        materialButton.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        this.X.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.b0 = new i63(this, 2);
        this.c0 = new i63(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.Y = (nb) obj;
            synchronized (this) {
                this.f0 |= 2;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.Z = (rb) obj;
            synchronized (this) {
                this.f0 |= 4;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        if (i == 1) {
            nb nbVar = this.Y;
            if (nbVar != null) {
                nbVar.j();
                return;
            }
            return;
        }
        if (i != 2) {
            return;
        }
        nb nbVar2 = this.Y;
        if (nbVar2 != null) {
            nbVar2.Z();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        boolean z;
        boolean z2;
        boolean z3;
        b bVar;
        String quantityString;
        a aVar;
        int i;
        tx4 tx4Var;
        synchronized (this) {
            j = this.f0;
            this.f0 = 0L;
        }
        rb rbVar = this.Z;
        long j2 = 13 & j;
        a aVar2 = null;
        ky4 ky4Var = null;
        boolean z4 = false;
        if (j2 != 0) {
            if ((j & 12) == 0 || rbVar == null) {
                bVar = null;
                aVar = null;
            } else {
                bVar = this.d0;
                if (bVar == null) {
                    bVar = new b();
                    this.d0 = bVar;
                }
                bVar.a = rbVar;
                aVar = this.e0;
                if (aVar == null) {
                    aVar = new a();
                    this.e0 = aVar;
                }
                aVar.a = rbVar;
            }
            gc4<SettingsEntity> gc4Var = rbVar != null ? rbVar.g : null;
            h35.a(this, 0, gc4Var);
            SettingsEntity value = gc4Var != null ? gc4Var.getValue() : null;
            AppSettingsEntity appSettingsEntity = value != null ? value.appSettings : null;
            if (appSettingsEntity != null) {
                ky4Var = appSettingsEntity.theme;
                i = appSettingsEntity.seekPeriod;
                tx4Var = appSettingsEntity.language;
            } else {
                i = 0;
                tx4Var = null;
            }
            z3 = ky4Var instanceof ky4.b;
            z2 = ky4Var instanceof ky4.a;
            this.S.getResources().getQuantityString(R.plurals.duration_seconds, i, Integer.valueOf(i));
            z4 = tx4Var instanceof tx4.a;
            z = tx4Var instanceof tx4.b;
            aVar2 = aVar;
            quantityString = this.S.getResources().getQuantityString(R.plurals.duration_seconds, i, Integer.valueOf(i));
        } else {
            z = false;
            z2 = false;
            z3 = false;
            bVar = null;
            quantityString = null;
        }
        if ((8 & j) != 0) {
            TextView textView = this.M;
            d3.a(textView, R.string.txt_clear_search, textView);
            Chip chip = this.O;
            nl6.r(chip, chip.getResources().getString(R.string.arabic));
            Chip chip2 = this.P;
            nl6.r(chip2, chip2.getResources().getString(R.string.english));
            this.a0.setOnClickListener(this.c0);
            MaterialButton materialButton = this.a0;
            nl6.q(materialButton, materialButton.getResources().getString(R.string.txt_clear_search));
            MaterialButton materialButton2 = this.a0;
            e3.a(materialButton2, R.string.txt_clear, materialButton2);
            TextView textView2 = this.Q;
            d3.a(textView2, R.string.player_settings_txt, textView2);
            TextView textView3 = this.R;
            d3.a(textView3, R.string.txt_language, textView3);
            this.S.setOnClickListener(this.b0);
            TextView textView4 = this.T;
            d3.a(textView4, R.string.seek_period_txt, textView4);
            TextView textView5 = this.U;
            d3.a(textView5, R.string.txt_theme, textView5);
            Chip chip3 = this.V;
            nl6.r(chip3, chip3.getResources().getString(R.string.txt_dark_theme));
            Chip chip4 = this.X;
            nl6.r(chip4, chip4.getResources().getString(R.string.txt_light_theme));
        }
        if ((j & 12) != 0) {
            ChipGroup chipGroup = this.N;
            j32.e(chipGroup, "<this>");
            chipGroup.setOnCheckedChangeListener(new l91(aVar2));
            ChipGroup chipGroup2 = this.W;
            j32.e(chipGroup2, "<this>");
            chipGroup2.setOnCheckedChangeListener(new l91(bVar));
        }
        if (j2 != 0) {
            i90.a(this.O, z4);
            i90.a(this.P, z);
            nl6.r(this.S, quantityString);
            i90.a(this.V, z2);
            i90.a(this.X, z3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.f0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.f0 = 8L;
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
            this.f0 |= 1;
        }
        return true;
    }
}
