package com.shabakaty.downloader;

import android.content.Context;
import android.text.TextUtils;
import com.cinemana.pro.R;
import com.google.android.material.snackbar.Snackbar;
import java.util.Objects;

/* JADX INFO: compiled from: AppUpdater.java */
/* JADX INFO: loaded from: classes.dex */
public class vb {
    public Context a;
    public ch2 b;
    public String f;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public androidx.appcompat.app.b o;
    public Snackbar p;
    public int r = 0;
    public int c = 1;
    public int d = 1;
    public int e = 1;
    public Integer g = 1;
    public Boolean h = Boolean.FALSE;
    public int n = R.drawable.ic_stat_name;
    public Boolean q = Boolean.TRUE;

    public vb(Context context) {
        this.a = context;
        this.b = new ch2(context);
        this.i = context.getResources().getString(R.string.appupdater_update_available);
        this.m = context.getResources().getString(R.string.appupdater_update_not_available);
        this.k = context.getResources().getString(R.string.appupdater_btn_update);
        this.j = context.getResources().getString(R.string.appupdater_btn_dismiss);
        this.l = context.getResources().getString(R.string.appupdater_btn_disable);
        lo0 lo0Var = new lo0();
        u80 u80Var = u80.f;
        u80Var.a = 20000;
        u80Var.b = 20000;
        u80Var.c = "PRDownloader";
        u80Var.d = lo0Var;
        u80Var.e = new zl2(3);
        qy0.a();
    }

    public static String a(vb vbVar, Context context, rw4 rw4Var, int i) {
        Objects.requireNonNull(vbVar);
        int iK = su.k(i);
        if (iK != 0) {
            if (iK == 1) {
                return String.format(context.getResources().getString(R.string.appupdater_update_available_description_snackbar), rw4Var.a);
            }
            if (iK != 2) {
                return null;
            }
            return String.format(context.getResources().getString(R.string.appupdater_update_available_description_notification), rw4Var.a, jz4.a(context));
        }
        String str = rw4Var.c;
        if (str == null || TextUtils.isEmpty(str)) {
            return String.format(context.getResources().getString(R.string.appupdater_update_available_description_dialog), rw4Var.a, jz4.a(context));
        }
        return TextUtils.isEmpty(null) ? rw4Var.c : String.format(context.getResources().getString(R.string.appupdater_update_available_description_dialog_before_release_notes), rw4Var.a, rw4Var.c);
    }

    public static String b(vb vbVar, Context context) {
        Objects.requireNonNull(vbVar);
        return String.format(context.getResources().getString(R.string.appupdater_update_not_available_description), jz4.a(context));
    }
}
