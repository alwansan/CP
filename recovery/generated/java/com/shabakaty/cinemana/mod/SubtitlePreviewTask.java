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

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0094, code lost:
    
        if (r4.trim().length() > 0) goto L35;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r15 = this;
            android.content.Context r0 = r15.context
            java.lang.String r1 = r15.inputPath
            if (r0 == 0) goto Lab
            if (r1 == 0) goto Lab
            java.lang.String r2 = "embedded://mkv/"
            boolean r3 = r1.startsWith(r2)     // Catch: java.lang.Exception -> Laa
            if (r3 != 0) goto L21
            java.lang.String r4 = readRemoteText(r1)     // Catch: java.lang.Exception -> Laa
            if (r4 == 0) goto Lab
            java.lang.String r5 = r4.trim()     // Catch: java.lang.Exception -> Laa
            int r6 = r5.length()     // Catch: java.lang.Exception -> Laa
            if (r6 <= 0) goto Lab
            goto L96
        L21:
            r3 = 15
            java.lang.String r7 = r1.substring(r3)     // Catch: java.lang.Exception -> Laa
            com.shabakaty.cinemana.player.CinemanaPlayerControllerView r8 = r15.controller     // Catch: java.lang.Exception -> Laa
            if (r8 == 0) goto Lab
            com.shabakaty.cinemana.domain.models.local.VideoModel r8 = r8.getVideoModel()     // Catch: java.lang.Exception -> Laa
            if (r8 == 0) goto Lab
            android.content.Context r9 = r15.context     // Catch: java.lang.Exception -> Laa
            java.lang.String r9 = com.shabakaty.cinemana.features.LocalMkvResolver.resolve(r9, r8)     // Catch: java.lang.Exception -> Laa
            if (r9 == 0) goto Lab
            java.lang.String r10 = "file:"
            boolean r10 = r9.startsWith(r10)     // Catch: java.lang.Exception -> Laa
            if (r10 == 0) goto L49
            android.net.Uri r10 = android.net.Uri.parse(r9)     // Catch: java.lang.Exception -> Laa
            java.lang.String r9 = r10.getPath()     // Catch: java.lang.Exception -> Laa
        L49:
            java.io.File r10 = new java.io.File     // Catch: java.lang.Exception -> Laa
            r10.<init>(r9)     // Catch: java.lang.Exception -> Laa
            boolean r11 = r10.exists()     // Catch: java.lang.Exception -> Laa
            if (r11 == 0) goto Lab
            long r11 = r10.length()     // Catch: java.lang.Exception -> Laa
            r13 = 0
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 <= 0) goto Lab
            android.content.Context r11 = r15.context     // Catch: java.lang.Exception -> Laa
            java.io.File r11 = getFfmpeg(r11)     // Catch: java.lang.Exception -> Laa
            if (r11 == 0) goto Lab
            boolean r12 = r11.exists()     // Catch: java.lang.Exception -> Laa
            if (r12 == 0) goto Lab
            android.content.Context r12 = r15.context     // Catch: java.lang.Exception -> Laa
            java.io.File r12 = r12.getCacheDir()     // Catch: java.lang.Exception -> Laa
            java.lang.String r13 = "cinemana_subtitle_preview.srt"
            java.io.File r10 = new java.io.File     // Catch: java.lang.Exception -> Laa
            r10.<init>(r12, r13)     // Catch: java.lang.Exception -> Laa
            r10.delete()     // Catch: java.lang.Exception -> Laa
            boolean r11 = extractEmbedded(r11, r9, r7, r10)     // Catch: java.lang.Exception -> Laa
            if (r11 == 0) goto Lab
            java.lang.String r4 = readText(r10)     // Catch: java.lang.Exception -> Laa
            r10.delete()     // Catch: java.lang.Exception -> Laa
            if (r4 == 0) goto Lab
            r5 = r4
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Exception -> Laa
            int r6 = r5.length()     // Catch: java.lang.Exception -> Laa
            if (r6 <= 0) goto Lab
        L96:
            android.os.Handler r2 = new android.os.Handler     // Catch: java.lang.Exception -> Laa
            android.os.Looper r3 = android.os.Looper.getMainLooper()     // Catch: java.lang.Exception -> Laa
            r2.<init>(r3)     // Catch: java.lang.Exception -> Laa
            com.shabakaty.cinemana.mod.SubtitlePreviewResult r3 = new com.shabakaty.cinemana.mod.SubtitlePreviewResult     // Catch: java.lang.Exception -> Laa
            com.shabakaty.cinemana.player.CinemanaPlayerControllerView r6 = r15.controller     // Catch: java.lang.Exception -> Laa
            r3.<init>(r0, r4, r6)     // Catch: java.lang.Exception -> Laa
            r2.post(r3)     // Catch: java.lang.Exception -> Laa
            return
        Laa:
            goto Lab
        Lab:
            android.os.Handler r2 = new android.os.Handler
            android.os.Looper r3 = android.os.Looper.getMainLooper()
            r2.<init>(r3)
            com.shabakaty.cinemana.mod.SubtitlePreviewResult r3 = new com.shabakaty.cinemana.mod.SubtitlePreviewResult
            java.lang.String r4 = "تعذر تحميل أو قراءة ملف الترجمة للمعاينة."
            java.lang.String r4 = com.shabakaty.cinemana.ca1.I18n161.t(r4)
            com.shabakaty.cinemana.player.CinemanaPlayerControllerView r5 = r15.controller
            r3.<init>(r0, r4, r5)
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.cinemana.mod.SubtitlePreviewTask.run():void");
    }
}
