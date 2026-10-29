package com.shabakaty.cinemana.features;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvUiRefresh {
    private static final CopyOnWriteArrayList ADAPTERS = new CopyOnWriteArrayList();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private MkvUiRefresh() {
    }

    static CopyOnWriteArrayList adapters() {
        return ADAPTERS;
    }

    public static void notifyChanged() {
        MAIN.post(new Runnable() { // from class: com.shabakaty.cinemana.features.MkvUiRefresh.1
            @Override // java.lang.Runnable
            public void run() {
                for (WeakReference weakReference : MkvUiRefresh.adapters()) {
                    RecyclerView.e eVar = (RecyclerView.e) weakReference.get();
                    if (eVar != null) {
                        eVar.notifyDataSetChanged();
                    } else {
                        MkvUiRefresh.adapters().remove(weakReference);
                    }
                }
            }
        });
    }

    public static void register(RecyclerView.e eVar) {
        if (eVar != null) {
            for (WeakReference weakReference : ADAPTERS) {
                Object obj = weakReference.get();
                if (obj == eVar) {
                    return;
                }
                if (obj == null) {
                    ADAPTERS.remove(weakReference);
                }
            }
            ADAPTERS.add(new WeakReference(eVar));
        }
    }
}
