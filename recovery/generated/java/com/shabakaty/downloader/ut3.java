package com.shabakaty.downloader;

import android.content.Context;

/* JADX INFO: compiled from: Room.java */
/* JADX INFO: loaded from: classes.dex */
public class ut3 {
    public static <T extends vt3> vt3.a<T> a(Context context, Class<T> cls, String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new vt3.a<>(context, cls, str);
    }
}
