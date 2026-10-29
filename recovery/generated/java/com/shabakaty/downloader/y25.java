package com.shabakaty.downloader;

import android.content.Context;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;

/* JADX INFO: compiled from: VideoUtils.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y25 {
    public final Context a;

    public y25(Context context) {
        j32.e(context, "context");
        this.a = context;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String a(VideoModel videoModel) {
        j32.e(videoModel, "videoModel");
        String string = this.a.getString(R.string.txt_episode);
        j32.d(string, "context.getString(R.string.txt_episode)");
        String string2 = this.a.getString(R.string.txt_season_last_episode);
        j32.d(string2, "context.getString(R.stri….txt_season_last_episode)");
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append("  ");
        int iB = vd5.B(videoModel.episodeNummer);
        String str = videoModel.episodeFlag;
        switch (str.hashCode()) {
            case 1477632:
                if (str.equals("0000")) {
                    sb.append(iB);
                }
                break;
            case 1477633:
                if (str.equals("0001")) {
                    int i = iB - 1;
                    videoModel.j(String.valueOf(i));
                    sb.append(i);
                }
                break;
            case 1477663:
                if (str.equals("0010")) {
                    sb.append(iB);
                    sb.append(" & ");
                    sb.append(iB + 1);
                }
                break;
            case 1477694:
                if (str.equals("0020")) {
                    sb.append(iB);
                    sb.append(" & ");
                    int i2 = iB + 1;
                    sb.append(i2);
                    sb.append(" & ");
                    sb.append(i2);
                }
                break;
            case 1507423:
                if (str.equals("1000")) {
                    sb.append(iB);
                    sb.append(" 🔚 ");
                    sb.append(string2);
                }
                break;
            case 1507424:
                if (str.equals("1001")) {
                    int i3 = iB - 1;
                    videoModel.j(String.valueOf(i3));
                    sb.append(i3);
                    sb.append(" 🔚 ");
                    sb.append(string2);
                }
                break;
        }
        String string3 = sb.toString();
        j32.d(string3, "finalString.toString()");
        return string3;
    }
}
