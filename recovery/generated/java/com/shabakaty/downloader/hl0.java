package com.shabakaty.downloader;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: compiled from: DataBindingUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class hl0 {
    public static fl0 a = new androidx.databinding.DataBinderMapperImpl();

    public static <T extends ViewDataBinding> T a(gl0 gl0Var, View view, int i) {
        return (T) a.b(gl0Var, view, i);
    }

    public static <T extends ViewDataBinding> T b(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        return (T) c(layoutInflater, i, viewGroup, z, null);
    }

    public static <T extends ViewDataBinding> T c(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, gl0 gl0Var) {
        boolean z2 = viewGroup != null && z;
        int childCount = z2 ? viewGroup.getChildCount() : 0;
        View viewInflate = layoutInflater.inflate(i, viewGroup, z);
        if (!z2) {
            return (T) a(gl0Var, viewInflate, i);
        }
        int childCount2 = viewGroup.getChildCount();
        int i2 = childCount2 - childCount;
        if (i2 == 1) {
            return (T) a(gl0Var, viewGroup.getChildAt(childCount2 - 1), i);
        }
        View[] viewArr = new View[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3] = viewGroup.getChildAt(i3 + childCount);
        }
        return (T) a.c(gl0Var, viewArr, i);
    }
}
