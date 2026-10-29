package com.shabakaty.cinemana.ca1;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class StorageMigration151 {
    private static final String CINEMANA = "Cinemana";
    private static final String DATE = "data";
    private static final String LEGACY_DATE = "com.shabakaty.cine";
    private static final String LEGACY_WORK = "com.shabakaty.cinemana";
    private static final String WORK = "work";

    private StorageMigration151() {
    }

    private static File externalRoot() {
        try {
            Object objInvoke = Class.forName("android.os.Environment").getMethod("getExternalStorageDirectory", new Class[0]).invoke(null, new Object[0]);
            if (objInvoke instanceof File) {
                return (File) objInvoke;
            }
        } catch (Throwable th) {
        }
        return new File("/storage/emulated/0");
    }

    private static File cinemanaRoot() {
        return new File(externalRoot(), CINEMANA);
    }

    public static void migrate() {
        try {
            File fileCinemanaRoot = cinemanaRoot();
            if (!fileCinemanaRoot.exists()) {
                fileCinemanaRoot.mkdirs();
            }
            File file = new File(fileCinemanaRoot, WORK);
            File file2 = new File(fileCinemanaRoot, LEGACY_WORK);
            if (file2.exists() && !containsActiveWork(file2)) {
                moveTree(file2, file);
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            File file3 = new File(fileCinemanaRoot, LEGACY_DATE);
            File file4 = new File(file, "data");
            if (file3.exists()) {
                moveTree(file3, file4);
            }
            if (!file4.exists()) {
                file4.mkdirs();
            }
        } catch (Throwable th) {
        }
    }

    private static boolean containsActiveWork(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                if (!"log".equals(file2.getName()) && containsAnyFile(file2)) {
                    return true;
                }
            } else {
                String lowerCase = file2.getName().toLowerCase();
                if (lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || lowerCase.endsWith(".srt") || lowerCase.endsWith(".ass") || lowerCase.endsWith(".vtt") || lowerCase.endsWith(".part") || lowerCase.endsWith(".tmp") || lowerCase.endsWith(".temp") || lowerCase.endsWith(".download")) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean containsAnyFile(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                return true;
            }
            if (file2.isDirectory() && containsAnyFile(file2)) {
                return true;
            }
        }
        return false;
    }

    private static void moveTree(File file, File file2) throws IOException {
        if (file == null || !file.exists()) {
            return;
        }
        if (file2.exists() || !file.renameTo(file2)) {
            if (file.isDirectory()) {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null) {
                    for (File file3 : fileArrListFiles) {
                        moveTree(file3, new File(file2, file3.getName()));
                    }
                }
                File[] fileArrListFiles2 = file.listFiles();
                if (fileArrListFiles2 == null || fileArrListFiles2.length != 0) {
                    return;
                }
                file.delete();
                return;
            }
            if (file2.exists()) {
                if (file2.length() == file.length()) {
                    file.delete();
                    return;
                }
                return;
            }
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (file.renameTo(file2)) {
                return;
            }
            copy(file, file2);
            if (!file2.exists() || file2.length() != file.length()) {
                return;
            }
            file.delete();
        }
    }

    private static void copy(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i <= 0) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        fileInputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            fileInputStream.close();
            throw th2;
        }
    }

    public static void pruneSoon() {
        pruneEmptyDownloadFolders();
        try {
            Thread thread = new Thread(new Runnable() { // from class: com.shabakaty.cinemana.ca1.StorageMigration151.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(1500L);
                    } catch (InterruptedException e) {
                    }
                    StorageMigration151.pruneEmptyDownloadFolders();
                }
            }, "cinemana-empty-folder-cleanup");
            thread.setDaemon(true);
            thread.start();
        } catch (Throwable th) {
        }
    }

    public static void pruneEmptyDownloadFolders() {
        try {
            File[] fileArrListFiles = cinemanaRoot().listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    String name = file.getName();
                    if (!WORK.equals(name) && !LEGACY_WORK.equals(name) && !LEGACY_DATE.equals(name)) {
                        prune(file);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private static boolean prune(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                prune(file2);
            }
        }
        File[] fileArrListFiles2 = file.listFiles();
        if (fileArrListFiles2 == null || fileArrListFiles2.length != 0) {
            return false;
        }
        return file.delete();
    }
}
