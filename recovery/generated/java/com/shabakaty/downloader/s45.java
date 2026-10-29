package com.shabakaty.downloader;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.Objects;

/* JADX INFO: compiled from: ViewsExtensions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s45 {

    /* JADX INFO: compiled from: ViewsExtensions.kt */
    public static final class a extends af2 implements rm1<qv4> {
        public static final a r = new a();

        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public /* bridge */ /* synthetic */ qv4 invoke() {
            return qv4.a;
        }
    }

    public static final void a(RecyclerView recyclerView) {
        recyclerView.setAdapter(new androidx.recyclerview.widget.g(recyclerView.getAdapter(), new w93()));
    }

    public static final void b(View... viewArr) {
        if (Build.VERSION.SDK_INT >= 27) {
            int i = 0;
            int length = viewArr.length;
            while (i < length) {
                View view = viewArr[i];
                i++;
                view.setImportantForAutofill(8);
            }
        }
    }

    public static final Drawable[] c(TextView textView) {
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        j32.d(compoundDrawablesRelative, "getCompoundDrawablesRelative(this)");
        return compoundDrawablesRelative;
    }

    public static final Drawable d(TextView textView) {
        j32.e(textView, "<this>");
        return c(textView)[1];
    }

    public static final com.google.android.material.bottomsheet.a e(com.google.android.material.bottomsheet.a aVar, View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.height = aVar.getContext().getResources().getDisplayMetrics().heightPixels - kf5.e(24);
        }
        view.setLayoutParams(layoutParams2);
        Object parent = view.getParent();
        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior.g((View) parent).l(aVar.getContext().getResources().getDisplayMetrics().heightPixels);
        return aVar;
    }

    public static final void f(View view, float f, float f2, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleX", f, f2), ObjectAnimator.ofFloat(view, "scaleY", f, f2));
        animatorSet.setDuration((long) f3);
        animatorSet.start();
    }

    public static final bn2 g(bn2 bn2Var, rm1<qv4> rm1Var) {
        j32.e(bn2Var, "<this>");
        j32.e(rm1Var, "onClick");
        bn2Var.l(R.string.cancel_txt, new r45(rm1Var, 0));
        return bn2Var;
    }

    public static /* synthetic */ bn2 h(bn2 bn2Var, rm1 rm1Var, int i) {
        g(bn2Var, (i & 1) != 0 ? a.r : null);
        return bn2Var;
    }

    public static void i(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, int i) {
        Drawable drawable5 = (i & 1) != 0 ? c(textView)[0] : null;
        if ((i & 2) != 0) {
            drawable2 = d(textView);
        }
        if ((i & 4) != 0) {
            drawable3 = c(textView)[2];
        }
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable3, (i & 8) != 0 ? c(textView)[3] : null);
    }

    public static final void j(View view) {
        j32.e(view, "<this>");
        view.setVisibility(8);
    }

    public static final bn2 k(bn2 bn2Var, rm1<qv4> rm1Var) {
        bn2Var.n(R.string.txt_ok, new r45(rm1Var, 1));
        return bn2Var;
    }

    public static final void l(View view) {
        j32.e(view, "<this>");
        view.setVisibility(0);
    }
}
