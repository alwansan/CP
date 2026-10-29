package com.shabakaty.cinemana.ca1;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class DownloadStore263 {

    public static final class Errors extends ArrayList<String> {
        final Set<String> deleted = new HashSet();
    }

    private DownloadStore263() {
    }

    public static Object appDao(Context context) throws Exception {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        Object objCall = Restart108.call(context, "h", new Object[0]);
        if (Class.forName("com.shabakaty.downloader.kw0").isInstance(objCall)) {
            return objCall;
        }
        throw new IllegalArgumentException("Expected application episode DAO");
    }

    public static Object combined(Context context, String str) throws Exception {
        return Restart108.exp("readCombinedById", appDao(context), str);
    }

    public static String errorSummary(List<?> list) {
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(3, list.size());
        for (int i = 0; i < iMin; i++) {
            if (i > 0) {
                sb.append("\n\n");
            }
            String strValueOf = String.valueOf(list.get(i));
            if (strValueOf.length() > 350) {
                strValueOf = strValueOf.substring(0, 350) + "…";
            }
            sb.append(strValueOf);
        }
        if (list.size() > iMin) {
            sb.append("\n… (+");
            sb.append(list.size() - iMin);
            sb.append(")");
        }
        return sb.toString();
    }

    public static void recordSuccess(List<?> list, Object obj) {
        try {
            if (list instanceof Errors) {
                ((Errors) list).deleted.add(Restart108.str(obj, "id"));
            }
        } catch (Exception unused) {
        }
    }

    public static void retainFailed(Set<String> set, List<?> list) {
        if (list instanceof Errors) {
            set.removeAll(((Errors) list).deleted);
        }
    }
}
