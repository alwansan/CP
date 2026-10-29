package com.shabakaty.downloader;

import android.content.Context;
import android.graphics.Typeface;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class FontImportStore {
    private static ArrayList b;

    public static void a(Context context) {
        if (b != null) {
            return;
        }
        b = new ArrayList();
        File file = new File(context.getFilesDir(), "subtitle_fonts");
        if (!file.exists()) {
            file.mkdirs();
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    String name = file2.getName();
                    if (e(name) && g(file2.getAbsolutePath())) {
                        b.add(new ImportedSubtitleFont(name, file2));
                    }
                }
            }
        }
    }

    public static ArrayList b() {
        ArrayList arrayList = b;
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        b = arrayList2;
        return arrayList2;
    }

    public static void c(String str, File file) {
        b().add(new ImportedSubtitleFont(str, file));
    }

    public static ArrayList d() {
        ArrayList arrayList = new ArrayList();
        List list = (List) ((qj4) gg4.d).getValue();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(list.get(i));
        }
        ArrayList arrayList2 = b;
        if (arrayList2 != null) {
            synchronized (arrayList2) {
                arrayList.addAll(arrayList2);
            }
        }
        return arrayList;
    }

    public static boolean e(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        boolean zEndsWith = lowerCase.endsWith(".ttf");
        return !zEndsWith ? lowerCase.endsWith(".otf") : zEndsWith;
    }

    /* JADX WARN: Unreachable blocks removed: 3, instructions: 3 */
    public static gg4 f(String str) {
        ArrayList<ImportedSubtitleFont> arrayListB = b();
        synchronized (arrayListB) {
            for (ImportedSubtitleFont importedSubtitleFont : arrayListB) {
                if (j32.a(str, importedSubtitleFont.a)) {
                    return importedSubtitleFont;
                }
            }
            return null;
        }
    }

    private static boolean g(String str) {
        try {
            return Typeface.createFromFile(str) != null;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public static gg4 h(String str) {
        if (str == null || !str.startsWith("/")) {
            return null;
        }
        File file = new File(str);
        if (file.isFile() && g(str)) {
            return new ImportedSubtitleFont(file.getName(), file);
        }
        return null;
    }
}
