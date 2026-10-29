package com.shabakaty.cinemana.helpers.casting;

import android.os.Parcelable;
import android.view.Menu;
import android.view.MenuItem;
import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.SkippingDurations;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.helpers.casting.ExpandedControlsActivity;
import com.shabakaty.downloader.br3;
import com.shabakaty.downloader.i50;
import com.shabakaty.downloader.i81;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.n24;
import com.shabakaty.downloader.sw;
import com.shabakaty.downloader.tw;
import com.shabakaty.downloader.vd5;
import com.shabakaty.downloader.w21;
import com.shabakaty.downloader.xw;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: compiled from: ExpandedControlsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;", "Lcom/shabakaty/downloader/i81;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class ExpandedControlsActivity extends i81 {
    public static final /* synthetic */ int o0 = 0;
    public SkippingDurations g0;
    public int h0;
    public long i0;
    public boolean j0;
    public long[] k0 = new long[0];
    public long[] l0 = new long[0];
    public String m0 = BuildConfig.FLAVOR;
    public n24 n0;

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        j32.e(menu, "menu");
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.expanded_controller, menu);
        List<WeakReference<MenuItem>> list = sw.a;
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        MenuItem menuItemFindItem = menu.findItem(R.id.media_route_menu_item);
        if (menuItemFindItem == null) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu doesn't contain a menu item whose ID is %d.", Integer.valueOf(R.id.media_route_menu_item)));
        }
        try {
            sw.a(this, menuItemFindItem);
            ((ArrayList) sw.a).add(new WeakReference(menuItemFindItem));
            return true;
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu item with ID %d doesn't have a MediaRouteActionProvider.", Integer.valueOf(R.id.media_route_menu_item)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.shabakaty.downloader.w21] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.shabakaty.downloader.w21] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.app.Activity, android.content.Context, com.shabakaty.cinemana.helpers.casting.ExpandedControlsActivity, com.shabakaty.downloader.r9] */
    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onStart() {
        final br3 br3VarK;
        ?? arrayList;
        List<String> list;
        List<String> list2;
        List<String> list3;
        super.onStart();
        vd5.p(this);
        n24 n24Var = this.n0;
        ?? arrayList2 = 0;
        arrayList2 = 0;
        if (n24Var == null) {
            j32.l("settings");
            throw null;
        }
        this.m0 = n24Var.f() ? "yes" : "no";
        Parcelable parcelableExtra = getIntent().getParcelableExtra("parental");
        this.g0 = parcelableExtra instanceof SkippingDurations ? (SkippingDurations) parcelableExtra : null;
        Parcelable parcelableExtra2 = getIntent().getParcelableExtra("VideoModelArg");
        if (parcelableExtra2 instanceof VideoModel) {
        }
        getIntent().getStringExtra("trans");
        if (this.g0 == null) {
            this.g0 = new SkippingDurations(null, null, 3);
        }
        n24 n24Var2 = this.n0;
        if (n24Var2 == null) {
            j32.l("settings");
            throw null;
        }
        boolean zF = n24Var2.f();
        SkippingDurations skippingDurations = this.g0;
        if (((skippingDurations == null || (list3 = skippingDurations.start) == null) ? 0 : list3.size()) > 0 && zF) {
            SkippingDurations skippingDurations2 = this.g0;
            if (skippingDurations2 == null || (list2 = skippingDurations2.start) == null) {
                arrayList = 0;
            } else {
                arrayList = new ArrayList(i50.O(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(Double.valueOf(Double.parseDouble((String) it.next())));
                }
            }
            if (arrayList == 0) {
                arrayList = w21.r;
            }
            this.k0 = q0(arrayList);
            SkippingDurations skippingDurations3 = this.g0;
            if (skippingDurations3 != null && (list = skippingDurations3.end) != null) {
                arrayList2 = new ArrayList(i50.O(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(Double.valueOf(Double.parseDouble((String) it2.next())));
                }
            }
            if (arrayList2 == 0) {
                arrayList2 = w21.r;
            }
            this.l0 = q0(arrayList2);
        }
        xw xwVarC = tw.d(this).c().c();
        long[] jArr = {1};
        if (xwVarC == null || (br3VarK = xwVarC.k()) == null) {
            return;
        }
        br3VarK.u(jArr);
        if ((true ^ (this.k0.length == 0)) && j32.a(this.m0, "yes")) {
            br3VarK.a(new br3.d() { // from class: com.shabakaty.downloader.j81
                @Override // com.shabakaty.downloader.br3.d
                public final void a(long j, long j2) {
                    ExpandedControlsActivity expandedControlsActivity = this.a;
                    br3 br3Var = br3VarK;
                    int i = ExpandedControlsActivity.o0;
                    j32.e(expandedControlsActivity, "this$0");
                    if (j - expandedControlsActivity.i0 > 1000) {
                        int i2 = 0;
                        if (expandedControlsActivity.j0) {
                            expandedControlsActivity.j0 = false;
                        } else {
                            long[] jArr2 = expandedControlsActivity.k0;
                            long[] jArr3 = expandedControlsActivity.l0;
                            int length = jArr2.length - 1;
                            if (length >= 0) {
                                int i3 = 0;
                                while (true) {
                                    int i4 = i3 + 1;
                                    if (j >= jArr2[i3] && j <= jArr3[i3]) {
                                        i2 = i3;
                                        break;
                                    } else if (i4 > length) {
                                        break;
                                    } else {
                                        i3 = i4;
                                    }
                                }
                            }
                            expandedControlsActivity.h0 = i2;
                        }
                    }
                    long[] jArr4 = expandedControlsActivity.k0;
                    int i5 = expandedControlsActivity.h0;
                    if (j >= jArr4[i5]) {
                        long[] jArr5 = expandedControlsActivity.l0;
                        if (j < jArr5[i5]) {
                            br3Var.t(new pq2(jArr5[i5], 0, false, null, null));
                            int i6 = expandedControlsActivity.h0;
                            if (i6 < expandedControlsActivity.k0.length - 1) {
                                expandedControlsActivity.h0 = i6 + 1;
                            }
                            expandedControlsActivity.j0 = true;
                        }
                    }
                    expandedControlsActivity.i0 = j;
                }
            }, 0L);
        }
    }

    public final long[] q0(List<Double> list) {
        long[] jArr = new long[list.size()];
        int size = list.size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                jArr[i] = (long) (list.get(i).doubleValue() * 1000);
                if (i2 > size) {
                    break;
                }
                i = i2;
            }
        }
        return jArr;
    }
}
