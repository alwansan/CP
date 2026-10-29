package com.shabakaty.downloader;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public class l92 implements e92, tz, ga3 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater r = AtomicReferenceFieldUpdater.newUpdater(l92.class, Object.class, "_state");
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class a<T> extends gv<T> {
        public final l92 y;

        public a(ud0<? super T> ud0Var, l92 l92Var) {
            super(ud0Var, 1);
            this.y = l92Var;
        }

        @Override // com.shabakaty.downloader.gv
        public String B() {
            return "AwaitContinuation";
        }

        @Override // com.shabakaty.downloader.gv
        public Throwable w(e92 e92Var) {
            Throwable thD;
            Object objT = this.y.T();
            if (!(objT instanceof c) || (thD = ((c) objT).d()) == null) {
                return objT instanceof i80 ? ((i80) objT).a : ((l92) e92Var).v();
            }
            return thD;
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class b extends k92 {
        public final l92 v;
        public final c w;
        public final rz x;
        public final Object y;

        public b(l92 l92Var, c cVar, rz rzVar, Object obj) {
            this.v = l92Var;
            this.w = cVar;
            this.x = rzVar;
            this.y = obj;
        }

        @Override // com.shabakaty.downloader.tm1
        public /* bridge */ /* synthetic */ qv4 invoke(Throwable th) {
            w(th);
            return qv4.a;
        }

        @Override // com.shabakaty.downloader.k80
        public void w(Throwable th) {
            l92 l92Var = this.v;
            c cVar = this.w;
            rz rzVar = this.x;
            Object obj = this.y;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = l92.r;
            rz rzVarB0 = l92Var.b0(rzVar);
            if (rzVarB0 == null || !l92Var.l0(cVar, rzVarB0, obj)) {
                l92Var.C(l92Var.O(cVar, obj));
            }
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class c implements g02 {
        private volatile /* synthetic */ Object _exceptionsHolder = null;
        private volatile /* synthetic */ int _isCompleting;
        private volatile /* synthetic */ Object _rootCause;
        public final tz2 r;

        public c(tz2 tz2Var, boolean z, Throwable th) {
            this.r = tz2Var;
            this._isCompleting = z ? 1 : 0;
            this._rootCause = th;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Throwable th) {
            Throwable th2 = (Throwable) this._rootCause;
            if (th2 == null) {
                this._rootCause = th;
                return;
            }
            if (th == th2) {
                return;
            }
            Object obj = this._exceptionsHolder;
            if (obj == null) {
                this._exceptionsHolder = th;
                return;
            }
            if (!(obj instanceof Throwable)) {
                if (!(obj instanceof ArrayList)) {
                    throw new IllegalStateException(c50.a("State is ", obj).toString());
                }
                ((ArrayList) obj).add(th);
            } else {
                if (th == obj) {
                    return;
                }
                ArrayList<Throwable> arrayListB = b();
                arrayListB.add(obj);
                arrayListB.add(th);
                this._exceptionsHolder = arrayListB;
            }
        }

        public final ArrayList<Throwable> b() {
            return new ArrayList<>(4);
        }

        @Override // com.shabakaty.downloader.g02
        public boolean c() {
            return ((Throwable) this._rootCause) == null;
        }

        public final Throwable d() {
            return (Throwable) this._rootCause;
        }

        @Override // com.shabakaty.downloader.g02
        public tz2 e() {
            return this.r;
        }

        public final boolean f() {
            return ((Throwable) this._rootCause) != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
        public final boolean g() {
            return this._isCompleting;
        }

        public final boolean h() {
            return this._exceptionsHolder == m92.e;
        }

        public final List<Throwable> i(Throwable th) {
            ArrayList arrayListB;
            Object obj = this._exceptionsHolder;
            if (obj == null) {
                arrayListB = b();
            } else if (obj instanceof Throwable) {
                ArrayList arrayListB2 = b();
                arrayListB2.add(obj);
                arrayListB = arrayListB2;
            } else {
                if (!(obj instanceof ArrayList)) {
                    throw new IllegalStateException(c50.a("State is ", obj).toString());
                }
                arrayListB = (ArrayList) obj;
            }
            Throwable th2 = (Throwable) this._rootCause;
            if (th2 != null) {
                arrayListB.add(0, th2);
            }
            if (th != null && (!j32.a(th, th2))) {
                arrayListB.add(th);
            }
            this._exceptionsHolder = m92.e;
            return arrayListB;
        }

        public final void j(boolean z) {
            this._isCompleting = z ? 1 : 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [boolean, int] */
        public String toString() {
            StringBuilder sbA = um3.a("Finishing[cancelling=");
            sbA.append(f());
            sbA.append(", completing=");
            sbA.append((boolean) this._isCompleting);
            sbA.append(", rootCause=");
            sbA.append((Throwable) this._rootCause);
            sbA.append(", exceptions=");
            sbA.append(this._exceptionsHolder);
            sbA.append(", list=");
            sbA.append(this.r);
            sbA.append(']');
            return sbA.toString();
        }
    }

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static final class d extends ck2.a {
        public final /* synthetic */ l92 d;
        public final /* synthetic */ Object e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ck2 ck2Var, ck2 ck2Var2, l92 l92Var, Object obj) {
            super(ck2Var2);
            this.d = l92Var;
            this.e = obj;
        }

        @Override // com.shabakaty.downloader.ee
        public Object c(ck2 ck2Var) {
            if (this.d.T() == this.e) {
                return null;
            }
            return bk2.a;
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    @pm0(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {952, 954}, m = "invokeSuspend")
    public static final class e extends ct3 implements hn1<n04<? super tz>, ud0<? super qv4>, Object> {
        public /* synthetic */ Object t;
        public Object u;
        public Object v;
        public int w;

        public e(ud0 ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public final Object o(n04<? super tz> n04Var, ud0<? super qv4> ud0Var) {
            e eVar = l92.this.new e(ud0Var);
            eVar.t = n04Var;
            return eVar.t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            e eVar = l92.this.new e(ud0Var);
            eVar.t = obj;
            return eVar;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x006a  */
        /* JADX WARN: Code duplicated, block: B:24:0x006e  */
        /* JADX WARN: Code duplicated, block: B:26:0x0081 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006c -> B:27:0x0082). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007f -> B:27:0x0082). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // com.shabakaty.downloader.bj
        public final java.lang.Object t(java.lang.Object r9) {
            /*
                r8 = this;
                com.shabakaty.downloader.te0 r0 = com.shabakaty.downloader.te0.COROUTINE_SUSPENDED
                int r1 = r8.w
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L29
                if (r1 == r3) goto L25
                if (r1 != r2) goto L1d
                java.lang.Object r1 = r8.v
                com.shabakaty.downloader.ck2 r1 = (com.shabakaty.downloader.ck2) r1
                java.lang.Object r4 = r8.u
                com.shabakaty.downloader.ak2 r4 = (com.shabakaty.downloader.ak2) r4
                java.lang.Object r5 = r8.t
                com.shabakaty.downloader.n04 r5 = (com.shabakaty.downloader.n04) r5
                com.shabakaty.downloader.j96.i(r9)
                r9 = r8
                goto L82
            L1d:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L25:
                com.shabakaty.downloader.j96.i(r9)
                goto L87
            L29:
                com.shabakaty.downloader.j96.i(r9)
                java.lang.Object r9 = r8.t
                com.shabakaty.downloader.n04 r9 = (com.shabakaty.downloader.n04) r9
                com.shabakaty.downloader.l92 r1 = com.shabakaty.downloader.l92.this
                java.lang.Object r1 = r1.T()
                boolean r4 = r1 instanceof com.shabakaty.downloader.rz
                if (r4 == 0) goto L47
                com.shabakaty.downloader.rz r1 = (com.shabakaty.downloader.rz) r1
                com.shabakaty.downloader.tz r1 = r1.v
                r8.w = r3
                java.lang.Object r9 = r9.b(r1, r8)
                if (r9 != r0) goto L87
                return r0
            L47:
                boolean r4 = r1 instanceof com.shabakaty.downloader.g02
                if (r4 == 0) goto L87
                com.shabakaty.downloader.g02 r1 = (com.shabakaty.downloader.g02) r1
                com.shabakaty.downloader.tz2 r1 = r1.e()
                if (r1 == 0) goto L87
                java.lang.Object r4 = r1.l()
            */
            //  java.lang.String r5 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
            /*
                java.util.Objects.requireNonNull(r4, r5)
                com.shabakaty.downloader.ck2 r4 = (com.shabakaty.downloader.ck2) r4
                r5 = r9
                r9 = r8
                r7 = r4
                r4 = r1
                r1 = r7
            L63:
                boolean r6 = com.shabakaty.downloader.j32.a(r1, r4)
                r6 = r6 ^ r3
                if (r6 == 0) goto L87
                boolean r6 = r1 instanceof com.shabakaty.downloader.rz
                if (r6 == 0) goto L82
                r6 = r1
                com.shabakaty.downloader.rz r6 = (com.shabakaty.downloader.rz) r6
                com.shabakaty.downloader.tz r6 = r6.v
                r9.t = r5
                r9.u = r4
                r9.v = r1
                r9.w = r2
                java.lang.Object r6 = r5.b(r6, r9)
                if (r6 != r0) goto L82
                return r0
            L82:
                com.shabakaty.downloader.ck2 r1 = r1.m()
                goto L63
            L87:
                com.shabakaty.downloader.qv4 r9 = com.shabakaty.downloader.qv4.a
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.downloader.l92.e.t(java.lang.Object):java.lang.Object");
        }
    }

    public l92(boolean z) {
        this._state = z ? m92.g : m92.f;
        this._parentHandle = null;
    }

    public static /* synthetic */ CancellationException j0(l92 l92Var, Throwable th, String str, int i, Object obj) {
        return l92Var.i0(th, null);
    }

    public final boolean A(Object obj, tz2 tz2Var, k92 k92Var) {
        int iV;
        d dVar = new d(k92Var, k92Var, this, obj);
        do {
            iV = tz2Var.q().v(k92Var, tz2Var, dVar);
            if (iV == 1) {
                return true;
            }
        } while (iV != 2);
        return false;
    }

    public void C(Object obj) {
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00b8  */
    public final boolean E(Object obj) throws Throwable {
        j61 j61Var;
        boolean z;
        Object objK0 = m92.a;
        if (Q()) {
            do {
                Object objT = T();
                if (!(objT instanceof g02) || ((objT instanceof c) && ((c) objT).g())) {
                    objK0 = m92.a;
                    break;
                }
                objK0 = k0(objT, new i80(N(obj), false, 2));
            } while (objK0 == m92.c);
            if (objK0 == m92.b) {
                return true;
            }
        }
        if (objK0 == m92.a) {
            Throwable thN = null;
            while (true) {
                Object objT2 = T();
                if (objT2 instanceof c) {
                    synchronized (objT2) {
                        if (((c) objT2).h()) {
                            j61Var = m92.d;
                        } else {
                            boolean zF = ((c) objT2).f();
                            if (obj != null || !zF) {
                                if (thN == null) {
                                    thN = N(obj);
                                }
                                ((c) objT2).a(thN);
                            }
                            Throwable thD = zF ^ true ? ((c) objT2).d() : null;
                            if (thD != null) {
                                c0(((c) objT2).r, thD);
                            }
                            j61Var = m92.a;
                        }
                    }
                } else if (objT2 instanceof g02) {
                    if (thN == null) {
                        thN = N(obj);
                    }
                    g02 g02Var = (g02) objT2;
                    if (g02Var.c()) {
                        tz2 tz2VarR = R(g02Var);
                        if (tz2VarR != null) {
                            if (r.compareAndSet(this, g02Var, new c(tz2VarR, false, thN))) {
                                c0(tz2VarR, thN);
                                z = true;
                            } else {
                                z = false;
                            }
                        } else {
                            z = false;
                        }
                        if (z) {
                            j61Var = m92.a;
                        }
                    } else {
                        Object objK1 = k0(objT2, new i80(thN, false, 2));
                        if (objK1 == m92.a) {
                            throw new IllegalStateException(c50.a("Cannot happen in ", objT2).toString());
                        }
                        if (objK1 != m92.c) {
                            objK0 = objK1;
                            break;
                        }
                    }
                } else {
                    j61Var = m92.d;
                }
                objK0 = j61Var;
                break;
            }
        }
        if (objK0 != m92.a && objK0 != m92.b) {
            if (objK0 == m92.d) {
                return false;
            }
            C(objK0);
        }
        return true;
    }

    public void F(Throwable th) throws Throwable {
        E(th);
    }

    public final boolean G(Throwable th) {
        if (X()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        qz qzVar = (qz) this._parentHandle;
        if (qzVar == null || qzVar == wz2.r) {
            return z;
        }
        return qzVar.n(th) || z;
    }

    public String H() {
        return "Job was cancelled";
    }

    public boolean I(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return E(th) && P();
    }

    @Override // com.shabakaty.downloader.ga3
    public CancellationException K() {
        Throwable thD;
        Object objT = T();
        if (objT instanceof c) {
            thD = ((c) objT).d();
        } else if (objT instanceof i80) {
            thD = ((i80) objT).a;
        } else {
            if (objT instanceof g02) {
                throw new IllegalStateException(c50.a("Cannot be cancelling child in this state: ", objT).toString());
            }
            thD = null;
        }
        CancellationException cancellationException = (CancellationException) (thD instanceof CancellationException ? thD : null);
        if (cancellationException != null) {
            return cancellationException;
        }
        StringBuilder sbA = um3.a("Parent job is ");
        sbA.append(h0(objT));
        return new f92(sbA.toString(), thD, this);
    }

    @Override // com.shabakaty.downloader.e92
    public final boolean L() {
        return !(T() instanceof g02);
    }

    public final void M(g02 g02Var, Object obj) throws Throwable {
        qz qzVar = (qz) this._parentHandle;
        if (qzVar != null) {
            qzVar.h();
            this._parentHandle = wz2.r;
        }
        l80 l80Var = null;
        if (!(obj instanceof i80)) {
            obj = null;
        }
        i80 i80Var = (i80) obj;
        Throwable th = i80Var != null ? i80Var.a : null;
        if (g02Var instanceof k92) {
            try {
                ((k92) g02Var).w(th);
                return;
            } catch (Throwable th2) {
                V(new l80("Exception in completion handler " + g02Var + " for " + this, th2));
                return;
            }
        }
        tz2 tz2VarE = g02Var.e();
        if (tz2VarE != null) {
            Object objL = tz2VarE.l();
            Objects.requireNonNull(objL, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            for (ck2 ck2VarM = (ck2) objL; !j32.a(ck2VarM, tz2VarE); ck2VarM = ck2VarM.m()) {
                if (ck2VarM instanceof k92) {
                    k92 k92Var = (k92) ck2VarM;
                    try {
                        k92Var.w(th);
                    } catch (Throwable th3) {
                        if (l80Var != null) {
                            kf5.a(l80Var, th3);
                        } else {
                            l80Var = new l80("Exception in completion handler " + k92Var + " for " + this, th3);
                        }
                    }
                }
            }
            if (l80Var != null) {
                V(l80Var);
            }
        }
    }

    public final Throwable N(Object obj) {
        if (obj != null ? obj instanceof Throwable : true) {
            return obj != null ? (Throwable) obj : new f92(H(), null, this);
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ga3) obj).K();
    }

    public final Object O(c cVar, Object obj) throws Throwable {
        Object obj2 = null;
        Throwable f92Var = null;
        i80 i80Var = (i80) (!(obj instanceof i80) ? null : obj);
        Throwable th = i80Var != null ? i80Var.a : null;
        synchronized (cVar) {
            cVar.f();
            List<Throwable> listI = cVar.i(th);
            if (!listI.isEmpty()) {
                for (Object obj3 : listI) {
                    if (!(((Throwable) obj3) instanceof CancellationException)) {
                        obj2 = obj3;
                        break;
                    }
                }
                f92Var = (Throwable) obj2;
                if (f92Var == null) {
                    f92Var = listI.get(0);
                }
            } else if (cVar.f()) {
                f92Var = new f92(H(), null, this);
            }
            if (f92Var != null && listI.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(listI.size()));
                for (Throwable th2 : listI) {
                    if (th2 != f92Var && th2 != f92Var && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        kf5.a(f92Var, th2);
                    }
                }
            }
        }
        if (f92Var != null && f92Var != th) {
            obj = new i80(f92Var, false, 2);
        }
        if (f92Var != null) {
            if (G(f92Var) || U(f92Var)) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                i80.b.compareAndSet((i80) obj, 0, 1);
            }
        }
        d0(obj);
        r.compareAndSet(this, cVar, obj instanceof g02 ? new k02((g02) obj) : obj);
        M(cVar, obj);
        return obj;
    }

    public boolean P() {
        return true;
    }

    public boolean Q() {
        return this instanceof u70;
    }

    public final tz2 R(g02 g02Var) {
        tz2 tz2VarE = g02Var.e();
        if (tz2VarE != null) {
            return tz2VarE;
        }
        if (g02Var instanceof o21) {
            return new tz2();
        }
        if (g02Var instanceof k92) {
            f0((k92) g02Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + g02Var).toString());
    }

    public final qz S() {
        return (qz) this._parentHandle;
    }

    public final Object T() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof u73)) {
                return obj;
            }
            ((u73) obj).a(this);
        }
    }

    public boolean U(Throwable th) {
        return false;
    }

    public void V(Throwable th) throws Throwable {
        throw th;
    }

    public final void W(e92 e92Var) {
        if (e92Var == null) {
            this._parentHandle = wz2.r;
            return;
        }
        e92Var.start();
        qz qzVarT = e92Var.t(this);
        this._parentHandle = qzVarT;
        if (L()) {
            qzVarT.h();
            this._parentHandle = wz2.r;
        }
    }

    public boolean X() {
        return false;
    }

    public final boolean Y(Object obj) throws Throwable {
        Object objK0;
        do {
            objK0 = k0(T(), obj);
            if (objK0 == m92.a) {
                return false;
            }
            if (objK0 == m92.b) {
                return true;
            }
        } while (objK0 == m92.c);
        return true;
    }

    public final Object Z(Object obj) throws Throwable {
        Object objK0;
        do {
            objK0 = k0(T(), obj);
            if (objK0 == m92.a) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                if (!(obj instanceof i80)) {
                    obj = null;
                }
                i80 i80Var = (i80) obj;
                throw new IllegalStateException(str, i80Var != null ? i80Var.a : null);
            }
        } while (objK0 == m92.c);
        return objK0;
    }

    public String a0() {
        return getClass().getSimpleName();
    }

    @Override // com.shabakaty.downloader.e92
    public void b(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new f92(H(), null, this);
        }
        F(cancellationException);
    }

    public final rz b0(ck2 ck2Var) {
        while (ck2Var.s()) {
            ck2Var = ck2Var.q();
        }
        while (true) {
            ck2Var = ck2Var.m();
            if (!ck2Var.s()) {
                if (ck2Var instanceof rz) {
                    return (rz) ck2Var;
                }
                if (ck2Var instanceof tz2) {
                    return null;
                }
            }
        }
    }

    @Override // com.shabakaty.downloader.e92
    public boolean c() {
        Object objT = T();
        return (objT instanceof g02) && ((g02) objT).c();
    }

    public final void c0(tz2 tz2Var, Throwable th) throws Throwable {
        Object objL = tz2Var.l();
        Objects.requireNonNull(objL, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        l80 l80Var = null;
        for (ck2 ck2VarM = (ck2) objL; !j32.a(ck2VarM, tz2Var); ck2VarM = ck2VarM.m()) {
            if (ck2VarM instanceof g92) {
                k92 k92Var = (k92) ck2VarM;
                try {
                    k92Var.w(th);
                } catch (Throwable th2) {
                    if (l80Var != null) {
                        kf5.a(l80Var, th2);
                    } else {
                        l80Var = new l80("Exception in completion handler " + k92Var + " for " + this, th2);
                    }
                }
            }
        }
        if (l80Var != null) {
            V(l80Var);
        }
        G(th);
    }

    @Override // com.shabakaty.downloader.e92
    public final Object d(ud0<? super qv4> ud0Var) {
        boolean z;
        while (true) {
            Object objT = T();
            if (!(objT instanceof g02)) {
                z = false;
                break;
            }
            if (g0(objT) >= 0) {
                z = true;
                break;
            }
        }
        if (!z) {
            me0 me0Var = ((xd0) ud0Var).s;
            j32.c(me0Var);
            bp.f(me0Var);
            return qv4.a;
        }
        gv gvVar = new gv(he0.q(ud0Var), 1);
        gvVar.F();
        gvVar.q(new wu(x(false, true, new y32((ud0) gvVar))));
        Object objX = gvVar.x();
        return objX == te0.COROUTINE_SUSPENDED ? objX : qv4.a;
    }

    public void d0(Object obj) {
    }

    public void e0() {
    }

    public final void f0(k92 k92Var) {
        tz2 tz2Var = new tz2();
        ck2.s.lazySet(tz2Var, k92Var);
        ck2.r.lazySet(tz2Var, k92Var);
        while (k92Var.l() == k92Var) {
            if (ck2.r.compareAndSet(k92Var, k92Var, tz2Var)) {
                tz2Var.j(k92Var);
                break;
            }
        }
        r.compareAndSet(this, k92Var, k92Var.m());
    }

    @Override // com.shabakaty.downloader.me0
    public <R> R fold(R r2, hn1<? super R, ? super me0.b, ? extends R> hn1Var) {
        return (R) me0.b.a.a(this, r2, hn1Var);
    }

    public final int g0(Object obj) {
        if (obj instanceof o21) {
            if (((o21) obj).r) {
                return 0;
            }
            if (!r.compareAndSet(this, obj, m92.g)) {
                return -1;
            }
            e0();
            return 1;
        }
        if (!(obj instanceof e02)) {
            return 0;
        }
        if (!r.compareAndSet(this, obj, ((e02) obj).r)) {
            return -1;
        }
        e0();
        return 1;
    }

    @Override // com.shabakaty.downloader.me0.b, com.shabakaty.downloader.me0
    public <E extends me0.b> E get(me0.c<E> cVar) {
        return (E) me0.b.a.b(this, cVar);
    }

    @Override // com.shabakaty.downloader.me0.b
    public final me0.c<?> getKey() {
        return e92.h;
    }

    public final String h0(Object obj) {
        if (!(obj instanceof c)) {
            if (obj instanceof g02) {
                return ((g02) obj).c() ? "Active" : "New";
            }
            return obj instanceof i80 ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        if (cVar.f()) {
            return "Cancelling";
        }
        return cVar.g() ? "Completing" : "Active";
    }

    public final CancellationException i0(Throwable th, String str) {
        CancellationException f92Var = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        if (f92Var == null) {
            if (str == null) {
                str = H();
            }
            f92Var = new f92(str, th, this);
        }
        return f92Var;
    }

    @Override // com.shabakaty.downloader.e92
    public final boolean isCancelled() {
        Object objT = T();
        return (objT instanceof i80) || ((objT instanceof c) && ((c) objT).f());
    }

    @Override // com.shabakaty.downloader.tz
    public final void k(ga3 ga3Var) throws Throwable {
        E(ga3Var);
    }

    public final Object k0(Object obj, Object obj2) throws Throwable {
        if (!(obj instanceof g02)) {
            return m92.a;
        }
        boolean z = true;
        if (((obj instanceof o21) || (obj instanceof k92)) && !(obj instanceof rz) && !(obj2 instanceof i80)) {
            g02 g02Var = (g02) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = r;
            j61 j61Var = m92.a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, g02Var, obj2 instanceof g02 ? new k02((g02) obj2) : obj2)) {
                d0(obj2);
                M(g02Var, obj2);
            } else {
                z = false;
            }
            return z ? obj2 : m92.c;
        }
        g02 g02Var2 = (g02) obj;
        tz2 tz2VarR = R(g02Var2);
        if (tz2VarR == null) {
            return m92.c;
        }
        rz rzVarB0 = null;
        c cVar = (c) (!(g02Var2 instanceof c) ? null : g02Var2);
        if (cVar == null) {
            cVar = new c(tz2VarR, false, null);
        }
        synchronized (cVar) {
            if (cVar.g()) {
                return m92.a;
            }
            cVar.j(true);
            if (cVar != g02Var2 && !r.compareAndSet(this, g02Var2, cVar)) {
                return m92.c;
            }
            boolean zF = cVar.f();
            i80 i80Var = (i80) (!(obj2 instanceof i80) ? null : obj2);
            if (i80Var != null) {
                cVar.a(i80Var.a);
            }
            Throwable thD = cVar.d();
            if (!(true ^ zF)) {
                thD = null;
            }
            if (thD != null) {
                c0(tz2VarR, thD);
            }
            rz rzVar = (rz) (!(g02Var2 instanceof rz) ? null : g02Var2);
            if (rzVar != null) {
                rzVarB0 = rzVar;
            } else {
                tz2 tz2VarE = g02Var2.e();
                if (tz2VarE != null) {
                    rzVarB0 = b0(tz2VarE);
                }
            }
            return (rzVarB0 == null || !l0(cVar, rzVarB0, obj2)) ? O(cVar, obj2) : m92.b;
        }
    }

    public final boolean l0(c cVar, rz rzVar, Object obj) {
        while (e92.a.b(rzVar.v, false, false, new b(this, cVar, rzVar, obj), 1, null) == wz2.r) {
            rzVar = b0(rzVar);
            if (rzVar == null) {
                return false;
            }
        }
        return true;
    }

    @Override // com.shabakaty.downloader.me0
    public me0 minusKey(me0.c<?> cVar) {
        return me0.b.a.c(this, cVar);
    }

    @Override // com.shabakaty.downloader.e92
    public final l04<e92> p() {
        return new p04(new e(null));
    }

    @Override // com.shabakaty.downloader.me0
    public me0 plus(me0 me0Var) {
        return me0.b.a.d(this, me0Var);
    }

    @Override // com.shabakaty.downloader.e92
    public final boolean start() {
        int iG0;
        do {
            iG0 = g0(T());
            if (iG0 == 0) {
                return false;
            }
        } while (iG0 != 1);
        return true;
    }

    @Override // com.shabakaty.downloader.e92
    public final qz t(tz tzVar) {
        ou0 ou0VarB = e92.a.b(this, true, false, new rz(tzVar), 2, null);
        Objects.requireNonNull(ou0VarB, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (qz) ou0VarB;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(a0() + '{' + h0(T()) + '}');
        sb.append('@');
        sb.append(he0.j(this));
        return sb.toString();
    }

    @Override // com.shabakaty.downloader.e92
    public final CancellationException v() {
        Object objT = T();
        if (objT instanceof c) {
            Throwable thD = ((c) objT).d();
            if (thD != null) {
                return i0(thD, getClass().getSimpleName() + " is cancelling");
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (objT instanceof g02) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (objT instanceof i80) {
            return j0(this, ((i80) objT).a, null, 1, null);
        }
        return new f92(getClass().getSimpleName() + " has completed normally", null, this);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0028 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00a2 A[SYNTHETIC] */
    @Override // com.shabakaty.downloader.e92
    public final ou0 x(boolean z, boolean z2, tm1<? super Throwable, qv4> tm1Var) {
        k92 y32Var;
        Throwable thD;
        if (z) {
            y32Var = (g92) (!(tm1Var instanceof g92) ? null : tm1Var);
            if (y32Var == null) {
                y32Var = new x32(tm1Var);
            }
        } else {
            y32Var = (k92) (!(tm1Var instanceof k92) ? null : tm1Var);
            if (y32Var == null) {
                y32Var = new y32(tm1Var);
            }
        }
        y32Var.u = this;
        while (true) {
            Object objT = T();
            if (objT instanceof o21) {
                o21 o21Var = (o21) objT;
                if (!o21Var.r) {
                    tz2 tz2Var = new tz2();
                    Object e02Var = tz2Var;
                    if (!o21Var.r) {
                        e02Var = new e02(tz2Var);
                    }
                    r.compareAndSet(this, o21Var, e02Var);
                } else if (r.compareAndSet(this, objT, y32Var)) {
                    return y32Var;
                }
            } else {
                if (!(objT instanceof g02)) {
                    if (z2) {
                        if (!(objT instanceof i80)) {
                            objT = null;
                        }
                        i80 i80Var = (i80) objT;
                        tm1Var.invoke(i80Var != null ? i80Var.a : null);
                    }
                    return wz2.r;
                }
                tz2 tz2VarE = ((g02) objT).e();
                if (tz2VarE == null) {
                    Objects.requireNonNull(objT, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    f0((k92) objT);
                } else {
                    ou0 ou0Var = wz2.r;
                    if (z && (objT instanceof c)) {
                        synchronized (objT) {
                            thD = ((c) objT).d();
                            if (thD == null || ((tm1Var instanceof rz) && !((c) objT).g())) {
                                if (A(objT, tz2VarE, y32Var)) {
                                    if (thD == null) {
                                        return y32Var;
                                    }
                                    ou0Var = y32Var;
                                }
                            }
                        }
                        if (thD != null) {
                            if (z2) {
                                tm1Var.invoke(thD);
                            }
                            return ou0Var;
                        }
                        if (A(objT, tz2VarE, y32Var)) {
                            return y32Var;
                        }
                    } else {
                        thD = null;
                        if (thD != null) {
                            if (z2) {
                                tm1Var.invoke(thD);
                            }
                            return ou0Var;
                        }
                        if (A(objT, tz2VarE, y32Var)) {
                            return y32Var;
                        }
                    }
                }
            }
        }
    }
}
