package com.shabakaty.downloader;

/* JADX INFO: compiled from: CoroutineDispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class pe0 extends v implements yd0 {
    public static final a r = new a(null);

    /* JADX INFO: compiled from: CoroutineDispatcher.kt */
    public static final class a extends w<yd0, pe0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(nn0 nn0Var) {
            super(yd0.a.r, oe0.r);
            int i = yd0.e;
        }
    }

    public pe0() {
        super(yd0.a.r);
    }

    public boolean B(me0 me0Var) {
        return !(this instanceof jv4);
    }

    public abstract void g(me0 me0Var, Runnable runnable);

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to com.shabakaty.downloader.pe0 for r3v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // com.shabakaty.downloader.v, com.shabakaty.downloader.me0.b, com.shabakaty.downloader.me0
    public <E extends com.shabakaty.downloader.me0.b> E get(com.shabakaty.downloader.me0.c<E> r4) {
        /*
            r3 = this;
            java.lang.String r0 = "this"
            com.shabakaty.downloader.j32.e(r3, r0)
            java.lang.String r0 = "key"
            com.shabakaty.downloader.j32.e(r4, r0)
            boolean r1 = r4 instanceof com.shabakaty.downloader.w
            r2 = 0
            if (r1 == 0) goto L37
            com.shabakaty.downloader.w r4 = (com.shabakaty.downloader.w) r4
            com.shabakaty.downloader.me0$c r1 = r3.getKey()
            com.shabakaty.downloader.j32.e(r1, r0)
            if (r1 == r4) goto L21
            com.shabakaty.downloader.me0$c<?> r0 = r4.s
            if (r0 != r1) goto L1f
            goto L21
        L1f:
            r0 = 0
            goto L22
        L21:
            r0 = 1
        L22:
            if (r0 == 0) goto L3c
            java.lang.String r0 = "element"
            com.shabakaty.downloader.j32.e(r3, r0)
            com.shabakaty.downloader.tm1<com.shabakaty.downloader.me0$b, E extends B> r4 = r4.r
            java.lang.Object r4 = r4.invoke(r3)
            com.shabakaty.downloader.me0$b r4 = (com.shabakaty.downloader.me0.b) r4
            boolean r0 = r4 instanceof com.shabakaty.downloader.me0.b
            if (r0 == 0) goto L3c
            r2 = r4
            goto L3c
        L37:
            com.shabakaty.downloader.yd0$a r0 = com.shabakaty.downloader.yd0.a.r
            if (r0 != r4) goto L3c
            r2 = r3
        L3c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.downloader.pe0.get(com.shabakaty.downloader.me0$c):com.shabakaty.downloader.me0$b");
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to com.shabakaty.downloader.pe0 for r2v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // com.shabakaty.downloader.v, com.shabakaty.downloader.me0
    public com.shabakaty.downloader.me0 minusKey(com.shabakaty.downloader.me0.c<?> r3) {
        /*
            r2 = this;
            java.lang.String r0 = "this"
            com.shabakaty.downloader.j32.e(r2, r0)
            java.lang.String r0 = "key"
            com.shabakaty.downloader.j32.e(r3, r0)
            boolean r1 = r3 instanceof com.shabakaty.downloader.w
            if (r1 == 0) goto L37
            com.shabakaty.downloader.w r3 = (com.shabakaty.downloader.w) r3
            com.shabakaty.downloader.me0$c r1 = r2.getKey()
            com.shabakaty.downloader.j32.e(r1, r0)
            if (r1 == r3) goto L20
            com.shabakaty.downloader.me0$c<?> r0 = r3.s
            if (r0 != r1) goto L1e
            goto L20
        L1e:
            r0 = 0
            goto L21
        L20:
            r0 = 1
        L21:
            if (r0 == 0) goto L35
            java.lang.String r0 = "element"
            com.shabakaty.downloader.j32.e(r2, r0)
            com.shabakaty.downloader.tm1<com.shabakaty.downloader.me0$b, E extends B> r3 = r3.r
            java.lang.Object r3 = r3.invoke(r2)
            com.shabakaty.downloader.me0$b r3 = (com.shabakaty.downloader.me0.b) r3
            if (r3 == 0) goto L35
            com.shabakaty.downloader.s21 r3 = com.shabakaty.downloader.s21.r
            goto L3d
        L35:
            r3 = r2
            goto L3d
        L37:
            com.shabakaty.downloader.yd0$a r0 = com.shabakaty.downloader.yd0.a.r
            if (r0 != r3) goto L35
            com.shabakaty.downloader.s21 r3 = com.shabakaty.downloader.s21.r
        L3d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.downloader.pe0.minusKey(com.shabakaty.downloader.me0$c):com.shabakaty.downloader.me0");
    }

    @Override // com.shabakaty.downloader.yd0
    public final <T> ud0<T> r(ud0<? super T> ud0Var) {
        return new au0(this, ud0Var);
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + he0.j(this);
    }

    @Override // com.shabakaty.downloader.yd0
    public void w(ud0<?> ud0Var) {
        gv<?> gvVarP = ((au0) ud0Var).p();
        if (gvVarP != null) {
            gvVarP.s();
        }
    }
}
