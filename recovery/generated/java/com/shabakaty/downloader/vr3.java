package com.shabakaty.downloader;

import com.connectsdk.service.command.ServiceCommand;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: Request.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class vr3 {
    public qp a;
    public final qw1 b;
    public final String c;
    public final ts1 d;
    public final yr3 e;
    public final Map<Class<?>, Object> f;

    public vr3(qw1 qw1Var, String str, ts1 ts1Var, yr3 yr3Var, Map<Class<?>, ? extends Object> map) {
        j32.e(str, "method");
        this.b = qw1Var;
        this.c = str;
        this.d = ts1Var;
        this.e = yr3Var;
        this.f = map;
    }

    public final qp a() {
        qp qpVar = this.a;
        if (qpVar != null) {
            return qpVar;
        }
        qp qpVarB = qp.o.b(this.d);
        this.a = qpVarB;
        return qpVarB;
    }

    public final String b(String str) {
        return this.d.d(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        StringBuilder sbA = um3.a("Request{method=");
        sbA.append(this.c);
        sbA.append(", url=");
        sbA.append(this.b);
        if (this.d.size() != 0) {
            sbA.append(", headers=[");
            int i = 0;
            for (x93<? extends String, ? extends String> x93Var : this.d) {
                int i2 = i + 1;
                if (i < 0) {
                    iq6.x();
                    throw null;
                }
                x93<? extends String, ? extends String> x93Var2 = x93Var;
                String str = (String) x93Var2.r;
                String str2 = (String) x93Var2.s;
                if (i > 0) {
                    sbA.append(", ");
                }
                gk4.a(sbA, str, ':', str2);
                i = i2;
            }
            sbA.append(']');
        }
        if (!this.f.isEmpty()) {
            sbA.append(", tags=");
            sbA.append(this.f);
        }
        sbA.append('}');
        String string = sbA.toString();
        j32.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX INFO: compiled from: Request.kt */
    public static class a {
        public qw1 a;
        public String b;
        public ts1.a c;
        public yr3 d;
        public Map<Class<?>, Object> e;

        public a() {
            this.e = new LinkedHashMap();
            this.b = ServiceCommand.TYPE_GET;
            this.c = new ts1.a();
        }

        public a a(String str, String str2) {
            j32.e(str2, "value");
            this.c.a(str, str2);
            return this;
        }

        public vr3 b() {
            Map mapUnmodifiableMap;
            qw1 qw1Var = this.a;
            if (qw1Var == null) {
                throw new IllegalStateException("url == null".toString());
            }
            String str = this.b;
            ts1 ts1VarD = this.c.d();
            yr3 yr3Var = this.d;
            Map<Class<?>, Object> map = this.e;
            byte[] bArr = ry4.a;
            j32.e(map, "$this$toImmutableMap");
            if (map.isEmpty()) {
                mapUnmodifiableMap = x21.r;
            } else {
                mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
                j32.d(mapUnmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
            }
            return new vr3(qw1Var, str, ts1VarD, yr3Var, mapUnmodifiableMap);
        }

        public a c(qp qpVar) {
            j32.e(qpVar, "cacheControl");
            String string = qpVar.toString();
            if (string.length() == 0) {
                h("Cache-Control");
            } else {
                e("Cache-Control", string);
            }
            return this;
        }

        public a d() {
            g(ServiceCommand.TYPE_GET, null);
            return this;
        }

        public a e(String str, String str2) {
            j32.e(str, "name");
            j32.e(str2, "value");
            ts1.a aVar = this.c;
            Objects.requireNonNull(aVar);
            ts1.b bVar = ts1.s;
            bVar.a(str);
            bVar.b(str2, str);
            aVar.f(str);
            aVar.c(str, str2);
            return this;
        }

        public a f(ts1 ts1Var) {
            j32.e(ts1Var, "headers");
            this.c = ts1Var.l();
            return this;
        }

        public a g(String str, yr3 yr3Var) {
            j32.e(str, "method");
            if (!(str.length() > 0)) {
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            if (yr3Var == null) {
                j32.e(str, "method");
                if (!(!(j32.a(str, ServiceCommand.TYPE_POST) || j32.a(str, ServiceCommand.TYPE_PUT) || j32.a(str, "PATCH") || j32.a(str, "PROPPATCH") || j32.a(str, "REPORT")))) {
                    throw new IllegalArgumentException(jp2.a("method ", str, " must have a request body.").toString());
                }
            } else if (!nw1.a(str)) {
                throw new IllegalArgumentException(jp2.a("method ", str, " must not have a request body.").toString());
            }
            this.b = str;
            this.d = yr3Var;
            return this;
        }

        public a h(String str) {
            this.c.f(str);
            return this;
        }

        public <T> a i(Class<? super T> cls, T t) {
            j32.e(cls, "type");
            if (t == null) {
                this.e.remove(cls);
            } else {
                if (this.e.isEmpty()) {
                    this.e = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.e;
                T tCast = cls.cast(t);
                j32.c(tCast);
                map.put(cls, tCast);
            }
            return this;
        }

        public a j(qw1 qw1Var) {
            j32.e(qw1Var, "url");
            this.a = qw1Var;
            return this;
        }

        public a k(String str) {
            j32.e(str, "url");
            if (ne4.J(str, "ws:", true)) {
                StringBuilder sbA = um3.a("http:");
                String strSubstring = str.substring(3);
                j32.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                sbA.append(strSubstring);
                str = sbA.toString();
            } else if (ne4.J(str, "wss:", true)) {
                StringBuilder sbA2 = um3.a("https:");
                String strSubstring2 = str.substring(4);
                j32.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                sbA2.append(strSubstring2);
                str = sbA2.toString();
            }
            j32.e(str, "$this$toHttpUrl");
            qw1.a aVar = new qw1.a();
            aVar.d(null, str);
            j(aVar.a());
            return this;
        }

        public a(vr3 vr3Var) {
            LinkedHashMap linkedHashMap;
            this.e = new LinkedHashMap();
            this.a = vr3Var.b;
            this.b = vr3Var.c;
            this.d = vr3Var.e;
            if (vr3Var.f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = vr3Var.f;
                j32.e(map, "<this>");
                linkedHashMap = new LinkedHashMap(map);
            }
            this.e = linkedHashMap;
            this.c = vr3Var.d.l();
        }
    }
}
