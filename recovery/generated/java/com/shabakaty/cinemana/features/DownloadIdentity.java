package com.shabakaty.cinemana.features;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.Restart108;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadIdentity {
    private DownloadIdentity() {
    }

    public static String contentToken(CinemanaDownloadItem cinemanaDownloadItem) {
        String strIdentityToken = Restart108.identityToken(cinemanaDownloadItem);
        if (!strIdentityToken.isEmpty()) {
            return strIdentityToken;
        }
        if (cinemanaDownloadItem == null) {
            return BuildConfig.FLAVOR;
        }
        return hashCanonical("cinemana-content-v1|root=" + cinemanaDownloadItem.rootEpisode + "|title=" + cinemanaDownloadItem.title + "|item=" + cinemanaDownloadItem.id + "|kind=" + cinemanaDownloadItem.kind + "|season=" + cinemanaDownloadItem.season + "|episode=" + cinemanaDownloadItem.episodeNumber + "|quality=" + cinemanaDownloadItem.qualityName);
    }

    public static String contentToken(VideoModel videoModel) {
        String str;
        if (videoModel == null) {
            return BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("cinemana-content-v1|root=");
        sb.append(videoModel.rootSeries);
        sb.append("|title=");
        sb.append(videoModel.c());
        sb.append("|item=");
        sb.append(videoModel.nb);
        sb.append("|kind=");
        sb.append(videoModel.kind);
        sb.append("|season=");
        sb.append(videoModel.season);
        sb.append("|episode=");
        sb.append(videoModel.episodeNummer);
        sb.append("|quality=");
        Quality quality = videoModel.wantedQuality;
        if (quality == null || (str = quality.resolution) == null) {
            str = BuildConfig.FLAVOR;
        }
        sb.append(str);
        return hashCanonical(sb.toString());
    }

    public static String decorateBaseName(VideoModel videoModel, String str) {
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        if (str.contains(" [cnm-")) {
            return str;
        }
        String strContentToken = contentToken(videoModel);
        if (strContentToken.length() == 0) {
            return str;
        }
        return str + " [cnm-" + strContentToken + "]";
    }

    private static String hashCanonical(String str) {
        try {
            String string = new BigInteger(1, MessageDigest.getInstance("SHA-256").digest(str.getBytes(Charset.forName("UTF-8")))).toString(36);
            return string.length() >= 20 ? string.substring(0, 20) : string;
        } catch (Throwable unused) {
            return Integer.toHexString(str.hashCode());
        }
    }

    public static String stripMarker(String str) {
        int iIndexOf;
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        int iIndexOf2 = str.indexOf(" [cnm-");
        if (iIndexOf2 < 0 || (iIndexOf = str.indexOf(93, iIndexOf2)) < 0) {
            return str;
        }
        return (str.substring(0, iIndexOf2) + str.substring(iIndexOf + 1)).trim();
    }
}
