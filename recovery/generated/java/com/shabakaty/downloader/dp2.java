package com.shabakaty.downloader;

import android.net.Uri;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: MediaItem.java */
/* JADX INFO: loaded from: classes.dex */
public final class dp2 {
    public static final /* synthetic */ int f = 0;
    public final String a;
    public final g b;
    public final f c;
    public final hp2 d;
    public final d e;

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class b {
        public final Uri a;
        public final Object b;

        public b(Uri uri, Object obj, a aVar) {
            this.a = uri;
            this.b = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && sy4.a(this.b, bVar.b);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Object obj = this.b;
            return iHashCode + (obj != null ? obj.hashCode() : 0);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class c {
        public String a;
        public Uri b;
        public String c;
        public long d;
        public boolean e;
        public boolean f;
        public boolean g;
        public Uri h;
        public UUID j;
        public boolean k;
        public boolean l;
        public boolean m;
        public byte[] o;
        public String q;
        public Uri s;
        public Object t;
        public Object u;
        public hp2 v;
        public List<Integer> n = Collections.emptyList();
        public Map<String, String> i = Collections.emptyMap();
        public List<ud4> p = Collections.emptyList();
        public List<h> r = Collections.emptyList();
        public long w = CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
        public long x = CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
        public long y = CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
        public float z = -3.4028235E38f;
        public float A = -3.4028235E38f;

        public dp2 a() {
            g gVar;
            md.e(this.h == null || this.j != null);
            Uri uri = this.b;
            if (uri != null) {
                String str = this.c;
                UUID uuid = this.j;
                e eVar = uuid != null ? new e(uuid, this.h, this.i, this.k, this.m, this.l, this.n, this.o, null) : null;
                Uri uri2 = this.s;
                gVar = new g(uri, str, eVar, uri2 != null ? new b(uri2, this.t, null) : null, this.p, this.q, this.r, this.u, null);
            } else {
                gVar = null;
            }
            String str2 = this.a;
            if (str2 == null) {
                str2 = BuildConfig.FLAVOR;
            }
            String str3 = str2;
            d dVar = new d(this.d, Long.MIN_VALUE, this.e, this.f, this.g, null);
            f fVar = new f(this.w, this.x, this.y, this.z, this.A);
            hp2 hp2Var = this.v;
            if (hp2Var == null) {
                hp2Var = hp2.D;
            }
            return new dp2(str3, dVar, gVar, fVar, hp2Var, null);
        }

        public c b(List<ud4> list) {
            this.p = !list.isEmpty() ? Collections.unmodifiableList(new ArrayList(list)) : Collections.emptyList();
            return this;
        }

        public c c(List<h> list) {
            this.r = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class d {
        public final long a;
        public final long b;
        public final boolean c;
        public final boolean d;
        public final boolean e;

        static {
            wx wxVar = wx.t;
        }

        public d(long j, long j2, boolean z, boolean z2, boolean z3, a aVar) {
            this.a = j;
            this.b = j2;
            this.c = z;
            this.d = z2;
            this.e = z3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && this.b == dVar.b && this.c == dVar.c && this.d == dVar.d && this.e == dVar.e;
        }

        public int hashCode() {
            long j = this.a;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.b;
            return ((((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class e {
        public final UUID a;
        public final Uri b;
        public final Map<String, String> c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        public final List<Integer> g;
        public final byte[] h;

        public e(UUID uuid, Uri uri, Map map, boolean z, boolean z2, boolean z3, List list, byte[] bArr, a aVar) {
            md.b((z2 && uri == null) ? false : true);
            this.a = uuid;
            this.b = uri;
            this.c = map;
            this.d = z;
            this.f = z2;
            this.e = z3;
            this.g = list;
            this.h = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        }

        public byte[] a() {
            byte[] bArr = this.h;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return this.a.equals(eVar.a) && sy4.a(this.b, eVar.b) && sy4.a(this.c, eVar.c) && this.d == eVar.d && this.f == eVar.f && this.e == eVar.e && this.g.equals(eVar.g) && Arrays.equals(this.h, eVar.h);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Uri uri = this.b;
            return Arrays.hashCode(this.h) + ((this.g.hashCode() + ((((((((this.c.hashCode() + ((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31)) * 31) + (this.d ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31)) * 31);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class f {
        public final long a;
        public final long b;
        public final long c;
        public final float d;
        public final float e;

        public f(long j, long j2, long j3, float f, float f2) {
            this.a = j;
            this.b = j2;
            this.c = j3;
            this.d = f;
            this.e = f2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && this.b == fVar.b && this.c == fVar.c && this.d == fVar.d && this.e == fVar.e;
        }

        public int hashCode() {
            long j = this.a;
            long j2 = this.b;
            int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.c;
            int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            float f = this.d;
            int iFloatToIntBits = (i2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
            float f2 = this.e;
            return iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class g {
        public final Uri a;
        public final String b;
        public final e c;
        public final b d;
        public final List<ud4> e;
        public final String f;
        public final List<h> g;
        public final Object h;

        public g(Uri uri, String str, e eVar, b bVar, List list, String str2, List list2, Object obj, a aVar) {
            this.a = uri;
            this.b = str;
            this.c = eVar;
            this.d = bVar;
            this.e = list;
            this.f = str2;
            this.g = list2;
            this.h = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.a.equals(gVar.a) && sy4.a(this.b, gVar.b) && sy4.a(this.c, gVar.c) && sy4.a(this.d, gVar.d) && this.e.equals(gVar.e) && sy4.a(this.f, gVar.f) && this.g.equals(gVar.g) && sy4.a(this.h, gVar.h);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            e eVar = this.c;
            int iHashCode3 = (iHashCode2 + (eVar == null ? 0 : eVar.hashCode())) * 31;
            b bVar = this.d;
            int iHashCode4 = (this.e.hashCode() + ((iHashCode3 + (bVar == null ? 0 : bVar.hashCode())) * 31)) * 31;
            String str2 = this.f;
            int iHashCode5 = (this.g.hashCode() + ((iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            Object obj = this.h;
            return iHashCode5 + (obj != null ? obj.hashCode() : 0);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class h {
        public final Uri a;
        public final String b;
        public final String c;
        public final int d;
        public final int e = 0;
        public final String f = null;

        public h(Uri uri, String str, String str2, int i) {
            this.a = uri;
            this.b = str;
            this.c = str2;
            this.d = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.a.equals(hVar.a) && this.b.equals(hVar.b) && sy4.a(this.c, hVar.c) && this.d == hVar.d && this.e == hVar.e && sy4.a(this.f, hVar.f);
        }

        public int hashCode() {
            int iA = ik4.a(this.b, this.a.hashCode() * 31, 31);
            String str = this.c;
            int iHashCode = (((((iA + (str == null ? 0 : str.hashCode())) * 31) + this.d) * 31) + this.e) * 31;
            String str2 = this.f;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }
    }

    static {
        new c().a();
    }

    public dp2(String str, d dVar, g gVar, f fVar, hp2 hp2Var, a aVar) {
        this.a = str;
        this.b = gVar;
        this.c = fVar;
        this.d = hp2Var;
        this.e = dVar;
    }

    public c a() {
        c cVar = new c();
        d dVar = this.e;
        long j = dVar.b;
        cVar.e = dVar.c;
        cVar.f = dVar.d;
        cVar.d = dVar.a;
        cVar.g = dVar.e;
        cVar.a = this.a;
        cVar.v = this.d;
        f fVar = this.c;
        cVar.w = fVar.a;
        cVar.x = fVar.b;
        cVar.y = fVar.c;
        cVar.z = fVar.d;
        cVar.A = fVar.e;
        g gVar = this.b;
        if (gVar != null) {
            cVar.q = gVar.f;
            cVar.c = gVar.b;
            cVar.b = gVar.a;
            cVar.p = gVar.e;
            cVar.r = gVar.g;
            cVar.u = gVar.h;
            e eVar = gVar.c;
            if (eVar != null) {
                cVar.h = eVar.b;
                cVar.i = eVar.c;
                cVar.k = eVar.d;
                cVar.m = eVar.f;
                cVar.l = eVar.e;
                cVar.n = eVar.g;
                cVar.j = eVar.a;
                cVar.o = eVar.a();
            }
            b bVar = gVar.d;
            if (bVar != null) {
                cVar.s = bVar.a;
                cVar.t = bVar.b;
            }
        }
        return cVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dp2)) {
            return false;
        }
        dp2 dp2Var = (dp2) obj;
        return sy4.a(this.a, dp2Var.a) && this.e.equals(dp2Var.e) && sy4.a(this.b, dp2Var.b) && sy4.a(this.c, dp2Var.c) && sy4.a(this.d, dp2Var.d);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        g gVar = this.b;
        return this.d.hashCode() + ((this.e.hashCode() + ((this.c.hashCode() + ((iHashCode + (gVar != null ? gVar.hashCode() : 0)) * 31)) * 31)) * 31);
    }
}
