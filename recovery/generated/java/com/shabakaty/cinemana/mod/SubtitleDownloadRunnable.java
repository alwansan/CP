package com.shabakaty.cinemana.mod;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class SubtitleDownloadRunnable implements Runnable {
    private final Context context;
    private final String subUrl;
    private final String title;
    private final String videoUrl;

    public SubtitleDownloadRunnable(Context context, String str, String str2, String str3) {
        this.context = context;
        this.subUrl = str;
        this.videoUrl = str2;
        this.title = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        String absolutePath;
        try {
            InputStream inputStreamOpenStream = new URL(this.subUrl).openStream();
            File file = new File(this.context.getCacheDir(), "xplayer_sub.srt");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
            while (true) {
                int i = inputStreamOpenStream.read(bArr);
                if (i == -1) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i);
                }
            }
            inputStreamOpenStream.close();
            fileOutputStream.close();
            absolutePath = file.getAbsolutePath();
        } catch (Throwable th) {
            absolutePath = null;
        }
        XPlayerHelper.launchXPlayerIntent(this.context, this.videoUrl, this.title, absolutePath);
    }
}
