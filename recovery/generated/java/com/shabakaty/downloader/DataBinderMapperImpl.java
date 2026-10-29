package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DataBinderMapperImpl extends fl0 {
    public static final SparseIntArray a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(1);
        a = sparseIntArray;
        sparseIntArray.put(R.layout.download_button_layout, 1);
    }

    @Override // com.shabakaty.downloader.fl0
    public List<fl0> a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // com.shabakaty.downloader.fl0
    public ViewDataBinding b(gl0 gl0Var, View view, int i) {
        int i2 = a.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        if (i2 != 1) {
            return null;
        }
        if ("layout/download_button_layout_0".equals(tag)) {
            return new yv0(gl0Var, new View[]{view});
        }
        throw new IllegalArgumentException(c50.a("The tag for download_button_layout is invalid. Received: ", tag));
    }

    @Override // com.shabakaty.downloader.fl0
    public ViewDataBinding c(gl0 gl0Var, View[] viewArr, int i) {
        int i2;
        if (viewArr != null && viewArr.length != 0 && (i2 = a.get(i)) > 0) {
            Object tag = viewArr[0].getTag();
            if (tag == null) {
                throw new RuntimeException("view must have a tag");
            }
            if (i2 == 1) {
                if ("layout/download_button_layout_0".equals(tag)) {
                    return new yv0(gl0Var, viewArr);
                }
                throw new IllegalArgumentException(c50.a("The tag for download_button_layout is invalid. Received: ", tag));
            }
        }
        return null;
    }
}
