package com.shabakaty.downloader;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: TaskStackBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public final class jl4 implements Iterable<Intent> {
    public final ArrayList<Intent> r = new ArrayList<>();
    public final Context s;

    /* JADX INFO: compiled from: TaskStackBuilder.java */
    public interface a {
        Intent getSupportParentActivityIntent();
    }

    public jl4(Context context) {
        this.s = context;
    }

    public jl4 d(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.s.getPackageManager());
        }
        if (component != null) {
            h(component);
        }
        this.r.add(intent);
        return this;
    }

    public jl4 h(ComponentName componentName) {
        int size = this.r.size();
        try {
            Intent intentB = ex2.b(this.s, componentName);
            while (intentB != null) {
                this.r.add(size, intentB);
                intentB = ex2.b(this.s, intentB.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public PendingIntent i(int i, int i2) {
        if (this.r.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        }
        ArrayList<Intent> arrayList = this.r;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        return PendingIntent.getActivities(this.s, i, intentArr, i2, null);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.r.iterator();
    }

    public void l() {
        if (this.r.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList<Intent> arrayList = this.r;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        Context context = this.s;
        Object obj = ld0.a;
        ld0.a.a(context, intentArr, null);
    }
}
