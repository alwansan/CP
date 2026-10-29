package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.shabakaty.cinemana.data.db.settings.FilterSettingsEntity;
import com.shabakaty.cinemana.data.db.settings.SettingsEntity;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: FragmentFilterSettingsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class nj1 extends mj1 {
    public static final SparseIntArray W;
    public a U;
    public long V;

    /* JADX INFO: compiled from: FragmentFilterSettingsBindingImpl.java */
    public static class a implements ha3 {
        public kb1 a;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        W = sparseIntArray;
        sparseIntArray.put(R.id.parental_chip_group_scroll, 7);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public nj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 8, null, W);
        super(gl0Var, view, 1, (SwitchMaterial) objArrS[3], (TextView) objArrS[4], (SwitchMaterial) objArrS[5], (TextView) objArrS[6], (TextView) objArrS[1], (ChipGroup) objArrS[2], (HorizontalScrollView) objArrS[7]);
        this.V = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.R.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.S = (gb1) obj;
        } else {
            if (38 != i) {
                return false;
            }
            this.T = (kb1) obj;
            synchronized (this) {
                this.V |= 4;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0070 A[PHI: r2
      0x0070: PHI (r2v5 long) = (r2v0 long), (r2v6 long) binds: [B:25:0x0054, B:34:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        a aVar;
        boolean zIsLoggedIn;
        boolean z;
        boolean z2;
        ia3 ia3Var;
        Resources resources;
        gc4<SettingsEntity> gc4Var;
        synchronized (this) {
            j = this.V;
            this.V = 0L;
        }
        kb1 kb1Var = this.T;
        if ((j & 13) != 0) {
            if (kb1Var != null) {
                aVar = this.U;
                if (aVar == null) {
                    aVar = new a();
                    this.U = aVar;
                }
                aVar.a = kb1Var;
                zIsLoggedIn = kb1Var.f.isLoggedIn();
                gc4Var = kb1Var.h;
            } else {
                aVar = null;
                zIsLoggedIn = false;
                gc4Var = null;
            }
            h35.a(this, 0, gc4Var);
            SettingsEntity value = gc4Var != null ? gc4Var.getValue() : null;
            FilterSettingsEntity filterSettingsEntity = value != null ? value.filterSettings : null;
            if (filterSettingsEntity != null) {
                z = filterSettingsEntity.showContentWithNoSubtitle;
                z2 = filterSettingsEntity.skipInAppropriateScenes;
                ia3Var = filterSettingsEntity.parentalLevel;
            } else {
                z = false;
                z2 = false;
                ia3Var = null;
            }
            long j2 = 12 & j;
            if (j2 == 0) {
                i = 0;
            } else {
                boolean zIsLoggedIn2 = kb1Var != null ? kb1Var.f.isLoggedIn() : false;
                if (j2 != 0) {
                    j |= zIsLoggedIn2 ? 32L : 16L;
                }
                if (zIsLoggedIn2) {
                    i = 0;
                } else {
                    i = 8;
                }
            }
        } else {
            i = 0;
            aVar = null;
            zIsLoggedIn = false;
            z = false;
            z2 = false;
            ia3Var = null;
        }
        if ((13 & j) != 0) {
            i90.a(this.M, z2);
            i90.a(this.O, z);
            ChipGroup chipGroup = this.R;
            j32.e(chipGroup, "<this>");
            j32.e(ia3Var, "parentalLevel");
            List<ia3> listP = zIsLoggedIn ? iq6.p(ia3.a.d, ia3.b.d, ia3.c.d, ia3.d.d) : iq6.p(ia3.b.d, ia3.c.d, ia3.d.d);
            Object objE = t04.E(j35.a(chipGroup));
            Chip chip = objE instanceof Chip ? (Chip) objE : null;
            if (!j32.a(chip == null ? null : chip.getText(), nl6.z(he0.m(chipGroup, ((ia3) m50.Z(listP)).b)))) {
                chipGroup.removeAllViews();
            }
            if (chipGroup.getChildCount() == 0) {
                for (ia3 ia3Var2 : listP) {
                    Chip chip2 = new Chip(chipGroup.getContext(), null);
                    boolean zA = j32.a(ia3Var2.a, ia3Var.a);
                    chip2.setTextAppearanceResource(R.style.VideoInfoSeasonsTabTextAppearance);
                    chip2.setChipBackgroundColorResource(R.color.chip_background);
                    Context context = chipGroup.getContext();
                    chip2.setTextColor(context == null ? null : wt2.g(context, R.color.chip_text_color));
                    chip2.setLayoutParams(new ChipGroup.c(kf5.e(80), kf5.e(80)));
                    chip2.setShapeAppearanceModel(chip2.getShapeAppearanceModel().e(kf5.e(8)));
                    chip2.setText(nl6.z(he0.m(chip2, ia3Var2.b)));
                    chip2.setTag(ia3Var2.a);
                    chip2.setId(Integer.parseInt(ia3Var2.a));
                    Context context2 = chipGroup.getContext();
                    chip2.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (context2 == null || (resources = context2.getResources()) == null) ? null : resources.getDrawable(ia3Var2.c, chipGroup.getContext().getTheme()), (Drawable) null, (Drawable) null);
                    Iterator itQ = bp.q(s45.c(chip2));
                    while (true) {
                        q02 q02Var = (q02) itQ;
                        if (!q02Var.hasNext()) {
                            break;
                        }
                        Drawable drawable = (Drawable) q02Var.next();
                        if (drawable != null) {
                            Context context3 = chip2.getContext();
                            j32.d(context3, "context");
                            drawable.setTintList(wt2.g(context3, R.color.chip_text_color));
                        }
                    }
                    chip2.setTextAlignment(4);
                    chip2.setCheckable(true);
                    chip2.setCheckedIconVisible(false);
                    chipGroup.addView(chip2);
                    if (zA) {
                        chipGroup.d();
                        chipGroup.c(chip2.getId());
                    }
                }
            }
            chipGroup.setOnCheckedChangeListener(new l91(aVar));
        }
        if ((8 & j) != 0) {
            SwitchMaterial switchMaterial = this.M;
            nl6.q(switchMaterial, switchMaterial.getResources().getString(R.string.parental_skipping));
            TextView textView = this.N;
            d3.a(textView, R.string.parental_skipping, textView);
            SwitchMaterial switchMaterial2 = this.O;
            nl6.q(switchMaterial2, switchMaterial2.getResources().getString(R.string.show_videos_that_have_no_subtitles));
            TextView textView2 = this.P;
            d3.a(textView2, R.string.show_videos_that_have_no_subtitles, textView2);
            TextView textView3 = this.Q;
            d3.a(textView3, R.string.content_filter_mode, textView3);
        }
        if ((j & 12) != 0) {
            this.O.setVisibility(i);
            this.P.setVisibility(i);
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
