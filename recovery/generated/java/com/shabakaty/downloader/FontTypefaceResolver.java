package com.shabakaty.downloader;

import android.content.res.AssetManager;
import android.graphics.Typeface;

/* JADX INFO: compiled from: FontTypefaceResolver.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FontTypefaceResolver {
    private FontTypefaceResolver() {
    }

    public static final Typeface a(AssetManager assetManager, String str) {
        return str.startsWith("/") ? Typeface.createFromFile(str) : Typeface.createFromAsset(assetManager, str);
    }
}
