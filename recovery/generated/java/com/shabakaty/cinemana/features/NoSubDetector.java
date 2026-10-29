package com.shabakaty.cinemana.features;

import android.content.Context;
import java.io.File;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class NoSubDetector {
    private static final long POLL_MS = 250;
    private static final String ROOT = "Cinemana/work";

    private NoSubDetector() {
    }

    public static File renameIfNoSubtitle(Context context, File file, long j) {
        File parentFile;
        if (file == null || !file.isFile()) {
            return null;
        }
        String name = file.getName();
        if (!name.toLowerCase(Locale.US).endsWith(".mp4") || name.startsWith("(No Sub) ") || file.length() < 1024 || (parentFile = file.getParentFile()) == null) {
            return null;
        }
        boolean z = false;
        String strSubstring = name.substring(0, name.length() - 4);
        long jCurrentTimeMillis = System.currentTimeMillis() + Math.max(0L, j);
        while (System.currentTimeMillis() <= jCurrentTimeMillis) {
            if (!file.exists()) {
                return null;
            }
            if (hasMatchingSubtitle(parentFile, strSubstring)) {
                z = true;
                break;
            }
            try {
                Thread.sleep(POLL_MS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return null;
            }
        }
        if (z || hasMatchingSubtitle(parentFile, strSubstring)) {
            DownloadTrace.log(context, "NO_SUB_RESULT=subtitle_found path=" + file.getName());
            return null;
        }
        File file2 = new File(parentFile, "(No Sub) " + name);
        if (file2.exists() && file2.length() > 1024) {
            DownloadTrace.log(context, "NO_SUB_RESULT=target_exists path=" + file2.getName());
            return null;
        }
        if (file.renameTo(file2)) {
            DownloadTrace.log(context, "NO_SUB_RENAMED from=" + name + " to=" + file2.getName());
            return file2;
        }
        DownloadTrace.log(context, "NO_SUB_RENAME_FAILED path=" + file.getAbsolutePath());
        return null;
    }

    private static boolean hasMatchingSubtitle(File file, String str) {
        File[] fileArrListFiles = file == null ? null : file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        for (File file2 : fileArrListFiles) {
            if (file2 != null && file2.isFile() && file2.length() > 0) {
                String lowerCase2 = file2.getName().toLowerCase(Locale.US);
                if ((lowerCase2.endsWith(".srt") || lowerCase2.endsWith(".ass") || lowerCase2.endsWith(".vtt")) && lowerCase2.contains(" for " + lowerCase)) {
                    return true;
                }
            }
        }
        return false;
    }
}
