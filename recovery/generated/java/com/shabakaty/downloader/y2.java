package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentContainerView;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.ui.home_activity.CastButton;

/* JADX INFO: compiled from: ActivityHomeBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class y2 extends ViewDataBinding {
    public final CastButton M;
    public final FragmentContainerView N;
    public final BottomNavigationView O;
    public final CardView P;
    public final MaterialButton Q;
    public final TextView R;
    public final View S;
    public zu1 T;

    public y2(Object obj, View view, int i, CastButton castButton, FragmentContainerView fragmentContainerView, BottomNavigationView bottomNavigationView, CardView cardView, MaterialButton materialButton, TextView textView, View view2) {
        super(obj, view, i);
        this.M = castButton;
        this.N = fragmentContainerView;
        this.O = bottomNavigationView;
        this.P = cardView;
        this.Q = materialButton;
        this.R = textView;
        this.S = view2;
    }
}
