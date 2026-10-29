package com.shabakaty.downloader;

import android.database.Cursor;
import android.os.CancellationSignal;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: DownloadsDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class lz0 implements kz0 {
    public final vt3 a;
    public final x31<pw0> b;
    public final w31<pw0> c;
    public final f54 d;

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class a implements Callable<pw0> {
        public final /* synthetic */ yt3 r;

        public a(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public pw0 call() {
            xc4 xc4Var;
            pw0 pw0Var = null;
            String string = null;
            Cursor cursorB = lh0.b(lz0.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "task_id");
                int iB2 = yg0.b(cursorB, "external_id");
                int iB3 = yg0.b(cursorB, "progress_bytes");
                int iB4 = yg0.b(cursorB, "title");
                int iB5 = yg0.b(cursorB, "url");
                int iB6 = yg0.b(cursorB, "img");
                int iB7 = yg0.b(cursorB, FileDownloadModel.PATH);
                int iB8 = yg0.b(cursorB, "size_bytes");
                int iB9 = yg0.b(cursorB, FileDownloadModel.STATUS);
                int iB10 = yg0.b(cursorB, "last_updated");
                if (cursorB.moveToFirst()) {
                    pw0 pw0Var2 = new pw0();
                    pw0Var2.r = cursorB.getInt(iB);
                    pw0Var2.f(cursorB.isNull(iB2) ? null : cursorB.getString(iB2));
                    pw0Var2.t = cursorB.getLong(iB3);
                    pw0Var2.l(cursorB.isNull(iB4) ? null : cursorB.getString(iB4));
                    pw0Var2.m(cursorB.isNull(iB5) ? null : cursorB.getString(iB5));
                    pw0Var2.g(cursorB.isNull(iB6) ? null : cursorB.getString(iB6));
                    pw0Var2.j(cursorB.isNull(iB7) ? null : cursorB.getString(iB7));
                    pw0Var2.y = cursorB.getLong(iB8);
                    int i = cursorB.getInt(iB9);
                    xc4[] xc4VarArrValues = xc4.values();
                    int length = xc4VarArrValues.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            xc4Var = null;
                            break;
                        }
                        xc4Var = xc4VarArrValues[i2];
                        if (xc4Var.r == i) {
                            break;
                        }
                        i2++;
                    }
                    pw0Var2.k(xc4Var);
                    if (!cursorB.isNull(iB10)) {
                        string = cursorB.getString(iB10);
                    }
                    pw0Var2.i(string);
                    pw0Var = pw0Var2;
                }
                return pw0Var;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class b implements Callable<pw0> {
        public final /* synthetic */ yt3 r;

        public b(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public pw0 call() {
            xc4 xc4Var;
            pw0 pw0Var = null;
            String string = null;
            Cursor cursorB = lh0.b(lz0.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "task_id");
                int iB2 = yg0.b(cursorB, "external_id");
                int iB3 = yg0.b(cursorB, "progress_bytes");
                int iB4 = yg0.b(cursorB, "title");
                int iB5 = yg0.b(cursorB, "url");
                int iB6 = yg0.b(cursorB, "img");
                int iB7 = yg0.b(cursorB, FileDownloadModel.PATH);
                int iB8 = yg0.b(cursorB, "size_bytes");
                int iB9 = yg0.b(cursorB, FileDownloadModel.STATUS);
                int iB10 = yg0.b(cursorB, "last_updated");
                if (cursorB.moveToFirst()) {
                    pw0 pw0Var2 = new pw0();
                    pw0Var2.r = cursorB.getInt(iB);
                    pw0Var2.f(cursorB.isNull(iB2) ? null : cursorB.getString(iB2));
                    pw0Var2.t = cursorB.getLong(iB3);
                    pw0Var2.l(cursorB.isNull(iB4) ? null : cursorB.getString(iB4));
                    pw0Var2.m(cursorB.isNull(iB5) ? null : cursorB.getString(iB5));
                    pw0Var2.g(cursorB.isNull(iB6) ? null : cursorB.getString(iB6));
                    pw0Var2.j(cursorB.isNull(iB7) ? null : cursorB.getString(iB7));
                    pw0Var2.y = cursorB.getLong(iB8);
                    int i = cursorB.getInt(iB9);
                    xc4[] xc4VarArrValues = xc4.values();
                    int length = xc4VarArrValues.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            xc4Var = null;
                            break;
                        }
                        xc4Var = xc4VarArrValues[i2];
                        if (xc4Var.r == i) {
                            break;
                        }
                        i2++;
                    }
                    pw0Var2.k(xc4Var);
                    if (!cursorB.isNull(iB10)) {
                        string = cursorB.getString(iB10);
                    }
                    pw0Var2.i(string);
                    pw0Var = pw0Var2;
                }
                return pw0Var;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class c implements Callable<List<pw0>> {
        public final /* synthetic */ yt3 r;

        public c(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<pw0> call() {
            xc4 xc4Var;
            String str = null;
            Cursor cursorB = lh0.b(lz0.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "task_id");
                int iB2 = yg0.b(cursorB, "external_id");
                int iB3 = yg0.b(cursorB, "progress_bytes");
                int iB4 = yg0.b(cursorB, "title");
                int iB5 = yg0.b(cursorB, "url");
                int iB6 = yg0.b(cursorB, "img");
                int iB7 = yg0.b(cursorB, FileDownloadModel.PATH);
                int iB8 = yg0.b(cursorB, "size_bytes");
                int iB9 = yg0.b(cursorB, FileDownloadModel.STATUS);
                int iB10 = yg0.b(cursorB, "last_updated");
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    pw0 pw0Var = new pw0();
                    pw0Var.r = cursorB.getInt(iB);
                    pw0Var.f(cursorB.isNull(iB2) ? str : cursorB.getString(iB2));
                    int i = iB2;
                    pw0Var.t = cursorB.getLong(iB3);
                    pw0Var.l(cursorB.isNull(iB4) ? null : cursorB.getString(iB4));
                    pw0Var.m(cursorB.isNull(iB5) ? null : cursorB.getString(iB5));
                    pw0Var.g(cursorB.isNull(iB6) ? null : cursorB.getString(iB6));
                    pw0Var.j(cursorB.isNull(iB7) ? null : cursorB.getString(iB7));
                    pw0Var.y = cursorB.getLong(iB8);
                    int i2 = cursorB.getInt(iB9);
                    xc4[] xc4VarArrValues = xc4.values();
                    int length = xc4VarArrValues.length;
                    int i3 = iB;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            xc4Var = null;
                            break;
                        }
                        int i5 = length;
                        xc4Var = xc4VarArrValues[i4];
                        xc4[] xc4VarArr = xc4VarArrValues;
                        if (xc4Var.r == i2) {
                            break;
                        }
                        i4++;
                        length = i5;
                        xc4VarArrValues = xc4VarArr;
                    }
                    pw0Var.k(xc4Var);
                    pw0Var.i(cursorB.isNull(iB10) ? null : cursorB.getString(iB10));
                    arrayList.add(pw0Var);
                    iB2 = i;
                    iB = i3;
                    str = null;
                }
                return arrayList;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class d implements Callable<List<pw0>> {
        public final /* synthetic */ yt3 r;

        public d(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<pw0> call() {
            xc4 xc4Var;
            String str = null;
            Cursor cursorB = lh0.b(lz0.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "task_id");
                int iB2 = yg0.b(cursorB, "external_id");
                int iB3 = yg0.b(cursorB, "progress_bytes");
                int iB4 = yg0.b(cursorB, "title");
                int iB5 = yg0.b(cursorB, "url");
                int iB6 = yg0.b(cursorB, "img");
                int iB7 = yg0.b(cursorB, FileDownloadModel.PATH);
                int iB8 = yg0.b(cursorB, "size_bytes");
                int iB9 = yg0.b(cursorB, FileDownloadModel.STATUS);
                int iB10 = yg0.b(cursorB, "last_updated");
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    pw0 pw0Var = new pw0();
                    pw0Var.r = cursorB.getInt(iB);
                    pw0Var.f(cursorB.isNull(iB2) ? str : cursorB.getString(iB2));
                    int i = iB2;
                    pw0Var.t = cursorB.getLong(iB3);
                    pw0Var.l(cursorB.isNull(iB4) ? null : cursorB.getString(iB4));
                    pw0Var.m(cursorB.isNull(iB5) ? null : cursorB.getString(iB5));
                    pw0Var.g(cursorB.isNull(iB6) ? null : cursorB.getString(iB6));
                    pw0Var.j(cursorB.isNull(iB7) ? null : cursorB.getString(iB7));
                    pw0Var.y = cursorB.getLong(iB8);
                    int i2 = cursorB.getInt(iB9);
                    xc4[] xc4VarArrValues = xc4.values();
                    int length = xc4VarArrValues.length;
                    int i3 = iB;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            xc4Var = null;
                            break;
                        }
                        xc4Var = xc4VarArrValues[i4];
                        int i5 = length;
                        if (xc4Var.r == i2) {
                            break;
                        }
                        i4++;
                        length = i5;
                    }
                    pw0Var.k(xc4Var);
                    pw0Var.i(cursorB.isNull(iB10) ? null : cursorB.getString(iB10));
                    arrayList.add(pw0Var);
                    iB2 = i;
                    iB = i3;
                    str = null;
                }
                return arrayList;
            } finally {
                cursorB.close();
            }
        }

        public void finalize() {
            this.r.c();
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class e implements Callable<Boolean> {
        public final /* synthetic */ yt3 r;

        public e(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() {
            Boolean boolValueOf = null;
            Cursor cursorB = lh0.b(lz0.this.a, this.r, false, null);
            try {
                if (cursorB.moveToFirst()) {
                    Integer numValueOf = cursorB.isNull(0) ? null : Integer.valueOf(cursorB.getInt(0));
                    if (numValueOf != null) {
                        boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                    }
                }
                return boolValueOf;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class f extends x31<pw0> {
        public f(lz0 lz0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `Downloads` (`task_id`,`external_id`,`progress_bytes`,`title`,`url`,`img`,`path`,`size_bytes`,`status`,`last_updated`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, pw0 pw0Var) {
            pw0 pw0Var2 = pw0Var;
            ci4Var.h0(1, pw0Var2.r);
            String str = pw0Var2.s;
            if (str == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str);
            }
            ci4Var.h0(3, pw0Var2.t);
            String str2 = pw0Var2.u;
            if (str2 == null) {
                ci4Var.T0(4);
            } else {
                ci4Var.I(4, str2);
            }
            String str3 = pw0Var2.v;
            if (str3 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str3);
            }
            String str4 = pw0Var2.w;
            if (str4 == null) {
                ci4Var.T0(6);
            } else {
                ci4Var.I(6, str4);
            }
            String str5 = pw0Var2.x;
            if (str5 == null) {
                ci4Var.T0(7);
            } else {
                ci4Var.I(7, str5);
            }
            ci4Var.h0(8, pw0Var2.y);
            xc4 xc4Var = pw0Var2.z;
            j32.e(xc4Var, "value");
            ci4Var.h0(9, xc4Var.r);
            String str6 = pw0Var2.B;
            if (str6 == null) {
                ci4Var.T0(10);
            } else {
                ci4Var.I(10, str6);
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class g implements Callable<Integer> {
        public final /* synthetic */ yt3 r;

        public g(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public Integer call() {
            Integer numValueOf = null;
            Cursor cursorB = lh0.b(lz0.this.a, this.r, false, null);
            try {
                if (cursorB.moveToFirst() && !cursorB.isNull(0)) {
                    numValueOf = Integer.valueOf(cursorB.getInt(0));
                }
                return numValueOf;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class h implements Callable<List<pw0>> {
        public final /* synthetic */ yt3 r;

        public h(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<pw0> call() {
            xc4 xc4Var;
            String str = null;
            Cursor cursorB = lh0.b(lz0.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "task_id");
                int iB2 = yg0.b(cursorB, "external_id");
                int iB3 = yg0.b(cursorB, "progress_bytes");
                int iB4 = yg0.b(cursorB, "title");
                int iB5 = yg0.b(cursorB, "url");
                int iB6 = yg0.b(cursorB, "img");
                int iB7 = yg0.b(cursorB, FileDownloadModel.PATH);
                int iB8 = yg0.b(cursorB, "size_bytes");
                int iB9 = yg0.b(cursorB, FileDownloadModel.STATUS);
                int iB10 = yg0.b(cursorB, "last_updated");
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    pw0 pw0Var = new pw0();
                    pw0Var.r = cursorB.getInt(iB);
                    pw0Var.f(cursorB.isNull(iB2) ? str : cursorB.getString(iB2));
                    int i = iB2;
                    pw0Var.t = cursorB.getLong(iB3);
                    pw0Var.l(cursorB.isNull(iB4) ? null : cursorB.getString(iB4));
                    pw0Var.m(cursorB.isNull(iB5) ? null : cursorB.getString(iB5));
                    pw0Var.g(cursorB.isNull(iB6) ? null : cursorB.getString(iB6));
                    pw0Var.j(cursorB.isNull(iB7) ? null : cursorB.getString(iB7));
                    pw0Var.y = cursorB.getLong(iB8);
                    int i2 = cursorB.getInt(iB9);
                    xc4[] xc4VarArrValues = xc4.values();
                    int length = xc4VarArrValues.length;
                    int i3 = iB;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            xc4Var = null;
                            break;
                        }
                        int i5 = length;
                        xc4Var = xc4VarArrValues[i4];
                        xc4[] xc4VarArr = xc4VarArrValues;
                        if (xc4Var.r == i2) {
                            break;
                        }
                        i4++;
                        length = i5;
                        xc4VarArrValues = xc4VarArr;
                    }
                    pw0Var.k(xc4Var);
                    pw0Var.i(cursorB.isNull(iB10) ? null : cursorB.getString(iB10));
                    arrayList.add(pw0Var);
                    iB2 = i;
                    iB = i3;
                    str = null;
                }
                return arrayList;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class i extends w31<pw0> {
        public i(lz0 lz0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE OR ABORT `Downloads` SET `task_id` = ?,`external_id` = ?,`progress_bytes` = ?,`title` = ?,`url` = ?,`img` = ?,`path` = ?,`size_bytes` = ?,`status` = ?,`last_updated` = ? WHERE `task_id` = ? AND `external_id` = ?";
        }

        @Override // com.shabakaty.downloader.w31
        public void e(ci4 ci4Var, pw0 pw0Var) {
            pw0 pw0Var2 = pw0Var;
            ci4Var.h0(1, pw0Var2.r);
            String str = pw0Var2.s;
            if (str == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str);
            }
            ci4Var.h0(3, pw0Var2.t);
            String str2 = pw0Var2.u;
            if (str2 == null) {
                ci4Var.T0(4);
            } else {
                ci4Var.I(4, str2);
            }
            String str3 = pw0Var2.v;
            if (str3 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str3);
            }
            String str4 = pw0Var2.w;
            if (str4 == null) {
                ci4Var.T0(6);
            } else {
                ci4Var.I(6, str4);
            }
            String str5 = pw0Var2.x;
            if (str5 == null) {
                ci4Var.T0(7);
            } else {
                ci4Var.I(7, str5);
            }
            ci4Var.h0(8, pw0Var2.y);
            xc4 xc4Var = pw0Var2.z;
            j32.e(xc4Var, "value");
            ci4Var.h0(9, xc4Var.r);
            String str6 = pw0Var2.B;
            if (str6 == null) {
                ci4Var.T0(10);
            } else {
                ci4Var.I(10, str6);
            }
            ci4Var.h0(11, pw0Var2.r);
            String str7 = pw0Var2.s;
            if (str7 == null) {
                ci4Var.T0(12);
            } else {
                ci4Var.I(12, str7);
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class j extends f54 {
        public j(lz0 lz0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "DELETE FROM Downloads WHERE ? = task_id";
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class k implements Callable<Long> {
        public final /* synthetic */ pw0 r;

        public k(pw0 pw0Var) {
            this.r = pw0Var;
        }

        @Override // java.util.concurrent.Callable
        public Long call() {
            vt3 vt3Var = lz0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                long jG = lz0.this.b.g(this.r);
                lz0.this.a.n();
                return Long.valueOf(jG);
            } finally {
                lz0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class l implements Callable<qv4> {
        public final /* synthetic */ List r;

        public l(List list) {
            this.r = list;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = lz0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                x31<pw0> x31Var = lz0.this.b;
                List list = this.r;
                ci4 ci4VarA = x31Var.a();
                try {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        x31Var.e(ci4VarA, (pw0) it.next());
                        ci4VarA.u1();
                    }
                    x31Var.d(ci4VarA);
                    lz0.this.a.n();
                    qv4 qv4Var = qv4.a;
                    lz0.this.a.j();
                    return qv4Var;
                } catch (Throwable th) {
                    x31Var.d(ci4VarA);
                    throw th;
                }
            } catch (Throwable th2) {
                lz0.this.a.j();
                throw th2;
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class m implements Callable<qv4> {
        public final /* synthetic */ pw0 r;

        public m(pw0 pw0Var) {
            this.r = pw0Var;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = lz0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                lz0.this.c.f(this.r);
                lz0.this.a.n();
                return qv4.a;
            } finally {
                lz0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadsDao_Impl.java */
    public class n implements Callable<qv4> {
        public final /* synthetic */ int r;

        public n(int i) {
            this.r = i;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = lz0.this.d.a();
            ci4VarA.h0(1, this.r);
            vt3 vt3Var = lz0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                lz0.this.a.n();
                return qv4.a;
            } finally {
                lz0.this.a.j();
                f54 f54Var = lz0.this.d;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    public lz0(vt3 vt3Var) {
        this.a = vt3Var;
        this.b = new f(this, vt3Var);
        this.c = new i(this, vt3Var);
        this.d = new j(this, vt3Var);
        new AtomicBoolean(false);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object a(int i2, ud0<? super pw0> ud0Var) {
        yt3 yt3VarA = yt3.a("SELECT * FROM Downloads WHERE ? = task_id", 1);
        yt3VarA.h0(1, i2);
        return af0.b(this.a, false, new CancellationSignal(), new a(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object b(ud0<? super List<pw0>> ud0Var) {
        yt3 yt3VarA = yt3.a("SELECT * FROM Downloads", 0);
        return af0.b(this.a, false, new CancellationSignal(), new c(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object c(ud0<? super List<pw0>> ud0Var) {
        yt3 yt3VarA = yt3.a("\n\t\tSELECT *\n\t\tFROM Downloads\n\t\tWHERE status = -1\n\t\tOR (status != 1 AND status != 3 AND status != 6 AND status != -2 AND status != -3)\n\t", 0);
        return af0.b(this.a, false, new CancellationSignal(), new h(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object d(ud0<? super Boolean> ud0Var) {
        yt3 yt3VarA = yt3.a("SELECT count(*) FROM (select 0 from Downloads limit 1)", 0);
        return af0.b(this.a, false, new CancellationSignal(), new e(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object e(ud0<? super Integer> ud0Var) {
        yt3 yt3VarA = yt3.a("\n\t\tSELECT Count(task_id)\n\t\tFROM Downloads\n\t\tWHERE status = 1 OR status = 3 OR status = 6\n\t", 0);
        return af0.b(this.a, false, new CancellationSignal(), new g(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object f(String str, ud0<? super pw0> ud0Var) {
        yt3 yt3VarA = yt3.a("SELECT * FROM Downloads WHERE ? = external_id", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        return af0.b(this.a, false, new CancellationSignal(), new b(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object g(List<pw0> list, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new l(list), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object h(int i2, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new n(i2), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object i(pw0 pw0Var, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new m(pw0Var), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public Object j(pw0 pw0Var, ud0<? super Long> ud0Var) {
        return af0.c(this.a, true, new k(pw0Var), ud0Var);
    }

    @Override // com.shabakaty.downloader.kz0
    public te1<List<pw0>> k() {
        return af0.a(this.a, false, new String[]{"Downloads"}, new d(yt3.a("SELECT * FROM Downloads", 0)));
    }
}
