package com.shabakaty.cinemana.ca1;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class Drawer105 {
    public static boolean visible(View view) {
        View viewFind = Native98.find(view, "inner_episodes_constraint");
        if (viewFind == null || !viewFind.isShown()) {
            return false;
        }
        return viewFind.getGlobalVisibleRect(new Rect());
    }
}
