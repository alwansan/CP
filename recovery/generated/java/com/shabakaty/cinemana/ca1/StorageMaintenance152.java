package com.shabakaty.cinemana.ca1;

import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class StorageMaintenance152 {
    private static final long QUIET_MS = 30000;
    private static volatile long lastScan;
    private static final File ROOT = new File("/storage/emulated/0/Cinemana");
    private static final File WORK = new File(ROOT, "work");
    private static final File DATE = new File(WORK, PListParser.TAG_DATA);
    private static final File PROOFS = new File(DATE, "mkv-proofs");
    private static final File LEGACY = new File(ROOT, "com.shabakaty.cinemana");
    private static final Object LOCK = new Object();

    private StorageMaintenance152() {
    }

    public static void scanSoon() {
        scan();
        try {
            Thread thread = new Thread(new Runnable() { // from class: com.shabakaty.cinemana.ca1.StorageMaintenance152.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(32000L);
                    } catch (Throwable th) {
                    }
                    StorageMaintenance152.scan();
                }
            }, "cinemana-work-maintenance");
            thread.setDaemon(true);
            thread.start();
        } catch (Throwable th) {
        }
    }

    public static void scan() {
        synchronized (LOCK) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - lastScan < 1500) {
                return;
            }
            lastScan = jCurrentTimeMillis;
            try {
                if (!WORK.exists()) {
                    WORK.mkdirs();
                }
                if (!DATE.exists()) {
                    DATE.mkdirs();
                }
                if (!PROOFS.exists()) {
                    PROOFS.mkdirs();
                }
                repairTokenFolders();
                importLegacyProofs();
                cleanupSubtitles(jCurrentTimeMillis);
                cleanupLegacyRoot(jCurrentTimeMillis);
            } catch (Throwable th) {
            }
        }
    }

    public static void recordSuccess(File file, List<?> list) {
        try {
            if (validFinalMkv(file) && list != null) {
                String strMarker = BuildConfig.FLAVOR;
                for (Object obj : list) {
                    if (obj instanceof File) {
                        strMarker = marker(((File) obj).getName());
                        if (!strMarker.isEmpty()) {
                            break;
                        }
                    }
                }
                if (!strMarker.isEmpty()) {
                    writeProof(strMarker, file);
                }
            }
        } catch (Throwable th) {
        }
        scanSoon();
    }

    private static void cleanupSubtitles(long j) {
        File[] fileArrListFiles = WORK.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            try {
                if (file.isFile() && isSubtitle(file.getName())) {
                    String strMarker = marker(file.getName());
                    if (!strMarker.isEmpty() && j - file.lastModified() >= QUIET_MS && !activeWorkFor(strMarker, j)) {
                        File proof = readProof(strMarker);
                        if (validFinalMkv(proof) && j - proof.lastModified() >= 10000) {
                            String strSubtitleSubject = subtitleSubject(file.getName());
                            if ((strSubtitleSubject.isEmpty() || sameName(strSubtitleSubject, stripExt(proof.getName())) || proofCameFromLog(strMarker, proof)) && file.delete()) {
                                log("SUBTITLE_STALE_DELETE token=" + strMarker + " file=" + file.getName() + " final=" + proof.getAbsolutePath());
                            }
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    private static boolean activeWorkFor(String str, long j) {
        File[] fileArrListFiles = WORK.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                String name = file.getName();
                if (name.contains(str)) {
                    String lowerCase = name.toLowerCase(Locale.ROOT);
                    if (!isSubtitle(lowerCase) && (lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || lowerCase.contains(".part") || lowerCase.endsWith(".tmp") || lowerCase.endsWith(".temp") || lowerCase.endsWith(".download"))) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    private static boolean validFinalMkv(File file) {
        if (file != null) {
            try {
                if (file.isFile() && file.length() > 1024) {
                    String canonicalPath = file.getCanonicalPath();
                    return canonicalPath.startsWith(new StringBuilder().append(ROOT.getCanonicalPath()).append(File.separator).toString()) && !canonicalPath.startsWith(new StringBuilder().append(WORK.getCanonicalPath()).append(File.separator).toString()) && !canonicalPath.startsWith(new StringBuilder().append(LEGACY.getCanonicalPath()).append(File.separator).toString()) && canonicalPath.toLowerCase(Locale.ROOT).endsWith(".mkv");
                }
            } catch (Throwable th) {
                return false;
            }
        }
        return false;
    }

    private static void writeProof(String str, File file) {
        try {
            if (validFinalMkv(file)) {
                if (!PROOFS.exists()) {
                    PROOFS.mkdirs();
                }
                File file2 = new File(PROOFS, safeToken(str) + ".path");
                File file3 = new File(PROOFS, safeToken(str) + ".tmp");
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file3), "UTF-8");
                try {
                    outputStreamWriter.write(file.getCanonicalPath());
                    outputStreamWriter.write(SSDPPacket.LF);
                    outputStreamWriter.write(Long.toString(System.currentTimeMillis()));
                    outputStreamWriter.write(SSDPPacket.LF);
                    outputStreamWriter.close();
                    if (file2.exists()) {
                        file2.delete();
                    }
                    if (!file3.renameTo(file2)) {
                        copy(file3, file2);
                        file3.delete();
                    }
                } catch (Throwable th) {
                    outputStreamWriter.close();
                    throw th;
                }
            }
        } catch (Throwable th2) {
        }
    }

    private static File readProof(String str) {
        try {
            File file = new File(PROOFS, safeToken(str) + ".path");
            if (!file.isFile()) {
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                if (line != null && !line.trim().isEmpty()) {
                    File fileResolveFinalMkv = resolveFinalMkv(new File(line.trim()));
                    if (!validFinalMkv(fileResolveFinalMkv)) {
                        return null;
                    }
                    return fileResolveFinalMkv;
                }
                return null;
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        } catch (Throwable th2) {
            return null;
        }
    }

    private static void importLegacyProofs() {
        try {
            File[] fileArrListFiles = new File(WORK, "log").listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                String name = file.getName();
                if (file.isFile() && name.endsWith(".mkv.log")) {
                    String strMarker = marker(name);
                    if (!strMarker.isEmpty() && (!new File(PROOFS, safeToken(strMarker) + ".path").isFile() || !validFinalMkv(readProof(strMarker)))) {
                        String strLastSuccessfulPath = lastSuccessfulPath(file);
                        if (!strLastSuccessfulPath.isEmpty()) {
                            File fileResolveFinalMkv = resolveFinalMkv(new File(strLastSuccessfulPath));
                            if (validFinalMkv(fileResolveFinalMkv)) {
                                writeProof(strMarker, fileResolveFinalMkv);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private static String lastSuccessfulPath(File file) {
        String str = BuildConfig.FLAVOR;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    int iIndexOf = line.indexOf("MKV_PROMOTED_AS_PRIMARY=");
                    if (iIndexOf >= 0) {
                        String strTrim = line.substring(iIndexOf + "MKV_PROMOTED_AS_PRIMARY=".length()).trim();
                        if (!strTrim.isEmpty()) {
                            str = strTrim;
                        }
                    } else {
                        int iIndexOf2 = line.indexOf("SORTED_MKV=");
                        if (iIndexOf2 >= 0) {
                            String strSubstring = line.substring(iIndexOf2 + "SORTED_MKV=".length());
                            int iIndexOf3 = strSubstring.indexOf(" work=");
                            if (iIndexOf3 >= 0) {
                                strSubstring = strSubstring.substring(0, iIndexOf3);
                            }
                            String strTrim2 = strSubstring.trim();
                            if (!strTrim2.isEmpty()) {
                                str = strTrim2;
                            }
                        }
                    }
                } catch (Throwable th) {
                    bufferedReader.close();
                    throw th;
                }
            }
            bufferedReader.close();
        } catch (Throwable th2) {
        }
        return str;
    }

    private static boolean proofCameFromLog(String str, File file) {
        try {
            File[] fileArrListFiles = new File(WORK, "log").listFiles();
            if (fileArrListFiles == null) {
                return false;
            }
            String canonicalPath = file.getCanonicalPath();
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && file2.getName().contains(str) && file2.getName().endsWith(".mkv.log")) {
                    String strLastSuccessfulPath = lastSuccessfulPath(file2);
                    if (!strLastSuccessfulPath.isEmpty() && new File(strLastSuccessfulPath).getCanonicalPath().equals(canonicalPath)) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
        }
        return false;
    }

    private static File resolveFinalMkv(File file) {
        if (validFinalMkv(file)) {
            return file;
        }
        try {
            String canonicalPath = ROOT.getCanonicalPath();
            String absolutePath = file.getAbsolutePath();
            if (!absolutePath.startsWith(canonicalPath + File.separator)) {
                return file;
            }
            String[] strArrSplit = absolutePath.substring(canonicalPath.length() + 1).split("/", -1);
            File file2 = ROOT;
            int length = strArrSplit.length;
            int i = 0;
            while (i < length) {
                File file3 = new File(file2, stripMarkerText(strArrSplit[i]));
                i++;
                file2 = file3;
            }
            if (validFinalMkv(file2)) {
                return file2;
            }
        } catch (Throwable th) {
        }
        return file;
    }

    private static String stripMarkerText(String str) {
        int iIndexOf;
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        int iIndexOf2 = str.indexOf("[cnm-");
        if (iIndexOf2 < 0 || (iIndexOf = str.indexOf(93, iIndexOf2)) < 0) {
            return str;
        }
        String strTrim = (str.substring(0, iIndexOf2) + str.substring(iIndexOf + 1)).trim();
        while (strTrim.contains("  ")) {
            strTrim = strTrim.replace("  ", " ");
        }
        return strTrim;
    }

    private static void repairTokenFolders() {
        try {
            File[] fileArrListFiles = ROOT.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    String name = file.getName();
                    if (!"work".equals(name) && !"com.shabakaty.cinemana".equals(name) && !"com.shabakaty.cine".equals(name) && name.indexOf("[cnm-") >= 0) {
                        String strStripMarkerText = stripMarkerText(name);
                        if (!strStripMarkerText.isEmpty() && !strStripMarkerText.equals(name) && !hasRecentlyModifiedFile(file, System.currentTimeMillis(), QUIET_MS)) {
                            File file2 = new File(ROOT, strStripMarkerText);
                            if (file2.exists() || !file.renameTo(file2)) {
                                if (!file2.exists()) {
                                    file2.mkdirs();
                                }
                                moveQuietTree(file, file2, System.currentTimeMillis());
                                deleteEmptyTree(file);
                            } else {
                                log("TOKEN_FOLDER_RENAMED from=" + name + " to=" + strStripMarkerText);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private static boolean hasRecentlyModifiedFile(File file, long j, long j2) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                if (hasRecentlyModifiedFile(file2, j, j2)) {
                    return true;
                }
            } else if (j - file2.lastModified() < j2) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsLegacyWork(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                if (!"log".equals(file2.getName()) && containsLegacyWork(file2)) {
                    return true;
                }
            } else {
                String lowerCase = file2.getName().toLowerCase(Locale.ROOT);
                if (lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || isSubtitle(lowerCase) || lowerCase.contains(".part") || lowerCase.endsWith(".tmp") || lowerCase.endsWith(".temp") || lowerCase.endsWith(".download")) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void cleanupLegacyRoot(long j) {
        try {
            if (LEGACY.isDirectory() && !containsLegacyWork(LEGACY)) {
                moveQuietTree(LEGACY, WORK, j);
                deleteEmptyTree(LEGACY);
            }
        } catch (Throwable th) {
        }
    }

    private static boolean containsRecentActive(File file, long j) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                if (!"log".equals(file2.getName()) && containsRecentActive(file2, j)) {
                    return true;
                }
            } else {
                String lowerCase = file2.getName().toLowerCase(Locale.ROOT);
                if ((lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || isSubtitle(lowerCase) || lowerCase.contains(".part") || lowerCase.endsWith(".tmp") || lowerCase.endsWith(".temp") || lowerCase.endsWith(".download")) && j - file2.lastModified() < 120000) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void moveQuietTree(File file, File file2, long j) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        if (!file2.exists()) {
            file2.mkdirs();
        }
        for (File file3 : fileArrListFiles) {
            try {
                File file4 = new File(file2, file3.getName());
                if (file3.isDirectory()) {
                    moveQuietTree(file3, file4, j);
                    deleteEmptyTree(file3);
                } else {
                    String lowerCase = file3.getName().toLowerCase(Locale.ROOT);
                    if (!(lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || isSubtitle(lowerCase) || lowerCase.contains(".part") || lowerCase.endsWith(".tmp") || lowerCase.endsWith(".temp") || lowerCase.endsWith(".download")) || j - file3.lastModified() >= 120000) {
                        if (file4.exists()) {
                            if (file4.length() == file3.length()) {
                                file3.delete();
                            }
                        } else if (!file3.renameTo(file4)) {
                            copy(file3, file4);
                            if (file4.isFile() && file4.length() == file3.length()) {
                                file3.delete();
                            }
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    private static void deleteEmptyTree(File file) {
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        deleteEmptyTree(file2);
                    }
                }
            }
            File[] fileArrListFiles2 = file.listFiles();
            if (fileArrListFiles2 == null || fileArrListFiles2.length != 0) {
                return;
            }
            file.delete();
        } catch (Throwable th) {
        }
    }

    private static void copy(File file, File file2) throws IOException {
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            byte[] bArr = new byte[65536];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i);
                }
            }
            fileOutputStream.flush();
        } finally {
            try {
                fileInputStream.close();
            } catch (Throwable th) {
            }
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
            }
        }
    }

    private static String marker(String str) {
        int iIndexOf;
        int iIndexOf2;
        if (str == null || (iIndexOf = str.indexOf("[cnm-")) < 0 || (iIndexOf2 = str.indexOf(93, iIndexOf)) <= iIndexOf + 5) {
            return BuildConfig.FLAVOR;
        }
        return str.substring(iIndexOf, iIndexOf2 + 1);
    }

    private static String safeToken(String str) {
        if (str.startsWith("[cnm-")) {
            str = str.substring(5);
        }
        if (str.endsWith("]")) {
            str = str.substring(0, str.length() - 1);
        }
        return str.replaceAll("[^A-Za-z0-9_-]", BuildConfig.FLAVOR);
    }

    private static boolean isSubtitle(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        return lowerCase.endsWith(".srt") || lowerCase.endsWith(".ass") || lowerCase.endsWith(".ssa") || lowerCase.endsWith(".vtt");
    }

    private static String stripExt(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    private static String subtitleSubject(String str) {
        String strStripExt = stripExt(str);
        int iIndexOf = strStripExt.indexOf("[cnm-");
        if (iIndexOf >= 0) {
            strStripExt = strStripExt.substring(0, iIndexOf).trim();
        }
        String lowerCase = strStripExt.toLowerCase(Locale.ROOT);
        String[] strArr = {"arabic subtitle for ", "english subtitle for ", "special subtitle for ", "subtitle for "};
        for (int i = 0; i < 4; i++) {
            String str2 = strArr[i];
            if (lowerCase.startsWith(str2)) {
                return strStripExt.substring(str2.length()).trim();
            }
        }
        return BuildConfig.FLAVOR;
    }

    private static boolean sameName(String str, String str2) {
        return str.trim().equalsIgnoreCase(str2.trim());
    }

    private static void log(String str) {
        try {
            File file = new File(WORK, "log");
            if (!file.exists()) {
                file.mkdirs();
            }
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(new File(file, "storage_maintenance.log"), true), "UTF-8");
            try {
                outputStreamWriter.write(System.currentTimeMillis() + " " + str + SSDPPacket.LF);
            } finally {
                outputStreamWriter.close();
            }
        } catch (Throwable th) {
        }
    }
}
