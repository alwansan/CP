package com.shabakaty.cinemana.features;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SubtitleCompat131 {
    private SubtitleCompat131() {
    }

    public static List importedOnly(List list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        for (Object obj : list) {
            if (obj instanceof Subtitle) {
                Subtitle subtitle = (Subtitle) obj;
                if (isImported(subtitle) && subtitle.file != null && subtitle.file.trim().length() != 0) {
                    arrayList.add(subtitle);
                }
            }
        }
        return arrayList;
    }

    public static List appendPreservingImported(Object obj, Object obj2, List list, Object obj3) {
        List listAppendWithPlayer;
        List<Subtitle> listImportedOnly = importedOnly(list);
        try {
            listAppendWithPlayer = EmbeddedMkvSubtitles.appendWithPlayer(obj, obj2, list, obj3);
        } catch (Throwable th) {
            listAppendWithPlayer = list;
        }
        if (listAppendWithPlayer != null) {
            list = listAppendWithPlayer;
        }
        if (list == null) {
            list = new ArrayList();
        }
        if (listImportedOnly.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Object obj4 : list) {
            if (!(obj4 instanceof Subtitle)) {
                if (obj4 != null) {
                    arrayList.add(obj4);
                }
            } else {
                Subtitle subtitle = (Subtitle) obj4;
                if (!(subtitle.file != null && subtitle.file.startsWith("embedded://") && (eq(subtitle.type, "file") || eq(subtitle.name, "file")))) {
                    arrayList.add(subtitle);
                    if (subtitle.file != null && subtitle.file.length() > 0) {
                        hashSet.add(subtitle.file);
                    }
                }
            }
        }
        for (Subtitle subtitle2 : listImportedOnly) {
            if (subtitle2.file == null || subtitle2.file.length() == 0 || hashSet.add(subtitle2.file)) {
                arrayList.add(subtitle2);
            }
        }
        return arrayList;
    }

    public static void cleanupOldImportsExcept(Object obj, String str) {
        if (obj == null) {
            return;
        }
        try {
            Object objInvoke = obj.getClass().getMethod("getCacheDir", new Class[0]).invoke(obj, new Object[0]);
            if (objInvoke instanceof File) {
                String absolutePath = str == null ? BuildConfig.FLAVOR : new File(str).getAbsolutePath();
                File[] fileArrListFiles = ((File) objInvoke).listFiles();
                if (fileArrListFiles == null) {
                    return;
                }
                for (File file : fileArrListFiles) {
                    if (file != null && file.isFile() && file.getName().startsWith("USER_SUBTITLE_") && !file.getAbsolutePath().equals(absolutePath)) {
                        try {
                            file.delete();
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
        }
    }

    private static boolean isImported(Subtitle subtitle) {
        return subtitle != null && (eq(subtitle.name, "file") || eq(subtitle.type, "file"));
    }

    private static boolean eq(String str, String str2) {
        return (str == null || str2 == null || !str.equalsIgnoreCase(str2)) ? false : true;
    }
}
