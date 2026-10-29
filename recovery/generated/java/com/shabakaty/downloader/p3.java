package com.shabakaty.downloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: compiled from: ActivityResultContracts.java */
/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
public class p3 extends o3<String[], Uri> {
    @Override // com.shabakaty.downloader.o3
    public Intent a(Context context, String[] strArr) {
        return new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", strArr).setType("*/*");
    }

    @Override // com.shabakaty.downloader.o3
    public /* bridge */ /* synthetic */ o3.a<Uri> b(Context context, String[] strArr) {
        return null;
    }

    @Override // com.shabakaty.downloader.o3
    public Uri c(int i, Intent intent) {
        if (intent == null || i != -1) {
            return null;
        }
        return intent.getData();
    }
}
