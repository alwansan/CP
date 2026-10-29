package com.shabakaty.cinemana.features;

import android.content.Context;
import android.os.Environment;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.ca1.Log94;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import zendesk.support.request.CellBase;

/* JADX INFO: loaded from: classes3.dex */
public final class LocalMkvResolver {
    private static final String CINEMANA_ROOT = "Cinemana";
    private static final String DOWNLOAD_DIR = "Cinemana/work";
    private static final String TAG = "LocalMkvResolver";

    private LocalMkvResolver() {
    }

    public static String resolve(Context context, Object obj) {
        String strFirstNonEmpty;
        String str;
        long j;
        boolean z;
        long j2;
        int i;
        if (obj == null) {
            return null;
        }
        try {
            if (new File(Environment.getExternalStorageDirectory(), DOWNLOAD_DIR).isDirectory() && (strFirstNonEmpty = firstNonEmpty(readStringField(obj, "title"), readStringField(obj, "enTitle"), readStringField(obj, "arTitle"), readStringField(obj, "customEnTitle"), readStringField(obj, "customArTitle"))) != null && !strFirstNonEmpty.trim().isEmpty()) {
                String stringField = readStringField(obj, "season");
                String stringField2 = readStringField(obj, "episodeNummer");
                appendLog("resolve title=" + strFirstNonEmpty + " season=" + stringField + " episode=" + stringField2);
                boolean z2 = !isBlank(stringField) && !isBlank(stringField2) && parseNumber(stringField) > 0 && parseNumber(stringField2) > 0;
                if (z2) {
                    str = "s" + twoDigits(parseNumber(stringField)) + " e" + twoDigits(parseNumber(stringField2));
                } else {
                    str = null;
                }
                ArrayList<File> arrayList = new ArrayList();
                collectMkvFiles(new File(Environment.getExternalStorageDirectory(), CINEMANA_ROOT), arrayList, 4);
                if (arrayList.isEmpty()) {
                    return null;
                }
                Boolean boolDetectRequestedNoSub = detectRequestedNoSub(obj);
                String strFirstNonEmpty2 = firstNonEmpty(readStringField(obj, "id"), readStringField(obj, "nb"));
                String stringField3 = readStringField(obj, "downloadTaskId");
                File fileResolveFromIdentityLedger = resolveFromIdentityLedger(strFirstNonEmpty2, stringField3, boolDetectRequestedNoSub);
                long j3 = 0;
                if (fileResolveFromIdentityLedger != null && fileResolveFromIdentityLedger.isFile() && fileResolveFromIdentityLedger.length() > 0) {
                    appendLog("IDENTITY_HIT id=" + strFirstNonEmpty2 + " task=" + stringField3 + " noSub=" + boolDetectRequestedNoSub + " path=" + fileResolveFromIdentityLedger.getAbsolutePath());
                    return fileResolveFromIdentityLedger.toURI().toString();
                }
                String strNormalize = normalize(strFirstNonEmpty);
                long j4 = Long.MIN_VALUE;
                int i2 = CellBase.GROUP_ID_SYSTEM_MESSAGE;
                File file = null;
                for (File file2 : arrayList) {
                    if (file2 == null) {
                        j = j3;
                    } else if (file2.isFile()) {
                        String name = file2.getName();
                        if (!name.toLowerCase(Locale.US).endsWith(".mkv")) {
                            j = 0;
                        } else if (isInsideLog(file2)) {
                            j = 0;
                        } else {
                            String strSubstring = name.substring(0, name.length() - 4);
                            boolean zHasNoSubPrefix = hasNoSubPrefix(strSubstring);
                            String strStripNoSubPrefix = stripNoSubPrefix(strSubstring);
                            String strNormalize2 = normalize(strStripNoSubPrefix);
                            if (z2) {
                                String strNormalizeForMatching = normalizeForMatching(strStripNoSubPrefix);
                                z = strNormalizeForMatching.equals(new StringBuilder().append(normalizeForMatching(strFirstNonEmpty)).append(" ").append(str).toString()) || (strNormalizeForMatching.contains(str) && titleSimilarity(strNormalizeForMatching, normalizeForMatching(strFirstNonEmpty)));
                            } else {
                                z = strNormalize2.equals(strNormalize) || titleSimilarity(strNormalize2, strNormalize);
                            }
                            if (z) {
                                j2 = 0;
                                if (file2.length() > 0) {
                                    if (boolDetectRequestedNoSub == null) {
                                        i = 0;
                                    } else {
                                        i = zHasNoSubPrefix == boolDetectRequestedNoSub.booleanValue() ? 1000 : -1000;
                                    }
                                    File parentFile = file2.getParentFile();
                                    if (parentFile != null && hasNoSubPrefix(parentFile.getName())) {
                                        i = zHasNoSubPrefix ? i + 100 : i - 25;
                                    }
                                    long jLastModified = file2.lastModified();
                                    if (file == null || i > i2 || (i == i2 && jLastModified > j4)) {
                                        i2 = i;
                                        j4 = jLastModified;
                                        file = file2;
                                    }
                                }
                            } else {
                                j2 = 0;
                            }
                            j3 = j2;
                        }
                    } else {
                        j = j3;
                    }
                    j3 = j;
                }
                if (file == null) {
                    appendLog("MISS");
                    return null;
                }
                appendLog("HIT " + file.getAbsolutePath() + " size=" + file.length());
                return file.toURI().toString();
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static boolean hasNoSubPrefix(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return strTrim.regionMatches(true, 0, "(No Sub) ", 0, 9) || strTrim.regionMatches(true, 0, "(No Sub)", 0, 8);
    }

    private static Boolean detectRequestedNoSub(Object obj) {
        try {
            Object property = readProperty(obj, "subtitles", "getSubtitles");
            if (property instanceof Collection) {
                return ((Collection) property).isEmpty() ? Boolean.TRUE : Boolean.FALSE;
            }
            if (property instanceof Iterable) {
                return !((Iterable) property).iterator().hasNext() ? Boolean.TRUE : Boolean.FALSE;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static File resolveFromIdentityLedger(String str, String str2, Boolean bool) {
        long j;
        int iLastIndexOf;
        try {
            File file = new File(new File(new File(Environment.getExternalStorageDirectory(), DOWNLOAD_DIR), "log"), ".mkv_identity.map");
            if (file.isFile() && file.length() > 0) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
                File file2 = null;
                long j2 = Long.MIN_VALUE;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        boolean z = false;
                        String str3 = null;
                        Object obj = null;
                        Object obj2 = null;
                        Object obj3 = null;
                        String str4 = null;
                        long j3 = Long.MIN_VALUE;
                        for (String str5 : line.split("\\|", -1)) {
                            int iIndexOf = str5.indexOf(61);
                            if (iIndexOf > 0) {
                                String strSubstring = str5.substring(0, iIndexOf);
                                String strSubstring2 = str5.substring(iIndexOf + 1);
                                if ("itemId".equals(strSubstring)) {
                                    obj3 = strSubstring2;
                                } else if ("nb".equals(strSubstring)) {
                                    obj = strSubstring2;
                                } else if ("taskId".equals(strSubstring)) {
                                    obj2 = strSubstring2;
                                } else if (FileDownloadModel.PATH.equals(strSubstring)) {
                                    str4 = strSubstring2;
                                } else if ("noSub".equals(strSubstring)) {
                                    str3 = strSubstring2;
                                } else if ("token".equals(strSubstring) && (iLastIndexOf = strSubstring2.lastIndexOf(64)) > 0) {
                                    try {
                                        j3 = Long.parseLong(strSubstring2.substring(iLastIndexOf + 1));
                                    } catch (Throwable th) {
                                    }
                                }
                            }
                        }
                        boolean z2 = nonEmpty(str) && str.equals(obj3);
                        boolean z3 = !z2 && nonEmpty(str) && str.equals(obj);
                        if (nonEmpty(str2) && str2.equals(obj2)) {
                            z = true;
                        }
                        if (z2 || z3 || z) {
                            if (nonEmpty(str4)) {
                                boolean zEqualsIgnoreCase = PListParser.TAG_TRUE.equalsIgnoreCase(str3);
                                if (bool == null || zEqualsIgnoreCase == bool.booleanValue()) {
                                    File file3 = new File(str4);
                                    if (file3.isFile()) {
                                        j = 0;
                                        if (file3.length() > 0) {
                                            if (j3 >= j2) {
                                                file2 = file3;
                                                j2 = j3;
                                            }
                                        }
                                    } else {
                                        j = 0;
                                    }
                                } else {
                                    j = 0;
                                }
                            }
                        }
                        j = 0;
                    } else {
                        bufferedReader.close();
                        return file2;
                    }
                }
            }
            return null;
        } catch (Throwable th2) {
            return null;
        }
    }

    private static Object readProperty(Object obj, String... strArr) {
        if (obj == null || strArr == null) {
            return null;
        }
        Class<?> cls = obj.getClass();
        for (String str : strArr) {
            for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    Field declaredField = superclass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    return declaredField.get(obj);
                } catch (Throwable th) {
                }
            }
            try {
                return cls.getMethod(str, new Class[0]).invoke(obj, new Object[0]);
            } catch (Throwable th2) {
            }
        }
        return null;
    }

    private static boolean titleSimilarity(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        if (str.equals(str2) || str.startsWith(str2 + " ")) {
            return true;
        }
        return str.contains(str2);
    }

    private static String stripNoSubPrefix(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.regionMatches(true, 0, "(No Sub) ", 0, 9)) {
            return strTrim.substring(9).trim();
        }
        return strTrim.regionMatches(true, 0, "(No Sub)", 0, 8) ? strTrim.substring(8).trim() : strTrim;
    }

    private static String normalizeForMatching(String str) {
        return normalize(stripNoSubPrefix(str)).replaceAll("\\s+", " ").trim();
    }

    private static String normalize(String str) {
        return str == null ? BuildConfig.FLAVOR : DownloadTitle127.clean(str).toLowerCase(Locale.US).replace(':', '_').replace((char) 8211, '_').replace((char) 8212, '_').replaceAll("[\\\\/:*?\"<>|]", "_").replaceAll("[^\\p{L}\\p{N}]+", " ").trim().replaceAll("\\s+", " ");
    }

    private static int parseNumber(String str) {
        if (str == null) {
            return 0;
        }
        String strReplaceAll = str.replaceAll("[^0-9]", BuildConfig.FLAVOR);
        if (strReplaceAll.isEmpty()) {
            return 0;
        }
        try {
            return Integer.parseInt(strReplaceAll);
        } catch (Throwable th) {
            return 0;
        }
    }

    private static String twoDigits(int i) {
        return String.format(Locale.US, "%02d", Integer.valueOf(i));
    }

    private static void collectMkvFiles(File file, List<File> list, int i) {
        if (file == null || list == null || i < 0 || !file.isDirectory()) {
            return;
        }
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                if (file2 != null) {
                    if (file2.isDirectory()) {
                        if (!"log".equalsIgnoreCase(file2.getName()) && !file2.getName().startsWith(".")) {
                            collectMkvFiles(file2, list, i - 1);
                        }
                    } else if (file2.isFile() && file2.getName().toLowerCase(Locale.US).endsWith(".mkv")) {
                        list.add(file2);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private static boolean isInsideLog(File file) {
        if (file == null) {
            return false;
        }
        for (File parentFile = file.getParentFile(); parentFile != null; parentFile = parentFile.getParentFile()) {
            if ("log".equalsIgnoreCase(parentFile.getName())) {
                return true;
            }
        }
        return false;
    }

    private static void appendLog(String str) {
        if (Log94.enabled()) {
            try {
                File file = new File(Environment.getExternalStorageDirectory(), DOWNLOAD_DIR);
                File file2 = new File(file, "log");
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                File file3 = new File(file, ".mkv_player_resolver.log");
                File file4 = new File(file2, ".mkv_player_resolver.log");
                if (file3.exists() && !file4.exists()) {
                    file3.renameTo(file4);
                }
                FileWriter fileWriter = new FileWriter(file4, true);
                fileWriter.append((CharSequence) String.valueOf(System.currentTimeMillis())).append((CharSequence) " ").append((CharSequence) str).append('\n');
                fileWriter.close();
            } catch (Throwable th) {
            }
        }
    }

    private static String readStringField(Object obj, String str) {
        if (obj == null || str == null) {
            return null;
        }
        try {
            Object obj2 = obj.getClass().getField(str).get(obj);
            if (obj2 == null) {
                return null;
            }
            return String.valueOf(obj2);
        } catch (Throwable th) {
            return null;
        }
    }

    private static boolean nonEmpty(String str) {
        return str != null && str.trim().length() > 0;
    }

    private static boolean isBlank(String str) {
        return str == null || str.trim().isEmpty();
    }

    private static String firstNonEmpty(String... strArr) {
        if (strArr == null) {
            return null;
        }
        for (String str : strArr) {
            if (!isBlank(str)) {
                return str;
            }
        }
        return null;
    }
}
