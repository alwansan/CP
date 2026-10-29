package com.shabakaty.downloader;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import com.shabakaty.cinemana.data.db.search.SearchItem;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SearchDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class wy3 implements vy3 {
    public final vt3 a;
    public final x31<SearchItem> b;
    public final f54 c;

    /* JADX INFO: compiled from: SearchDao_Impl.java */
    public class a implements Callable<List<SearchItem>> {
        public final /* synthetic */ yt3 r;

        public a(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<SearchItem> call() {
            Cursor cursorB = lh0.b(wy3.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "nb");
                int iB2 = yg0.b(cursorB, "enTitle");
                int iB3 = yg0.b(cursorB, "arTitle");
                int iB4 = yg0.b(cursorB, "stars");
                int iB5 = yg0.b(cursorB, "year");
                int iB6 = yg0.b(cursorB, "kind");
                int iB7 = yg0.b(cursorB, "season");
                int iB8 = yg0.b(cursorB, "imgObjUrl");
                int iB9 = yg0.b(cursorB, "episodeNummer");
                int iB10 = yg0.b(cursorB, "rate");
                int iB11 = yg0.b(cursorB, "imgMediumThumbObjUrl");
                int iB12 = yg0.b(cursorB, "categoryEn");
                int iB13 = yg0.b(cursorB, "categoryAr");
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    arrayList.add(new SearchItem(cursorB.isNull(iB) ? null : cursorB.getString(iB), cursorB.isNull(iB2) ? null : cursorB.getString(iB2), cursorB.isNull(iB3) ? null : cursorB.getString(iB3), cursorB.isNull(iB4) ? null : cursorB.getString(iB4), cursorB.isNull(iB5) ? null : cursorB.getString(iB5), cursorB.isNull(iB6) ? null : cursorB.getString(iB6), cursorB.isNull(iB7) ? null : cursorB.getString(iB7), cursorB.isNull(iB8) ? null : cursorB.getString(iB8), cursorB.isNull(iB9) ? null : cursorB.getString(iB9), cursorB.isNull(iB10) ? null : cursorB.getString(iB10), cursorB.isNull(iB11) ? null : cursorB.getString(iB11), cursorB.isNull(iB12) ? null : cursorB.getString(iB12), cursorB.isNull(iB13) ? null : cursorB.getString(iB13)));
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

    /* JADX INFO: compiled from: SearchDao_Impl.java */
    public class b extends x31<SearchItem> {
        public b(wy3 wy3Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `search_table` (`nb`,`enTitle`,`arTitle`,`stars`,`year`,`kind`,`season`,`imgObjUrl`,`episodeNummer`,`rate`,`imgMediumThumbObjUrl`,`categoryEn`,`categoryAr`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, SearchItem searchItem) {
            SearchItem searchItem2 = searchItem;
            String str = searchItem2.nb;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            String str2 = searchItem2.enTitle;
            if (str2 == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str2);
            }
            String str3 = searchItem2.arTitle;
            if (str3 == null) {
                ci4Var.T0(3);
            } else {
                ci4Var.I(3, str3);
            }
            String str4 = searchItem2.stars;
            if (str4 == null) {
                ci4Var.T0(4);
            } else {
                ci4Var.I(4, str4);
            }
            String str5 = searchItem2.year;
            if (str5 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str5);
            }
            String str6 = searchItem2.kind;
            if (str6 == null) {
                ci4Var.T0(6);
            } else {
                ci4Var.I(6, str6);
            }
            String str7 = searchItem2.season;
            if (str7 == null) {
                ci4Var.T0(7);
            } else {
                ci4Var.I(7, str7);
            }
            String str8 = searchItem2.imgObjUrl;
            if (str8 == null) {
                ci4Var.T0(8);
            } else {
                ci4Var.I(8, str8);
            }
            String str9 = searchItem2.episodeNummer;
            if (str9 == null) {
                ci4Var.T0(9);
            } else {
                ci4Var.I(9, str9);
            }
            String str10 = searchItem2.rate;
            if (str10 == null) {
                ci4Var.T0(10);
            } else {
                ci4Var.I(10, str10);
            }
            String str11 = searchItem2.imgMediumThumbObjUrl;
            if (str11 == null) {
                ci4Var.T0(11);
            } else {
                ci4Var.I(11, str11);
            }
            String str12 = searchItem2.categoryEn;
            if (str12 == null) {
                ci4Var.T0(12);
            } else {
                ci4Var.I(12, str12);
            }
            String str13 = searchItem2.categoryAr;
            if (str13 == null) {
                ci4Var.T0(13);
            } else {
                ci4Var.I(13, str13);
            }
        }
    }

    /* JADX INFO: compiled from: SearchDao_Impl.java */
    public class c extends f54 {
        public c(wy3 wy3Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "DELETE FROM search_table";
        }
    }

    public wy3(vt3 vt3Var) {
        this.a = vt3Var;
        this.b = new b(this, vt3Var);
        new AtomicBoolean(false);
        new AtomicBoolean(false);
        this.c = new c(this, vt3Var);
    }

    @Override // com.shabakaty.downloader.vy3
    public void G() {
        this.a.b();
        ci4 ci4VarA = this.c.a();
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.c;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.c.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.vy3
    public void m(SearchItem searchItem) {
        this.a.b();
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            this.b.f(searchItem);
            this.a.n();
        } finally {
            this.a.j();
        }
    }

    @Override // com.shabakaty.downloader.vy3
    public LiveData<List<SearchItem>> s() {
        return this.a.e.b(new String[]{"search_table"}, false, new a(yt3.a("SELECT * FROM search_table", 0)));
    }
}
