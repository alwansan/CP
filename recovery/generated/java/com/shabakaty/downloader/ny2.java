package com.shabakaty.downloader;

import android.content.SharedPreferences;
import com.connectsdk.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.epom_view.models.ImageEpomResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: NetworkProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ny2 {
    public SharedPreferences a;
    public final a63 b;
    public final lr1 c;
    public final b d;
    public final a e;
    public final g41 f;

    /* JADX INFO: compiled from: NetworkProvider.kt */
    public static final class b {
        public String a;
        public String b;

        public b() {
            this(null, null, 3);
        }

        public b(String str, String str2, int i) {
            String str3 = (i & 1) != 0 ? BuildConfig.FLAVOR : null;
            String str4 = (i & 2) != 0 ? BuildConfig.FLAVOR : null;
            j32.e(str3, "epomVideoLink");
            j32.e(str4, "epomImageLink");
            this.a = str3;
            this.b = str4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return j32.a(this.a, bVar.a) && j32.a(this.b, bVar.b);
        }

        public int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("Links(epomVideoLink=");
            sbA.append(this.a);
            sbA.append(", epomImageLink=");
            return h61.a(sbA, this.b, ')');
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {212}, m = "adShown")
    public static final class c extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public c(ud0<? super c> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.a(null, this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_colorPrimaryDark, R.styleable.AppCompatTheme_colorPrimaryDark}, m = "fetchAdWithIp")
    public static final class d extends xd0 {
        public Object u;
        public Object v;
        public /* synthetic */ Object w;
        public int y;

        public d(ud0<? super d> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.w = obj;
            this.y |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.b(this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_dialogTheme, R.styleable.AppCompatTheme_dividerHorizontal}, m = "fetchAdWithIpifyIp")
    public static final class e extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public e(ud0<? super e> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.c(this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_listPreferredItemPaddingLeft, R.styleable.AppCompatTheme_listPreferredItemPaddingLeft}, m = "fetchAdWithLocalIp")
    public static final class f extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public f(ud0<? super f> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.d(this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_textAppearanceSearchResultTitle}, m = "fetchImageAd")
    public static final class g extends xd0 {
        public /* synthetic */ Object u;
        public int w;

        public g(ud0<? super g> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.u = obj;
            this.w |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.e(null, this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_popupMenuStyle, R.styleable.AppCompatTheme_seekBarStyle}, m = "fetchImageOrVideoAd")
    public static final class h extends xd0 {
        public Object u;
        public Object v;
        public /* synthetic */ Object w;
        public int y;

        public h(ud0<? super h> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.w = obj;
            this.y |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.f(null, this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_windowActionModeOverlay}, m = "fetchImageResponse")
    public static final class i extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public i(ud0<? super i> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.g(null, this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_listChoiceIndicatorMultipleAnimated}, m = "fetchIpFromIpify")
    public static final class j extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public j(ud0<? super j> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.h(this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {R.styleable.AppCompatTheme_windowNoTitle, 133}, m = "fetchVideoAd")
    public static final class k extends xd0 {
        public Object u;
        public Object v;
        public /* synthetic */ Object w;
        public int y;

        public k(ud0<? super k> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.w = obj;
            this.y |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.i(null, this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {157}, m = "fetchVideoResponse")
    public static final class l extends xd0 {
        public Object u;
        public Object v;
        public /* synthetic */ Object w;
        public int y;

        public l(ud0<? super l> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.w = obj;
            this.y |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.j(null, null, null, this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {189}, m = "getLocalIp")
    public static final class m extends xd0 {
        public /* synthetic */ Object u;
        public int w;

        public m(ud0<? super m> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.u = obj;
            this.w |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.l(this);
        }
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    @pm0(c = "com.shabakaty.epom_view.data.NetworkProvider", f = "NetworkProvider.kt", l = {198}, m = "getLocalIpResponse")
    public static final class n extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public n(ud0<? super n> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return ny2.this.m(this);
        }
    }

    public ny2(SharedPreferences sharedPreferences, a63 a63Var, lr1 lr1Var, b bVar, a aVar, g41 g41Var) {
        j32.e(a63Var, "client");
        j32.e(lr1Var, "gson");
        j32.e(bVar, "links");
        j32.e(aVar, "durations");
        this.a = sharedPreferences;
        this.b = a63Var;
        this.c = lr1Var;
        this.d = bVar;
        this.e = aVar;
        this.f = g41Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object a(String str, ud0<? super String> ud0Var) {
        c cVar;
        Object objB;
        ny2 ny2Var;
        if (ud0Var instanceof c) {
            cVar = (c) ud0Var;
            int i2 = cVar.x;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                cVar.x = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                cVar = new c(ud0Var);
            }
        } else {
            cVar = new c(ud0Var);
        }
        Object objA = cVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = cVar.x;
        try {
            if (i3 == 0) {
                j96.i(objA);
                g41 g41Var = this.f;
                if (g41Var != null) {
                    j32.e(str, "impression");
                    g41Var.a(j32.j("Sending an impression request to: ", str), g41Var).a();
                }
                vr3.a aVar = new vr3.a();
                aVar.k(str);
                aVar.d();
                mq mqVarA = this.b.a(aVar.b());
                cVar.u = this;
                cVar.x = 1;
                objA = i41.a(mqVarA, cVar);
                if (objA == te0Var) {
                    return te0Var;
                }
                ny2Var = this;
            } else {
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ny2Var = (ny2) cVar.u;
                j96.i(objA);
            }
            ys3 ys3Var = ((ws3) objA).y;
            objB = ys3Var == null ? null : ys3Var.g();
            g41 g41Var2 = ny2Var.f;
            if (g41Var2 != null) {
                g41Var2.a(j32.j("Received impression response: ", objB), g41Var2).a();
            }
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        if (objB instanceof dt3.a) {
            return null;
        }
        return objB;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ud0<? super f41> ud0Var) {
        d dVar;
        ny2 ny2Var;
        ny2 ny2Var2;
        ny2 ny2Var3;
        Object objB;
        f41.b bVar;
        if (ud0Var instanceof d) {
            dVar = (d) ud0Var;
            int i2 = dVar.y;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                dVar.y = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                dVar = new d(ud0Var);
            }
        } else {
            dVar = new d(ud0Var);
        }
        Object objC = dVar.w;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = dVar.y;
        if (i3 == 0) {
            j96.i(objC);
            try {
                dVar.u = this;
                dVar.v = this;
                dVar.y = 1;
                objC = c(dVar);
                if (objC == te0Var) {
                    return te0Var;
                }
                ny2Var2 = this;
                ny2Var3 = ny2Var2;
            } catch (Throwable th) {
                th = th;
                ny2Var = this;
                objB = j96.b(th);
            }
        } else {
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ny2Var = (ny2) dVar.u;
                try {
                    j96.i(objC);
                    objB = (f41) objC;
                } catch (Throwable th2) {
                    th = th2;
                    objB = j96.b(th);
                }
                ny2Var3 = ny2Var;
                Objects.requireNonNull(ny2Var3);
                bVar = f41.b.w;
                if (objB instanceof dt3.a) {
                    return bVar;
                }
                return objB;
            }
            ny2Var2 = (ny2) dVar.v;
            ny2Var3 = (ny2) dVar.u;
            try {
                j96.i(objC);
            } catch (Throwable th3) {
                th = th3;
                ny2Var = ny2Var3;
                objB = j96.b(th);
            }
        }
        objB = (f41) objC;
        if (objB == null) {
            dVar.u = ny2Var3;
            dVar.v = null;
            dVar.y = 2;
            objC = ny2Var2.d(dVar);
            if (objC == te0Var) {
                return te0Var;
            }
            ny2Var = ny2Var3;
            objB = (f41) objC;
            ny2Var3 = ny2Var;
        }
        Objects.requireNonNull(ny2Var3);
        bVar = f41.b.w;
        if (objB instanceof dt3.a) {
            return bVar;
        }
        return objB;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ud0<? super f41> ud0Var) {
        e eVar;
        ny2 ny2Var;
        if (ud0Var instanceof e) {
            eVar = (e) ud0Var;
            int i2 = eVar.x;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                eVar.x = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                eVar = new e(ud0Var);
            }
        } else {
            eVar = new e(ud0Var);
        }
        Object objH = eVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = eVar.x;
        if (i3 != 0) {
            if (i3 == 1) {
                ny2Var = (ny2) eVar.u;
                j96.i(objH);
            } else {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(objH);
            }
            return (f41) objH;
        }
        j96.i(objH);
        eVar.u = this;
        eVar.x = 1;
        objH = h(eVar);
        if (objH == te0Var) {
            return te0Var;
        }
        ny2Var = this;
        l41 l41Var = (l41) objH;
        if (l41Var == null) {
            return null;
        }
        String str = l41Var.a;
        eVar.u = null;
        eVar.x = 2;
        objH = ny2Var.f(str, eVar);
        if (objH == te0Var) {
            return te0Var;
        }
        return (f41) objH;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ud0<? super f41> ud0Var) {
        f fVar;
        ny2 ny2Var;
        if (ud0Var instanceof f) {
            fVar = (f) ud0Var;
            int i2 = fVar.x;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                fVar.x = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                fVar = new f(ud0Var);
            }
        } else {
            fVar = new f(ud0Var);
        }
        Object objL = fVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = fVar.x;
        if (i3 != 0) {
            if (i3 == 1) {
                ny2Var = (ny2) fVar.u;
                j96.i(objL);
            } else {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(objL);
            }
        }
        j96.i(objL);
        fVar.u = this;
        fVar.x = 1;
        objL = l(fVar);
        if (objL == te0Var) {
            return te0Var;
        }
        ny2Var = this;
        String str = ((l41) objL).a;
        fVar.u = null;
        fVar.x = 2;
        objL = ny2Var.f(str, fVar);
        return objL == te0Var ? te0Var : objL;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(String str, ud0<? super f41.c> ud0Var) {
        g gVar;
        if (ud0Var instanceof g) {
            gVar = (g) ud0Var;
            int i2 = gVar.w;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                gVar.w = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                gVar = new g(ud0Var);
            }
        } else {
            gVar = new g(ud0Var);
        }
        Object objG = gVar.u;
        Object obj = te0.COROUTINE_SUSPENDED;
        int i3 = gVar.w;
        if (i3 == 0) {
            j96.i(objG);
            gVar.w = 1;
            objG = g(str, gVar);
            if (objG == obj) {
                return obj;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j96.i(objG);
        }
        ImageEpomResponse imageEpomResponse = (ImageEpomResponse) objG;
        if (imageEpomResponse == null) {
            return null;
        }
        return imageEpomResponse.asImageAd();
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00cc A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002e, B:58:0x00c2, B:60:0x00cc, B:64:0x00da, B:63:0x00d1, B:65:0x00dd, B:68:0x00e2), top: B:78:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d1 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002e, B:58:0x00c2, B:60:0x00cc, B:64:0x00da, B:63:0x00d1, B:65:0x00dd, B:68:0x00e2), top: B:78:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:65:0x00dd A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002e, B:58:0x00c2, B:60:0x00cc, B:64:0x00da, B:63:0x00d1, B:65:0x00dd, B:68:0x00e2), top: B:78:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e2 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002e, B:58:0x00c2, B:60:0x00cc, B:64:0x00da, B:63:0x00d1, B:65:0x00dd, B:68:0x00e2), top: B:78:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0105  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object f(String str, ud0<? super f41> ud0Var) {
        h hVar;
        ny2 ny2Var;
        Object objB;
        ny2 ny2Var2;
        ny2 ny2Var3;
        Throwable th;
        Object objB2;
        f41.b bVar;
        boolean z;
        Object obj;
        f41.e eVar;
        g41 g41Var;
        g41 g41Var2;
        if (ud0Var instanceof h) {
            hVar = (h) ud0Var;
            int i2 = hVar.y;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                hVar.y = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                hVar = new h(ud0Var);
            }
        } else {
            hVar = new h(ud0Var);
        }
        Object objE = hVar.w;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = hVar.y;
        if (i3 == 0) {
            j96.i(objE);
            g41 g41Var3 = this.f;
            if (g41Var3 != null) {
                g41Var3.a("Fetching image ad..", g41Var3).a();
            }
            try {
                hVar.u = this;
                hVar.v = str;
                hVar.y = 1;
                objE = e(str, hVar);
                if (objE == te0Var) {
                    return te0Var;
                }
                ny2Var = this;
            } catch (Throwable th2) {
                th = th2;
                ny2Var = this;
                objB = j96.b(th);
            }
        } else {
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ny2Var2 = (ny2) hVar.v;
                ny2Var3 = (ny2) hVar.u;
                try {
                    j96.i(objE);
                    eVar = (f41.e) objE;
                    if (ne4.D(eVar.w)) {
                        g41Var2 = ny2Var2.f;
                        if (g41Var2 == null) {
                            g41Var2.a("Video ad url was not found, not displaying anything.", g41Var2).a();
                        }
                        objB2 = f41.b.w;
                    } else {
                        g41Var = ny2Var2.f;
                        if (g41Var == null) {
                            objB2 = eVar;
                        } else {
                            j32.e(eVar, "ad");
                            g41Var.a(j32.j("Fetched video ad with data: ", eVar), g41Var).a();
                            objB2 = eVar;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    objB2 = j96.b(th);
                }
                Objects.requireNonNull(ny2Var3);
                bVar = f41.b.w;
                z = objB2 instanceof dt3.a;
                obj = objB2;
                if (z) {
                    obj = bVar;
                }
                return (f41) obj;
            }
            str = (String) hVar.v;
            ny2Var = (ny2) hVar.u;
            try {
                j96.i(objE);
            } catch (Throwable th4) {
                th = th4;
                objB = j96.b(th);
            }
        }
        objB = (f41.c) objE;
        Object obj2 = objB;
        String str2 = str;
        ny2Var2 = ny2Var;
        Object obj3 = obj2;
        Objects.requireNonNull(ny2Var2);
        Object obj4 = f41.b.w;
        if (obj3 instanceof dt3.a) {
            obj3 = obj4;
        }
        Object obj5 = (f41) obj3;
        if (obj5 != null) {
            obj4 = obj5;
        }
        if (!(obj4 instanceof f41.b)) {
            g41 g41Var4 = ny2Var2.f;
            if (g41Var4 == null) {
                return obj4;
            }
            j32.e(obj4, "imageAd");
            g41Var4.a(j32.j("Fetched image ad with data: ", obj4), g41Var4).a();
            return obj4;
        }
        try {
            g41 g41Var5 = ny2Var2.f;
            if (g41Var5 != null) {
                g41Var5.a("Image ad request failed, fetching video ad..", g41Var5).a();
            }
            hVar.u = ny2Var2;
            hVar.v = ny2Var2;
            hVar.y = 2;
            objE = ny2Var2.i(str2, hVar);
            if (objE == te0Var) {
                return te0Var;
            }
            ny2Var3 = ny2Var2;
            eVar = (f41.e) objE;
            if (ne4.D(eVar.w)) {
                g41Var2 = ny2Var2.f;
                if (g41Var2 == null) {
                    g41Var2.a("Video ad url was not found, not displaying anything.", g41Var2).a();
                }
                objB2 = f41.b.w;
            } else {
                g41Var = ny2Var2.f;
                if (g41Var == null) {
                    objB2 = eVar;
                } else {
                    j32.e(eVar, "ad");
                    g41Var.a(j32.j("Fetched video ad with data: ", eVar), g41Var).a();
                    objB2 = eVar;
                }
            }
            Objects.requireNonNull(ny2Var3);
            bVar = f41.b.w;
            z = objB2 instanceof dt3.a;
            obj = objB2;
            if (z) {
                obj = bVar;
            }
            return (f41) obj;
        } catch (Throwable th5) {
            ny2Var3 = ny2Var2;
            th = th5;
            objB2 = j96.b(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(String str, ud0<? super ImageEpomResponse> ud0Var) {
        i iVar;
        ny2 ny2Var;
        if (ud0Var instanceof i) {
            iVar = (i) ud0Var;
            int i2 = iVar.x;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                iVar.x = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                iVar = new i(ud0Var);
            }
        } else {
            iVar = new i(ud0Var);
        }
        Object objA = iVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = iVar.x;
        if (i3 == 0) {
            j96.i(objA);
            vr3.a aVar = new vr3.a();
            aVar.k(this.d.b);
            vr3.a aVarB = i41.b(aVar, str);
            aVarB.d();
            mq mqVarA = this.b.a(aVarB.b());
            iVar.u = this;
            iVar.x = 1;
            objA = i41.a(mqVarA, iVar);
            if (objA == te0Var) {
                return te0Var;
            }
            ny2Var = this;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ny2Var = (ny2) iVar.u;
            j96.i(objA);
        }
        ys3 ys3Var = ((ws3) objA).y;
        return ny2Var.c.e(ys3Var == null ? null : ys3Var.g(), ImageEpomResponse.class);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object h(ud0<? super l41> ud0Var) {
        j jVar;
        Object objB;
        ny2 ny2Var;
        if (ud0Var instanceof j) {
            jVar = (j) ud0Var;
            int i2 = jVar.x;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                jVar.x = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                jVar = new j(ud0Var);
            }
        } else {
            jVar = new j(ud0Var);
        }
        Object objA = jVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = jVar.x;
        try {
            if (i3 == 0) {
                j96.i(objA);
                vr3.a aVar = new vr3.a();
                aVar.k("https://api.ipify.org/?format=json");
                aVar.d();
                mq mqVarA = this.b.a(aVar.b());
                jVar.u = this;
                jVar.x = 1;
                objA = i41.a(mqVarA, jVar);
                if (objA == te0Var) {
                    return te0Var;
                }
                ny2Var = this;
            } else {
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ny2Var = (ny2) jVar.u;
                j96.i(objA);
            }
            ys3 ys3Var = ((ws3) objA).y;
            l41 l41Var = (l41) ny2Var.c.e(ys3Var == null ? null : ys3Var.g(), l41.class);
            g41 g41Var = ny2Var.f;
            if (g41Var == null) {
                objB = l41Var;
            } else {
                g41Var.a(j32.j("Fetched ipify ip: ", l41Var == null ? null : l41Var.a), g41Var).a();
                objB = l41Var;
            }
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        if (objB instanceof dt3.a) {
            return null;
        }
        return objB;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object i(String str, ud0<? super f41.e> ud0Var) throws ParserConfigurationException, SAXException, IOException {
        k kVar;
        Object obj;
        String str2;
        ny2 ny2Var;
        o05 o05Var;
        g41 g41Var;
        if (ud0Var instanceof k) {
            kVar = (k) ud0Var;
            int i2 = kVar.y;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                kVar.y = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                kVar = new k(ud0Var);
            }
        } else {
            kVar = new k(ud0Var);
        }
        Object objJ = kVar.w;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = kVar.y;
        if (i3 != 0) {
            if (i3 == 1) {
                String str3 = (String) kVar.v;
                ny2 ny2Var2 = (ny2) kVar.u;
                j96.i(objJ);
                str2 = str3;
                ny2Var = ny2Var2;
                obj = objJ;
            } else {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ny2Var = (ny2) kVar.u;
                j96.i(objJ);
            }
            o05Var = (o05) objJ;
            g41Var = ny2Var.f;
            if (g41Var != null) {
                j32.e(o05Var, "videoResponse");
                g41Var.a(j32.j("Fetched video ad with response: ", o05Var), g41Var).a();
            }
            String str4 = o05Var.b;
            n05 n05Var = new n05(o05Var);
            j32.e(str4, "video");
            j32.e(n05Var, "function");
            f41.e eVar = new f41.e(str4, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
            n05Var.invoke(eVar);
            return eVar;
        }
        j96.i(objJ);
        kVar.u = this;
        kVar.v = str;
        kVar.y = 1;
        vr3.a aVar = new vr3.a();
        aVar.k(this.d.a);
        vr3.a aVarB = i41.b(aVar, str);
        aVarB.d();
        Object objA = i41.a(this.b.a(aVarB.b()), kVar);
        if (objA == te0Var) {
            return te0Var;
        }
        obj = objA;
        str2 = str;
        ny2Var = this;
        ys3 ys3Var = ((ws3) obj).y;
        InputStream inputStreamA = ys3Var == null ? null : ys3Var.a();
        Objects.requireNonNull(ny2Var);
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        documentBuilderFactoryNewInstance.setIgnoringElementContentWhitespace(true);
        DocumentBuilder documentBuilderNewDocumentBuilder = documentBuilderFactoryNewInstance.newDocumentBuilder();
        j32.d(documentBuilderNewDocumentBuilder, "factory.newDocumentBuilder()");
        Document document = documentBuilderNewDocumentBuilder.parse(inputStreamA);
        g41 g41Var2 = ny2Var.f;
        if (g41Var2 != null) {
            g41Var2.a(j32.j("Fetched vMap response: ", document == null ? null : document.getTextContent()), g41Var2).a();
        }
        String strK = ny2Var.k(document, "vmap:AdTagURI");
        if (ne4.D(strK)) {
            j32.e(BuildConfig.FLAVOR, "video");
            f41.e eVar2 = new f41.e(BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
            j32.e(eVar2, "$this$null");
            return eVar2;
        }
        g41 g41Var3 = ny2Var.f;
        if (g41Var3 != null) {
            j32.e(strK, "videoDataUrl");
            g41Var3.a(j32.j("Found video ad link: ", strK), g41Var3).a();
        }
        kVar.u = ny2Var;
        kVar.v = null;
        kVar.y = 2;
        objJ = ny2Var.j(strK, str2, documentBuilderNewDocumentBuilder, kVar);
        if (objJ == te0Var) {
            return te0Var;
        }
        o05Var = (o05) objJ;
        g41Var = ny2Var.f;
        if (g41Var != null) {
            j32.e(o05Var, "videoResponse");
            g41Var.a(j32.j("Fetched video ad with response: ", o05Var), g41Var).a();
        }
        String str5 = o05Var.b;
        n05 n05Var2 = new n05(o05Var);
        j32.e(str5, "video");
        j32.e(n05Var2, "function");
        f41.e eVar3 = new f41.e(str5, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        n05Var2.invoke(eVar3);
        return eVar3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object j(String str, String str2, DocumentBuilder documentBuilder, ud0<? super o05> ud0Var) throws SAXException, IOException {
        l lVar;
        ny2 ny2Var;
        if (ud0Var instanceof l) {
            lVar = (l) ud0Var;
            int i2 = lVar.y;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                lVar.y = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                lVar = new l(ud0Var);
            }
        } else {
            lVar = new l(ud0Var);
        }
        Object objA = lVar.w;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = lVar.y;
        if (i3 == 0) {
            j96.i(objA);
            vr3.a aVar = new vr3.a();
            aVar.k(str);
            vr3.a aVarB = i41.b(aVar, str2);
            aVarB.d();
            mq mqVarA = this.b.a(aVarB.b());
            lVar.u = this;
            lVar.v = documentBuilder;
            lVar.y = 1;
            objA = i41.a(mqVarA, lVar);
            if (objA == te0Var) {
                return te0Var;
            }
            ny2Var = this;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            documentBuilder = (DocumentBuilder) lVar.v;
            ny2Var = (ny2) lVar.u;
            j96.i(objA);
        }
        ys3 ys3Var = ((ws3) objA).y;
        Document document = documentBuilder.parse(ys3Var == null ? null : ys3Var.a());
        g41 g41Var = ny2Var.f;
        if (g41Var != null) {
            g41Var.a(j32.j("Video xml response: ", document != null ? document.getTextContent() : null), g41Var).a();
        }
        return new o05(ny2Var.k(document, "ClickThrough"), ny2Var.k(document, "MediaFile"), ny2Var.k(document, "Impression"));
    }

    public final String k(Document document, String str) {
        NodeList elementsByTagName = document == null ? null : document.getElementsByTagName(str);
        Node nodeItem = elementsByTagName == null ? null : elementsByTagName.item(0);
        Node firstChild = nodeItem == null ? null : nodeItem.getFirstChild();
        CDATASection cDATASection = firstChild instanceof CDATASection ? (CDATASection) firstChild : null;
        String data = cDATASection != null ? cDATASection.getData() : null;
        return data == null ? BuildConfig.FLAVOR : data;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(ud0<? super l41> ud0Var) {
        m mVar;
        if (ud0Var instanceof m) {
            mVar = (m) ud0Var;
            int i2 = mVar.w;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                mVar.w = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                mVar = new m(ud0Var);
            }
        } else {
            mVar = new m(ud0Var);
        }
        Object objM = mVar.u;
        Object obj = te0.COROUTINE_SUSPENDED;
        int i3 = mVar.w;
        if (i3 == 0) {
            j96.i(objM);
            mVar.w = 1;
            objM = m(mVar);
            if (objM == obj) {
                return obj;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j96.i(objM);
        }
        return new l41(String.valueOf(objM));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object m(ud0<? super ys3> ud0Var) {
        n nVar;
        Object objB;
        ny2 ny2Var;
        if (ud0Var instanceof n) {
            nVar = (n) ud0Var;
            int i2 = nVar.x;
            if ((i2 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                nVar.x = i2 - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                nVar = new n(ud0Var);
            }
        } else {
            nVar = new n(ud0Var);
        }
        Object objA = nVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i3 = nVar.x;
        try {
            if (i3 == 0) {
                j96.i(objA);
                vr3.a aVar = new vr3.a();
                aVar.k("https://cinemana.shabakaty.cc/whatismyip");
                aVar.d();
                mq mqVarA = this.b.a(aVar.b());
                nVar.u = this;
                nVar.x = 1;
                objA = i41.a(mqVarA, nVar);
                if (objA == te0Var) {
                    return te0Var;
                }
                ny2Var = this;
            } else {
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ny2Var = (ny2) nVar.u;
                j96.i(objA);
            }
            objB = ((ws3) objA).y;
            g41 g41Var = ny2Var.f;
            if (g41Var != null) {
                g41Var.a(j32.j("Fetched local ip: ", objB), g41Var).a();
            }
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        if (objB instanceof dt3.a) {
            return null;
        }
        return objB;
    }

    /* JADX INFO: compiled from: NetworkProvider.kt */
    public static final class a {
        public long a;

        public a() {
            this.a = 86400000L;
        }

        public final String a() {
            long j = this.a / ((long) 1000);
            if (j <= 60) {
                return j + " seconds";
            }
            long j2 = 60;
            long j3 = j / j2;
            if (j3 <= 60) {
                return j3 + " minutes";
            }
            long j4 = j3 / j2;
            if (j4 <= 24) {
                return j4 + " hours";
            }
            return (j4 / ((long) 24)) + " days";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.a == ((a) obj).a;
        }

        public int hashCode() {
            long j = this.a;
            return (int) (j ^ (j >>> 32));
        }

        public String toString() {
            StringBuilder sbA = um3.a("Durations(hideDuration=");
            sbA.append(this.a);
            sbA.append(')');
            return sbA.toString();
        }

        public a(long j, int i) {
            this.a = (i & 1) != 0 ? 86400000L : j;
        }
    }
}
