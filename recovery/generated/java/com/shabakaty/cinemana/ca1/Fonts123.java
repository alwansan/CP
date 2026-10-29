package com.shabakaty.cinemana.ca1;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class Fonts123 {
    static final Map<String, String> copied = new HashMap();

    static boolean name(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        return (str.startsWith(".") || str.contains("/") || str.contains("\\") || (!lowerCase.endsWith(".ttf") && !lowerCase.endsWith(".otf"))) ? false : true;
    }

    static boolean font(File file) throws IOException {
        if (!name(file.getName()) || file.length() < 12 || file.length() > 33554432) {
            return false;
        }
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            int i = dataInputStream.readInt();
            boolean z = i == 65536 || i == 1330926671 || i == 1953658213 || i == 1953784678;
            dataInputStream.close();
            return z;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static void copy(File file, File file2) throws Exception {
        if (!file2.getParentFile().isDirectory() && !file2.getParentFile().mkdirs()) {
            throw new IOException("font directory unavailable");
        }
        File file3 = new File(file2 + ".writing");
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            fileOutputStream.getFD().sync();
                            fileOutputStream.close();
                            fileInputStream.close();
                            Portable123.rename(file3, file2);
                            file2.setLastModified(file.lastModified());
                            file3.delete();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        try {
                            fileInputStream.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                fileInputStream.close();
                throw th4;
            }
        } catch (Throwable th5) {
            file3.delete();
            throw th5;
        }
    }

    static int sync(File file, File file2, boolean z) throws Exception {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return 0;
        }
        if (fileArrListFiles.length > 256) {
            throw new IOException("font count limit");
        }
        long length = 0;
        int i = 0;
        for (File file3 : fileArrListFiles) {
            if (file3.isFile() && file3.getCanonicalPath().startsWith(file.getCanonicalPath() + File.separator) && font(file3)) {
                length += file3.length();
                if (length > 67108864) {
                    throw new IOException("font storage limit");
                }
                File file4 = new File(file2, file3.getName());
                if (file4.getCanonicalPath().startsWith(file2.getCanonicalPath() + File.separator) && (!z || !file4.exists())) {
                    String canonicalPath = file3.getCanonicalPath();
                    String str = file3.length() + ":" + file3.lastModified();
                    if (z || !str.equals(copied.get(canonicalPath)) || !file4.isFile()) {
                        copy(file3, file4);
                        copied.put(canonicalPath, str);
                        i++;
                    }
                }
            }
        }
        return i;
    }

    private Fonts123() {
    }
}
