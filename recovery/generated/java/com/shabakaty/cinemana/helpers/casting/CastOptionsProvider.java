package com.shabakaty.cinemana.helpers.casting;

import android.content.Context;
import com.shabakaty.downloader.a13;
import com.shabakaty.downloader.a24;
import com.shabakaty.downloader.if2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.l83;
import com.shabakaty.downloader.uw;
import com.shabakaty.downloader.vw;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: CastOptionsProvider.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/cinemana/helpers/casting/CastOptionsProvider;", "Lcom/shabakaty/downloader/l83;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class CastOptionsProvider implements l83 {
    @Override // com.shabakaty.downloader.l83
    public List<a24> a(Context context) {
        j32.e(context, "context");
        return null;
    }

    @Override // com.shabakaty.downloader.l83
    public vw b(Context context) {
        j32.e(context, "context");
        return new vw("EB81536B", new ArrayList(), false, new if2(), true, new uw("com.google.android.gms.cast.framework.media.MediaIntentReceiver", ExpandedControlsActivity.class.getName(), null, new a13(a13.X, a13.Y, 10000L, null, a13.a.a("smallIconDrawableResId"), a13.a.a("stopLiveStreamDrawableResId"), a13.a.a("pauseDrawableResId"), a13.a.a("playDrawableResId"), a13.a.a("skipNextDrawableResId"), a13.a.a("skipPrevDrawableResId"), a13.a.a("forwardDrawableResId"), a13.a.a("forward10DrawableResId"), a13.a.a("forward30DrawableResId"), a13.a.a("rewindDrawableResId"), a13.a.a("rewind10DrawableResId"), a13.a.a("rewind30DrawableResId"), a13.a.a("disconnectDrawableResId"), a13.a.a("notificationImageSizeDimenResId"), a13.a.a("castingToDeviceStringResId"), a13.a.a("stopLiveStreamStringResId"), a13.a.a("pauseStringResId"), a13.a.a("playStringResId"), a13.a.a("skipNextStringResId"), a13.a.a("skipPrevStringResId"), a13.a.a("forwardStringResId"), a13.a.a("forward10StringResId"), a13.a.a("forward30StringResId"), a13.a.a("rewindStringResId"), a13.a.a("rewind10StringResId"), a13.a.a("rewind30StringResId"), a13.a.a("disconnectStringResId"), null), false, true), true, 0.05000000074505806d, false);
    }
}
