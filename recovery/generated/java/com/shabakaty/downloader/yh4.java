package com.shabakaty.downloader;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;

/* JADX INFO: compiled from: SupportSQLiteDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public interface yh4 extends Closeable {
    void A();

    long A0(String str, int i, ContentValues contentValues);

    List<Pair<String, String>> F();

    void F0();

    void H(String str);

    Cursor H0(bi4 bi4Var);

    ci4 Q(String str);

    Cursor a1(bi4 bi4Var, CancellationSignal cancellationSignal);

    boolean b1();

    String getPath();

    void i0();

    boolean i1();

    boolean isOpen();

    void k0(String str, Object[] objArr);

    void m0();

    int n0(String str, int i, ContentValues contentValues, String str2, Object[] objArr);

    Cursor y0(String str);
}
