package com.shabakaty.downloader;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.connectsdk.R;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: MainThreadExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class zl2 implements jm0, ho5, j31 {
    public static volatile ScheduledExecutorService r;

    public zl2(int i) {
        if (i != 14) {
            return;
        }
        Object obj = on6.f;
    }

    @Override // com.shabakaty.downloader.jm0
    public void L(ky0 ky0Var) {
    }

    @Override // com.shabakaty.downloader.jm0
    public void Z(int i, long j, long j2) {
    }

    @Override // com.shabakaty.downloader.ho5
    public byte[] b(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    @Override // com.shabakaty.downloader.j31
    public void d(n31 n31Var) {
        StringBuilder sbA = i61.a((char) 0);
        while (n31Var.d()) {
            sbA.append(n31Var.b());
            int i = n31Var.f + 1;
            n31Var.f = i;
            if (iq6.s(n31Var.a, i, 5) != 5) {
                n31Var.g = 0;
                break;
            }
        }
        int length = sbA.length() - 1;
        int iA = n31Var.a() + length + 1;
        n31Var.f(iA);
        boolean z = n31Var.h.b - iA > 0;
        if (n31Var.d() || z) {
            if (length <= 249) {
                sbA.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
                }
                sbA.setCharAt(0, (char) ((length / 250) + 249));
                sbA.insert(1, (char) (length % 250));
            }
        }
        int length2 = sbA.length();
        for (int i2 = 0; i2 < length2; i2++) {
            int iA2 = (((n31Var.a() + 1) * 149) % 255) + 1 + sbA.charAt(i2);
            if (iA2 > 255) {
                iA2 -= 256;
            }
            n31Var.e.append((char) iA2);
        }
    }

    public String e(ia3 ia3Var) {
        j32.e(ia3Var, "level");
        return ia3Var.a;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public ia3 f(String str) {
        j32.e(str, "value");
        switch (str.hashCode()) {
            case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                if (str.equals("1")) {
                    return ia3.a.d;
                }
                break;
            case R.styleable.AppCompatTheme_colorAccent /* 50 */:
                if (str.equals("2")) {
                    return ia3.c.d;
                }
                break;
            case 51:
                if (str.equals("3")) {
                    return ia3.d.d;
                }
                break;
        }
        return ia3.b.d;
    }

    @Override // com.shabakaty.downloader.jm0
    public ky0 find(int i) {
        return null;
    }

    public void g(Runnable runnable, String str) {
        if (com.onesignal.o0.q()) {
            new Thread(runnable, str).start();
        } else {
            runnable.run();
        }
    }

    public void h(SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.execSQL("BEGIN TRANSACTION;");
                sQLiteDatabase.execSQL("CREATE TABLE cached_unique_outcome (_id INTEGER PRIMARY KEY,channel_influence_id TEXT,channel_type TEXT,name TEXT);");
                sQLiteDatabase.execSQL("INSERT INTO cached_unique_outcome(_id,name,channel_influence_id) SELECT _id,name,notification_id FROM cached_unique_outcome_notification;");
                sQLiteDatabase.execSQL("UPDATE cached_unique_outcome SET channel_type = 'notification';");
                sQLiteDatabase.execSQL("DROP TABLE cached_unique_outcome_notification;");
            } catch (SQLiteException e) {
                e.printStackTrace();
            }
        } finally {
            sQLiteDatabase.execSQL("COMMIT;");
        }
    }

    public void i(SQLiteDatabase sQLiteDatabase) {
        j32.e(sQLiteDatabase, "db");
        try {
            try {
                sQLiteDatabase.execSQL("BEGIN TRANSACTION;");
                sQLiteDatabase.execSQL("ALTER TABLE outcome RENAME TO outcome_aux;");
                sQLiteDatabase.execSQL("CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_influence_type TEXT,iam_influence_type TEXT,notification_ids TEXT,iam_ids TEXT,name TEXT,timestamp TIMESTAMP,weight FLOAT);");
                sQLiteDatabase.execSQL("INSERT INTO outcome(_id,name,timestamp,notification_ids,weight,notification_influence_type) SELECT _id,name,timestamp,notification_ids,weight,session FROM outcome_aux;");
                sQLiteDatabase.execSQL("DROP TABLE outcome_aux;");
            } catch (SQLiteException e) {
                e.printStackTrace();
            }
        } finally {
            sQLiteDatabase.execSQL("COMMIT;");
        }
    }

    @Override // com.shabakaty.downloader.jm0
    public void remove(int i) {
    }
}
