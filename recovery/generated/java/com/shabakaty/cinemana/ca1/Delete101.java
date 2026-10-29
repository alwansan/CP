package com.shabakaty.cinemana.ca1;

/* JADX INFO: loaded from: classes6.dex */
public final class Delete101 {
    public static boolean absent(Object obj, String str) {
        if (obj == null || str == null || str.isEmpty()) {
            return false;
        }
        try {
            return R94.call(Class.forName("com.shabakaty.cinemana.features.MkvExporter"), "readCombinedById", obj, str) == null;
        } catch (Exception e) {
            return false;
        }
    }
}
