package com.shabakaty.downloader;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import java.util.ArrayList;

/* JADX INFO: compiled from: NotificationCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class m03 {
    public boolean A;
    public Notification B;

    @Deprecated
    public ArrayList<String> C;
    public Context a;
    public CharSequence e;
    public CharSequence f;
    public PendingIntent g;
    public Bitmap h;
    public int i;
    public int j;
    public r03 l;
    public CharSequence m;
    public int n;
    public int o;
    public boolean p;
    public String q;
    public boolean r;
    public Bundle t;
    public RemoteViews w;
    public String x;
    public long y;
    public ArrayList<j03> b = new ArrayList<>();
    public ArrayList<bc3> c = new ArrayList<>();
    public ArrayList<j03> d = new ArrayList<>();
    public boolean k = true;
    public boolean s = false;
    public int u = 0;
    public int v = 0;
    public int z = 0;

    public m03(Context context, String str) {
        Notification notification = new Notification();
        this.B = notification;
        this.a = context;
        this.x = str;
        notification.when = System.currentTimeMillis();
        this.B.audioStreamType = -1;
        this.j = 0;
        this.C = new ArrayList<>();
        this.A = true;
    }

    public static CharSequence e(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public m03 a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        this.b.add(new j03(i, charSequence, pendingIntent));
        return this;
    }

    public m03 b(j03 j03Var) {
        if (j03Var != null) {
            this.b.add(j03Var);
        }
        return this;
    }

    public Notification c() {
        Notification notificationBuild;
        Bundle bundle;
        RemoteViews remoteViewsJ;
        RemoteViews remoteViewsH;
        s03 s03Var = new s03(this);
        r03 r03Var = s03Var.c.l;
        if (r03Var != null) {
            r03Var.b(s03Var);
        }
        RemoteViews remoteViewsI = r03Var != null ? r03Var.i(s03Var) : null;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            notificationBuild = s03Var.b.build();
        } else if (i >= 24) {
            notificationBuild = s03Var.b.build();
            if (s03Var.g != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 && s03Var.g == 2) {
                    s03Var.c(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 && s03Var.g == 1) {
                    s03Var.c(notificationBuild);
                }
            }
        } else {
            s03Var.b.setExtras(s03Var.f);
            notificationBuild = s03Var.b.build();
            RemoteViews remoteViews = s03Var.d;
            if (remoteViews != null) {
                notificationBuild.contentView = remoteViews;
            }
            if (s03Var.g != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 && s03Var.g == 2) {
                    s03Var.c(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 && s03Var.g == 1) {
                    s03Var.c(notificationBuild);
                }
            }
        }
        if (remoteViewsI != null) {
            notificationBuild.contentView = remoteViewsI;
        } else {
            RemoteViews remoteViews2 = s03Var.c.w;
            if (remoteViews2 != null) {
                notificationBuild.contentView = remoteViews2;
            }
        }
        if (r03Var != null && (remoteViewsH = r03Var.h(s03Var)) != null) {
            notificationBuild.bigContentView = remoteViewsH;
        }
        if (r03Var != null && (remoteViewsJ = s03Var.c.l.j(s03Var)) != null) {
            notificationBuild.headsUpContentView = remoteViewsJ;
        }
        if (r03Var != null && (bundle = notificationBuild.extras) != null) {
            r03Var.a(bundle);
        }
        return notificationBuild;
    }

    public long d() {
        if (this.k) {
            return this.B.when;
        }
        return 0L;
    }

    public m03 f(CharSequence charSequence) {
        this.f = e(charSequence);
        return this;
    }

    public m03 g(CharSequence charSequence) {
        this.e = e(charSequence);
        return this;
    }

    public m03 h(int i) {
        Notification notification = this.B;
        notification.defaults = i;
        if ((i & 4) != 0) {
            notification.flags |= 1;
        }
        return this;
    }

    public final void i(int i, boolean z) {
        if (z) {
            Notification notification = this.B;
            notification.flags = i | notification.flags;
        } else {
            Notification notification2 = this.B;
            notification2.flags = (~i) & notification2.flags;
        }
    }

    public m03 j(Bitmap bitmap) {
        if (bitmap != null && Build.VERSION.SDK_INT < 27) {
            Resources resources = this.a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
                bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
            }
        }
        this.h = bitmap;
        return this;
    }

    public m03 k(int i, int i2, int i3) {
        Notification notification = this.B;
        notification.ledARGB = i;
        notification.ledOnMS = i2;
        notification.ledOffMS = i3;
        notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
        return this;
    }

    public m03 l(Uri uri) {
        Notification notification = this.B;
        notification.sound = uri;
        notification.audioStreamType = -1;
        notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
        return this;
    }

    public m03 m(r03 r03Var) {
        if (this.l != r03Var) {
            this.l = r03Var;
            if (r03Var != null && r03Var.a != this) {
                r03Var.a = this;
                m(r03Var);
            }
        }
        return this;
    }

    public m03 n(CharSequence charSequence) {
        this.B.tickerText = e(charSequence);
        return this;
    }
}
