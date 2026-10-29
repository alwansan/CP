package com.shabakaty.downloader;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.Closeable;
import java.io.File;

/* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public interface zh4 extends Closeable {

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public static abstract class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        public final void a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e) {
                Log.w("SupportSQLite", "delete failed: ", e);
            }
        }

        public abstract void b(yh4 yh4Var);

        public abstract void c(yh4 yh4Var);

        public abstract void d(yh4 yh4Var, int i, int i2);

        public abstract void e(yh4 yh4Var);

        public abstract void f(yh4 yh4Var, int i, int i2);
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public static class b {
        public final Context a;
        public final String b;
        public final a c;
        public final boolean d;

        public b(Context context, String str, a aVar, boolean z) {
            this.a = context;
            this.b = str;
            this.c = aVar;
            this.d = z;
        }
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public interface c {
        zh4 a(b bVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    yh4 getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);
}
