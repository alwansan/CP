package com.shabakaty.cinemana.features;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvRepairAgeComparator implements Comparator {
    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (!(obj instanceof File) || !(obj2 instanceof File)) {
            return 0;
        }
        File file = (File) obj;
        File file2 = (File) obj2;
        int i = (file.lastModified() > file2.lastModified() ? 1 : (file.lastModified() == file2.lastModified() ? 0 : -1));
        return i == 0 ? file.getName().compareTo(file2.getName()) : i;
    }
}
