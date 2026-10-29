package com.shabakaty.downloader;

import android.app.Notification;
import android.content.res.Resources;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import com.cinemana.pro.R;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: NotificationCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class n03 extends r03 {
    @Override // com.shabakaty.downloader.r03
    public void b(h03 h03Var) {
        if (Build.VERSION.SDK_INT >= 24) {
            ((s03) h03Var).b.setStyle(new Notification.DecoratedCustomViewStyle());
        }
    }

    @Override // com.shabakaty.downloader.r03
    public String g() {
        return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
    }

    @Override // com.shabakaty.downloader.r03
    public RemoteViews h(h03 h03Var) {
        if (Build.VERSION.SDK_INT >= 24) {
            return null;
        }
        Objects.requireNonNull(this.a);
        RemoteViews remoteViews = this.a.w;
        if (remoteViews == null) {
            return null;
        }
        return k(remoteViews, true);
    }

    @Override // com.shabakaty.downloader.r03
    public RemoteViews i(h03 h03Var) {
        RemoteViews remoteViews;
        if (Build.VERSION.SDK_INT < 24 && (remoteViews = this.a.w) != null) {
            return k(remoteViews, false);
        }
        return null;
    }

    @Override // com.shabakaty.downloader.r03
    public RemoteViews j(h03 h03Var) {
        if (Build.VERSION.SDK_INT >= 24) {
            return null;
        }
        Objects.requireNonNull(this.a);
        RemoteViews remoteViews = this.a.w;
        return null;
    }

    public final RemoteViews k(RemoteViews remoteViews, boolean z) {
        ArrayList arrayList;
        int iMin;
        boolean z2 = true;
        RemoteViews remoteViewsC = c(true, R.layout.notification_template_custom_big, false);
        remoteViewsC.removeAllViews(R.id.actions);
        ArrayList<j03> arrayList2 = this.a.b;
        if (arrayList2 == null) {
            arrayList = null;
        } else {
            ArrayList arrayList3 = new ArrayList();
            for (j03 j03Var : arrayList2) {
                if (!j03Var.h) {
                    arrayList3.add(j03Var);
                }
            }
            arrayList = arrayList3;
        }
        if (!z || arrayList == null || (iMin = Math.min(arrayList.size(), 3)) <= 0) {
            z2 = false;
        } else {
            for (int i = 0; i < iMin; i++) {
                j03 j03Var2 = (j03) arrayList.get(i);
                boolean z3 = j03Var2.k == null;
                RemoteViews remoteViews2 = new RemoteViews(this.a.a.getPackageName(), z3 ? R.layout.notification_action_tombstone : R.layout.notification_action);
                IconCompat iconCompatA = j03Var2.a();
                if (iconCompatA != null) {
                    remoteViews2.setImageViewBitmap(R.id.action_image, e(iconCompatA, this.a.a.getResources().getColor(R.color.notification_action_color_filter), 0));
                }
                remoteViews2.setTextViewText(R.id.action_text, j03Var2.j);
                if (!z3) {
                    remoteViews2.setOnClickPendingIntent(R.id.action_container, j03Var2.k);
                }
                remoteViews2.setContentDescription(R.id.action_container, j03Var2.j);
                remoteViewsC.addView(R.id.actions, remoteViews2);
            }
        }
        int i2 = z2 ? 0 : 8;
        remoteViewsC.setViewVisibility(R.id.actions, i2);
        remoteViewsC.setViewVisibility(R.id.action_divider, i2);
        remoteViewsC.setViewVisibility(R.id.title, 8);
        remoteViewsC.setViewVisibility(R.id.text2, 8);
        remoteViewsC.setViewVisibility(R.id.text, 8);
        remoteViewsC.removeAllViews(R.id.notification_main_column);
        remoteViewsC.addView(R.id.notification_main_column, remoteViews.clone());
        remoteViewsC.setViewVisibility(R.id.notification_main_column, 0);
        Resources resources = this.a.a.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_top_pad);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
        float f = resources.getConfiguration().fontScale;
        if (f < 1.0f) {
            f = 1.0f;
        } else if (f > 1.3f) {
            f = 1.3f;
        }
        float f2 = (f - 1.0f) / 0.29999995f;
        remoteViewsC.setViewPadding(R.id.notification_main_column_container, 0, Math.round((f2 * dimensionPixelSize2) + ((1.0f - f2) * dimensionPixelSize)), 0, 0);
        return remoteViewsC;
    }
}
