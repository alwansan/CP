package com.shabakaty.downloader;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController;
import com.cinemana.pro.R;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: MaterialAlertDialogBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class bn2 extends androidx.appcompat.app.b.a {
    public Drawable c;
    public final Rect d;

    /* JADX WARN: Illegal instructions before constructor call */
    public bn2(Context context) {
        TypedValue typedValueA = cn2.a(context, R.attr.materialAlertDialogTheme);
        int i = typedValueA == null ? 0 : typedValueA.data;
        Context contextA = un2.a(context, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        contextA = i != 0 ? new sd0(contextA, i) : contextA;
        TypedValue typedValueA2 = cn2.a(context, R.attr.materialAlertDialogTheme);
        super(contextA, typedValueA2 == null ? 0 : typedValueA2.data);
        Context context2 = getContext();
        Resources.Theme theme = context2.getTheme();
        int[] iArr = yl3.r;
        om4.a(context2, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        om4.b(context2, null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_start));
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_top));
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_end));
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_bottom));
        typedArrayObtainStyledAttributes.recycle();
        if (context2.getResources().getConfiguration().getLayoutDirection() == 1) {
            dimensionPixelSize3 = dimensionPixelSize;
            dimensionPixelSize = dimensionPixelSize3;
        }
        this.d = new Rect(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
        int iC = cn2.c(context2, R.attr.colorSurface, bn2.class.getCanonicalName());
        sn2 sn2Var = new sn2(context2, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        sn2Var.r.b = new n21(context2);
        sn2Var.A();
        sn2Var.q(ColorStateList.valueOf(iC));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                sn2Var.r.a = sn2Var.r.a.e(dimension);
                sn2Var.invalidateSelf();
            }
        }
        this.c = sn2Var;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.q = listAdapter;
        bVar.r = onClickListener;
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a b(int i) {
        AlertController.b bVar = this.a;
        bVar.f = bVar.a.getText(i);
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a c(CharSequence charSequence) {
        this.a.f = charSequence;
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b create() {
        androidx.appcompat.app.b bVarCreate = super.create();
        Window window = bVarCreate.getWindow();
        View decorView = window.getDecorView();
        Drawable drawable = this.c;
        if (drawable instanceof sn2) {
            WeakHashMap<View, b45> weakHashMap = c35.a;
            ((sn2) drawable).p(decorView.getElevation());
        }
        Drawable drawable2 = this.c;
        Rect rect = this.d;
        window.setBackgroundDrawable(new InsetDrawable(drawable2, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new p12(bVarCreate, this.d));
        return bVarCreate;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a d(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.i = charSequence;
        bVar.j = onClickListener;
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a e(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.k = charSequence;
        bVar.l = onClickListener;
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a f(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.g = charSequence;
        bVar.h = onClickListener;
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a g(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.q = listAdapter;
        bVar.r = onClickListener;
        bVar.v = i;
        bVar.u = true;
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a h(int i) {
        AlertController.b bVar = this.a;
        bVar.d = bVar.a.getText(i);
        return this;
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a i(int i) {
        AlertController.b bVar = this.a;
        bVar.t = null;
        bVar.s = i;
        return this;
    }

    public bn2 k(int i) {
        AlertController.b bVar = this.a;
        bVar.f = bVar.a.getText(i);
        return this;
    }

    public bn2 l(int i, DialogInterface.OnClickListener onClickListener) {
        return (bn2) super.setNegativeButton(i, onClickListener);
    }

    public bn2 m(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.i = charSequence;
        bVar.j = onClickListener;
        return this;
    }

    public bn2 n(int i, DialogInterface.OnClickListener onClickListener) {
        return (bn2) super.setPositiveButton(i, onClickListener);
    }

    public bn2 o(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.g = charSequence;
        bVar.h = onClickListener;
        return this;
    }

    public bn2 p(int i) {
        AlertController.b bVar = this.a;
        bVar.d = bVar.a.getText(i);
        return this;
    }

    public bn2 q(CharSequence charSequence) {
        return (bn2) super.setTitle(charSequence);
    }

    public bn2 r(View view) {
        return (bn2) super.setView(view);
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
        return (bn2) super.setNegativeButton(i, onClickListener);
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
        return (bn2) super.setPositiveButton(i, onClickListener);
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a setTitle(CharSequence charSequence) {
        return (bn2) super.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.b.a
    public androidx.appcompat.app.b.a setView(View view) {
        return (bn2) super.setView(view);
    }
}
