package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentContainerView;
import com.cinemana.pro.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.ui.home_activity.CastButton;

/* JADX INFO: compiled from: ActivityHomeBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class z2 extends y2 implements i63.a {
    public static final SparseIntArray W;
    public final View.OnClickListener U;
    public long V;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        W = sparseIntArray;
        sparseIntArray.put(R.id.service_down_banner, 3);
        sparseIntArray.put(R.id.service_down_text, 4);
        sparseIntArray.put(R.id.fragment_container, 5);
        sparseIntArray.put(R.id.touch_detector_view, 6);
        sparseIntArray.put(R.id.home_bottom_nav, 7);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public z2(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 8, null, W);
        super(gl0Var, view, 0, (CastButton) objArrS[2], (FragmentContainerView) objArrS[5], (BottomNavigationView) objArrS[7], (CardView) objArrS[3], (MaterialButton) objArrS[1], (TextView) objArrS[4], (View) objArrS[6]);
        this.V = -1L;
        this.M.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.Q.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.U = new i63(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 != i) {
            return false;
        }
        this.T = (zu1) obj;
        synchronized (this) {
            this.V |= 1;
        }
        f(38);
        x();
        return true;
    }

    @Override // com.shabakaty.downloader.i63.a
    public final void b(int i, View view) {
        zu1 zu1Var = this.T;
        if (zu1Var != null) {
            ((eu1) zu1Var.f()).A1();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.V;
            this.V = 0L;
        }
        if ((j & 2) != 0) {
            this.M.setFragmentContainer(this.N);
            this.M.setTouchDetector(this.S);
            this.Q.setOnClickListener(this.U);
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
            this.V = 2L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
