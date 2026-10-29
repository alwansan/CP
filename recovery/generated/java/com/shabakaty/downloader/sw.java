package com.shabakaty.downloader;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import androidx.mediarouter.app.MediaRouteActionProvider;
import androidx.mediarouter.app.MediaRouteButton;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class sw {
    public static final List<WeakReference<MenuItem>> a;
    public static final List<WeakReference<MediaRouteButton>> b;

    static {
        com.google.android.gms.common.internal.a.g("CastButtonFactory", "The log tag cannot be null or empty.");
        a = new ArrayList();
        b = new ArrayList();
    }

    public static void a(Context context, MenuItem menuItem) {
        q2 q2VarB;
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (menuItem instanceof xh4) {
            q2VarB = ((xh4) menuItem).b();
        } else {
            Log.w("MenuItemCompat", "getActionProvider: item does not implement SupportMenuItem; returning null");
            q2VarB = null;
        }
        MediaRouteActionProvider mediaRouteActionProvider = (MediaRouteActionProvider) q2VarB;
        if (mediaRouteActionProvider == null) {
            throw new IllegalArgumentException();
        }
        tw twVarE = tw.e(context);
        if (twVarE != null) {
            androidx.mediarouter.media.f fVarB = twVarE.b();
            if (fVarB == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            if (mediaRouteActionProvider.e.equals(fVarB)) {
                return;
            }
            if (!mediaRouteActionProvider.e.c()) {
                mediaRouteActionProvider.c.i(mediaRouteActionProvider.d);
            }
            if (!fVarB.c()) {
                mediaRouteActionProvider.c.a(fVarB, mediaRouteActionProvider.d, 0);
            }
            mediaRouteActionProvider.e = fVarB;
            mediaRouteActionProvider.i();
            MediaRouteButton mediaRouteButton = mediaRouteActionProvider.g;
            if (mediaRouteButton != null) {
                mediaRouteButton.setRouteSelector(fVarB);
            }
        }
    }
}
