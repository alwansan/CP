package com.shabakaty.cinemana.ca1;

import com.liulishuo.filedownloader.BuildConfig;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class ResumeDisplay263 {
    private ResumeDisplay263() {
    }

    public static String cleanTitle(String str) {
        return str == null ? BuildConfig.FLAVOR : str.replaceAll("[\\u200e\\u200f\\u202a-\\u202e\\u2066-\\u2069]", BuildConfig.FLAVOR).replaceAll("(?iu)\\s+S[0-9٠-٩۰-۹]+(?:\\s*E[0-9٠-٩۰-۹]+)?\\s*$", BuildConfig.FLAVOR).trim();
    }

    public static String episode(String str, String str2) {
        String str3;
        String strNumber = number(str);
        String strNumber2 = number(str2);
        StringBuilder sb = new StringBuilder();
        boolean zIsEmpty = strNumber.isEmpty();
        String string = BuildConfig.FLAVOR;
        if (zIsEmpty) {
            str3 = BuildConfig.FLAVOR;
        } else {
            str3 = "S" + strNumber;
        }
        sb.append(str3);
        if (!strNumber2.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            if (!strNumber.isEmpty()) {
                string = " ";
            }
            sb2.append(string);
            sb2.append("E");
            sb2.append(strNumber2);
            string = sb2.toString();
        }
        sb.append(string);
        return sb.toString();
    }

    static String number(String str) {
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        String strTrim = str.trim();
        if (!strTrim.matches("[0-9٠-٩۰-۹]+")) {
            return BuildConfig.FLAVOR;
        }
        try {
            int i = Integer.parseInt(strTrim);
            return i > 0 ? String.format(Locale.ROOT, "%02d", Integer.valueOf(i)) : BuildConfig.FLAVOR;
        } catch (NumberFormatException unused) {
            return BuildConfig.FLAVOR;
        }
    }

    public static String subtitle(String str, String str2, long j, long j2) {
        String strTime;
        String strEpisode = episode(str, str2);
        if (j2 > 0) {
            strTime = time(Math.min(Math.max(0L, j), j2)) + "/" + time(j2);
        } else {
            strTime = j > 0 ? time(j) : BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strEpisode);
        sb.append((strEpisode.isEmpty() || strTime.isEmpty()) ? BuildConfig.FLAVOR : " • ");
        sb.append(strTime);
        String string = sb.toString();
        if (string.isEmpty()) {
            return BuildConfig.FLAVOR;
        }
        return "   " + string + "   ";
    }

    static String time(long j) {
        long jMax = Math.max(0L, j) / 1000;
        return jMax >= 3600 ? String.format(Locale.ROOT, "%d:%02d:%02d", Long.valueOf(jMax / 3600), Long.valueOf((jMax / 60) % 60), Long.valueOf(jMax % 60)) : String.format(Locale.ROOT, "%d:%02d", Long.valueOf(jMax / 60), Long.valueOf(jMax % 60));
    }
}
