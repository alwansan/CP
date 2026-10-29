package com.shabakaty.downloader;

import android.database.Cursor;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: VideoModelDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class h25 implements g25 {
    public final vt3 a;
    public final x31<i25> b;
    public final f54 c;

    /* JADX INFO: compiled from: VideoModelDao_Impl.java */
    public class a implements Callable<qv4> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = h25.this.c.a();
            vt3 vt3Var = h25.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                h25.this.a.n();
                qv4 qv4Var = qv4.a;
                h25.this.a.j();
                f54 f54Var = h25.this.c;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
                return qv4Var;
            } catch (Throwable th) {
                h25.this.a.j();
                h25.this.c.d(ci4VarA);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: VideoModelDao_Impl.java */
    public class b extends x31<i25> {
        public b(h25 h25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `video_model` (`nb`,`enTitle`,`arTitle`,`otherTitle`,`stars`,`fileFile`,`arContent`,`enContent`,`mDate`,`year`,`kind`,`season`,`img`,`imgThumb`,`imgMediumThumb`,`imgObjUrl`,`imgMediumThumbObjUrl`,`filmRating`,`tvShowRating`,`episodeNummer`,`rate`,`special`,`itemDate`,`duration`,`imdbUrlRef`,`rootSeries`,`useParentImg`,`showComments`,`episodeFlag`,`trailer`,`mock`,`audioStreamNumber`,`parentSkipping`,`collectionID`,`deleted`,`imgThumbObjUrl`,`ratingImg`,`arTranslationFilePath`,`hasIntroSkipping`,`videoLikesNumber`,`videoDisLikesNumber`,`videoCommentsNumber`,`videoViewsNumber`,`itemOrderList`,`listId`,`listSortOrder`,`castable`,`publishDate`,`episodeDesc`,`qualityName`,`customArTitle`,`customEnTitle`,`finished`,`url`,`downloadTaskId`,`downloadedTime`,`size`,`description`,`addedToWatchLater`,`watched`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, i25 i25Var) {
            i25 i25Var2 = i25Var;
            String str = i25Var2.r;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            String str2 = i25Var2.s;
            if (str2 == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str2);
            }
            String str3 = i25Var2.t;
            if (str3 == null) {
                ci4Var.T0(3);
            } else {
                ci4Var.I(3, str3);
            }
            String str4 = i25Var2.u;
            if (str4 == null) {
                ci4Var.T0(4);
            } else {
                ci4Var.I(4, str4);
            }
            String str5 = i25Var2.v;
            if (str5 == null) {
                ci4Var.T0(5);
            } else {
                ci4Var.I(5, str5);
            }
            String str6 = i25Var2.w;
            if (str6 == null) {
                ci4Var.T0(6);
            } else {
                ci4Var.I(6, str6);
            }
            String str7 = i25Var2.x;
            if (str7 == null) {
                ci4Var.T0(7);
            } else {
                ci4Var.I(7, str7);
            }
            String str8 = i25Var2.y;
            if (str8 == null) {
                ci4Var.T0(8);
            } else {
                ci4Var.I(8, str8);
            }
            String str9 = i25Var2.z;
            if (str9 == null) {
                ci4Var.T0(9);
            } else {
                ci4Var.I(9, str9);
            }
            String str10 = i25Var2.A;
            if (str10 == null) {
                ci4Var.T0(10);
            } else {
                ci4Var.I(10, str10);
            }
            String str11 = i25Var2.B;
            if (str11 == null) {
                ci4Var.T0(11);
            } else {
                ci4Var.I(11, str11);
            }
            String str12 = i25Var2.C;
            if (str12 == null) {
                ci4Var.T0(12);
            } else {
                ci4Var.I(12, str12);
            }
            String str13 = i25Var2.D;
            if (str13 == null) {
                ci4Var.T0(13);
            } else {
                ci4Var.I(13, str13);
            }
            String str14 = i25Var2.E;
            if (str14 == null) {
                ci4Var.T0(14);
            } else {
                ci4Var.I(14, str14);
            }
            String str15 = i25Var2.F;
            if (str15 == null) {
                ci4Var.T0(15);
            } else {
                ci4Var.I(15, str15);
            }
            String str16 = i25Var2.G;
            if (str16 == null) {
                ci4Var.T0(16);
            } else {
                ci4Var.I(16, str16);
            }
            String str17 = i25Var2.H;
            if (str17 == null) {
                ci4Var.T0(17);
            } else {
                ci4Var.I(17, str17);
            }
            String str18 = i25Var2.I;
            if (str18 == null) {
                ci4Var.T0(18);
            } else {
                ci4Var.I(18, str18);
            }
            String str19 = i25Var2.J;
            if (str19 == null) {
                ci4Var.T0(19);
            } else {
                ci4Var.I(19, str19);
            }
            String str20 = i25Var2.K;
            if (str20 == null) {
                ci4Var.T0(20);
            } else {
                ci4Var.I(20, str20);
            }
            String str21 = i25Var2.L;
            if (str21 == null) {
                ci4Var.T0(21);
            } else {
                ci4Var.I(21, str21);
            }
            String str22 = i25Var2.M;
            if (str22 == null) {
                ci4Var.T0(22);
            } else {
                ci4Var.I(22, str22);
            }
            String str23 = i25Var2.N;
            if (str23 == null) {
                ci4Var.T0(23);
            } else {
                ci4Var.I(23, str23);
            }
            String str24 = i25Var2.O;
            if (str24 == null) {
                ci4Var.T0(24);
            } else {
                ci4Var.I(24, str24);
            }
            String str25 = i25Var2.P;
            if (str25 == null) {
                ci4Var.T0(25);
            } else {
                ci4Var.I(25, str25);
            }
            String str26 = i25Var2.Q;
            if (str26 == null) {
                ci4Var.T0(26);
            } else {
                ci4Var.I(26, str26);
            }
            String str27 = i25Var2.R;
            if (str27 == null) {
                ci4Var.T0(27);
            } else {
                ci4Var.I(27, str27);
            }
            ci4Var.h0(28, i25Var2.S ? 1L : 0L);
            String str28 = i25Var2.T;
            if (str28 == null) {
                ci4Var.T0(29);
            } else {
                ci4Var.I(29, str28);
            }
            String str29 = i25Var2.U;
            if (str29 == null) {
                ci4Var.T0(30);
            } else {
                ci4Var.I(30, str29);
            }
            ci4Var.h0(31, i25Var2.V ? 1L : 0L);
            String str30 = i25Var2.W;
            if (str30 == null) {
                ci4Var.T0(32);
            } else {
                ci4Var.I(32, str30);
            }
            String str31 = i25Var2.X;
            if (str31 == null) {
                ci4Var.T0(33);
            } else {
                ci4Var.I(33, str31);
            }
            ci4Var.h0(34, i25Var2.Y);
            String str32 = i25Var2.Z;
            if (str32 == null) {
                ci4Var.T0(35);
            } else {
                ci4Var.I(35, str32);
            }
            String str33 = i25Var2.a0;
            if (str33 == null) {
                ci4Var.T0(36);
            } else {
                ci4Var.I(36, str33);
            }
            String str34 = i25Var2.b0;
            if (str34 == null) {
                ci4Var.T0(37);
            } else {
                ci4Var.I(37, str34);
            }
            String str35 = i25Var2.c0;
            if (str35 == null) {
                ci4Var.T0(38);
            } else {
                ci4Var.I(38, str35);
            }
            ci4Var.h0(39, i25Var2.d0 ? 1L : 0L);
            String str36 = i25Var2.e0;
            if (str36 == null) {
                ci4Var.T0(40);
            } else {
                ci4Var.I(40, str36);
            }
            String str37 = i25Var2.f0;
            if (str37 == null) {
                ci4Var.T0(41);
            } else {
                ci4Var.I(41, str37);
            }
            ci4Var.h0(42, i25Var2.g0);
            String str38 = i25Var2.h0;
            if (str38 == null) {
                ci4Var.T0(43);
            } else {
                ci4Var.I(43, str38);
            }
            String str39 = i25Var2.i0;
            if (str39 == null) {
                ci4Var.T0(44);
            } else {
                ci4Var.I(44, str39);
            }
            String str40 = i25Var2.j0;
            if (str40 == null) {
                ci4Var.T0(45);
            } else {
                ci4Var.I(45, str40);
            }
            String str41 = i25Var2.k0;
            if (str41 == null) {
                ci4Var.T0(46);
            } else {
                ci4Var.I(46, str41);
            }
            String str42 = i25Var2.l0;
            if (str42 == null) {
                ci4Var.T0(47);
            } else {
                ci4Var.I(47, str42);
            }
            String str43 = i25Var2.m0;
            if (str43 == null) {
                ci4Var.T0(48);
            } else {
                ci4Var.I(48, str43);
            }
            String str44 = i25Var2.n0;
            if (str44 == null) {
                ci4Var.T0(49);
            } else {
                ci4Var.I(49, str44);
            }
            String str45 = i25Var2.o0;
            if (str45 == null) {
                ci4Var.T0(50);
            } else {
                ci4Var.I(50, str45);
            }
            String str46 = i25Var2.p0;
            if (str46 == null) {
                ci4Var.T0(51);
            } else {
                ci4Var.I(51, str46);
            }
            String str47 = i25Var2.q0;
            if (str47 == null) {
                ci4Var.T0(52);
            } else {
                ci4Var.I(52, str47);
            }
            ci4Var.h0(53, i25Var2.r0 ? 1L : 0L);
            String str48 = i25Var2.s0;
            if (str48 == null) {
                ci4Var.T0(54);
            } else {
                ci4Var.I(54, str48);
            }
            ci4Var.h0(55, i25Var2.t0);
            ci4Var.h0(56, i25Var2.u0);
            String str49 = i25Var2.v0;
            if (str49 == null) {
                ci4Var.T0(57);
            } else {
                ci4Var.I(57, str49);
            }
            String str50 = i25Var2.w0;
            if (str50 == null) {
                ci4Var.T0(58);
            } else {
                ci4Var.I(58, str50);
            }
            ci4Var.h0(59, i25Var2.x0 ? 1L : 0L);
            ci4Var.h0(60, i25Var2.y0 ? 1L : 0L);
        }
    }

    /* JADX INFO: compiled from: VideoModelDao_Impl.java */
    public class c extends f54 {
        public c(h25 h25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "DELETE FROM video_model";
        }
    }

    public h25(vt3 vt3Var) {
        this.a = vt3Var;
        this.b = new b(this, vt3Var);
        new AtomicBoolean(false);
        new AtomicBoolean(false);
        this.c = new c(this, vt3Var);
    }

    @Override // com.shabakaty.downloader.g25
    public Object b(ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new a(), ud0Var);
    }

    @Override // com.shabakaty.downloader.cj
    public void f(i25 i25Var) {
        i25 i25Var2 = i25Var;
        this.a.b();
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            this.b.f(i25Var2);
            this.a.n();
        } finally {
            this.a.j();
        }
    }

    @Override // com.shabakaty.downloader.g25
    public i25 t(String str) throws Throwable {
        yt3 yt3Var;
        i25 i25Var;
        yt3 yt3VarA = yt3.a("SELECT * FROM video_model WHERE nb = ?", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        this.a.b();
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            int iB = yg0.b(cursorB, "nb");
            int iB2 = yg0.b(cursorB, "enTitle");
            int iB3 = yg0.b(cursorB, "arTitle");
            int iB4 = yg0.b(cursorB, "otherTitle");
            int iB5 = yg0.b(cursorB, "stars");
            int iB6 = yg0.b(cursorB, "fileFile");
            int iB7 = yg0.b(cursorB, "arContent");
            int iB8 = yg0.b(cursorB, "enContent");
            int iB9 = yg0.b(cursorB, "mDate");
            int iB10 = yg0.b(cursorB, "year");
            int iB11 = yg0.b(cursorB, "kind");
            int iB12 = yg0.b(cursorB, "season");
            int iB13 = yg0.b(cursorB, "img");
            int iB14 = yg0.b(cursorB, "imgThumb");
            yt3Var = yt3VarA;
            try {
                int iB15 = yg0.b(cursorB, "imgMediumThumb");
                int iB16 = yg0.b(cursorB, "imgObjUrl");
                int iB17 = yg0.b(cursorB, "imgMediumThumbObjUrl");
                int iB18 = yg0.b(cursorB, "filmRating");
                int iB19 = yg0.b(cursorB, "tvShowRating");
                int iB20 = yg0.b(cursorB, "episodeNummer");
                int iB21 = yg0.b(cursorB, "rate");
                int iB22 = yg0.b(cursorB, "special");
                int iB23 = yg0.b(cursorB, "itemDate");
                int iB24 = yg0.b(cursorB, "duration");
                int iB25 = yg0.b(cursorB, "imdbUrlRef");
                int iB26 = yg0.b(cursorB, "rootSeries");
                int iB27 = yg0.b(cursorB, "useParentImg");
                int iB28 = yg0.b(cursorB, "showComments");
                int iB29 = yg0.b(cursorB, "episodeFlag");
                int iB30 = yg0.b(cursorB, "trailer");
                int iB31 = yg0.b(cursorB, "mock");
                int iB32 = yg0.b(cursorB, "audioStreamNumber");
                int iB33 = yg0.b(cursorB, "parentSkipping");
                int iB34 = yg0.b(cursorB, "collectionID");
                int iB35 = yg0.b(cursorB, "deleted");
                int iB36 = yg0.b(cursorB, "imgThumbObjUrl");
                int iB37 = yg0.b(cursorB, "ratingImg");
                int iB38 = yg0.b(cursorB, "arTranslationFilePath");
                int iB39 = yg0.b(cursorB, "hasIntroSkipping");
                int iB40 = yg0.b(cursorB, "videoLikesNumber");
                int iB41 = yg0.b(cursorB, "videoDisLikesNumber");
                int iB42 = yg0.b(cursorB, "videoCommentsNumber");
                int iB43 = yg0.b(cursorB, "videoViewsNumber");
                int iB44 = yg0.b(cursorB, "itemOrderList");
                int iB45 = yg0.b(cursorB, "listId");
                int iB46 = yg0.b(cursorB, "listSortOrder");
                int iB47 = yg0.b(cursorB, "castable");
                int iB48 = yg0.b(cursorB, "publishDate");
                int iB49 = yg0.b(cursorB, "episodeDesc");
                int iB50 = yg0.b(cursorB, "qualityName");
                int iB51 = yg0.b(cursorB, "customArTitle");
                int iB52 = yg0.b(cursorB, "customEnTitle");
                int iB53 = yg0.b(cursorB, "finished");
                int iB54 = yg0.b(cursorB, "url");
                int iB55 = yg0.b(cursorB, "downloadTaskId");
                int iB56 = yg0.b(cursorB, "downloadedTime");
                int iB57 = yg0.b(cursorB, "size");
                int iB58 = yg0.b(cursorB, "description");
                int iB59 = yg0.b(cursorB, "addedToWatchLater");
                int iB60 = yg0.b(cursorB, "watched");
                if (cursorB.moveToFirst()) {
                    i25Var = new i25(cursorB.isNull(iB) ? null : cursorB.getString(iB), cursorB.isNull(iB2) ? null : cursorB.getString(iB2), cursorB.isNull(iB3) ? null : cursorB.getString(iB3), cursorB.isNull(iB4) ? null : cursorB.getString(iB4), cursorB.isNull(iB5) ? null : cursorB.getString(iB5), cursorB.isNull(iB6) ? null : cursorB.getString(iB6), cursorB.isNull(iB7) ? null : cursorB.getString(iB7), cursorB.isNull(iB8) ? null : cursorB.getString(iB8), cursorB.isNull(iB9) ? null : cursorB.getString(iB9), cursorB.isNull(iB10) ? null : cursorB.getString(iB10), cursorB.isNull(iB11) ? null : cursorB.getString(iB11), cursorB.isNull(iB12) ? null : cursorB.getString(iB12), cursorB.isNull(iB13) ? null : cursorB.getString(iB13), cursorB.isNull(iB14) ? null : cursorB.getString(iB14), cursorB.isNull(r17) ? null : cursorB.getString(iB15), cursorB.isNull(r18) ? null : cursorB.getString(iB16), cursorB.isNull(r19) ? null : cursorB.getString(iB17), cursorB.isNull(r20) ? null : cursorB.getString(iB18), cursorB.isNull(r21) ? null : cursorB.getString(iB19), cursorB.isNull(r22) ? null : cursorB.getString(iB20), cursorB.isNull(r23) ? null : cursorB.getString(iB21), cursorB.isNull(r24) ? null : cursorB.getString(iB22), cursorB.isNull(r25) ? null : cursorB.getString(iB23), cursorB.isNull(r26) ? null : cursorB.getString(iB24), cursorB.isNull(r27) ? null : cursorB.getString(iB25), cursorB.isNull(r28) ? null : cursorB.getString(iB26), cursorB.isNull(r29) ? null : cursorB.getString(iB27), cursorB.getInt(iB28) != 0, cursorB.isNull(r31) ? null : cursorB.getString(iB29), cursorB.isNull(r32) ? null : cursorB.getString(iB30), cursorB.getInt(iB31) != 0, cursorB.isNull(r34) ? null : cursorB.getString(iB32), cursorB.isNull(r35) ? null : cursorB.getString(iB33), cursorB.getInt(iB34), cursorB.isNull(iB35) ? null : cursorB.getString(iB35), cursorB.isNull(r38) ? null : cursorB.getString(iB36), cursorB.isNull(r39) ? null : cursorB.getString(iB37), cursorB.isNull(r40) ? null : cursorB.getString(iB38), cursorB.getInt(iB39) != 0, cursorB.isNull(r42) ? null : cursorB.getString(iB40), cursorB.isNull(r43) ? null : cursorB.getString(iB41), cursorB.getInt(iB42), cursorB.isNull(iB43) ? null : cursorB.getString(iB43), cursorB.isNull(r46) ? null : cursorB.getString(iB44), cursorB.isNull(r47) ? null : cursorB.getString(iB45), cursorB.isNull(r48) ? null : cursorB.getString(iB46), cursorB.isNull(r49) ? null : cursorB.getString(iB47), cursorB.isNull(r50) ? null : cursorB.getString(iB48), cursorB.isNull(r51) ? null : cursorB.getString(iB49), cursorB.isNull(r52) ? null : cursorB.getString(iB50), cursorB.isNull(r53) ? null : cursorB.getString(iB51), cursorB.isNull(r54) ? null : cursorB.getString(iB52), cursorB.getInt(iB53) != 0, cursorB.isNull(r56) ? null : cursorB.getString(iB54), cursorB.getInt(iB55), cursorB.getLong(iB56), cursorB.isNull(iB57) ? null : cursorB.getString(iB57), cursorB.isNull(r60) ? null : cursorB.getString(iB58), cursorB.getInt(iB59) != 0, cursorB.getInt(iB60) != 0);
                } else {
                    i25Var = null;
                }
                cursorB.close();
                yt3Var.c();
                return i25Var;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                yt3Var.c();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            yt3Var = yt3VarA;
        }
    }
}
