package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;

/* JADX INFO: compiled from: ItemSingleImageLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class l52 extends k52 {
    public long O;

    public l52(gl0 gl0Var, View view) {
        super(gl0Var, view, 0, (SimpleDraweeView) ViewDataBinding.s(gl0Var, view, 1, null, null)[0]);
        this.O = -1L;
        this.M.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 != i) {
            return false;
        }
        this.N = (CinemanaDownloadItem) obj;
        synchronized (this) {
            this.O |= 1;
        }
        f(11);
        x();
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.O;
            this.O = 0L;
        }
        CinemanaDownloadItem cinemanaDownloadItem = this.N;
        long j2 = j & 3;
        String str = (j2 == 0 || cinemanaDownloadItem == null) ? null : cinemanaDownloadItem.imgThumbObjUrl;
        if (j2 != 0) {
            oy1.c(this.M, str, null, null, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.O != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.O = 2L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
