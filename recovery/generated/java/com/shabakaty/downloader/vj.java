package com.shabakaty.downloader;

import android.content.Context;
import android.widget.Toast;
import androidx.fragment.app.Fragment;

/* JADX INFO: compiled from: BaseViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public interface vj {

    /* JADX INFO: compiled from: BaseViewModel.kt */
    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static void a(vj vjVar, int i) {
            Context context;
            boolean z = vjVar instanceof r9;
            if (z) {
                r9 r9Var = z ? (r9) vjVar : null;
                if (r9Var == null) {
                    return;
                }
                Toast.makeText(r9Var, i, 1).show();
                return;
            }
            boolean z2 = vjVar instanceof Fragment;
            if (z2) {
                Fragment fragment = z2 ? (Fragment) vjVar : null;
                if (fragment == null || (context = fragment.getContext()) == null) {
                    return;
                }
                Toast.makeText(context, i, 1).show();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void b(vj vjVar, String str) {
            Context context;
            boolean z = vjVar instanceof r9;
            if (z) {
                r9 r9Var = z ? (r9) vjVar : null;
                if (r9Var == null) {
                    return;
                }
                wt2.m(r9Var, str);
                return;
            }
            boolean z2 = vjVar instanceof Fragment;
            if (z2) {
                Fragment fragment = z2 ? (Fragment) vjVar : null;
                if (fragment == null || (context = fragment.getContext()) == null) {
                    return;
                }
                Toast.makeText(context, str, 1).show();
            }
        }
    }

    void o();

    void q(int i);

    void z0(String str);
}
