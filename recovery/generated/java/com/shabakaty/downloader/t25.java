package com.shabakaty.downloader;

import android.database.Cursor;
import android.os.CancellationSignal;
import com.shabakaty.cinemana.data.db.videostatus.VideoStatusEntity;
import com.shabakaty.cinemana.local.LocalRuntime;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: VideoStatusDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class t25 implements s25 {
    public final vt3 a;
    public final x31<VideoStatusEntity> b;
    public final f54 c;
    public final f54 d;
    public final f54 e;
    public final f54 f;
    public final f54 g;
    public final f54 h;
    public final f54 i;
    public final f54 j;
    public final f54 k;
    public final f54 l;
    public final f54 m;

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class a extends f54 {
        public a(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET favorite = 1\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class b extends f54 {
        public b(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET favorite = 0\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class c extends f54 {
        public c(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET watched = 1\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class d extends f54 {
        public d(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET watched = 0,videoProgress=0\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class e extends f54 {
        public e(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET videoProgress = ?\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class f extends x31<VideoStatusEntity> {
        public f(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `video_status` (`id`,`videoId`,`liked`,`watched`,`annoying`,`disLiked`,`favorite`,`watchLater`,`videoProgress`) VALUES (?,?,?,?,?,?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, VideoStatusEntity videoStatusEntity) {
            VideoStatusEntity videoStatusEntity2 = videoStatusEntity;
            String str = videoStatusEntity2.id;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            String str2 = videoStatusEntity2.videoId;
            if (str2 == null) {
                ci4Var.T0(2);
            } else {
                ci4Var.I(2, str2);
            }
            ci4Var.h0(3, videoStatusEntity2.liked ? 1L : 0L);
            ci4Var.h0(4, videoStatusEntity2.watched ? 1L : 0L);
            ci4Var.h0(5, videoStatusEntity2.annoying ? 1L : 0L);
            ci4Var.h0(6, videoStatusEntity2.disLiked ? 1L : 0L);
            ci4Var.h0(7, videoStatusEntity2.favorite ? 1L : 0L);
            String str3 = videoStatusEntity2.watchLater;
            if (str3 == null) {
                ci4Var.T0(8);
            } else {
                ci4Var.I(8, str3);
            }
            ci4Var.h0(9, videoStatusEntity2.videoProgress);
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class g implements Callable<qv4> {
        public g() {
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = t25.this.c.a();
            vt3 vt3Var = t25.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                t25.this.a.n();
                qv4 qv4Var = qv4.a;
                t25.this.a.j();
                f54 f54Var = t25.this.c;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
                return qv4Var;
            } catch (Throwable th) {
                t25.this.a.j();
                t25.this.c.d(ci4VarA);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class h implements Callable<Integer> {
        public final /* synthetic */ long r;
        public final /* synthetic */ String s;

        public h(long j, String str) {
            this.r = j;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public Integer call() {
            ci4 ci4VarA = t25.this.m.a();
            ci4VarA.h0(1, this.r);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = t25.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                Integer numValueOf = Integer.valueOf(ci4VarA.P());
                t25.this.a.n();
                return numValueOf;
            } finally {
                t25.this.a.j();
                f54 f54Var = t25.this.m;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class i implements Callable<VideoStatusEntity> {
        public final /* synthetic */ yt3 r;

        public i(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public VideoStatusEntity call() {
            VideoStatusEntity videoStatusEntity = null;
            Cursor cursorB = lh0.b(t25.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "id");
                int iB2 = yg0.b(cursorB, "videoId");
                int iB3 = yg0.b(cursorB, "liked");
                int iB4 = yg0.b(cursorB, "watched");
                int iB5 = yg0.b(cursorB, "annoying");
                int iB6 = yg0.b(cursorB, "disLiked");
                int iB7 = yg0.b(cursorB, "favorite");
                int iB8 = yg0.b(cursorB, "watchLater");
                int iB9 = yg0.b(cursorB, "videoProgress");
                if (cursorB.moveToFirst()) {
                    videoStatusEntity = new VideoStatusEntity(cursorB.isNull(iB) ? null : cursorB.getString(iB), cursorB.isNull(iB2) ? null : cursorB.getString(iB2), cursorB.getInt(iB3) != 0, cursorB.getInt(iB4) != 0, cursorB.getInt(iB5) != 0, cursorB.getInt(iB6) != 0, cursorB.getInt(iB7) != 0, cursorB.isNull(iB8) ? null : cursorB.getString(iB8), cursorB.getLong(iB9));
                }
                if (videoStatusEntity != null) {
                    cursorB.close();
                    return videoStatusEntity;
                }
                throw new z21("Query returned empty result set: " + this.r.r);
            } catch (Throwable th) {
                cursorB.close();
                throw th;
            }
        }

        public void finalize() {
            this.r.c();
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class j implements Callable<Long> {
        public final /* synthetic */ yt3 r;

        public j(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public Long call() {
            Long lValueOf = null;
            Cursor cursorB = lh0.b(t25.this.a, this.r, false, null);
            try {
                if (cursorB.moveToFirst() && !cursorB.isNull(0)) {
                    lValueOf = Long.valueOf(cursorB.getLong(0));
                }
                return lValueOf;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class k extends f54 {
        public k(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "DELETE FROM video_status";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class l extends f54 {
        public l(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET liked = 1\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class m extends f54 {
        public m(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET disLiked = 1\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class n extends f54 {
        public n(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET liked = 0,\n\t\t\t\t\tdisLiked = 0\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class o extends f54 {
        public o(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET watchLater = \"1\"\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    /* JADX INFO: compiled from: VideoStatusDao_Impl.java */
    public class p extends f54 {
        public p(t25 t25Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "\n\t\t\t\tUPDATE video_status\n\t\t\t\tSET watchLater = \"false\"\n\t\t\t\tWHERE id=?\n\t\t\t\t";
        }
    }

    public t25(vt3 vt3Var) {
        this.a = vt3Var;
        this.b = new f(this, vt3Var);
        new AtomicBoolean(false);
        new AtomicBoolean(false);
        this.c = new k(this, vt3Var);
        this.d = new l(this, vt3Var);
        this.e = new m(this, vt3Var);
        this.f = new n(this, vt3Var);
        this.g = new o(this, vt3Var);
        this.h = new p(this, vt3Var);
        this.i = new a(this, vt3Var);
        this.j = new b(this, vt3Var);
        this.k = new c(this, vt3Var);
        this.l = new d(this, vt3Var);
        this.m = new e(this, vt3Var);
    }

    @Override // com.shabakaty.downloader.s25
    public boolean D(String str) {
        yt3 yt3VarA = yt3.a("\n\t\t\t\tSELECT EXISTS (\n\t\t\t\t\tSELECT * \n\t\t\t\t\tFROM video_status\n\t\t\t\t\tWHERE ? = id AND watched = 1\n\t\t\t\t\t)\n\t\t\t\t", 1);
        yt3VarA.I(1, str);
        this.a.b();
        boolean z = false;
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z = cursorB.getInt(0) != 0;
            }
            return z;
        } finally {
            cursorB.close();
            yt3VarA.c();
        }
    }

    @Override // com.shabakaty.downloader.s25
    public void E(String str) {
        this.a.b();
        ci4 ci4VarA = this.i.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.i;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.i.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public void F(String str) {
        LocalRuntime.watchedChanged(str, false);
        this.a.b();
        ci4 ci4VarA = this.l.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.l;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.l.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public VideoStatusEntity a(String str) {
        yt3 yt3VarA = yt3.a("SELECT * FROM video_status WHERE id = ?", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        this.a.b();
        VideoStatusEntity videoStatusEntity = null;
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            int iB = yg0.b(cursorB, "id");
            int iB2 = yg0.b(cursorB, "videoId");
            int iB3 = yg0.b(cursorB, "liked");
            int iB4 = yg0.b(cursorB, "watched");
            int iB5 = yg0.b(cursorB, "annoying");
            int iB6 = yg0.b(cursorB, "disLiked");
            int iB7 = yg0.b(cursorB, "favorite");
            int iB8 = yg0.b(cursorB, "watchLater");
            int iB9 = yg0.b(cursorB, "videoProgress");
            if (cursorB.moveToFirst()) {
                videoStatusEntity = new VideoStatusEntity(cursorB.isNull(iB) ? null : cursorB.getString(iB), cursorB.isNull(iB2) ? null : cursorB.getString(iB2), cursorB.getInt(iB3) != 0, cursorB.getInt(iB4) != 0, cursorB.getInt(iB5) != 0, cursorB.getInt(iB6) != 0, cursorB.getInt(iB7) != 0, cursorB.isNull(iB8) ? null : cursorB.getString(iB8), cursorB.getLong(iB9));
            }
            return videoStatusEntity;
        } finally {
            cursorB.close();
            yt3VarA.c();
        }
    }

    @Override // com.shabakaty.downloader.s25
    public Object b(ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new g(), ud0Var);
    }

    @Override // com.shabakaty.downloader.s25
    public void c(String str) {
        this.a.b();
        ci4 ci4VarA = this.h.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.h;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.h.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public boolean contains(String str) {
        yt3 yt3VarA = yt3.a("SELECT EXISTS (SELECT * FROM video_status WHERE ? = id)", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        this.a.b();
        boolean z = false;
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z = cursorB.getInt(0) != 0;
            }
            return z;
        } finally {
            cursorB.close();
            yt3VarA.c();
        }
    }

    @Override // com.shabakaty.downloader.s25
    public void d(String str) {
        this.a.b();
        ci4 ci4VarA = this.d.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.d;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.d.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public void e(String str) {
        LocalRuntime.watchedChanged(str, true);
        this.a.b();
        ci4 ci4VarA = this.k.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.k;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.k.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.cj
    public void f(VideoStatusEntity videoStatusEntity) {
        VideoStatusEntity videoStatusEntity2 = videoStatusEntity;
        this.a.b();
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            this.b.f(videoStatusEntity2);
            this.a.n();
        } finally {
            this.a.j();
        }
    }

    @Override // com.shabakaty.downloader.s25
    public void k(String str) {
        this.a.b();
        ci4 ci4VarA = this.f.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.f;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.f.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public int p(String str) {
        yt3 yt3VarA = yt3.a("\n\t\t\t\t\tSELECT Count(*)\n\t\t\t\t\tFROM video_model\n\t\t\t\t\tINNER JOIN video_status ON video_model.nb = video_status.videoId\t\n\t\t\t\t\tWHERE video_model.rootSeries = ? AND (video_status.videoProgress != 0 OR video_status.watched = 1) AND (video_model.kind = 2)\n\t\t\t\t\t", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        this.a.b();
        Cursor cursorB = lh0.b(this.a, yt3VarA, false, null);
        try {
            return cursorB.moveToFirst() ? cursorB.getInt(0) : 0;
        } finally {
            cursorB.close();
            yt3VarA.c();
        }
    }

    @Override // com.shabakaty.downloader.s25
    public Object q(String str, long j2, ud0<? super Integer> ud0Var) {
        LocalRuntime.progress(str, j2);
        return af0.c(this.a, true, new h(j2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.s25
    public void v(String str) {
        this.a.b();
        ci4 ci4VarA = this.g.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.g;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.g.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public Object w(String str, ud0<? super Long> ud0Var) {
        yt3 yt3VarA = yt3.a("\n\t\t\t\t\tSELECT videoProgress\n\t\t\t\t\tFROM video_status\n\t\t\t\t\tWHERE ? = id \n\t\t\t\t", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        return af0.b(this.a, false, new CancellationSignal(), new j(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.s25
    public void x(String str) {
        this.a.b();
        ci4 ci4VarA = this.j.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.j;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.j.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public void y(String str) {
        this.a.b();
        ci4 ci4VarA = this.e.a();
        if (str == null) {
            ci4VarA.T0(1);
        } else {
            ci4VarA.I(1, str);
        }
        vt3 vt3Var = this.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            this.a.n();
            this.a.j();
            f54 f54Var = this.e;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
        } catch (Throwable th) {
            this.a.j();
            this.e.d(ci4VarA);
            throw th;
        }
    }

    @Override // com.shabakaty.downloader.s25
    public f74<VideoStatusEntity> z(String str) {
        yt3 yt3VarA = yt3.a("SELECT * FROM video_status WHERE id = ?", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        i iVar = new i(yt3VarA);
        Object obj = bw3.a;
        return new j74(new aw3(iVar));
    }
}
