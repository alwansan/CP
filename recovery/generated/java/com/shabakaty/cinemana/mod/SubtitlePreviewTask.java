package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.net.Uri;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.connectsdk.service.DLNAService;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitlePreviewTask implements Runnable {
    private final Context context;
    private final CinemanaPlayerControllerView controller;
    private final String inputPath;

    public SubtitlePreviewTask(Context context, String str, CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.context = context;
        this.inputPath = str;
        this.controller = cinemanaPlayerControllerView;
    }

    private static boolean extractEmbedded(File file, String str, String str2, File file2) {
        try {
            if (str2.equalsIgnoreCase("ar")) {
                boolean zRunExtract = runExtract(file, str, "0:s:m:language:ar", file2);
                if (zRunExtract) {
                    return zRunExtract;
                }
                boolean zRunExtract2 = runExtract(file, str, "0:s:m:language:ara", file2);
                return zRunExtract2 ? zRunExtract2 : runExtract(file, str, "0:s:0?", file2);
            }
            if (!str2.equalsIgnoreCase("sp")) {
                if (str2.startsWith("#")) {
                    return runExtract(file, str, "0:s:" + str2.substring(1) + "?", file2);
                }
                boolean zRunExtract3 = runExtract(file, str, "0:s:m:language:" + str2, file2);
                if (zRunExtract3 || ((str2.equalsIgnoreCase("en") && (zRunExtract3 = runExtract(file, str, "0:s:m:language:eng", file2))) || (zRunExtract3 = runExtract(file, str, "0:s:0?", file2)))) {
                    return zRunExtract3;
                }
                boolean zRunExtract4 = runExtract(file, str, "0:s:1?", file2);
                return zRunExtract4 ? zRunExtract4 : runExtract(file, str, "0:s:2?", file2);
            }
            boolean zRunExtract5 = runExtract(file, str, "0:s:m:language:sp", file2);
            if (zRunExtract5) {
                return zRunExtract5;
            }
            boolean zRunExtract6 = runExtract(file, str, "0:s:m:language:special", file2);
            if (zRunExtract6) {
                return zRunExtract6;
            }
            boolean zRunExtract7 = runExtract(file, str, "0:s:1?", file2);
            if (zRunExtract7) {
                return zRunExtract7;
            }
            boolean zRunExtract8 = runExtract(file, str, "0:s:2?", file2);
            return zRunExtract8 ? zRunExtract8 : runExtract(file, str, "0:s:0?", file2);
        } catch (Exception unused) {
            return false;
        }
    }

    private static File getFfmpeg(Context context) {
        try {
            File file = new File(context.getApplicationInfo().nativeLibraryDir, "libffmpeg.so");
            if (file.exists()) {
                return file;
            }
            File file2 = new File(context.getCacheDir(), "ffmpeg_preview");
            if (file2.exists()) {
                file2.setExecutable(true);
                return file2;
            }
            InputStream inputStreamOpen = context.getAssets().open("ffmpeg");
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i <= 0) {
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    file2.setExecutable(true, true);
                    return file2;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    private static String readRemoteText(String str) {
        try {
            if (str.startsWith("file:")) {
                return readText(new File(Uri.parse(str).getPath()));
            }
            File file = new File(str);
            if (file.isFile()) {
                return readText(file);
            }
            URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
            uRLConnectionOpenConnection.setConnectTimeout(20000);
            uRLConnectionOpenConnection.setReadTimeout(20000);
            uRLConnectionOpenConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 Chrome/120 Mobile Safari/537.36");
            InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            StringBuilder sb = new StringBuilder();
            do {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append(SSDPPacket.LF);
            } while (sb.length() < 512000);
            bufferedReader.close();
            inputStream.close();
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private static String readText(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, "UTF-8"));
            StringBuilder sb = new StringBuilder();
            do {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append(SSDPPacket.LF);
            } while (sb.length() < 512000);
            bufferedReader.close();
            fileInputStream.close();
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean runExtract(File file, String str, String str2, File file2) {
        try {
            return Runtime.getRuntime().exec(new String[]{file.getAbsolutePath(), "-nostdin", "-hide_banner", "-loglevel", "error", "-y", "-i", str, "-map", str2, "-c:s", DLNAService.DEFAULT_SUBTITLE_TYPE, file2.getAbsolutePath()}).waitFor() == 0 && file2.exists() && file2.length() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    /**
     * Rebuilt from smali_classes2 SubtitlePreviewTask.run, preserving the
     * main-thread result dispatch and error fallback for preview failures.
     */
    @Override
    public void run() {
        Context ctx = this.context;
        String source = this.inputPath;
        if (ctx != null && source != null) {
            try {
                String text;
                if (!source.startsWith("embedded://mkv/")) {
                    text = readRemoteText(source);
                } else {
                    String stream = source.substring(15);
                    if (this.controller == null || this.controller.getVideoModel() == null) {
                        text = null;
                    } else {
                        String video = com.shabakaty.cinemana.features.LocalMkvResolver.resolve(
                                ctx, this.controller.getVideoModel());
                        if (video != null && video.startsWith("file:")) {
                            video = Uri.parse(video).getPath();
                        }
                        File videoFile = video == null ? null : new File(video);
                        if (videoFile == null || !videoFile.exists() || videoFile.length() <= 0) {
                            text = null;
                        } else {
                            File ffmpeg = getFfmpeg(ctx);
                            if (ffmpeg == null || !ffmpeg.exists()) {
                                text = null;
                            } else {
                                File output = new File(ctx.getCacheDir(), "cinemana_subtitle_preview.srt");
                                output.delete();
                                if (extractEmbedded(ffmpeg, video, stream, output)) {
                                    text = readText(output);
                                    output.delete();
                                } else {
                                    text = null;
                                }
                            }
                        }
                    }
                }
                if (text != null && !text.trim().isEmpty()) {
                    new android.os.Handler(android.os.Looper.getMainLooper()).post(
                            new SubtitlePreviewResult(ctx, text, this.controller));
                    return;
                }
            } catch (Exception ignored) {
                // Original Smali directs exceptions to the error preview UI.
            }
        }
        new android.os.Handler(android.os.Looper.getMainLooper()).post(
                new SubtitlePreviewResult(ctx,
                        com.shabakaty.cinemana.ca1.I18n161.t(
                                "تعذر تحميل أو قراءة ملف الترجمة للمعاينة."),
                        this.controller));
    }
}
