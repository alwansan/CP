package com.shabakaty.downloader;

import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.lifecycle.LiveData;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.ca1.Commit105;
import com.shabakaty.cinemana.ca1.Delete101;
import com.shabakaty.cinemana.ca1.EpisodeSidecarCleanup;
import com.shabakaty.cinemana.ca1.Recovery92;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.CombinedDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.SkippingDurationsDB;
import com.shabakaty.cinemana.data.db.downloads.SubtitleDb;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: DownloadDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class kw0 implements jw0 {
    public final vt3 a;
    public final x31<CinemanaDownloadItem> b;
    public final ce4 c = new ce4();
    public final x31<SubtitleDb> d;
    public final x31<p84> e;
    public final x31<gz0> f;
    public final w31<CinemanaDownloadItem> g;
    public final w31<gz0> h;
    public final f54 i;
    public final f54 j;

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class a extends f54 {
        public a(kw0 kw0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "DELETE FROM DownloadsCollectionItem WHERE ? = id";
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class b extends f54 {
        public b(kw0 kw0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "DELETE FROM CinemanaDownloadItem WHERE ? = id";
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class c implements Callable<qv4> {
        public final /* synthetic */ CinemanaDownloadItem r;

        public c(CinemanaDownloadItem cinemanaDownloadItem) {
            this.r = cinemanaDownloadItem;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                kw0.this.b.f(this.r);
                kw0.this.a.n();
                return qv4.a;
            } finally {
                kw0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class d implements Callable<qv4> {
        public final /* synthetic */ SubtitleDb r;

        public d(SubtitleDb subtitleDb) {
            this.r = subtitleDb;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                kw0.this.d.f(this.r);
                kw0.this.a.n();
                return qv4.a;
            } finally {
                kw0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class e implements Callable<qv4> {
        public final /* synthetic */ p84 r;

        public e(p84 p84Var) {
            this.r = p84Var;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                kw0.this.e.f(this.r);
                kw0.this.a.n();
                return qv4.a;
            } finally {
                kw0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class f implements Callable<Long> {
        public final /* synthetic */ gz0 r;

        public f(gz0 gz0Var) {
            this.r = gz0Var;
        }

        @Override // java.util.concurrent.Callable
        public Long call() {
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                long jG = kw0.this.f.g(this.r);
                kw0.this.a.n();
                return Long.valueOf(jG);
            } finally {
                kw0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class g extends x31<CinemanaDownloadItem> {
        public g(vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `CinemanaDownloadItem` (`id`,`downloadTaskId`,`title`,`stars`,`kind`,`sizeMB`,`season`,`imgObjUrl`,`filmRating`,`tvShowRating`,`path`,`episodeNumber`,`special`,`useParentImg`,`parentSkipping`,`collectionID`,`imgThumbObjUrl`,`qualityName`,`rootEpisode`,`hasIntroSkipping`,`episodeFlag`,`lastUpdated`,`skippingDurations_start`,`skippingDurations_end`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, CinemanaDownloadItem cinemanaDownloadItem) {
            CinemanaDownloadItem cinemanaDownloadItem2 = cinemanaDownloadItem;
            String str = cinemanaDownloadItem2.id;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            ci4Var.h0(2, cinemanaDownloadItem2.downloadTaskId);
            String str2 = cinemanaDownloadItem2.title;
            if (str2 == null) {
                ci4Var.T0(3);
            } else {
                ci4Var.I(3, str2);
            }
            String str3 = cinemanaDownloadItem2.stars;
            if (str3 == null) {
                ci4Var.T0(4);
            } else {
                ci4Var.I(4, str3);
            }
            String str4 = cinemanaDownloadItem2.kind;
            if (str4 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str4);
            }
            ci4Var.h0(6, cinemanaDownloadItem2.sizeMB);
            String str5 = cinemanaDownloadItem2.season;
            if (str5 == null) {
                ci4Var.T0(7);
            } else {
                ci4Var.I(7, str5);
            }
            String str6 = cinemanaDownloadItem2.imgObjUrl;
            if (str6 == null) {
                ci4Var.T0(8);
            } else {
                ci4Var.I(8, str6);
            }
            String str7 = cinemanaDownloadItem2.filmRating;
            if (str7 == null) {
                ci4Var.T0(9);
            } else {
                ci4Var.I(9, str7);
            }
            String str8 = cinemanaDownloadItem2.tvShowRating;
            if (str8 == null) {
                ci4Var.T0(10);
            } else {
                ci4Var.I(10, str8);
            }
            String str9 = cinemanaDownloadItem2.path;
            if (str9 == null) {
                ci4Var.T0(11);
            } else {
                ci4Var.I(11, str9);
            }
            String str10 = cinemanaDownloadItem2.episodeNumber;
            if (str10 == null) {
                ci4Var.T0(12);
            } else {
                ci4Var.I(12, str10);
            }
            String str11 = cinemanaDownloadItem2.special;
            if (str11 == null) {
                ci4Var.T0(13);
            } else {
                ci4Var.I(13, str11);
            }
            String str12 = cinemanaDownloadItem2.useParentImg;
            if (str12 == null) {
                ci4Var.T0(14);
            } else {
                ci4Var.I(14, str12);
            }
            String str13 = cinemanaDownloadItem2.parentSkipping;
            if (str13 == null) {
                ci4Var.T0(15);
            } else {
                ci4Var.I(15, str13);
            }
            ci4Var.h0(16, cinemanaDownloadItem2.collectionID);
            String str14 = cinemanaDownloadItem2.imgThumbObjUrl;
            if (str14 == null) {
                ci4Var.T0(17);
            } else {
                ci4Var.I(17, str14);
            }
            String str15 = cinemanaDownloadItem2.qualityName;
            if (str15 == null) {
                ci4Var.T0(18);
            } else {
                ci4Var.I(18, str15);
            }
            String str16 = cinemanaDownloadItem2.rootEpisode;
            if (str16 == null) {
                ci4Var.T0(19);
            } else {
                ci4Var.I(19, str16);
            }
            ci4Var.h0(20, cinemanaDownloadItem2.hasIntroSkipping ? 1L : 0L);
            String str17 = cinemanaDownloadItem2.episodeFlag;
            if (str17 == null) {
                ci4Var.T0(21);
            } else {
                ci4Var.I(21, str17);
            }
            String str18 = cinemanaDownloadItem2.lastUpdated;
            if (str18 == null) {
                ci4Var.T0(22);
            } else {
                ci4Var.I(22, str18);
            }
            SkippingDurationsDB skippingDurationsDB = cinemanaDownloadItem2.skippingDurations;
            if (skippingDurationsDB != null) {
                ci4Var.I(23, kw0.this.c.a(skippingDurationsDB.start));
                ci4Var.I(24, kw0.this.c.a(skippingDurationsDB.end));
            } else {
                ci4Var.T0(23);
                ci4Var.T0(24);
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class h implements Callable<qv4> {
        public final /* synthetic */ CinemanaDownloadItem r;

        public h(CinemanaDownloadItem cinemanaDownloadItem) {
            this.r = cinemanaDownloadItem;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                kw0.this.g.f(this.r);
                kw0.this.a.n();
                return qv4.a;
            } finally {
                kw0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class i implements Callable<qv4> {
        public final /* synthetic */ gz0 r;

        public i(gz0 gz0Var) {
            this.r = gz0Var;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                kw0.this.h.f(this.r);
                kw0.this.a.n();
                return qv4.a;
            } finally {
                kw0.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class j extends x31<SubtitleDb> {
        public j(kw0 kw0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `SubtitleDb` (`id`,`parentId`,`downloadTaskId`,`name`,`type`,`extension`,`file`) VALUES (?,?,?,?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, SubtitleDb subtitleDb) {
            SubtitleDb subtitleDb2 = subtitleDb;
            String str = subtitleDb2.id;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            String str2 = subtitleDb2.parentId;
            if (str2 == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str2);
            }
            ci4Var.h0(3, subtitleDb2.downloadTaskId);
            String str3 = subtitleDb2.name;
            if (str3 == null) {
                ci4Var.T0(4);
            } else {
                ci4Var.I(4, str3);
            }
            String str4 = subtitleDb2.type;
            if (str4 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str4);
            }
            String str5 = subtitleDb2.extension;
            if (str5 == null) {
                ci4Var.T0(6);
            } else {
                ci4Var.I(6, str5);
            }
            String str6 = subtitleDb2.file;
            if (str6 == null) {
                ci4Var.T0(7);
            } else {
                ci4Var.I(7, str6);
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class k implements Callable<qv4> {
        public final /* synthetic */ Integer r;

        public k(Integer num) {
            this.r = num;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = kw0.this.i.a();
            Integer num = this.r;
            if (num == null) {
                ci4VarA.T0(1);
            } else {
                ci4VarA.h0(1, num.intValue());
            }
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                kw0.this.a.n();
                qv4 qv4Var = qv4.a;
                kw0.this.a.j();
                f54 f54Var = kw0.this.i;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
                return qv4Var;
            } catch (Throwable th) {
                kw0.this.a.j();
                kw0.this.i.d(ci4VarA);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class l implements Callable<qv4> {
        public final /* synthetic */ String r;

        public l(String str) {
            this.r = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            String strCapturePath = EpisodeSidecarCleanup.capturePath(Ui7.app, this.r);
            ci4 ci4VarA = kw0.this.j.a();
            String str = this.r;
            if (str == null) {
                ci4VarA.T0(1);
            } else {
                ci4VarA.I(1, str);
            }
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                kw0.this.a.n();
                qv4 qv4Var = qv4.a;
                try {
                    Context context = Ui7.app;
                    if (context != null) {
                        EpisodeSidecarCleanup.deleted(context, this.r);
                        EpisodeSidecarCleanup.deletedPath(context, strCapturePath);
                    }
                } catch (Throwable th) {
                }
                kw0.this.a.j();
                f54 f54Var = kw0.this.j;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
                return qv4Var;
            } catch (Throwable th2) {
                kw0.this.a.j();
                kw0.this.j.d(ci4VarA);
                throw th2;
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class m implements Callable<List<CinemanaDownloadItem>> {
        public final /* synthetic */ yt3 r;

        public m(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<CinemanaDownloadItem> call() throws Throwable {
            int i;
            int i2;
            SkippingDurationsDB skippingDurationsDB;
            Cursor cursorB = lh0.b(kw0.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "id");
                int iB2 = yg0.b(cursorB, "downloadTaskId");
                int iB3 = yg0.b(cursorB, "title");
                int iB4 = yg0.b(cursorB, "stars");
                int iB5 = yg0.b(cursorB, "kind");
                int iB6 = yg0.b(cursorB, "sizeMB");
                int iB7 = yg0.b(cursorB, "season");
                int iB8 = yg0.b(cursorB, "imgObjUrl");
                int iB9 = yg0.b(cursorB, "filmRating");
                int iB10 = yg0.b(cursorB, "tvShowRating");
                int iB11 = yg0.b(cursorB, FileDownloadModel.PATH);
                int iB12 = yg0.b(cursorB, "episodeNumber");
                int iB13 = yg0.b(cursorB, "special");
                int iB14 = yg0.b(cursorB, "useParentImg");
                try {
                    int iB15 = yg0.b(cursorB, "parentSkipping");
                    int iB16 = yg0.b(cursorB, "collectionID");
                    int iB17 = yg0.b(cursorB, "imgThumbObjUrl");
                    int iB18 = yg0.b(cursorB, "qualityName");
                    int iB19 = yg0.b(cursorB, "rootEpisode");
                    int iB20 = yg0.b(cursorB, "hasIntroSkipping");
                    int iB21 = yg0.b(cursorB, "episodeFlag");
                    int iB22 = yg0.b(cursorB, "lastUpdated");
                    int iB23 = yg0.b(cursorB, "skippingDurations_start");
                    int iB24 = yg0.b(cursorB, "skippingDurations_end");
                    int i3 = iB14;
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        String string = cursorB.isNull(iB) ? null : cursorB.getString(iB);
                        int i4 = cursorB.getInt(iB2);
                        String string2 = cursorB.isNull(iB3) ? null : cursorB.getString(iB3);
                        String string3 = cursorB.isNull(iB4) ? null : cursorB.getString(iB4);
                        String string4 = cursorB.isNull(iB5) ? null : cursorB.getString(iB5);
                        int i5 = cursorB.getInt(iB6);
                        String string5 = cursorB.isNull(iB7) ? null : cursorB.getString(iB7);
                        String string6 = cursorB.isNull(iB8) ? null : cursorB.getString(iB8);
                        String string7 = cursorB.isNull(iB9) ? null : cursorB.getString(iB9);
                        String string8 = cursorB.isNull(iB10) ? null : cursorB.getString(iB10);
                        String string9 = cursorB.isNull(iB11) ? null : cursorB.getString(iB11);
                        String string10 = cursorB.isNull(iB12) ? null : cursorB.getString(iB12);
                        String string11 = cursorB.isNull(iB13) ? null : cursorB.getString(iB13);
                        String string12 = cursorB.isNull(i3) ? null : cursorB.getString(i3);
                        int i6 = iB;
                        int i7 = iB15;
                        String string13 = cursorB.isNull(i7) ? null : cursorB.getString(i7);
                        iB15 = i7;
                        int i8 = iB16;
                        int i9 = cursorB.getInt(i8);
                        iB16 = i8;
                        iB17 = iB17;
                        String string14 = cursorB.isNull(iB17) ? null : cursorB.getString(iB17);
                        String string15 = cursorB.isNull(iB18) ? null : cursorB.getString(iB18);
                        String string16 = cursorB.isNull(iB19) ? null : cursorB.getString(iB19);
                        boolean z = cursorB.getInt(iB20) != 0;
                        String string17 = cursorB.isNull(iB21) ? null : cursorB.getString(iB21);
                        String string18 = cursorB.isNull(iB22) ? null : cursorB.getString(iB22);
                        try {
                            if (cursorB.isNull(iB23)) {
                                i = iB13;
                                i2 = iB24;
                                if (cursorB.isNull(i2)) {
                                    iB23 = iB23;
                                    i2 = i2;
                                    skippingDurationsDB = null;
                                }
                                arrayList.add(new CinemanaDownloadItem(string, i4, string2, string3, string4, i5, string5, string6, string7, string8, string9, string10, string11, string12, string13, i9, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                                iB13 = i;
                                iB = i6;
                                iB23 = iB23;
                                iB2 = iB2;
                                i3 = i3;
                                iB24 = i2;
                            } else {
                                i = iB13;
                                i2 = iB24;
                            }
                            skippingDurationsDB = new SkippingDurationsDB(kw0.this.c.b(cursorB.isNull(iB23) ? null : cursorB.getString(iB23)), kw0.this.c.b(cursorB.isNull(i2) ? null : cursorB.getString(i2)));
                            arrayList.add(new CinemanaDownloadItem(string, i4, string2, string3, string4, i5, string5, string6, string7, string8, string9, string10, string11, string12, string13, i9, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                            iB13 = i;
                            iB = i6;
                            iB23 = iB23;
                            iB2 = iB2;
                            i3 = i3;
                            iB24 = i2;
                        } catch (Throwable th) {
                            th = th;
                            cursorB.close();
                            throw th;
                        }
                    }
                    cursorB.close();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        public void finalize() {
            this.r.c();
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class n implements Callable<List<CinemanaDownloadItem>> {
        public final /* synthetic */ yt3 r;

        public n(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<CinemanaDownloadItem> call() throws Throwable {
            int i;
            int i2;
            SkippingDurationsDB skippingDurationsDB;
            Cursor cursorB = lh0.b(kw0.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "id");
                int iB2 = yg0.b(cursorB, "downloadTaskId");
                int iB3 = yg0.b(cursorB, "title");
                int iB4 = yg0.b(cursorB, "stars");
                int iB5 = yg0.b(cursorB, "kind");
                int iB6 = yg0.b(cursorB, "sizeMB");
                int iB7 = yg0.b(cursorB, "season");
                int iB8 = yg0.b(cursorB, "imgObjUrl");
                int iB9 = yg0.b(cursorB, "filmRating");
                int iB10 = yg0.b(cursorB, "tvShowRating");
                int iB11 = yg0.b(cursorB, FileDownloadModel.PATH);
                int iB12 = yg0.b(cursorB, "episodeNumber");
                int iB13 = yg0.b(cursorB, "special");
                int iB14 = yg0.b(cursorB, "useParentImg");
                try {
                    int iB15 = yg0.b(cursorB, "parentSkipping");
                    int iB16 = yg0.b(cursorB, "collectionID");
                    int iB17 = yg0.b(cursorB, "imgThumbObjUrl");
                    int iB18 = yg0.b(cursorB, "qualityName");
                    int iB19 = yg0.b(cursorB, "rootEpisode");
                    int iB20 = yg0.b(cursorB, "hasIntroSkipping");
                    int iB21 = yg0.b(cursorB, "episodeFlag");
                    int iB22 = yg0.b(cursorB, "lastUpdated");
                    int iB23 = yg0.b(cursorB, "skippingDurations_start");
                    int iB24 = yg0.b(cursorB, "skippingDurations_end");
                    int i3 = iB14;
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        String string = cursorB.isNull(iB) ? null : cursorB.getString(iB);
                        int i4 = cursorB.getInt(iB2);
                        String string2 = cursorB.isNull(iB3) ? null : cursorB.getString(iB3);
                        String string3 = cursorB.isNull(iB4) ? null : cursorB.getString(iB4);
                        String string4 = cursorB.isNull(iB5) ? null : cursorB.getString(iB5);
                        int i5 = cursorB.getInt(iB6);
                        String string5 = cursorB.isNull(iB7) ? null : cursorB.getString(iB7);
                        String string6 = cursorB.isNull(iB8) ? null : cursorB.getString(iB8);
                        String string7 = cursorB.isNull(iB9) ? null : cursorB.getString(iB9);
                        String string8 = cursorB.isNull(iB10) ? null : cursorB.getString(iB10);
                        String string9 = cursorB.isNull(iB11) ? null : cursorB.getString(iB11);
                        String string10 = cursorB.isNull(iB12) ? null : cursorB.getString(iB12);
                        String string11 = cursorB.isNull(iB13) ? null : cursorB.getString(iB13);
                        String string12 = cursorB.isNull(i3) ? null : cursorB.getString(i3);
                        int i6 = iB;
                        int i7 = iB15;
                        String string13 = cursorB.isNull(i7) ? null : cursorB.getString(i7);
                        iB15 = i7;
                        int i8 = iB16;
                        int i9 = cursorB.getInt(i8);
                        iB16 = i8;
                        iB17 = iB17;
                        String string14 = cursorB.isNull(iB17) ? null : cursorB.getString(iB17);
                        String string15 = cursorB.isNull(iB18) ? null : cursorB.getString(iB18);
                        String string16 = cursorB.isNull(iB19) ? null : cursorB.getString(iB19);
                        boolean z = cursorB.getInt(iB20) != 0;
                        String string17 = cursorB.isNull(iB21) ? null : cursorB.getString(iB21);
                        String string18 = cursorB.isNull(iB22) ? null : cursorB.getString(iB22);
                        try {
                            if (cursorB.isNull(iB23)) {
                                i = iB13;
                                i2 = iB24;
                                if (cursorB.isNull(i2)) {
                                    iB23 = iB23;
                                    i2 = i2;
                                    skippingDurationsDB = null;
                                }
                                arrayList.add(new CinemanaDownloadItem(string, i4, string2, string3, string4, i5, string5, string6, string7, string8, string9, string10, string11, string12, string13, i9, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                                iB13 = i;
                                iB = i6;
                                iB23 = iB23;
                                iB2 = iB2;
                                i3 = i3;
                                iB24 = i2;
                            } else {
                                i = iB13;
                                i2 = iB24;
                            }
                            skippingDurationsDB = new SkippingDurationsDB(kw0.this.c.b(cursorB.isNull(iB23) ? null : cursorB.getString(iB23)), kw0.this.c.b(cursorB.isNull(i2) ? null : cursorB.getString(i2)));
                            arrayList.add(new CinemanaDownloadItem(string, i4, string2, string3, string4, i5, string5, string6, string7, string8, string9, string10, string11, string12, string13, i9, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                            iB13 = i;
                            iB = i6;
                            iB23 = iB23;
                            iB2 = iB2;
                            i3 = i3;
                            iB24 = i2;
                        } catch (Throwable th) {
                            th = th;
                            cursorB.close();
                            throw th;
                        }
                    }
                    cursorB.close();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        public void finalize() {
            this.r.c();
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class o implements Callable<List<d50>> {
        public final /* synthetic */ yt3 r;

        public o(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<d50> call() {
            gz0 gz0Var;
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                Cursor cursorB = lh0.b(kw0.this.a, this.r, true, null);
                try {
                    int iB = yg0.b(cursorB, "id");
                    int iB2 = yg0.b(cursorB, "name");
                    int iB3 = yg0.b(cursorB, "image");
                    jl2<ArrayList<CinemanaDownloadItem>> jl2Var = new jl2<>(10);
                    while (cursorB.moveToNext()) {
                        long j = cursorB.getLong(iB);
                        if (jl2Var.g(j) == null) {
                            jl2Var.k(j, new ArrayList<>());
                        }
                    }
                    cursorB.moveToPosition(-1);
                    kw0.this.L(jl2Var);
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        if (cursorB.isNull(iB) && cursorB.isNull(iB2) && cursorB.isNull(iB3)) {
                            gz0Var = null;
                        } else {
                            gz0Var = new gz0();
                            gz0Var.r = cursorB.getInt(iB);
                            gz0Var.c(cursorB.isNull(iB2) ? null : cursorB.getString(iB2));
                            gz0Var.b(cursorB.isNull(iB3) ? null : cursorB.getString(iB3));
                        }
                        ArrayList<CinemanaDownloadItem> arrayListG = jl2Var.g(cursorB.getLong(iB));
                        if (arrayListG == null) {
                            arrayListG = new ArrayList<>();
                        }
                        arrayList.add(new d50(gz0Var, arrayListG));
                    }
                    kw0.this.a.n();
                    cursorB.close();
                    kw0.this.a.j();
                    return arrayList;
                } catch (Throwable th) {
                    cursorB.close();
                    throw th;
                }
            } catch (Throwable th2) {
                kw0.this.a.j();
                throw th2;
            }
        }

        public void finalize() {
            this.r.c();
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class p implements Callable<CombinedDownloadItem> {
        public final /* synthetic */ yt3 r;

        public p(yt3 yt3Var) {
            this.r = yt3Var;
        }

        /* JADX WARN: Code duplicated, block: B:100:0x025d A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:103:0x026d  */
        /* JADX WARN: Code duplicated, block: B:104:0x0270 A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:107:0x027c  */
        /* JADX WARN: Code duplicated, block: B:108:0x027f A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:111:0x028b  */
        /* JADX WARN: Code duplicated, block: B:112:0x028e A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:115:0x029a  */
        /* JADX WARN: Code duplicated, block: B:116:0x029d A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:119:0x02a9  */
        /* JADX WARN: Code duplicated, block: B:120:0x02ac A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:123:0x02b8  */
        /* JADX WARN: Code duplicated, block: B:124:0x02bb A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:127:0x02c7  */
        /* JADX WARN: Code duplicated, block: B:128:0x02ca A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:131:0x02d6  */
        /* JADX WARN: Code duplicated, block: B:132:0x02db A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:135:0x02e9  */
        /* JADX WARN: Code duplicated, block: B:136:0x02ee A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:139:0x0302  */
        /* JADX WARN: Code duplicated, block: B:140:0x0307 A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:143:0x0315  */
        /* JADX WARN: Code duplicated, block: B:144:0x031a A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:147:0x0328  */
        /* JADX WARN: Code duplicated, block: B:148:0x032d A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:151:0x033b  */
        /* JADX WARN: Code duplicated, block: B:152:0x0340  */
        /* JADX WARN: Code duplicated, block: B:155:0x034b  */
        /* JADX WARN: Code duplicated, block: B:156:0x0350 A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:159:0x035e  */
        /* JADX WARN: Code duplicated, block: B:160:0x0363 A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:163:0x0371 A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:167:0x037d A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:169:0x0383  */
        /* JADX WARN: Code duplicated, block: B:170:0x0385 A[Catch: all -> 0x0210, TRY_LEAVE, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:174:0x0399  */
        /* JADX WARN: Code duplicated, block: B:175:0x039b A[Catch: all -> 0x03fd, TryCatch #3 {all -> 0x03fd, blocks: (B:177:0x03ae, B:178:0x03b5, B:180:0x03c3, B:181:0x03c8, B:183:0x03d6, B:184:0x03db, B:186:0x03e6, B:172:0x038b, B:176:0x039f, B:175:0x039b), top: B:206:0x038b }] */
        /* JADX WARN: Code duplicated, block: B:180:0x03c3 A[Catch: all -> 0x03fd, TryCatch #3 {all -> 0x03fd, blocks: (B:177:0x03ae, B:178:0x03b5, B:180:0x03c3, B:181:0x03c8, B:183:0x03d6, B:184:0x03db, B:186:0x03e6, B:172:0x038b, B:176:0x039f, B:175:0x039b), top: B:206:0x038b }] */
        /* JADX WARN: Code duplicated, block: B:183:0x03d6 A[Catch: all -> 0x03fd, TryCatch #3 {all -> 0x03fd, blocks: (B:177:0x03ae, B:178:0x03b5, B:180:0x03c3, B:181:0x03c8, B:183:0x03d6, B:184:0x03db, B:186:0x03e6, B:172:0x038b, B:176:0x039f, B:175:0x039b), top: B:206:0x038b }] */
        /* JADX WARN: Code duplicated, block: B:82:0x0215  */
        /* JADX WARN: Code duplicated, block: B:87:0x0229  */
        /* JADX WARN: Code duplicated, block: B:88:0x022c A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:91:0x023c  */
        /* JADX WARN: Code duplicated, block: B:92:0x023f A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:95:0x024b  */
        /* JADX WARN: Code duplicated, block: B:96:0x024e A[Catch: all -> 0x0210, TryCatch #0 {all -> 0x0210, blocks: (B:19:0x0122, B:21:0x0128, B:23:0x012e, B:25:0x0134, B:27:0x013a, B:29:0x0140, B:31:0x0146, B:33:0x014c, B:35:0x0152, B:37:0x0158, B:39:0x0160, B:41:0x0168, B:43:0x0172, B:45:0x017c, B:47:0x0184, B:49:0x018e, B:51:0x0198, B:53:0x01a2, B:55:0x01ac, B:57:0x01b6, B:59:0x01c0, B:61:0x01ca, B:63:0x01d4, B:85:0x0223, B:89:0x0232, B:93:0x0245, B:97:0x0254, B:101:0x0263, B:105:0x0276, B:109:0x0285, B:113:0x0294, B:117:0x02a3, B:121:0x02b2, B:125:0x02c1, B:129:0x02d0, B:133:0x02e3, B:137:0x02f6, B:141:0x030f, B:145:0x0322, B:149:0x0335, B:153:0x0345, B:157:0x0358, B:161:0x036b, B:163:0x0371, B:167:0x037d, B:170:0x0385, B:160:0x0363, B:156:0x0350, B:148:0x032d, B:144:0x031a, B:140:0x0307, B:136:0x02ee, B:132:0x02db, B:128:0x02ca, B:124:0x02bb, B:120:0x02ac, B:116:0x029d, B:112:0x028e, B:108:0x027f, B:104:0x0270, B:100:0x025d, B:96:0x024e, B:92:0x023f, B:88:0x022c), top: B:202:0x0122 }] */
        /* JADX WARN: Code duplicated, block: B:99:0x025a  */
        @Override // java.util.concurrent.Callable
        public CombinedDownloadItem call() throws Throwable {
            p pVar;
            CombinedDownloadItem combinedDownloadItem;
            int i;
            int i2;
            ad<String, ArrayList<SubtitleDb>> adVar;
            int i3;
            CinemanaDownloadItem cinemanaDownloadItem;
            ArrayList<SubtitleDb> arrayList;
            ArrayList<p84> arrayList2;
            String string;
            String string2;
            String string3;
            String string4;
            String string5;
            String string6;
            String string7;
            String string8;
            String string9;
            String string10;
            String string11;
            String string12;
            String string13;
            int i4;
            String string14;
            String string15;
            String string16;
            boolean z;
            String string17;
            String string18;
            String string19;
            String string20;
            SkippingDurationsDB skippingDurationsDB;
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                try {
                    Cursor cursorB = lh0.b(kw0.this.a, this.r, true, null);
                    try {
                        int iB = yg0.b(cursorB, "id");
                        int iB2 = yg0.b(cursorB, "downloadTaskId");
                        int iB3 = yg0.b(cursorB, "title");
                        int iB4 = yg0.b(cursorB, "stars");
                        int iB5 = yg0.b(cursorB, "kind");
                        int iB6 = yg0.b(cursorB, "sizeMB");
                        int iB7 = yg0.b(cursorB, "season");
                        int iB8 = yg0.b(cursorB, "imgObjUrl");
                        int iB9 = yg0.b(cursorB, "filmRating");
                        int iB10 = yg0.b(cursorB, "tvShowRating");
                        int iB11 = yg0.b(cursorB, FileDownloadModel.PATH);
                        int iB12 = yg0.b(cursorB, "episodeNumber");
                        int iB13 = yg0.b(cursorB, "special");
                        int iB14 = yg0.b(cursorB, "useParentImg");
                        int iB15 = yg0.b(cursorB, "parentSkipping");
                        int iB16 = yg0.b(cursorB, "collectionID");
                        int iB17 = yg0.b(cursorB, "imgThumbObjUrl");
                        int iB18 = yg0.b(cursorB, "qualityName");
                        int iB19 = yg0.b(cursorB, "rootEpisode");
                        int iB20 = yg0.b(cursorB, "hasIntroSkipping");
                        int iB21 = yg0.b(cursorB, "episodeFlag");
                        int iB22 = yg0.b(cursorB, "lastUpdated");
                        int iB23 = yg0.b(cursorB, "skippingDurations_start");
                        int iB24 = yg0.b(cursorB, "skippingDurations_end");
                        ad<String, ArrayList<SubtitleDb>> adVar2 = new ad<>();
                        ad<String, ArrayList<p84>> adVar3 = new ad<>();
                        while (cursorB.moveToNext()) {
                            int i5 = iB12;
                            String string21 = cursorB.getString(iB);
                            if (adVar2.get(string21) == null) {
                                adVar2.put(string21, new ArrayList<>());
                            }
                            String string22 = cursorB.getString(iB);
                            if (adVar3.get(string22) == null) {
                                adVar3.put(string22, new ArrayList<>());
                            }
                            iB12 = i5;
                            iB11 = iB11;
                        }
                        int i6 = iB11;
                        int i7 = iB12;
                        cursorB.moveToPosition(-1);
                        kw0.this.N(adVar2);
                        kw0.this.M(adVar3);
                        if (!cursorB.moveToFirst()) {
                            pVar = this;
                            combinedDownloadItem = null;
                        } else if (cursorB.isNull(iB)) {
                            try {
                                if (cursorB.isNull(iB2) && cursorB.isNull(iB3) && cursorB.isNull(iB4) && cursorB.isNull(iB5) && cursorB.isNull(iB6) && cursorB.isNull(iB7) && cursorB.isNull(iB8) && cursorB.isNull(iB9) && cursorB.isNull(iB10)) {
                                    i = i6;
                                    if (cursorB.isNull(i)) {
                                        i7 = i7;
                                        if (cursorB.isNull(i7)) {
                                            adVar3 = adVar3;
                                            if (cursorB.isNull(i2)) {
                                                adVar = adVar2;
                                                if (cursorB.isNull(i3)) {
                                                    if (!cursorB.isNull(iB15)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                    } else if (!cursorB.isNull(iB16)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                    } else if (!cursorB.isNull(iB17)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                        iB17 = iB17;
                                                    } else if (!cursorB.isNull(iB18)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                        iB17 = iB17;
                                                        iB18 = iB18;
                                                    } else if (!cursorB.isNull(iB19)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                        iB17 = iB17;
                                                        iB18 = iB18;
                                                        iB19 = iB19;
                                                    } else if (!cursorB.isNull(iB20)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                        iB17 = iB17;
                                                        iB18 = iB18;
                                                        iB19 = iB19;
                                                        iB20 = iB20;
                                                    } else if (!cursorB.isNull(iB21)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                        iB17 = iB17;
                                                        iB18 = iB18;
                                                        iB19 = iB19;
                                                        iB20 = iB20;
                                                        iB21 = iB21;
                                                    } else if (!cursorB.isNull(iB22)) {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                        iB17 = iB17;
                                                        iB18 = iB18;
                                                        iB19 = iB19;
                                                        iB20 = iB20;
                                                        iB21 = iB21;
                                                        iB22 = iB22;
                                                    } else if (cursorB.isNull(iB23)) {
                                                        iB24 = iB24;
                                                        if (cursorB.isNull(iB24)) {
                                                            i2 = iB13;
                                                            i3 = iB14;
                                                            iB15 = iB15;
                                                            iB16 = iB16;
                                                            iB17 = iB17;
                                                            iB18 = iB18;
                                                            iB19 = iB19;
                                                            iB20 = iB20;
                                                            iB21 = iB21;
                                                            iB22 = iB22;
                                                            iB23 = iB23;
                                                            cinemanaDownloadItem = null;
                                                            pVar = this;
                                                        } else {
                                                            i2 = iB13;
                                                            i3 = iB14;
                                                            iB15 = iB15;
                                                            iB16 = iB16;
                                                            iB17 = iB17;
                                                            iB18 = iB18;
                                                            iB19 = iB19;
                                                            iB20 = iB20;
                                                            iB21 = iB21;
                                                            iB22 = iB22;
                                                            iB23 = iB23;
                                                            if (cursorB.isNull(iB)) {
                                                                string = null;
                                                            } else {
                                                                string = cursorB.getString(iB);
                                                            }
                                                            int i8 = cursorB.getInt(iB2);
                                                            if (cursorB.isNull(iB3)) {
                                                                string2 = null;
                                                            } else {
                                                                string2 = cursorB.getString(iB3);
                                                            }
                                                            if (cursorB.isNull(iB4)) {
                                                                string3 = null;
                                                            } else {
                                                                string3 = cursorB.getString(iB4);
                                                            }
                                                            if (cursorB.isNull(iB5)) {
                                                                string4 = null;
                                                            } else {
                                                                string4 = cursorB.getString(iB5);
                                                            }
                                                            int i9 = cursorB.getInt(iB6);
                                                            if (cursorB.isNull(iB7)) {
                                                                string5 = null;
                                                            } else {
                                                                string5 = cursorB.getString(iB7);
                                                            }
                                                            if (cursorB.isNull(iB8)) {
                                                                string6 = null;
                                                            } else {
                                                                string6 = cursorB.getString(iB8);
                                                            }
                                                            if (cursorB.isNull(iB9)) {
                                                                string7 = null;
                                                            } else {
                                                                string7 = cursorB.getString(iB9);
                                                            }
                                                            if (cursorB.isNull(iB10)) {
                                                                string8 = null;
                                                            } else {
                                                                string8 = cursorB.getString(iB10);
                                                            }
                                                            if (cursorB.isNull(i)) {
                                                                string9 = null;
                                                            } else {
                                                                string9 = cursorB.getString(i);
                                                            }
                                                            if (cursorB.isNull(i7)) {
                                                                string10 = null;
                                                            } else {
                                                                string10 = cursorB.getString(i7);
                                                            }
                                                            if (cursorB.isNull(i2)) {
                                                                string11 = null;
                                                            } else {
                                                                string11 = cursorB.getString(i2);
                                                            }
                                                            if (cursorB.isNull(i3)) {
                                                                string12 = null;
                                                            } else {
                                                                string12 = cursorB.getString(i3);
                                                            }
                                                            if (cursorB.isNull(iB15)) {
                                                                string13 = null;
                                                            } else {
                                                                string13 = cursorB.getString(iB15);
                                                            }
                                                            int i10 = cursorB.getInt(iB16);
                                                            i4 = iB17;
                                                            if (cursorB.isNull(i4)) {
                                                                string14 = null;
                                                            } else {
                                                                string14 = cursorB.getString(i4);
                                                            }
                                                            if (cursorB.isNull(iB18)) {
                                                                string15 = null;
                                                            } else {
                                                                string15 = cursorB.getString(iB18);
                                                            }
                                                            if (cursorB.isNull(iB19)) {
                                                                string16 = null;
                                                            } else {
                                                                string16 = cursorB.getString(iB19);
                                                            }
                                                            if (cursorB.getInt(iB20) != 0) {
                                                                z = true;
                                                            } else {
                                                                z = false;
                                                            }
                                                            if (cursorB.isNull(iB21)) {
                                                                string17 = null;
                                                            } else {
                                                                string17 = cursorB.getString(iB21);
                                                            }
                                                            if (cursorB.isNull(iB22)) {
                                                                string18 = null;
                                                            } else {
                                                                string18 = cursorB.getString(iB22);
                                                            }
                                                            if (cursorB.isNull(iB23) || !cursorB.isNull(iB24)) {
                                                                if (cursorB.isNull(iB23)) {
                                                                    string19 = null;
                                                                } else {
                                                                    string19 = cursorB.getString(iB23);
                                                                }
                                                                pVar = this;
                                                                try {
                                                                    List<String> listB = kw0.this.c.b(string19);
                                                                    if (cursorB.isNull(iB24)) {
                                                                        string20 = null;
                                                                    } else {
                                                                        string20 = cursorB.getString(iB24);
                                                                    }
                                                                    skippingDurationsDB = new SkippingDurationsDB(listB, kw0.this.c.b(string20));
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    cursorB.close();
                                                                    pVar.r.c();
                                                                    throw th;
                                                                }
                                                            } else {
                                                                skippingDurationsDB = null;
                                                                pVar = this;
                                                            }
                                                            cinemanaDownloadItem = new CinemanaDownloadItem(string, i8, string2, string3, string4, i9, string5, string6, string7, string8, string9, string10, string11, string12, string13, i10, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                                        }
                                                    } else {
                                                        i2 = iB13;
                                                        i3 = iB14;
                                                        iB15 = iB15;
                                                        iB16 = iB16;
                                                        iB17 = iB17;
                                                        iB18 = iB18;
                                                        iB19 = iB19;
                                                        iB20 = iB20;
                                                        iB21 = iB21;
                                                        iB22 = iB22;
                                                        iB23 = iB23;
                                                    }
                                                }
                                            } else {
                                                i2 = iB13;
                                                adVar = adVar2;
                                                i3 = iB14;
                                            }
                                            i2 = iB13;
                                            i3 = iB14;
                                            iB24 = iB24;
                                            if (cursorB.isNull(iB)) {
                                                string = null;
                                            } else {
                                                string = cursorB.getString(iB);
                                            }
                                            int i11 = cursorB.getInt(iB2);
                                            if (cursorB.isNull(iB3)) {
                                                string2 = null;
                                            } else {
                                                string2 = cursorB.getString(iB3);
                                            }
                                            if (cursorB.isNull(iB4)) {
                                                string3 = null;
                                            } else {
                                                string3 = cursorB.getString(iB4);
                                            }
                                            if (cursorB.isNull(iB5)) {
                                                string4 = null;
                                            } else {
                                                string4 = cursorB.getString(iB5);
                                            }
                                            int i12 = cursorB.getInt(iB6);
                                            if (cursorB.isNull(iB7)) {
                                                string5 = null;
                                            } else {
                                                string5 = cursorB.getString(iB7);
                                            }
                                            if (cursorB.isNull(iB8)) {
                                                string6 = null;
                                            } else {
                                                string6 = cursorB.getString(iB8);
                                            }
                                            if (cursorB.isNull(iB9)) {
                                                string7 = null;
                                            } else {
                                                string7 = cursorB.getString(iB9);
                                            }
                                            if (cursorB.isNull(iB10)) {
                                                string8 = null;
                                            } else {
                                                string8 = cursorB.getString(iB10);
                                            }
                                            if (cursorB.isNull(i)) {
                                                string9 = null;
                                            } else {
                                                string9 = cursorB.getString(i);
                                            }
                                            if (cursorB.isNull(i7)) {
                                                string10 = null;
                                            } else {
                                                string10 = cursorB.getString(i7);
                                            }
                                            if (cursorB.isNull(i2)) {
                                                string11 = null;
                                            } else {
                                                string11 = cursorB.getString(i2);
                                            }
                                            if (cursorB.isNull(i3)) {
                                                string12 = null;
                                            } else {
                                                string12 = cursorB.getString(i3);
                                            }
                                            if (cursorB.isNull(iB15)) {
                                                string13 = null;
                                            } else {
                                                string13 = cursorB.getString(iB15);
                                            }
                                            int i13 = cursorB.getInt(iB16);
                                            i4 = iB17;
                                            if (cursorB.isNull(i4)) {
                                                string14 = null;
                                            } else {
                                                string14 = cursorB.getString(i4);
                                            }
                                            if (cursorB.isNull(iB18)) {
                                                string15 = null;
                                            } else {
                                                string15 = cursorB.getString(iB18);
                                            }
                                            if (cursorB.isNull(iB19)) {
                                                string16 = null;
                                            } else {
                                                string16 = cursorB.getString(iB19);
                                            }
                                            if (cursorB.getInt(iB20) != 0) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            if (cursorB.isNull(iB21)) {
                                                string17 = null;
                                            } else {
                                                string17 = cursorB.getString(iB21);
                                            }
                                            if (cursorB.isNull(iB22)) {
                                                string18 = null;
                                            } else {
                                                string18 = cursorB.getString(iB22);
                                            }
                                            if (cursorB.isNull(iB23)) {
                                                if (cursorB.isNull(iB23)) {
                                                    string19 = null;
                                                } else {
                                                    string19 = cursorB.getString(iB23);
                                                }
                                                pVar = this;
                                                List<String> listB2 = kw0.this.c.b(string19);
                                                if (cursorB.isNull(iB24)) {
                                                    string20 = null;
                                                } else {
                                                    string20 = cursorB.getString(iB24);
                                                }
                                                skippingDurationsDB = new SkippingDurationsDB(listB2, kw0.this.c.b(string20));
                                                cinemanaDownloadItem = new CinemanaDownloadItem(string, i11, string2, string3, string4, i12, string5, string6, string7, string8, string9, string10, string11, string12, string13, i13, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                            } else {
                                                if (cursorB.isNull(iB23)) {
                                                    string19 = null;
                                                } else {
                                                    string19 = cursorB.getString(iB23);
                                                }
                                                pVar = this;
                                                List<String> listB3 = kw0.this.c.b(string19);
                                                if (cursorB.isNull(iB24)) {
                                                    string20 = null;
                                                } else {
                                                    string20 = cursorB.getString(iB24);
                                                }
                                                skippingDurationsDB = new SkippingDurationsDB(listB3, kw0.this.c.b(string20));
                                                cinemanaDownloadItem = new CinemanaDownloadItem(string, i11, string2, string3, string4, i12, string5, string6, string7, string8, string9, string10, string11, string12, string13, i13, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                            }
                                        } else {
                                            iB24 = iB24;
                                            i2 = iB13;
                                            adVar = adVar2;
                                            i3 = iB14;
                                            if (cursorB.isNull(iB)) {
                                                string = null;
                                            } else {
                                                string = cursorB.getString(iB);
                                            }
                                            int i14 = cursorB.getInt(iB2);
                                            if (cursorB.isNull(iB3)) {
                                                string2 = null;
                                            } else {
                                                string2 = cursorB.getString(iB3);
                                            }
                                            if (cursorB.isNull(iB4)) {
                                                string3 = null;
                                            } else {
                                                string3 = cursorB.getString(iB4);
                                            }
                                            if (cursorB.isNull(iB5)) {
                                                string4 = null;
                                            } else {
                                                string4 = cursorB.getString(iB5);
                                            }
                                            int i15 = cursorB.getInt(iB6);
                                            if (cursorB.isNull(iB7)) {
                                                string5 = null;
                                            } else {
                                                string5 = cursorB.getString(iB7);
                                            }
                                            if (cursorB.isNull(iB8)) {
                                                string6 = null;
                                            } else {
                                                string6 = cursorB.getString(iB8);
                                            }
                                            if (cursorB.isNull(iB9)) {
                                                string7 = null;
                                            } else {
                                                string7 = cursorB.getString(iB9);
                                            }
                                            if (cursorB.isNull(iB10)) {
                                                string8 = null;
                                            } else {
                                                string8 = cursorB.getString(iB10);
                                            }
                                            if (cursorB.isNull(i)) {
                                                string9 = null;
                                            } else {
                                                string9 = cursorB.getString(i);
                                            }
                                            if (cursorB.isNull(i7)) {
                                                string10 = null;
                                            } else {
                                                string10 = cursorB.getString(i7);
                                            }
                                            if (cursorB.isNull(i2)) {
                                                string11 = null;
                                            } else {
                                                string11 = cursorB.getString(i2);
                                            }
                                            if (cursorB.isNull(i3)) {
                                                string12 = null;
                                            } else {
                                                string12 = cursorB.getString(i3);
                                            }
                                            if (cursorB.isNull(iB15)) {
                                                string13 = null;
                                            } else {
                                                string13 = cursorB.getString(iB15);
                                            }
                                            int i16 = cursorB.getInt(iB16);
                                            i4 = iB17;
                                            if (cursorB.isNull(i4)) {
                                                string14 = null;
                                            } else {
                                                string14 = cursorB.getString(i4);
                                            }
                                            if (cursorB.isNull(iB18)) {
                                                string15 = null;
                                            } else {
                                                string15 = cursorB.getString(iB18);
                                            }
                                            if (cursorB.isNull(iB19)) {
                                                string16 = null;
                                            } else {
                                                string16 = cursorB.getString(iB19);
                                            }
                                            if (cursorB.getInt(iB20) != 0) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            if (cursorB.isNull(iB21)) {
                                                string17 = null;
                                            } else {
                                                string17 = cursorB.getString(iB21);
                                            }
                                            if (cursorB.isNull(iB22)) {
                                                string18 = null;
                                            } else {
                                                string18 = cursorB.getString(iB22);
                                            }
                                            if (cursorB.isNull(iB23)) {
                                                if (cursorB.isNull(iB23)) {
                                                    string19 = null;
                                                } else {
                                                    string19 = cursorB.getString(iB23);
                                                }
                                                pVar = this;
                                                List<String> listB4 = kw0.this.c.b(string19);
                                                if (cursorB.isNull(iB24)) {
                                                    string20 = null;
                                                } else {
                                                    string20 = cursorB.getString(iB24);
                                                }
                                                skippingDurationsDB = new SkippingDurationsDB(listB4, kw0.this.c.b(string20));
                                                cinemanaDownloadItem = new CinemanaDownloadItem(string, i14, string2, string3, string4, i15, string5, string6, string7, string8, string9, string10, string11, string12, string13, i16, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                            } else {
                                                if (cursorB.isNull(iB23)) {
                                                    string19 = null;
                                                } else {
                                                    string19 = cursorB.getString(iB23);
                                                }
                                                pVar = this;
                                                List<String> listB5 = kw0.this.c.b(string19);
                                                if (cursorB.isNull(iB24)) {
                                                    string20 = null;
                                                } else {
                                                    string20 = cursorB.getString(iB24);
                                                }
                                                skippingDurationsDB = new SkippingDurationsDB(listB5, kw0.this.c.b(string20));
                                                cinemanaDownloadItem = new CinemanaDownloadItem(string, i14, string2, string3, string4, i15, string5, string6, string7, string8, string9, string10, string11, string12, string13, i16, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                            }
                                        }
                                    }
                                    arrayList = adVar.get(cursorB.getString(iB));
                                    if (arrayList == null) {
                                        arrayList = new ArrayList<>();
                                    }
                                    arrayList2 = adVar3.get(cursorB.getString(iB));
                                    if (arrayList2 == null) {
                                        arrayList2 = new ArrayList<>();
                                    }
                                    combinedDownloadItem = new CombinedDownloadItem(cinemanaDownloadItem, arrayList, arrayList2);
                                } else {
                                    i = i6;
                                }
                                i2 = iB13;
                                adVar = adVar2;
                                i3 = iB14;
                                if (cursorB.isNull(iB)) {
                                    string = null;
                                } else {
                                    string = cursorB.getString(iB);
                                }
                                int i17 = cursorB.getInt(iB2);
                                if (cursorB.isNull(iB3)) {
                                    string2 = null;
                                } else {
                                    string2 = cursorB.getString(iB3);
                                }
                                if (cursorB.isNull(iB4)) {
                                    string3 = null;
                                } else {
                                    string3 = cursorB.getString(iB4);
                                }
                                if (cursorB.isNull(iB5)) {
                                    string4 = null;
                                } else {
                                    string4 = cursorB.getString(iB5);
                                }
                                int i18 = cursorB.getInt(iB6);
                                if (cursorB.isNull(iB7)) {
                                    string5 = null;
                                } else {
                                    string5 = cursorB.getString(iB7);
                                }
                                if (cursorB.isNull(iB8)) {
                                    string6 = null;
                                } else {
                                    string6 = cursorB.getString(iB8);
                                }
                                if (cursorB.isNull(iB9)) {
                                    string7 = null;
                                } else {
                                    string7 = cursorB.getString(iB9);
                                }
                                if (cursorB.isNull(iB10)) {
                                    string8 = null;
                                } else {
                                    string8 = cursorB.getString(iB10);
                                }
                                if (cursorB.isNull(i)) {
                                    string9 = null;
                                } else {
                                    string9 = cursorB.getString(i);
                                }
                                if (cursorB.isNull(i7)) {
                                    string10 = null;
                                } else {
                                    string10 = cursorB.getString(i7);
                                }
                                if (cursorB.isNull(i2)) {
                                    string11 = null;
                                } else {
                                    string11 = cursorB.getString(i2);
                                }
                                if (cursorB.isNull(i3)) {
                                    string12 = null;
                                } else {
                                    string12 = cursorB.getString(i3);
                                }
                                if (cursorB.isNull(iB15)) {
                                    string13 = null;
                                } else {
                                    string13 = cursorB.getString(iB15);
                                }
                                int i19 = cursorB.getInt(iB16);
                                i4 = iB17;
                                if (cursorB.isNull(i4)) {
                                    string14 = null;
                                } else {
                                    string14 = cursorB.getString(i4);
                                }
                                if (cursorB.isNull(iB18)) {
                                    string15 = null;
                                } else {
                                    string15 = cursorB.getString(iB18);
                                }
                                if (cursorB.isNull(iB19)) {
                                    string16 = null;
                                } else {
                                    string16 = cursorB.getString(iB19);
                                }
                                if (cursorB.getInt(iB20) != 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (cursorB.isNull(iB21)) {
                                    string17 = null;
                                } else {
                                    string17 = cursorB.getString(iB21);
                                }
                                if (cursorB.isNull(iB22)) {
                                    string18 = null;
                                } else {
                                    string18 = cursorB.getString(iB22);
                                }
                                if (cursorB.isNull(iB23)) {
                                    if (cursorB.isNull(iB23)) {
                                        string19 = null;
                                    } else {
                                        string19 = cursorB.getString(iB23);
                                    }
                                    pVar = this;
                                    List<String> listB6 = kw0.this.c.b(string19);
                                    if (cursorB.isNull(iB24)) {
                                        string20 = null;
                                    } else {
                                        string20 = cursorB.getString(iB24);
                                    }
                                    skippingDurationsDB = new SkippingDurationsDB(listB6, kw0.this.c.b(string20));
                                    cinemanaDownloadItem = new CinemanaDownloadItem(string, i17, string2, string3, string4, i18, string5, string6, string7, string8, string9, string10, string11, string12, string13, i19, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                    arrayList = adVar.get(cursorB.getString(iB));
                                    if (arrayList == null) {
                                        arrayList = new ArrayList<>();
                                    }
                                    arrayList2 = adVar3.get(cursorB.getString(iB));
                                    if (arrayList2 == null) {
                                        arrayList2 = new ArrayList<>();
                                    }
                                    combinedDownloadItem = new CombinedDownloadItem(cinemanaDownloadItem, arrayList, arrayList2);
                                } else {
                                    if (cursorB.isNull(iB23)) {
                                        string19 = null;
                                    } else {
                                        string19 = cursorB.getString(iB23);
                                    }
                                    pVar = this;
                                    List<String> listB7 = kw0.this.c.b(string19);
                                    if (cursorB.isNull(iB24)) {
                                        string20 = null;
                                    } else {
                                        string20 = cursorB.getString(iB24);
                                    }
                                    skippingDurationsDB = new SkippingDurationsDB(listB7, kw0.this.c.b(string20));
                                    cinemanaDownloadItem = new CinemanaDownloadItem(string, i17, string2, string3, string4, i18, string5, string6, string7, string8, string9, string10, string11, string12, string13, i19, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                    arrayList = adVar.get(cursorB.getString(iB));
                                    if (arrayList == null) {
                                        arrayList = new ArrayList<>();
                                    }
                                    arrayList2 = adVar3.get(cursorB.getString(iB));
                                    if (arrayList2 == null) {
                                        arrayList2 = new ArrayList<>();
                                    }
                                    combinedDownloadItem = new CombinedDownloadItem(cinemanaDownloadItem, arrayList, arrayList2);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                pVar = this;
                                cursorB.close();
                                pVar.r.c();
                                throw th;
                            }
                        } else {
                            i = i6;
                            i2 = iB13;
                            adVar = adVar2;
                            i3 = iB14;
                            if (cursorB.isNull(iB)) {
                                string = null;
                            } else {
                                string = cursorB.getString(iB);
                            }
                            int i110 = cursorB.getInt(iB2);
                            if (cursorB.isNull(iB3)) {
                                string2 = null;
                            } else {
                                string2 = cursorB.getString(iB3);
                            }
                            if (cursorB.isNull(iB4)) {
                                string3 = null;
                            } else {
                                string3 = cursorB.getString(iB4);
                            }
                            if (cursorB.isNull(iB5)) {
                                string4 = null;
                            } else {
                                string4 = cursorB.getString(iB5);
                            }
                            int i111 = cursorB.getInt(iB6);
                            if (cursorB.isNull(iB7)) {
                                string5 = null;
                            } else {
                                string5 = cursorB.getString(iB7);
                            }
                            if (cursorB.isNull(iB8)) {
                                string6 = null;
                            } else {
                                string6 = cursorB.getString(iB8);
                            }
                            if (cursorB.isNull(iB9)) {
                                string7 = null;
                            } else {
                                string7 = cursorB.getString(iB9);
                            }
                            if (cursorB.isNull(iB10)) {
                                string8 = null;
                            } else {
                                string8 = cursorB.getString(iB10);
                            }
                            if (cursorB.isNull(i)) {
                                string9 = null;
                            } else {
                                string9 = cursorB.getString(i);
                            }
                            if (cursorB.isNull(i7)) {
                                string10 = null;
                            } else {
                                string10 = cursorB.getString(i7);
                            }
                            if (cursorB.isNull(i2)) {
                                string11 = null;
                            } else {
                                string11 = cursorB.getString(i2);
                            }
                            if (cursorB.isNull(i3)) {
                                string12 = null;
                            } else {
                                string12 = cursorB.getString(i3);
                            }
                            if (cursorB.isNull(iB15)) {
                                string13 = null;
                            } else {
                                string13 = cursorB.getString(iB15);
                            }
                            int i112 = cursorB.getInt(iB16);
                            i4 = iB17;
                            if (cursorB.isNull(i4)) {
                                string14 = null;
                            } else {
                                string14 = cursorB.getString(i4);
                            }
                            if (cursorB.isNull(iB18)) {
                                string15 = null;
                            } else {
                                string15 = cursorB.getString(iB18);
                            }
                            if (cursorB.isNull(iB19)) {
                                string16 = null;
                            } else {
                                string16 = cursorB.getString(iB19);
                            }
                            if (cursorB.getInt(iB20) != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (cursorB.isNull(iB21)) {
                                string17 = null;
                            } else {
                                string17 = cursorB.getString(iB21);
                            }
                            if (cursorB.isNull(iB22)) {
                                string18 = null;
                            } else {
                                string18 = cursorB.getString(iB22);
                            }
                            if (cursorB.isNull(iB23)) {
                                if (cursorB.isNull(iB23)) {
                                    string19 = null;
                                } else {
                                    string19 = cursorB.getString(iB23);
                                }
                                pVar = this;
                                List<String> listB8 = kw0.this.c.b(string19);
                                if (cursorB.isNull(iB24)) {
                                    string20 = null;
                                } else {
                                    string20 = cursorB.getString(iB24);
                                }
                                skippingDurationsDB = new SkippingDurationsDB(listB8, kw0.this.c.b(string20));
                                cinemanaDownloadItem = new CinemanaDownloadItem(string, i110, string2, string3, string4, i111, string5, string6, string7, string8, string9, string10, string11, string12, string13, i112, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                arrayList = adVar.get(cursorB.getString(iB));
                                if (arrayList == null) {
                                    arrayList = new ArrayList<>();
                                }
                                arrayList2 = adVar3.get(cursorB.getString(iB));
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList<>();
                                }
                                combinedDownloadItem = new CombinedDownloadItem(cinemanaDownloadItem, arrayList, arrayList2);
                            } else {
                                if (cursorB.isNull(iB23)) {
                                    string19 = null;
                                } else {
                                    string19 = cursorB.getString(iB23);
                                }
                                pVar = this;
                                List<String> listB9 = kw0.this.c.b(string19);
                                if (cursorB.isNull(iB24)) {
                                    string20 = null;
                                } else {
                                    string20 = cursorB.getString(iB24);
                                }
                                skippingDurationsDB = new SkippingDurationsDB(listB9, kw0.this.c.b(string20));
                                cinemanaDownloadItem = new CinemanaDownloadItem(string, i110, string2, string3, string4, i111, string5, string6, string7, string8, string9, string10, string11, string12, string13, i112, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                arrayList = adVar.get(cursorB.getString(iB));
                                if (arrayList == null) {
                                    arrayList = new ArrayList<>();
                                }
                                arrayList2 = adVar3.get(cursorB.getString(iB));
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList<>();
                                }
                                combinedDownloadItem = new CombinedDownloadItem(cinemanaDownloadItem, arrayList, arrayList2);
                            }
                        }
                        kw0.this.a.n();
                        cursorB.close();
                        pVar.r.c();
                        kw0.this.a.j();
                        return combinedDownloadItem;
                    } catch (Throwable th3) {
                        th = th3;
                        pVar = this;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    kw0.this.a.j();
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                kw0.this.a.j();
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class q implements Callable<gz0> {
        public final /* synthetic */ yt3 r;

        public q(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public gz0 call() {
            vt3 vt3Var = kw0.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                gz0 gz0Var = null;
                String string = null;
                Cursor cursorB = lh0.b(kw0.this.a, this.r, false, null);
                try {
                    int iB = yg0.b(cursorB, "id");
                    int iB2 = yg0.b(cursorB, "name");
                    int iB3 = yg0.b(cursorB, "image");
                    if (cursorB.moveToFirst()) {
                        gz0 gz0Var2 = new gz0();
                        gz0Var2.r = cursorB.getInt(iB);
                        gz0Var2.c(cursorB.isNull(iB2) ? null : cursorB.getString(iB2));
                        if (!cursorB.isNull(iB3)) {
                            string = cursorB.getString(iB3);
                        }
                        gz0Var2.b(string);
                        gz0Var = gz0Var2;
                    }
                    kw0.this.a.n();
                    cursorB.close();
                    this.r.c();
                    kw0.this.a.j();
                    return gz0Var;
                } catch (Throwable th) {
                    cursorB.close();
                    this.r.c();
                    throw th;
                }
            } catch (Throwable th2) {
                kw0.this.a.j();
                throw th2;
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class r extends x31<p84> {
        public r(kw0 kw0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `SkippableSceneDB` (`id`,`parentId`,`start`,`end`,`controlLevel`) VALUES (nullif(?, 0),?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, p84 p84Var) {
            p84 p84Var2 = p84Var;
            ci4Var.h0(1, p84Var2.r);
            String str = p84Var2.s;
            if (str == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str);
            }
            ci4Var.h0(3, p84Var2.t);
            ci4Var.h0(4, p84Var2.u);
            String str2 = p84Var2.v;
            if (str2 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str2);
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class s extends x31<gz0> {
        public s(kw0 kw0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR IGNORE INTO `DownloadsCollectionItem` (`id`,`name`,`image`) VALUES (nullif(?, 0),?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, gz0 gz0Var) {
            gz0 gz0Var2 = gz0Var;
            ci4Var.h0(1, gz0Var2.r);
            String str = gz0Var2.s;
            if (str == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str);
            }
            String str2 = gz0Var2.t;
            if (str2 == null) {
                ci4Var.T0(3);
            } else {
                ci4Var.I(3, str2);
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class t extends w31<CinemanaDownloadItem> {
        public t(vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE OR REPLACE `CinemanaDownloadItem` SET `id` = ?,`downloadTaskId` = ?,`title` = ?,`stars` = ?,`kind` = ?,`sizeMB` = ?,`season` = ?,`imgObjUrl` = ?,`filmRating` = ?,`tvShowRating` = ?,`path` = ?,`episodeNumber` = ?,`special` = ?,`useParentImg` = ?,`parentSkipping` = ?,`collectionID` = ?,`imgThumbObjUrl` = ?,`qualityName` = ?,`rootEpisode` = ?,`hasIntroSkipping` = ?,`episodeFlag` = ?,`lastUpdated` = ?,`skippingDurations_start` = ?,`skippingDurations_end` = ? WHERE `id` = ?";
        }

        @Override // com.shabakaty.downloader.w31
        public void e(ci4 ci4Var, CinemanaDownloadItem cinemanaDownloadItem) {
            CinemanaDownloadItem cinemanaDownloadItem2 = cinemanaDownloadItem;
            String str = cinemanaDownloadItem2.id;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            ci4Var.h0(2, cinemanaDownloadItem2.downloadTaskId);
            String str2 = cinemanaDownloadItem2.title;
            if (str2 == null) {
                ci4Var.T0(3);
            } else {
                ci4Var.I(3, str2);
            }
            String str3 = cinemanaDownloadItem2.stars;
            if (str3 == null) {
                ci4Var.T0(4);
            } else {
                ci4Var.I(4, str3);
            }
            String str4 = cinemanaDownloadItem2.kind;
            if (str4 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str4);
            }
            ci4Var.h0(6, cinemanaDownloadItem2.sizeMB);
            String str5 = cinemanaDownloadItem2.season;
            if (str5 == null) {
                ci4Var.T0(7);
            } else {
                ci4Var.I(7, str5);
            }
            String str6 = cinemanaDownloadItem2.imgObjUrl;
            if (str6 == null) {
                ci4Var.T0(8);
            } else {
                ci4Var.I(8, str6);
            }
            String str7 = cinemanaDownloadItem2.filmRating;
            if (str7 == null) {
                ci4Var.T0(9);
            } else {
                ci4Var.I(9, str7);
            }
            String str8 = cinemanaDownloadItem2.tvShowRating;
            if (str8 == null) {
                ci4Var.T0(10);
            } else {
                ci4Var.I(10, str8);
            }
            String str9 = cinemanaDownloadItem2.path;
            if (str9 == null) {
                ci4Var.T0(11);
            } else {
                ci4Var.I(11, str9);
            }
            String str10 = cinemanaDownloadItem2.episodeNumber;
            if (str10 == null) {
                ci4Var.T0(12);
            } else {
                ci4Var.I(12, str10);
            }
            String str11 = cinemanaDownloadItem2.special;
            if (str11 == null) {
                ci4Var.T0(13);
            } else {
                ci4Var.I(13, str11);
            }
            String str12 = cinemanaDownloadItem2.useParentImg;
            if (str12 == null) {
                ci4Var.T0(14);
            } else {
                ci4Var.I(14, str12);
            }
            String str13 = cinemanaDownloadItem2.parentSkipping;
            if (str13 == null) {
                ci4Var.T0(15);
            } else {
                ci4Var.I(15, str13);
            }
            ci4Var.h0(16, cinemanaDownloadItem2.collectionID);
            String str14 = cinemanaDownloadItem2.imgThumbObjUrl;
            if (str14 == null) {
                ci4Var.T0(17);
            } else {
                ci4Var.I(17, str14);
            }
            String str15 = cinemanaDownloadItem2.qualityName;
            if (str15 == null) {
                ci4Var.T0(18);
            } else {
                ci4Var.I(18, str15);
            }
            String str16 = cinemanaDownloadItem2.rootEpisode;
            if (str16 == null) {
                ci4Var.T0(19);
            } else {
                ci4Var.I(19, str16);
            }
            ci4Var.h0(20, cinemanaDownloadItem2.hasIntroSkipping ? 1L : 0L);
            String str17 = cinemanaDownloadItem2.episodeFlag;
            if (str17 == null) {
                ci4Var.T0(21);
            } else {
                ci4Var.I(21, str17);
            }
            String str18 = cinemanaDownloadItem2.lastUpdated;
            if (str18 == null) {
                ci4Var.T0(22);
            } else {
                ci4Var.I(22, str18);
            }
            SkippingDurationsDB skippingDurationsDB = cinemanaDownloadItem2.skippingDurations;
            if (skippingDurationsDB != null) {
                ci4Var.I(23, kw0.this.c.a(skippingDurationsDB.start));
                ci4Var.I(24, kw0.this.c.a(skippingDurationsDB.end));
            } else {
                ci4Var.T0(23);
                ci4Var.T0(24);
            }
            String str19 = cinemanaDownloadItem2.id;
            if (str19 == null) {
                ci4Var.T0(25);
            } else {
                ci4Var.I(25, str19);
            }
        }
    }

    /* JADX INFO: compiled from: DownloadDao_Impl.java */
    public class u extends w31<gz0> {
        public u(kw0 kw0Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE OR REPLACE `DownloadsCollectionItem` SET `id` = ?,`name` = ?,`image` = ? WHERE `id` = ?";
        }

        @Override // com.shabakaty.downloader.w31
        public void e(ci4 ci4Var, gz0 gz0Var) {
            gz0 gz0Var2 = gz0Var;
            ci4Var.h0(1, gz0Var2.r);
            String str = gz0Var2.s;
            if (str == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str);
            }
            String str2 = gz0Var2.t;
            if (str2 == null) {
                ci4Var.T0(3);
            } else {
                ci4Var.I(3, str2);
            }
            ci4Var.h0(4, gz0Var2.r);
        }
    }

    public kw0(vt3 vt3Var) {
        this.a = vt3Var;
        this.b = new g(vt3Var);
        this.d = new j(this, vt3Var);
        this.e = new r(this, vt3Var);
        this.f = new s(this, vt3Var);
        new AtomicBoolean(false);
        new AtomicBoolean(false);
        this.g = new t(vt3Var);
        new AtomicBoolean(false);
        this.h = new u(this, vt3Var);
        new AtomicBoolean(false);
        new AtomicBoolean(false);
        this.i = new a(this, vt3Var);
        this.j = new b(this, vt3Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public Object A(Integer num, ud0<? super gz0> ud0Var) {
        yt3 yt3VarA = yt3.a("SELECT * FROM DownloadsCollectionItem WHERE id = ?", 1);
        yt3VarA.h0(1, num.intValue());
        return af0.b(this.a, true, new CancellationSignal(), new q(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public Object B(SubtitleDb subtitleDb, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new d(subtitleDb), ud0Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public t43<List<CinemanaDownloadItem>> C() {
        yt3 yt3VarA = yt3.a("SELECT * FROM CinemanaDownloadItem", 0);
        vt3 vt3Var = this.a;
        n nVar = new n(yt3VarA);
        Object obj = bw3.a;
        Executor executor = vt3Var.b;
        wx3 wx3Var = ay3.a;
        w61 w61Var = new w61(executor, false);
        return new z43(new p53(new v43(new yv3(new String[]{"CinemanaDownloadItem"}, vt3Var)).k(w61Var), w61Var).g(w61Var), new zv3(new co2(nVar)), false);
    }

    @Override // com.shabakaty.downloader.jw0
    public LiveData<List<CinemanaDownloadItem>> H() {
        return this.a.e.b(new String[]{"CinemanaDownloadItem"}, false, new m(yt3.a("SELECT * FROM CinemanaDownloadItem", 0)));
    }

    @Override // com.shabakaty.downloader.jw0
    public LiveData<List<d50>> I() {
        return this.a.e.b(new String[]{"CinemanaDownloadItem", "DownloadsCollectionItem"}, true, new o(yt3.a("SELECT * FROM DownloadsCollectionItem", 0)));
    }

    @Override // com.shabakaty.downloader.jw0
    public List<d50> J() {
        gz0 gz0Var;
        yt3 yt3VarA = yt3.a("SELECT * FROM DownloadsCollectionItem", 0);
        this.a.b();
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            Cursor cursorB = lh0.b(this.a, yt3VarA, true, null);
            try {
                int iB = yg0.b(cursorB, "id");
                int iB2 = yg0.b(cursorB, "name");
                int iB3 = yg0.b(cursorB, "image");
                jl2<ArrayList<CinemanaDownloadItem>> jl2Var = new jl2<>(10);
                while (cursorB.moveToNext()) {
                    long j2 = cursorB.getLong(iB);
                    if (jl2Var.g(j2) == null) {
                        jl2Var.k(j2, new ArrayList<>());
                    }
                }
                cursorB.moveToPosition(-1);
                L(jl2Var);
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    if (cursorB.isNull(iB) && cursorB.isNull(iB2) && cursorB.isNull(iB3)) {
                        gz0Var = null;
                    } else {
                        gz0Var = new gz0();
                        gz0Var.r = cursorB.getInt(iB);
                        gz0Var.c(cursorB.isNull(iB2) ? null : cursorB.getString(iB2));
                        gz0Var.b(cursorB.isNull(iB3) ? null : cursorB.getString(iB3));
                    }
                    ArrayList<CinemanaDownloadItem> arrayListG = jl2Var.g(cursorB.getLong(iB));
                    if (arrayListG == null) {
                        arrayListG = new ArrayList<>();
                    }
                    arrayList.add(new d50(gz0Var, arrayListG));
                }
                this.a.n();
                cursorB.close();
                yt3VarA.c();
                this.a.j();
                return arrayList;
            } catch (Throwable th) {
                cursorB.close();
                yt3VarA.c();
                throw th;
            }
        } catch (Throwable th2) {
            this.a.j();
            throw th2;
        }
    }

    @Override // com.shabakaty.downloader.jw0
    public Object K(Integer num, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new k(num), ud0Var);
    }

    public final void L(jl2<ArrayList<CinemanaDownloadItem>> jl2Var) throws Throwable {
        int i2;
        SkippingDurationsDB skippingDurationsDB;
        int i3;
        jl2<ArrayList<CinemanaDownloadItem>> jl2Var2 = jl2Var;
        if (jl2Var.i()) {
            return;
        }
        if (jl2Var.m() > 999) {
            jl2<ArrayList<CinemanaDownloadItem>> jl2Var3 = new jl2<>(999);
            int iM = jl2Var.m();
            int i4 = 0;
            loop0: while (true) {
                i3 = 0;
                do {
                    if (i4 >= iM) {
                        break loop0;
                    }
                    jl2Var3.k(jl2Var2.j(i4), jl2Var2.n(i4));
                    i4++;
                    i3++;
                } while (i3 != 999);
                L(jl2Var3);
                jl2Var3 = new jl2<>(999);
            }
            if (i3 > 0) {
                L(jl2Var3);
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `id`,`downloadTaskId`,`title`,`stars`,`kind`,`sizeMB`,`season`,`imgObjUrl`,`filmRating`,`tvShowRating`,`path`,`episodeNumber`,`special`,`useParentImg`,`parentSkipping`,`collectionID`,`imgThumbObjUrl`,`qualityName`,`rootEpisode`,`hasIntroSkipping`,`episodeFlag`,`lastUpdated`,`skippingDurations_start`,`skippingDurations_end` FROM `CinemanaDownloadItem` WHERE `collectionID` IN (");
        int iM2 = jl2Var.m();
        ee4.a(sb, iM2);
        sb.append(")");
        yt3 yt3VarA = yt3.a(sb.toString(), iM2 + 0);
        int i5 = 1;
        for (int i6 = 0; i6 < jl2Var.m(); i6++) {
            yt3VarA.h0(i5, jl2Var2.j(i6));
            i5++;
        }
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            int iA = yg0.a(cursorB, "collectionID");
            if (iA == -1) {
                cursorB.close();
                return;
            }
            int iB = yg0.b(cursorB, "id");
            int iB2 = yg0.b(cursorB, "downloadTaskId");
            int iB3 = yg0.b(cursorB, "title");
            int iB4 = yg0.b(cursorB, "stars");
            int iB5 = yg0.b(cursorB, "kind");
            int iB6 = yg0.b(cursorB, "sizeMB");
            int iB7 = yg0.b(cursorB, "season");
            int iB8 = yg0.b(cursorB, "imgObjUrl");
            int iB9 = yg0.b(cursorB, "filmRating");
            int iB10 = yg0.b(cursorB, "tvShowRating");
            int iB11 = yg0.b(cursorB, FileDownloadModel.PATH);
            try {
                int iB12 = yg0.b(cursorB, "episodeNumber");
                int iB13 = yg0.b(cursorB, "special");
                int iB14 = yg0.b(cursorB, "useParentImg");
                int iB15 = yg0.b(cursorB, "parentSkipping");
                int iB16 = yg0.b(cursorB, "collectionID");
                int iB17 = yg0.b(cursorB, "imgThumbObjUrl");
                int iB18 = yg0.b(cursorB, "qualityName");
                int iB19 = yg0.b(cursorB, "rootEpisode");
                int iB20 = yg0.b(cursorB, "hasIntroSkipping");
                int iB21 = yg0.b(cursorB, "episodeFlag");
                int iB22 = yg0.b(cursorB, "lastUpdated");
                int iB23 = yg0.b(cursorB, "skippingDurations_start");
                int iB24 = yg0.b(cursorB, "skippingDurations_end");
                while (cursorB.moveToNext()) {
                    int i7 = iB15;
                    int i8 = iB24;
                    ArrayList<CinemanaDownloadItem> arrayListG = jl2Var2.g(cursorB.getLong(iA));
                    if (arrayListG != null) {
                        String string = cursorB.isNull(iB) ? null : cursorB.getString(iB);
                        int i9 = cursorB.getInt(iB2);
                        String string2 = cursorB.isNull(iB3) ? null : cursorB.getString(iB3);
                        String string3 = cursorB.isNull(iB4) ? null : cursorB.getString(iB4);
                        String string4 = cursorB.isNull(iB5) ? null : cursorB.getString(iB5);
                        int i10 = cursorB.getInt(iB6);
                        String string5 = cursorB.isNull(iB7) ? null : cursorB.getString(iB7);
                        String string6 = cursorB.isNull(iB8) ? null : cursorB.getString(iB8);
                        String string7 = cursorB.isNull(iB9) ? null : cursorB.getString(iB9);
                        String string8 = cursorB.isNull(iB10) ? null : cursorB.getString(iB10);
                        String string9 = cursorB.isNull(iB11) ? null : cursorB.getString(iB11);
                        String string10 = cursorB.isNull(iB12) ? null : cursorB.getString(iB12);
                        String string11 = cursorB.isNull(iB13) ? null : cursorB.getString(iB13);
                        String string12 = cursorB.isNull(iB14) ? null : cursorB.getString(iB14);
                        String string13 = cursorB.isNull(i7) ? null : cursorB.getString(i7);
                        int i11 = cursorB.getInt(iB16);
                        iB16 = iB16;
                        iB17 = iB17;
                        String string14 = cursorB.isNull(iB17) ? null : cursorB.getString(iB17);
                        String string15 = cursorB.isNull(iB18) ? null : cursorB.getString(iB18);
                        String string16 = cursorB.isNull(iB19) ? null : cursorB.getString(iB19);
                        int i12 = cursorB.getInt(iB20);
                        iB20 = iB20;
                        iB21 = iB21;
                        boolean z = i12 != 0;
                        String string17 = cursorB.isNull(iB21) ? null : cursorB.getString(iB21);
                        String string18 = cursorB.isNull(iB22) ? null : cursorB.getString(iB22);
                        try {
                            if (cursorB.isNull(iB23)) {
                                i2 = i8;
                                if (cursorB.isNull(i2)) {
                                    iB12 = iB12;
                                    iB23 = iB23;
                                    i2 = i2;
                                    iB9 = iB9;
                                    iB10 = iB10;
                                    skippingDurationsDB = null;
                                } else {
                                    iB12 = iB12;
                                }
                                arrayListG.add(new CinemanaDownloadItem(string, i9, string2, string3, string4, i10, string5, string6, string7, string8, string9, string10, string11, string12, string13, i11, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                            } else {
                                iB12 = iB12;
                                i2 = i8;
                            }
                            skippingDurationsDB = new SkippingDurationsDB(this.c.b(cursorB.isNull(iB23) ? null : cursorB.getString(iB23)), this.c.b(cursorB.isNull(i2) ? null : cursorB.getString(i2)));
                            arrayListG.add(new CinemanaDownloadItem(string, i9, string2, string3, string4, i10, string5, string6, string7, string8, string9, string10, string11, string12, string13, i11, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                        } catch (Throwable th) {
                            th = th;
                        }
                    } else {
                        iB10 = iB10;
                        i2 = i8;
                        iB23 = iB23;
                        iB9 = iB9;
                    }
                    jl2Var2 = jl2Var;
                    iB9 = iB9;
                    iB15 = i7;
                    iB23 = iB23;
                    iB10 = iB10;
                    iB24 = i2;
                }
                cursorB.close();
                return;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        cursorB.close();
        throw th;
    }

    public final void M(ad<String, ArrayList<p84>> adVar) {
        int i2;
        gm2.c<String> cVar = (gm2.c) adVar.keySet();
        if (cVar.isEmpty()) {
            return;
        }
        if (adVar.t > 999) {
            ad<String, ArrayList<p84>> adVar2 = new ad<>(999);
            int i3 = adVar.t;
            int i4 = 0;
            loop0: while (true) {
                i2 = 0;
                do {
                    if (i4 >= i3) {
                        break loop0;
                    }
                    adVar2.put(adVar.i(i4), adVar.l(i4));
                    i4++;
                    i2++;
                } while (i2 != 999);
                M(adVar2);
                adVar2 = new ad<>(999);
            }
            if (i2 > 0) {
                M(adVar2);
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `id`,`parentId`,`start`,`end`,`controlLevel` FROM `SkippableSceneDB` WHERE `parentId` IN (");
        int size = cVar.size();
        ee4.a(sb, size);
        sb.append(")");
        yt3 yt3VarA = yt3.a(sb.toString(), size + 0);
        int i5 = 1;
        for (String str : cVar) {
            if (str == null) {
                yt3VarA.T0(i5);
            } else {
                yt3VarA.I(i5, str);
            }
            i5++;
        }
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            int iA = yg0.a(cursorB, "parentId");
            if (iA == -1) {
                return;
            }
            int iB = yg0.b(cursorB, "id");
            int iB2 = yg0.b(cursorB, "parentId");
            int iB3 = yg0.b(cursorB, "start");
            int iB4 = yg0.b(cursorB, "end");
            int iB5 = yg0.b(cursorB, "controlLevel");
            while (cursorB.moveToNext()) {
                ArrayList<p84> arrayList = adVar.get(cursorB.getString(iA));
                if (arrayList != null) {
                    arrayList.add(new p84(cursorB.getInt(iB), cursorB.isNull(iB2) ? null : cursorB.getString(iB2), cursorB.getLong(iB3), cursorB.getLong(iB4), cursorB.isNull(iB5) ? null : cursorB.getString(iB5)));
                }
            }
        } finally {
            cursorB.close();
        }
    }

    public final void N(ad<String, ArrayList<SubtitleDb>> adVar) {
        int i2;
        gm2.c<String> cVar = (gm2.c) adVar.keySet();
        if (cVar.isEmpty()) {
            return;
        }
        if (adVar.t > 999) {
            ad<String, ArrayList<SubtitleDb>> adVar2 = new ad<>(999);
            int i3 = adVar.t;
            int i4 = 0;
            loop0: while (true) {
                i2 = 0;
                do {
                    if (i4 >= i3) {
                        break loop0;
                    }
                    adVar2.put(adVar.i(i4), adVar.l(i4));
                    i4++;
                    i2++;
                } while (i2 != 999);
                N(adVar2);
                adVar2 = new ad<>(999);
            }
            if (i2 > 0) {
                N(adVar2);
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `id`,`parentId`,`downloadTaskId`,`name`,`type`,`extension`,`file` FROM `SubtitleDb` WHERE `parentId` IN (");
        int size = cVar.size();
        ee4.a(sb, size);
        sb.append(")");
        yt3 yt3VarA = yt3.a(sb.toString(), size + 0);
        int i5 = 1;
        for (String str : cVar) {
            if (str == null) {
                yt3VarA.T0(i5);
            } else {
                yt3VarA.I(i5, str);
            }
            i5++;
        }
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            int iA = yg0.a(cursorB, "parentId");
            if (iA == -1) {
                return;
            }
            int iB = yg0.b(cursorB, "id");
            int iB2 = yg0.b(cursorB, "parentId");
            int iB3 = yg0.b(cursorB, "downloadTaskId");
            int iB4 = yg0.b(cursorB, "name");
            int iB5 = yg0.b(cursorB, "type");
            int iB6 = yg0.b(cursorB, "extension");
            int iB7 = yg0.b(cursorB, "file");
            while (cursorB.moveToNext()) {
                ArrayList<SubtitleDb> arrayList = adVar.get(cursorB.getString(iA));
                if (arrayList != null) {
                    arrayList.add(new SubtitleDb(cursorB.isNull(iB) ? null : cursorB.getString(iB), cursorB.isNull(iB2) ? null : cursorB.getString(iB2), cursorB.getInt(iB3), cursorB.isNull(iB4) ? null : cursorB.getString(iB4), cursorB.isNull(iB5) ? null : cursorB.getString(iB5), cursorB.isNull(iB6) ? null : cursorB.getString(iB6), cursorB.isNull(iB7) ? null : cursorB.getString(iB7)));
                }
            }
        } finally {
            cursorB.close();
        }
    }

    @Override // com.shabakaty.downloader.jw0
    public Object g(gz0 gz0Var, ud0<? super Long> ud0Var) {
        return af0.c(this.a, true, new f(gz0Var), ud0Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public Object h(String str, ud0<? super qv4> ud0Var) {
        if (Delete101.absent(this, str)) {
            return qv4.a;
        }
        Recovery92.deleted(str);
        return af0.c(this.a, true, new l(str), ud0Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public Object i(gz0 gz0Var, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new i(gz0Var), ud0Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public List<CinemanaDownloadItem> j() throws Throwable {
        yt3 yt3Var;
        int i2;
        int i3;
        SkippingDurationsDB skippingDurationsDB;
        yt3 yt3VarA = yt3.a("SELECT * FROM CinemanaDownloadItem", 0);
        this.a.b();
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            int iB = yg0.b(cursorB, "id");
            int iB2 = yg0.b(cursorB, "downloadTaskId");
            int iB3 = yg0.b(cursorB, "title");
            int iB4 = yg0.b(cursorB, "stars");
            int iB5 = yg0.b(cursorB, "kind");
            int iB6 = yg0.b(cursorB, "sizeMB");
            int iB7 = yg0.b(cursorB, "season");
            int iB8 = yg0.b(cursorB, "imgObjUrl");
            int iB9 = yg0.b(cursorB, "filmRating");
            int iB10 = yg0.b(cursorB, "tvShowRating");
            int iB11 = yg0.b(cursorB, FileDownloadModel.PATH);
            int iB12 = yg0.b(cursorB, "episodeNumber");
            int iB13 = yg0.b(cursorB, "special");
            yt3Var = yt3VarA;
            try {
                int iB14 = yg0.b(cursorB, "useParentImg");
                try {
                    int iB15 = yg0.b(cursorB, "parentSkipping");
                    int iB16 = yg0.b(cursorB, "collectionID");
                    int iB17 = yg0.b(cursorB, "imgThumbObjUrl");
                    int iB18 = yg0.b(cursorB, "qualityName");
                    int iB19 = yg0.b(cursorB, "rootEpisode");
                    int iB20 = yg0.b(cursorB, "hasIntroSkipping");
                    int iB21 = yg0.b(cursorB, "episodeFlag");
                    int iB22 = yg0.b(cursorB, "lastUpdated");
                    int iB23 = yg0.b(cursorB, "skippingDurations_start");
                    int iB24 = yg0.b(cursorB, "skippingDurations_end");
                    int i4 = iB14;
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        String string = cursorB.isNull(iB) ? null : cursorB.getString(iB);
                        int i5 = cursorB.getInt(iB2);
                        String string2 = cursorB.isNull(iB3) ? null : cursorB.getString(iB3);
                        String string3 = cursorB.isNull(iB4) ? null : cursorB.getString(iB4);
                        String string4 = cursorB.isNull(iB5) ? null : cursorB.getString(iB5);
                        int i6 = cursorB.getInt(iB6);
                        String string5 = cursorB.isNull(iB7) ? null : cursorB.getString(iB7);
                        String string6 = cursorB.isNull(iB8) ? null : cursorB.getString(iB8);
                        String string7 = cursorB.isNull(iB9) ? null : cursorB.getString(iB9);
                        String string8 = cursorB.isNull(iB10) ? null : cursorB.getString(iB10);
                        String string9 = cursorB.isNull(iB11) ? null : cursorB.getString(iB11);
                        String string10 = cursorB.isNull(iB12) ? null : cursorB.getString(iB12);
                        String string11 = cursorB.isNull(iB13) ? null : cursorB.getString(iB13);
                        String string12 = cursorB.isNull(i4) ? null : cursorB.getString(i4);
                        int i7 = iB15;
                        int i8 = iB;
                        String string13 = cursorB.isNull(i7) ? null : cursorB.getString(i7);
                        int i9 = iB16;
                        int i10 = cursorB.getInt(i9);
                        iB17 = iB17;
                        String string14 = cursorB.isNull(iB17) ? null : cursorB.getString(iB17);
                        String string15 = cursorB.isNull(iB18) ? null : cursorB.getString(iB18);
                        String string16 = cursorB.isNull(iB19) ? null : cursorB.getString(iB19);
                        boolean z = cursorB.getInt(iB20) != 0;
                        String string17 = cursorB.isNull(iB21) ? null : cursorB.getString(iB21);
                        String string18 = cursorB.isNull(iB22) ? null : cursorB.getString(iB22);
                        try {
                            if (cursorB.isNull(iB23)) {
                                i2 = iB12;
                                i3 = iB24;
                                if (cursorB.isNull(i3)) {
                                    iB23 = iB23;
                                    i3 = i3;
                                    i4 = i4;
                                    iB13 = iB13;
                                    skippingDurationsDB = null;
                                }
                                arrayList.add(new CinemanaDownloadItem(string, i5, string2, string3, string4, i6, string5, string6, string7, string8, string9, string10, string11, string12, string13, i10, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                                iB = i8;
                                iB15 = i7;
                                iB12 = i2;
                                iB16 = i9;
                                iB23 = iB23;
                                iB13 = iB13;
                                i4 = i4;
                                iB24 = i3;
                            } else {
                                i2 = iB12;
                                i3 = iB24;
                            }
                            skippingDurationsDB = new SkippingDurationsDB(this.c.b(cursorB.isNull(iB23) ? null : cursorB.getString(iB23)), this.c.b(cursorB.isNull(i3) ? null : cursorB.getString(i3)));
                            arrayList.add(new CinemanaDownloadItem(string, i5, string2, string3, string4, i6, string5, string6, string7, string8, string9, string10, string11, string12, string13, i10, string14, skippingDurationsDB, string15, string16, z, string17, string18));
                            iB = i8;
                            iB15 = i7;
                            iB12 = i2;
                            iB16 = i9;
                            iB23 = iB23;
                            iB13 = iB13;
                            i4 = i4;
                            iB24 = i3;
                        } catch (Throwable th) {
                            th = th;
                            cursorB.close();
                            yt3Var.c();
                            throw th;
                        }
                    }
                    cursorB.close();
                    yt3Var.c();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                cursorB.close();
                yt3Var.c();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            yt3Var = yt3VarA;
        }
    }

    @Override // com.shabakaty.downloader.jw0
    public Object l(CinemanaDownloadItem cinemanaDownloadItem, ud0<? super qv4> ud0Var) {
        Commit105.prepare(cinemanaDownloadItem);
        return af0.c(this.a, true, new c(cinemanaDownloadItem), ud0Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public Object n(String str, ud0<? super CombinedDownloadItem> ud0Var) {
        yt3 yt3VarA = yt3.a("SELECT * FROM CinemanaDownloadItem Where id = ? LIMIT 1", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        return af0.b(this.a, true, new CancellationSignal(), new p(yt3VarA), ud0Var);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0278  */
    /* JADX WARN: Code duplicated, block: B:101:0x027b A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x028b  */
    /* JADX WARN: Code duplicated, block: B:105:0x028e A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x029a  */
    /* JADX WARN: Code duplicated, block: B:109:0x029d A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:113:0x02ac A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:117:0x02bb A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:121:0x02ca A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:125:0x02d9 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:129:0x02e8 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:133:0x02fb A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x030b  */
    /* JADX WARN: Code duplicated, block: B:137:0x0312 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x032a  */
    /* JADX WARN: Code duplicated, block: B:141:0x0331 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:144:0x0341  */
    /* JADX WARN: Code duplicated, block: B:145:0x0348 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x0358  */
    /* JADX WARN: Code duplicated, block: B:149:0x035f A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x036f  */
    /* JADX WARN: Code duplicated, block: B:153:0x0376  */
    /* JADX WARN: Code duplicated, block: B:156:0x0384  */
    /* JADX WARN: Code duplicated, block: B:157:0x038b A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x039b  */
    /* JADX WARN: Code duplicated, block: B:161:0x03a2 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x03b2 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x03c8 A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:172:0x03da A[Catch: all -> 0x045f, TRY_LEAVE, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:176:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:177:0x03f7 A[Catch: all -> 0x0476, TryCatch #1 {all -> 0x0476, blocks: (B:179:0x040a, B:180:0x0411, B:182:0x041f, B:183:0x0424, B:185:0x0436, B:186:0x043b, B:174:0x03e7, B:178:0x03fd, B:177:0x03f7, B:189:0x0463), top: B:209:0x040a }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0231  */
    /* JADX WARN: Code duplicated, block: B:88:0x0247  */
    /* JADX WARN: Code duplicated, block: B:89:0x024a A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x025a  */
    /* JADX WARN: Code duplicated, block: B:93:0x025d A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0269  */
    /* JADX WARN: Code duplicated, block: B:97:0x026c A[Catch: all -> 0x045f, TryCatch #5 {all -> 0x045f, blocks: (B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016a, B:42:0x0172, B:44:0x017c, B:46:0x0186, B:48:0x0190, B:50:0x0198, B:52:0x01a2, B:54:0x01ac, B:56:0x01b6, B:58:0x01c0, B:60:0x01ca, B:62:0x01d4, B:64:0x01de, B:66:0x01e8, B:86:0x0241, B:90:0x0250, B:94:0x0263, B:98:0x0272, B:102:0x0281, B:106:0x0294, B:110:0x02a3, B:114:0x02b2, B:118:0x02c1, B:122:0x02d0, B:126:0x02df, B:130:0x02ee, B:134:0x0305, B:138:0x031c, B:142:0x033b, B:146:0x0352, B:150:0x0369, B:154:0x037e, B:158:0x0395, B:162:0x03ac, B:164:0x03b2, B:168:0x03c8, B:172:0x03da, B:161:0x03a2, B:157:0x038b, B:149:0x035f, B:145:0x0348, B:141:0x0331, B:137:0x0312, B:133:0x02fb, B:129:0x02e8, B:125:0x02d9, B:121:0x02ca, B:117:0x02bb, B:113:0x02ac, B:109:0x029d, B:105:0x028e, B:101:0x027b, B:97:0x026c, B:93:0x025d, B:89:0x024a), top: B:216:0x0134 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.shabakaty.downloader.bi4, com.shabakaty.downloader.yt3] */
    /* JADX WARN: Type inference failed for: r3v1 */
    @Override // com.shabakaty.downloader.jw0
    public List<CombinedDownloadItem> o(int i2) throws Throwable {
        yt3 yt3Var;
        int i3;
        int i4;
        int i5;
        ad<String, ArrayList<SubtitleDb>> adVar;
        int i6;
        CinemanaDownloadItem cinemanaDownloadItem;
        kw0 kw0Var;
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        String string7;
        String string8;
        String string9;
        String string10;
        String string11;
        String string12;
        String string13;
        String string14;
        String string15;
        String string16;
        boolean z;
        String string17;
        String string18;
        String string19;
        String string20;
        SkippingDurationsDB skippingDurationsDB;
        kw0 kw0Var2 = this;
        kw0 kw0VarA = yt3.a("SELECT * FROM CinemanaDownloadItem Where collectionID = ?", 1);
        kw0VarA.h0(1, i2);
        kw0Var2.a.b();
        vt3 vt3Var = kw0Var2.a;
        vt3Var.a();
        vt3Var.i();
        try {
            try {
                Cursor cursorB = lh0.b(kw0Var2.a, kw0VarA, true, null);
                try {
                    int iB = yg0.b(cursorB, "id");
                    int iB2 = yg0.b(cursorB, "downloadTaskId");
                    int iB3 = yg0.b(cursorB, "title");
                    int iB4 = yg0.b(cursorB, "stars");
                    int iB5 = yg0.b(cursorB, "kind");
                    int iB6 = yg0.b(cursorB, "sizeMB");
                    int iB7 = yg0.b(cursorB, "season");
                    int iB8 = yg0.b(cursorB, "imgObjUrl");
                    int iB9 = yg0.b(cursorB, "filmRating");
                    int iB10 = yg0.b(cursorB, "tvShowRating");
                    int iB11 = yg0.b(cursorB, FileDownloadModel.PATH);
                    int iB12 = yg0.b(cursorB, "episodeNumber");
                    int iB13 = yg0.b(cursorB, "special");
                    yt3Var = kw0VarA;
                    try {
                        int iB14 = yg0.b(cursorB, "useParentImg");
                        int iB15 = yg0.b(cursorB, "parentSkipping");
                        int iB16 = yg0.b(cursorB, "collectionID");
                        int iB17 = yg0.b(cursorB, "imgThumbObjUrl");
                        int iB18 = yg0.b(cursorB, "qualityName");
                        int iB19 = yg0.b(cursorB, "rootEpisode");
                        int iB20 = yg0.b(cursorB, "hasIntroSkipping");
                        int iB21 = yg0.b(cursorB, "episodeFlag");
                        int iB22 = yg0.b(cursorB, "lastUpdated");
                        int iB23 = yg0.b(cursorB, "skippingDurations_start");
                        int iB24 = yg0.b(cursorB, "skippingDurations_end");
                        ad<String, ArrayList<SubtitleDb>> adVar2 = new ad<>();
                        int i7 = iB13;
                        ad<String, ArrayList<p84>> adVar3 = new ad<>();
                        while (cursorB.moveToNext()) {
                            int i8 = iB12;
                            String string21 = cursorB.getString(iB);
                            if (adVar2.get(string21) == null) {
                                adVar2.put(string21, new ArrayList<>());
                            }
                            String string22 = cursorB.getString(iB);
                            if (adVar3.get(string22) == null) {
                                adVar3.put(string22, new ArrayList<>());
                            }
                            iB12 = i8;
                            iB11 = iB11;
                        }
                        int i9 = iB12;
                        int i10 = iB11;
                        cursorB.moveToPosition(-1);
                        kw0Var2.N(adVar2);
                        kw0Var2.M(adVar3);
                        ArrayList arrayList = new ArrayList(cursorB.getCount());
                        while (cursorB.moveToNext()) {
                            if (cursorB.isNull(iB)) {
                                try {
                                    try {
                                        if (cursorB.isNull(iB2) && cursorB.isNull(iB3) && cursorB.isNull(iB4) && cursorB.isNull(iB5) && cursorB.isNull(iB6) && cursorB.isNull(iB7) && cursorB.isNull(iB8) && cursorB.isNull(iB9) && cursorB.isNull(iB10)) {
                                            i3 = i10;
                                            if (cursorB.isNull(i3)) {
                                                arrayList = arrayList;
                                                i4 = i9;
                                                if (cursorB.isNull(i4)) {
                                                    adVar3 = adVar3;
                                                    i5 = i7;
                                                    if (cursorB.isNull(i5)) {
                                                        adVar = adVar2;
                                                        i6 = iB14;
                                                        if (cursorB.isNull(i6)) {
                                                            int i11 = iB15;
                                                            if (cursorB.isNull(i11)) {
                                                                iB15 = i11;
                                                                int i12 = iB16;
                                                                if (cursorB.isNull(i12)) {
                                                                    iB16 = i12;
                                                                    int i13 = iB17;
                                                                    if (cursorB.isNull(i13)) {
                                                                        iB17 = i13;
                                                                        int i14 = iB18;
                                                                        if (cursorB.isNull(i14)) {
                                                                            iB18 = i14;
                                                                            int i15 = iB19;
                                                                            if (cursorB.isNull(i15)) {
                                                                                iB19 = i15;
                                                                                int i16 = iB20;
                                                                                if (cursorB.isNull(i16)) {
                                                                                    iB20 = i16;
                                                                                    int i17 = iB21;
                                                                                    if (cursorB.isNull(i17)) {
                                                                                        iB21 = i17;
                                                                                        int i18 = iB22;
                                                                                        if (cursorB.isNull(i18)) {
                                                                                            iB22 = i18;
                                                                                            int i19 = iB23;
                                                                                            if (cursorB.isNull(i19)) {
                                                                                                iB23 = i19;
                                                                                                iB24 = iB24;
                                                                                                if (cursorB.isNull(iB24)) {
                                                                                                    iB24 = iB24;
                                                                                                    i4 = i4;
                                                                                                    i5 = i5;
                                                                                                    iB23 = iB23;
                                                                                                    cinemanaDownloadItem = null;
                                                                                                    iB15 = iB15;
                                                                                                    i6 = i6;
                                                                                                    kw0Var = this;
                                                                                                } else {
                                                                                                    if (cursorB.isNull(iB)) {
                                                                                                        string = null;
                                                                                                    } else {
                                                                                                        string = cursorB.getString(iB);
                                                                                                    }
                                                                                                    int i20 = cursorB.getInt(iB2);
                                                                                                    if (cursorB.isNull(iB3)) {
                                                                                                        string2 = null;
                                                                                                    } else {
                                                                                                        string2 = cursorB.getString(iB3);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB4)) {
                                                                                                        string3 = null;
                                                                                                    } else {
                                                                                                        string3 = cursorB.getString(iB4);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB5)) {
                                                                                                        string4 = null;
                                                                                                    } else {
                                                                                                        string4 = cursorB.getString(iB5);
                                                                                                    }
                                                                                                    int i21 = cursorB.getInt(iB6);
                                                                                                    if (cursorB.isNull(iB7)) {
                                                                                                        string5 = null;
                                                                                                    } else {
                                                                                                        string5 = cursorB.getString(iB7);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB8)) {
                                                                                                        string6 = null;
                                                                                                    } else {
                                                                                                        string6 = cursorB.getString(iB8);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB9)) {
                                                                                                        string7 = null;
                                                                                                    } else {
                                                                                                        string7 = cursorB.getString(iB9);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB10)) {
                                                                                                        string8 = null;
                                                                                                    } else {
                                                                                                        string8 = cursorB.getString(iB10);
                                                                                                    }
                                                                                                    if (cursorB.isNull(i3)) {
                                                                                                        string9 = null;
                                                                                                    } else {
                                                                                                        string9 = cursorB.getString(i3);
                                                                                                    }
                                                                                                    if (cursorB.isNull(i4)) {
                                                                                                        string10 = null;
                                                                                                    } else {
                                                                                                        string10 = cursorB.getString(i4);
                                                                                                    }
                                                                                                    if (cursorB.isNull(i5)) {
                                                                                                        string11 = null;
                                                                                                    } else {
                                                                                                        string11 = cursorB.getString(i5);
                                                                                                    }
                                                                                                    if (cursorB.isNull(i6)) {
                                                                                                        string12 = null;
                                                                                                    } else {
                                                                                                        string12 = cursorB.getString(i6);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB15)) {
                                                                                                        string13 = null;
                                                                                                    } else {
                                                                                                        string13 = cursorB.getString(iB15);
                                                                                                    }
                                                                                                    int i22 = cursorB.getInt(iB16);
                                                                                                    iB16 = iB16;
                                                                                                    iB17 = iB17;
                                                                                                    if (cursorB.isNull(iB17)) {
                                                                                                        string14 = null;
                                                                                                    } else {
                                                                                                        string14 = cursorB.getString(iB17);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB18)) {
                                                                                                        string15 = null;
                                                                                                    } else {
                                                                                                        string15 = cursorB.getString(iB18);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB19)) {
                                                                                                        string16 = null;
                                                                                                    } else {
                                                                                                        string16 = cursorB.getString(iB19);
                                                                                                    }
                                                                                                    if (cursorB.getInt(iB20) != 0) {
                                                                                                        z = true;
                                                                                                    } else {
                                                                                                        z = false;
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB21)) {
                                                                                                        string17 = null;
                                                                                                    } else {
                                                                                                        string17 = cursorB.getString(iB21);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB22)) {
                                                                                                        string18 = null;
                                                                                                    } else {
                                                                                                        string18 = cursorB.getString(iB22);
                                                                                                    }
                                                                                                    if (cursorB.isNull(iB23) || !cursorB.isNull(iB24)) {
                                                                                                        if (cursorB.isNull(iB23)) {
                                                                                                            string19 = null;
                                                                                                        } else {
                                                                                                            string19 = cursorB.getString(iB23);
                                                                                                        }
                                                                                                        kw0Var = this;
                                                                                                        List<String> listB = kw0Var.c.b(string19);
                                                                                                        if (cursorB.isNull(iB24)) {
                                                                                                            string20 = null;
                                                                                                        } else {
                                                                                                            string20 = cursorB.getString(iB24);
                                                                                                        }
                                                                                                        skippingDurationsDB = new SkippingDurationsDB(listB, kw0Var.c.b(string20));
                                                                                                    } else {
                                                                                                        iB24 = iB24;
                                                                                                        iB23 = iB23;
                                                                                                        i5 = i5;
                                                                                                        iB15 = iB15;
                                                                                                        skippingDurationsDB = null;
                                                                                                        kw0Var = this;
                                                                                                    }
                                                                                                    cinemanaDownloadItem = new CinemanaDownloadItem(string, i20, string2, string3, string4, i21, string5, string6, string7, string8, string9, string10, string11, string12, string13, i22, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                                                                                }
                                                                                            } else {
                                                                                                iB23 = i19;
                                                                                            }
                                                                                        } else {
                                                                                            iB22 = i18;
                                                                                        }
                                                                                    } else {
                                                                                        iB21 = i17;
                                                                                    }
                                                                                } else {
                                                                                    iB20 = i16;
                                                                                }
                                                                            } else {
                                                                                iB19 = i15;
                                                                            }
                                                                        } else {
                                                                            iB18 = i14;
                                                                        }
                                                                    } else {
                                                                        iB17 = i13;
                                                                    }
                                                                } else {
                                                                    iB16 = i12;
                                                                }
                                                            } else {
                                                                iB15 = i11;
                                                            }
                                                        }
                                                    } else {
                                                        adVar = adVar2;
                                                        i6 = iB14;
                                                    }
                                                    iB24 = iB24;
                                                    if (cursorB.isNull(iB)) {
                                                        string = null;
                                                    } else {
                                                        string = cursorB.getString(iB);
                                                    }
                                                    int i23 = cursorB.getInt(iB2);
                                                    if (cursorB.isNull(iB3)) {
                                                        string2 = null;
                                                    } else {
                                                        string2 = cursorB.getString(iB3);
                                                    }
                                                    if (cursorB.isNull(iB4)) {
                                                        string3 = null;
                                                    } else {
                                                        string3 = cursorB.getString(iB4);
                                                    }
                                                    if (cursorB.isNull(iB5)) {
                                                        string4 = null;
                                                    } else {
                                                        string4 = cursorB.getString(iB5);
                                                    }
                                                    int i24 = cursorB.getInt(iB6);
                                                    if (cursorB.isNull(iB7)) {
                                                        string5 = null;
                                                    } else {
                                                        string5 = cursorB.getString(iB7);
                                                    }
                                                    if (cursorB.isNull(iB8)) {
                                                        string6 = null;
                                                    } else {
                                                        string6 = cursorB.getString(iB8);
                                                    }
                                                    if (cursorB.isNull(iB9)) {
                                                        string7 = null;
                                                    } else {
                                                        string7 = cursorB.getString(iB9);
                                                    }
                                                    if (cursorB.isNull(iB10)) {
                                                        string8 = null;
                                                    } else {
                                                        string8 = cursorB.getString(iB10);
                                                    }
                                                    if (cursorB.isNull(i3)) {
                                                        string9 = null;
                                                    } else {
                                                        string9 = cursorB.getString(i3);
                                                    }
                                                    if (cursorB.isNull(i4)) {
                                                        string10 = null;
                                                    } else {
                                                        string10 = cursorB.getString(i4);
                                                    }
                                                    if (cursorB.isNull(i5)) {
                                                        string11 = null;
                                                    } else {
                                                        string11 = cursorB.getString(i5);
                                                    }
                                                    if (cursorB.isNull(i6)) {
                                                        string12 = null;
                                                    } else {
                                                        string12 = cursorB.getString(i6);
                                                    }
                                                    if (cursorB.isNull(iB15)) {
                                                        string13 = null;
                                                    } else {
                                                        string13 = cursorB.getString(iB15);
                                                    }
                                                    int i25 = cursorB.getInt(iB16);
                                                    iB16 = iB16;
                                                    iB17 = iB17;
                                                    if (cursorB.isNull(iB17)) {
                                                        string14 = null;
                                                    } else {
                                                        string14 = cursorB.getString(iB17);
                                                    }
                                                    if (cursorB.isNull(iB18)) {
                                                        string15 = null;
                                                    } else {
                                                        string15 = cursorB.getString(iB18);
                                                    }
                                                    if (cursorB.isNull(iB19)) {
                                                        string16 = null;
                                                    } else {
                                                        string16 = cursorB.getString(iB19);
                                                    }
                                                    if (cursorB.getInt(iB20) != 0) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (cursorB.isNull(iB21)) {
                                                        string17 = null;
                                                    } else {
                                                        string17 = cursorB.getString(iB21);
                                                    }
                                                    if (cursorB.isNull(iB22)) {
                                                        string18 = null;
                                                    } else {
                                                        string18 = cursorB.getString(iB22);
                                                    }
                                                    if (cursorB.isNull(iB23)) {
                                                        if (cursorB.isNull(iB23)) {
                                                            string19 = null;
                                                        } else {
                                                            string19 = cursorB.getString(iB23);
                                                        }
                                                        kw0Var = this;
                                                        List<String> listB2 = kw0Var.c.b(string19);
                                                        if (cursorB.isNull(iB24)) {
                                                            string20 = null;
                                                        } else {
                                                            string20 = cursorB.getString(iB24);
                                                        }
                                                        skippingDurationsDB = new SkippingDurationsDB(listB2, kw0Var.c.b(string20));
                                                    } else {
                                                        if (cursorB.isNull(iB23)) {
                                                            string19 = null;
                                                        } else {
                                                            string19 = cursorB.getString(iB23);
                                                        }
                                                        kw0Var = this;
                                                        List<String> listB3 = kw0Var.c.b(string19);
                                                        if (cursorB.isNull(iB24)) {
                                                            string20 = null;
                                                        } else {
                                                            string20 = cursorB.getString(iB24);
                                                        }
                                                        skippingDurationsDB = new SkippingDurationsDB(listB3, kw0Var.c.b(string20));
                                                    }
                                                    cinemanaDownloadItem = new CinemanaDownloadItem(string, i23, string2, string3, string4, i24, string5, string6, string7, string8, string9, string10, string11, string12, string13, i25, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                                } else {
                                                    iB24 = iB24;
                                                    i5 = i7;
                                                    adVar = adVar2;
                                                    i6 = iB14;
                                                    if (cursorB.isNull(iB)) {
                                                        string = null;
                                                    } else {
                                                        string = cursorB.getString(iB);
                                                    }
                                                    int i26 = cursorB.getInt(iB2);
                                                    if (cursorB.isNull(iB3)) {
                                                        string2 = null;
                                                    } else {
                                                        string2 = cursorB.getString(iB3);
                                                    }
                                                    if (cursorB.isNull(iB4)) {
                                                        string3 = null;
                                                    } else {
                                                        string3 = cursorB.getString(iB4);
                                                    }
                                                    if (cursorB.isNull(iB5)) {
                                                        string4 = null;
                                                    } else {
                                                        string4 = cursorB.getString(iB5);
                                                    }
                                                    int i27 = cursorB.getInt(iB6);
                                                    if (cursorB.isNull(iB7)) {
                                                        string5 = null;
                                                    } else {
                                                        string5 = cursorB.getString(iB7);
                                                    }
                                                    if (cursorB.isNull(iB8)) {
                                                        string6 = null;
                                                    } else {
                                                        string6 = cursorB.getString(iB8);
                                                    }
                                                    if (cursorB.isNull(iB9)) {
                                                        string7 = null;
                                                    } else {
                                                        string7 = cursorB.getString(iB9);
                                                    }
                                                    if (cursorB.isNull(iB10)) {
                                                        string8 = null;
                                                    } else {
                                                        string8 = cursorB.getString(iB10);
                                                    }
                                                    if (cursorB.isNull(i3)) {
                                                        string9 = null;
                                                    } else {
                                                        string9 = cursorB.getString(i3);
                                                    }
                                                    if (cursorB.isNull(i4)) {
                                                        string10 = null;
                                                    } else {
                                                        string10 = cursorB.getString(i4);
                                                    }
                                                    if (cursorB.isNull(i5)) {
                                                        string11 = null;
                                                    } else {
                                                        string11 = cursorB.getString(i5);
                                                    }
                                                    if (cursorB.isNull(i6)) {
                                                        string12 = null;
                                                    } else {
                                                        string12 = cursorB.getString(i6);
                                                    }
                                                    if (cursorB.isNull(iB15)) {
                                                        string13 = null;
                                                    } else {
                                                        string13 = cursorB.getString(iB15);
                                                    }
                                                    int i28 = cursorB.getInt(iB16);
                                                    iB16 = iB16;
                                                    iB17 = iB17;
                                                    if (cursorB.isNull(iB17)) {
                                                        string14 = null;
                                                    } else {
                                                        string14 = cursorB.getString(iB17);
                                                    }
                                                    if (cursorB.isNull(iB18)) {
                                                        string15 = null;
                                                    } else {
                                                        string15 = cursorB.getString(iB18);
                                                    }
                                                    if (cursorB.isNull(iB19)) {
                                                        string16 = null;
                                                    } else {
                                                        string16 = cursorB.getString(iB19);
                                                    }
                                                    if (cursorB.getInt(iB20) != 0) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (cursorB.isNull(iB21)) {
                                                        string17 = null;
                                                    } else {
                                                        string17 = cursorB.getString(iB21);
                                                    }
                                                    if (cursorB.isNull(iB22)) {
                                                        string18 = null;
                                                    } else {
                                                        string18 = cursorB.getString(iB22);
                                                    }
                                                    if (cursorB.isNull(iB23)) {
                                                        if (cursorB.isNull(iB23)) {
                                                            string19 = null;
                                                        } else {
                                                            string19 = cursorB.getString(iB23);
                                                        }
                                                        kw0Var = this;
                                                        List<String> listB4 = kw0Var.c.b(string19);
                                                        if (cursorB.isNull(iB24)) {
                                                            string20 = null;
                                                        } else {
                                                            string20 = cursorB.getString(iB24);
                                                        }
                                                        skippingDurationsDB = new SkippingDurationsDB(listB4, kw0Var.c.b(string20));
                                                    } else {
                                                        if (cursorB.isNull(iB23)) {
                                                            string19 = null;
                                                        } else {
                                                            string19 = cursorB.getString(iB23);
                                                        }
                                                        kw0Var = this;
                                                        List<String> listB5 = kw0Var.c.b(string19);
                                                        if (cursorB.isNull(iB24)) {
                                                            string20 = null;
                                                        } else {
                                                            string20 = cursorB.getString(iB24);
                                                        }
                                                        skippingDurationsDB = new SkippingDurationsDB(listB5, kw0Var.c.b(string20));
                                                    }
                                                    cinemanaDownloadItem = new CinemanaDownloadItem(string, i26, string2, string3, string4, i27, string5, string6, string7, string8, string9, string10, string11, string12, string13, i28, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                                }
                                            }
                                        } else {
                                            i3 = i10;
                                        }
                                        cinemanaDownloadItem = new CinemanaDownloadItem(string, i26, string2, string3, string4, i27, string5, string6, string7, string8, string9, string10, string11, string12, string13, i28, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                                    } catch (Throwable th) {
                                        th = th;
                                        cursorB.close();
                                        yt3Var.c();
                                        throw th;
                                    }
                                    i4 = i9;
                                    i5 = i7;
                                    adVar = adVar2;
                                    i6 = iB14;
                                    if (cursorB.isNull(iB)) {
                                        string = null;
                                    } else {
                                        string = cursorB.getString(iB);
                                    }
                                    int i29 = cursorB.getInt(iB2);
                                    if (cursorB.isNull(iB3)) {
                                        string2 = null;
                                    } else {
                                        string2 = cursorB.getString(iB3);
                                    }
                                    if (cursorB.isNull(iB4)) {
                                        string3 = null;
                                    } else {
                                        string3 = cursorB.getString(iB4);
                                    }
                                    if (cursorB.isNull(iB5)) {
                                        string4 = null;
                                    } else {
                                        string4 = cursorB.getString(iB5);
                                    }
                                    int i210 = cursorB.getInt(iB6);
                                    if (cursorB.isNull(iB7)) {
                                        string5 = null;
                                    } else {
                                        string5 = cursorB.getString(iB7);
                                    }
                                    if (cursorB.isNull(iB8)) {
                                        string6 = null;
                                    } else {
                                        string6 = cursorB.getString(iB8);
                                    }
                                    if (cursorB.isNull(iB9)) {
                                        string7 = null;
                                    } else {
                                        string7 = cursorB.getString(iB9);
                                    }
                                    if (cursorB.isNull(iB10)) {
                                        string8 = null;
                                    } else {
                                        string8 = cursorB.getString(iB10);
                                    }
                                    if (cursorB.isNull(i3)) {
                                        string9 = null;
                                    } else {
                                        string9 = cursorB.getString(i3);
                                    }
                                    if (cursorB.isNull(i4)) {
                                        string10 = null;
                                    } else {
                                        string10 = cursorB.getString(i4);
                                    }
                                    if (cursorB.isNull(i5)) {
                                        string11 = null;
                                    } else {
                                        string11 = cursorB.getString(i5);
                                    }
                                    if (cursorB.isNull(i6)) {
                                        string12 = null;
                                    } else {
                                        string12 = cursorB.getString(i6);
                                    }
                                    if (cursorB.isNull(iB15)) {
                                        string13 = null;
                                    } else {
                                        string13 = cursorB.getString(iB15);
                                    }
                                    int i211 = cursorB.getInt(iB16);
                                    iB16 = iB16;
                                    iB17 = iB17;
                                    if (cursorB.isNull(iB17)) {
                                        string14 = null;
                                    } else {
                                        string14 = cursorB.getString(iB17);
                                    }
                                    if (cursorB.isNull(iB18)) {
                                        string15 = null;
                                    } else {
                                        string15 = cursorB.getString(iB18);
                                    }
                                    if (cursorB.isNull(iB19)) {
                                        string16 = null;
                                    } else {
                                        string16 = cursorB.getString(iB19);
                                    }
                                    if (cursorB.getInt(iB20) != 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (cursorB.isNull(iB21)) {
                                        string17 = null;
                                    } else {
                                        string17 = cursorB.getString(iB21);
                                    }
                                    if (cursorB.isNull(iB22)) {
                                        string18 = null;
                                    } else {
                                        string18 = cursorB.getString(iB22);
                                    }
                                    if (cursorB.isNull(iB23)) {
                                        if (cursorB.isNull(iB23)) {
                                            string19 = null;
                                        } else {
                                            string19 = cursorB.getString(iB23);
                                        }
                                        kw0Var = this;
                                        List<String> listB6 = kw0Var.c.b(string19);
                                        if (cursorB.isNull(iB24)) {
                                            string20 = null;
                                        } else {
                                            string20 = cursorB.getString(iB24);
                                        }
                                        skippingDurationsDB = new SkippingDurationsDB(listB6, kw0Var.c.b(string20));
                                    } else {
                                        if (cursorB.isNull(iB23)) {
                                            string19 = null;
                                        } else {
                                            string19 = cursorB.getString(iB23);
                                        }
                                        kw0Var = this;
                                        List<String> listB7 = kw0Var.c.b(string19);
                                        if (cursorB.isNull(iB24)) {
                                            string20 = null;
                                        } else {
                                            string20 = cursorB.getString(iB24);
                                        }
                                        skippingDurationsDB = new SkippingDurationsDB(listB7, kw0Var.c.b(string20));
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursorB.close();
                                    yt3Var.c();
                                    throw th;
                                }
                            } else {
                                i3 = i10;
                                i4 = i9;
                                i5 = i7;
                                adVar = adVar2;
                                i6 = iB14;
                                if (cursorB.isNull(iB)) {
                                    string = null;
                                } else {
                                    string = cursorB.getString(iB);
                                }
                                int i212 = cursorB.getInt(iB2);
                                if (cursorB.isNull(iB3)) {
                                    string2 = null;
                                } else {
                                    string2 = cursorB.getString(iB3);
                                }
                                if (cursorB.isNull(iB4)) {
                                    string3 = null;
                                } else {
                                    string3 = cursorB.getString(iB4);
                                }
                                if (cursorB.isNull(iB5)) {
                                    string4 = null;
                                } else {
                                    string4 = cursorB.getString(iB5);
                                }
                                int i213 = cursorB.getInt(iB6);
                                if (cursorB.isNull(iB7)) {
                                    string5 = null;
                                } else {
                                    string5 = cursorB.getString(iB7);
                                }
                                if (cursorB.isNull(iB8)) {
                                    string6 = null;
                                } else {
                                    string6 = cursorB.getString(iB8);
                                }
                                if (cursorB.isNull(iB9)) {
                                    string7 = null;
                                } else {
                                    string7 = cursorB.getString(iB9);
                                }
                                if (cursorB.isNull(iB10)) {
                                    string8 = null;
                                } else {
                                    string8 = cursorB.getString(iB10);
                                }
                                if (cursorB.isNull(i3)) {
                                    string9 = null;
                                } else {
                                    string9 = cursorB.getString(i3);
                                }
                                if (cursorB.isNull(i4)) {
                                    string10 = null;
                                } else {
                                    string10 = cursorB.getString(i4);
                                }
                                if (cursorB.isNull(i5)) {
                                    string11 = null;
                                } else {
                                    string11 = cursorB.getString(i5);
                                }
                                if (cursorB.isNull(i6)) {
                                    string12 = null;
                                } else {
                                    string12 = cursorB.getString(i6);
                                }
                                if (cursorB.isNull(iB15)) {
                                    string13 = null;
                                } else {
                                    string13 = cursorB.getString(iB15);
                                }
                                int i214 = cursorB.getInt(iB16);
                                iB16 = iB16;
                                iB17 = iB17;
                                if (cursorB.isNull(iB17)) {
                                    string14 = null;
                                } else {
                                    string14 = cursorB.getString(iB17);
                                }
                                if (cursorB.isNull(iB18)) {
                                    string15 = null;
                                } else {
                                    string15 = cursorB.getString(iB18);
                                }
                                if (cursorB.isNull(iB19)) {
                                    string16 = null;
                                } else {
                                    string16 = cursorB.getString(iB19);
                                }
                                if (cursorB.getInt(iB20) != 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (cursorB.isNull(iB21)) {
                                    string17 = null;
                                } else {
                                    string17 = cursorB.getString(iB21);
                                }
                                if (cursorB.isNull(iB22)) {
                                    string18 = null;
                                } else {
                                    string18 = cursorB.getString(iB22);
                                }
                                if (cursorB.isNull(iB23)) {
                                    if (cursorB.isNull(iB23)) {
                                        string19 = null;
                                    } else {
                                        string19 = cursorB.getString(iB23);
                                    }
                                    kw0Var = this;
                                    List<String> listB8 = kw0Var.c.b(string19);
                                    if (cursorB.isNull(iB24)) {
                                        string20 = null;
                                    } else {
                                        string20 = cursorB.getString(iB24);
                                    }
                                    skippingDurationsDB = new SkippingDurationsDB(listB8, kw0Var.c.b(string20));
                                } else {
                                    if (cursorB.isNull(iB23)) {
                                        string19 = null;
                                    } else {
                                        string19 = cursorB.getString(iB23);
                                    }
                                    kw0Var = this;
                                    List<String> listB9 = kw0Var.c.b(string19);
                                    if (cursorB.isNull(iB24)) {
                                        string20 = null;
                                    } else {
                                        string20 = cursorB.getString(iB24);
                                    }
                                    skippingDurationsDB = new SkippingDurationsDB(listB9, kw0Var.c.b(string20));
                                }
                                cinemanaDownloadItem = new CinemanaDownloadItem(string, i212, string2, string3, string4, i213, string5, string6, string7, string8, string9, string10, string11, string12, string13, i214, string14, skippingDurationsDB, string15, string16, z, string17, string18);
                            }
                            ad<String, ArrayList<SubtitleDb>> adVar4 = adVar;
                            ArrayList<SubtitleDb> arrayList2 = adVar4.get(cursorB.getString(iB));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList<>();
                            }
                            String string23 = cursorB.getString(iB);
                            int i30 = iB;
                            ad<String, ArrayList<p84>> adVar5 = adVar3;
                            ArrayList<p84> arrayList3 = adVar5.get(string23);
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList<>();
                            }
                            CombinedDownloadItem combinedDownloadItem = new CombinedDownloadItem(cinemanaDownloadItem, arrayList2, arrayList3);
                            ArrayList arrayList4 = arrayList;
                            arrayList4.add(combinedDownloadItem);
                            arrayList = arrayList4;
                            kw0Var2 = kw0Var;
                            i10 = i3;
                            adVar2 = adVar4;
                            adVar3 = adVar5;
                            iB = i30;
                            i7 = i5;
                            i9 = i4;
                            iB14 = i6;
                            iB15 = iB15;
                            iB23 = iB23;
                            iB24 = iB24;
                        }
                        kw0 kw0Var3 = kw0Var2;
                        ArrayList arrayList5 = arrayList;
                        kw0Var3.a.n();
                        cursorB.close();
                        yt3Var.c();
                        kw0Var3.a.j();
                        return arrayList5;
                    } catch (Throwable th3) {
                        th = th3;
                        cursorB.close();
                        yt3Var.c();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    yt3Var = kw0VarA;
                }
            } catch (Throwable th5) {
                th = th5;
                kw0VarA.a.j();
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
            kw0VarA = kw0Var2;
            kw0VarA.a.j();
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.jw0
    public Object r(CinemanaDownloadItem cinemanaDownloadItem, ud0<? super qv4> ud0Var) {
        Commit105.prepare(cinemanaDownloadItem);
        return af0.c(this.a, true, new h(cinemanaDownloadItem), ud0Var);
    }

    @Override // com.shabakaty.downloader.jw0
    public Object u(p84 p84Var, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new e(p84Var), ud0Var);
    }
}
