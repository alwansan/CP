package com.shabakaty.cinemana.features;

import android.net.Uri;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.connectsdk.service.DLNAService;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.pw0;
import java.io.File;

/* JADX INFO: compiled from: DownloadFilenameHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadFilenameHelper {
    private static final String buildSubtitleName(VideoModel videoModel, Subtitle subtitle) {
        String strBuildVideoName = buildVideoName(videoModel);
        int iLastIndexOf = strBuildVideoName.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return strBuildVideoName;
        }
        String strSubstring = strBuildVideoName.substring(0, iLastIndexOf);
        StringBuilder sb = new StringBuilder();
        sb.append(strSubstring);
        sb.append(".");
        String strNormalizeExtension = normalizeExtension(subtitle.extention);
        if (strNormalizeExtension == null) {
            strNormalizeExtension = DLNAService.DEFAULT_SUBTITLE_TYPE;
        }
        sb.append(strNormalizeExtension);
        return sb.toString();
    }

    private static final String buildVideoName(VideoModel videoModel) {
        StringBuilder sb;
        String str;
        String path;
        int iLastIndexOf;
        int i;
        String strNormalizeExtension;
        String strSanitize = sanitize(videoModel.c());
        String str2 = videoModel.season;
        String str3 = videoModel.episodeNummer;
        if (str2 == null || str3 == null || !ne4.D(str2) || !ne4.D(str3)) {
            sb = new StringBuilder();
            sb.append(strSanitize);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strSanitize);
            sb2.append(" S");
            sb2.append(normalizeNumber(str2));
            sb2.append(" E");
            sb = sb2.append(normalizeNumber(str3));
        }
        String strDecorateBaseName = DownloadIdentity.decorateBaseName(videoModel, sb.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(strDecorateBaseName);
        String str4 = ".mp4";
        Quality quality = videoModel.wantedQuality;
        if (quality != null && (str = quality.url) != null && (path = Uri.parse(str).getPath()) != null && (iLastIndexOf = path.lastIndexOf(46)) >= 0 && (i = iLastIndexOf + 1) < path.length() && (strNormalizeExtension = normalizeExtension(path.substring(i))) != null) {
            str4 = strNormalizeExtension;
        }
        return sb3.append(str4).toString();
    }

    private static final String normalizeExtension(String str) {
        if (str != null && ne4.D(str)) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.startsWith(".")) {
                lowerCase = lowerCase.substring(1);
            }
            int length = lowerCase.length();
            if (length <= 5 && length >= 1) {
                return lowerCase;
            }
        }
        return null;
    }

    private static final String normalizeNumber(String str) {
        if (str == null) {
            return "0";
        }
        if (str.startsWith("S")) {
            str = str.substring(1);
        }
        if (str.startsWith("E")) {
            str = str.substring(1);
        }
        if (str.length() != 1) {
            return str;
        }
        return "0" + str;
    }

    public static final CinemanaDownloadItem renameDownloadItem(CinemanaDownloadItem cinemanaDownloadItem) {
        String str;
        if (cinemanaDownloadItem != null && (str = cinemanaDownloadItem.path) != null) {
            File file = new File(str);
            if (file.exists()) {
                String strSanitize = sanitize(cinemanaDownloadItem.title);
                String str2 = cinemanaDownloadItem.season;
                String str3 = cinemanaDownloadItem.episodeNumber;
                StringBuilder sb = new StringBuilder();
                sb.append(strSanitize);
                if (str2 != null && str3 != null && ne4.D(str2) && ne4.D(str3)) {
                    sb.append(" S");
                    sb.append(normalizeNumber(str2));
                    sb.append(" E");
                    sb.append(normalizeNumber(str3));
                }
                sb.append(".mp4");
                String string = sb.toString();
                File parentFile = file.getParentFile();
                if (parentFile != null && !file.equals(new File(parentFile, string))) {
                    File fileUniqueFileName = uniqueFileName(parentFile, string);
                    if (file.renameTo(fileUniqueFileName)) {
                        cinemanaDownloadItem.path = fileUniqueFileName.getAbsolutePath();
                    }
                }
            }
        }
        return cinemanaDownloadItem;
    }

    public static final String renameSubtitle(pw0 pw0Var, VideoModel videoModel, Subtitle subtitle) {
        String str;
        String str2;
        File parentFile;
        if (pw0Var != null && videoModel != null && subtitle != null && (str2 = pw0Var.x) != null && ne4.D(str2)) {
            String strBuildSubtitleName = buildSubtitleName(videoModel, subtitle);
            File file = new File(str2);
            if (!file.exists() || (parentFile = file.getParentFile()) == null) {
                return str2;
            }
            File fileUniqueFileName = uniqueFileName(parentFile, strBuildSubtitleName);
            if (file.renameTo(fileUniqueFileName)) {
                String absolutePath = fileUniqueFileName.getAbsolutePath();
                pw0Var.x = absolutePath;
                return absolutePath;
            }
        }
        return (pw0Var == null || (str = pw0Var.x) == null) ? BuildConfig.FLAVOR : str;
    }

    public static final String renameVideo(pw0 pw0Var, VideoModel videoModel) {
        String str;
        String str2;
        File parentFile;
        if (pw0Var != null && videoModel != null && (str2 = pw0Var.x) != null && ne4.D(str2)) {
            String strBuildVideoName = buildVideoName(videoModel);
            File file = new File(str2);
            if (!file.exists() || (parentFile = file.getParentFile()) == null) {
                return str2;
            }
            File fileUniqueFileName = uniqueFileName(parentFile, strBuildVideoName);
            if (file.renameTo(fileUniqueFileName)) {
                String absolutePath = fileUniqueFileName.getAbsolutePath();
                pw0Var.x = absolutePath;
                return absolutePath;
            }
        }
        return (pw0Var == null || (str = pw0Var.x) == null) ? BuildConfig.FLAVOR : str;
    }

    private static final String sanitize(String str) {
        return str != null ? str.replace("/", "_").replace("\\", "_").replace(SSDPPacket.LF, "_").replace("\r", "_") : "Cinemana";
    }

    private static final File uniqueFileName(File file, String str) {
        String strSubstring;
        String strSubstring2;
        File file2 = new File(file, str);
        if (!file2.exists()) {
            return file2;
        }
        while (true) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf < 0) {
                strSubstring = str;
                strSubstring2 = BuildConfig.FLAVOR;
            } else {
                strSubstring = str.substring(0, iLastIndexOf);
                strSubstring2 = str.substring(iLastIndexOf);
            }
            File file3 = new File(file, strSubstring + " (1)" + strSubstring2);
            if (!file3.exists()) {
                return file3;
            }
            int i = 1 + 1;
        }
    }
}
