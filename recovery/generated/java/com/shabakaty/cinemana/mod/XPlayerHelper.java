package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.core.content.FileProvider;
import com.shabakaty.cinemana.ca1.I18n161;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class XPlayerHelper {
    public static String findArabicSubtitleUrl(VideoModel videoModel) {
        List<Subtitle> list;
        if (videoModel == null || (list = videoModel.subtitles) == null) {
            return null;
        }
        for (Subtitle subtitle : list) {
            String str = subtitle.type;
            if (str != null && "ar".equalsIgnoreCase(str)) {
                return subtitle.file;
            }
        }
        return null;
    }

    public static void init(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        int identifier;
        View viewFindViewById;
        try {
            Context context = cinemanaPlayerControllerView.getContext();
            if (context == null || (identifier = context.getResources().getIdentifier("xplayer_open_icon", "id", context.getPackageName())) == 0 || (viewFindViewById = cinemanaPlayerControllerView.findViewById(identifier)) == null) {
                return;
            }
            viewFindViewById.setOnClickListener(new XPlayerClickListener(cinemanaPlayerControllerView));
        } catch (Throwable th) {
        }
    }

    public static void launchXPlayerIntent(Context context, String str, String str2, String str3) {
        Uri uriResolveContentUri;
        try {
            Uri uriResolveContentUri2 = resolveContentUri(context, str);
            if (uriResolveContentUri2 != null) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(uriResolveContentUri2, "video/*");
                intent.setPackage("video.player.videoplayer");
                intent.addFlags(268435456);
                intent.addFlags(1);
                if (str2 != null) {
                    intent.putExtra("title", str2);
                }
                if (str3 != null && (uriResolveContentUri = resolveContentUri(context, str3)) != null) {
                    intent.putExtra("subs", new Uri[]{uriResolveContentUri});
                    intent.putExtra("subs.name", new String[]{I18n161.t("العربية")});
                }
                if (intent.resolveActivity(context.getPackageManager()) != null) {
                    context.startActivity(intent);
                } else {
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=video.player.videoplayer")));
                }
            }
        } catch (Throwable th) {
        }
    }

    public static void openInXPlayer(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        VideoModel videoModel;
        Quality quality;
        String str;
        try {
            Context context = cinemanaPlayerControllerView.getContext();
            if (context == null || (videoModel = cinemanaPlayerControllerView.getVideoModel()) == null || (quality = videoModel.wantedQuality) == null || (str = quality.url) == null || str.length() == 0) {
                return;
            }
            String str2 = videoModel.nb;
            String strFindArabicSubtitleUrl = findArabicSubtitleUrl(videoModel);
            if (strFindArabicSubtitleUrl == null) {
                launchXPlayerIntent(context, str, str2, null);
            } else if (strFindArabicSubtitleUrl.startsWith("http")) {
                new Thread(new SubtitleDownloadRunnable(context, strFindArabicSubtitleUrl, str, str2)).start();
            } else {
                launchXPlayerIntent(context, str, str2, strFindArabicSubtitleUrl);
            }
        } catch (Throwable th) {
        }
    }

    public static Uri resolveContentUri(Context context, String str) {
        try {
            if (str.startsWith("http")) {
                return Uri.parse(str);
            }
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            return FileProvider.a(context, context.getPackageName() + ".provider").b(file);
        } catch (Throwable th) {
            return null;
        }
    }
}
