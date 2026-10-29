package com.shabakaty.downloader;

import android.os.Environment;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.CinemanaApplication;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: CinemanaApplication.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.CinemanaApplication$syncDownloadsLocalDbWithModuleDb$1", f = "CinemanaApplication.kt", l = {285, 299, 300, 301}, m = "invokeSuspend")
public final class n00 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public Object v;
    public Object w;
    public int x;
    public /* synthetic */ Object y;
    public final /* synthetic */ CinemanaApplication z;

    /* JADX INFO: compiled from: CinemanaApplication.kt */
    @pm0(c = "com.shabakaty.cinemana.CinemanaApplication$syncDownloadsLocalDbWithModuleDb$1$1", f = "CinemanaApplication.kt", l = {296}, m = "invokeSuspend")
    public static final class a extends ui4 implements tm1<ud0<? super qv4>, Object> {
        public int v;
        public final /* synthetic */ CinemanaApplication w;
        public final /* synthetic */ se0 x;

        /* JADX INFO: renamed from: com.shabakaty.downloader.n00$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CinemanaApplication.kt */
        @pm0(c = "com.shabakaty.cinemana.CinemanaApplication$syncDownloadsLocalDbWithModuleDb$1$1$1$2$1", f = "CinemanaApplication.kt", l = {291}, m = "invokeSuspend")
        public static final class C0168a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
            public int v;
            public final /* synthetic */ CinemanaApplication w;
            public final /* synthetic */ CinemanaDownloadItem x;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0168a(CinemanaApplication cinemanaApplication, CinemanaDownloadItem cinemanaDownloadItem, ud0<? super C0168a> ud0Var) {
                super(2, ud0Var);
                this.w = cinemanaApplication;
                this.x = cinemanaDownloadItem;
            }

            @Override // com.shabakaty.downloader.hn1
            public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
                return new C0168a(this.w, this.x, ud0Var).t(qv4.a);
            }

            @Override // com.shabakaty.downloader.bj
            public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
                return new C0168a(this.w, this.x, ud0Var);
            }

            @Override // com.shabakaty.downloader.bj
            public final Object t(Object obj) {
                te0 te0Var = te0.COROUTINE_SUSPENDED;
                int i = this.v;
                if (i == 0) {
                    j96.i(obj);
                    jw0 jw0VarH = this.w.h();
                    CinemanaDownloadItem cinemanaDownloadItem = this.x;
                    this.v = 1;
                    if (jw0VarH.l(cinemanaDownloadItem, this) == te0Var) {
                        return te0Var;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j96.i(obj);
                }
                return qv4.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(CinemanaApplication cinemanaApplication, se0 se0Var, ud0<? super a> ud0Var) {
            super(1, ud0Var);
            this.w = cinemanaApplication;
            this.x = se0Var;
        }

        @Override // com.shabakaty.downloader.tm1
        public Object invoke(ud0<? super qv4> ud0Var) {
            return new a(this.w, this.x, ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            Object objB;
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            boolean z = true;
            if (i == 0) {
                j96.i(obj);
                List<CinemanaDownloadItem> listJ = this.w.h().j();
                if (listJ != null) {
                    se0 se0Var = this.x;
                    CinemanaApplication cinemanaApplication = this.w;
                    ArrayList arrayList = new ArrayList(i50.O(listJ, 10));
                    for (CinemanaDownloadItem cinemanaDownloadItem : listJ) {
                        try {
                            CinemanaApplication.d(cinemanaApplication, cinemanaDownloadItem);
                            objB = cinemanaDownloadItem;
                        } catch (Throwable th) {
                            objB = j96.b(th);
                        }
                        if ((objB instanceof dt3.a) ^ z) {
                            nh3.y(se0Var, hu0.b, 0, new C0168a(cinemanaApplication, (CinemanaDownloadItem) objB, null), 2, null);
                        }
                        cinemanaApplication.g();
                        Objects.requireNonNull(cinemanaDownloadItem);
                        arrayList.add(new pw0(cinemanaDownloadItem.downloadTaskId, cinemanaDownloadItem.id, 0L, q00.ca1CleanPlayerTitle130(cinemanaDownloadItem.title), BuildConfig.FLAVOR, cinemanaDownloadItem.imgObjUrl, ((Object) Environment.getExternalStorageDirectory().getAbsolutePath()) + "/Cinemana/work/" + cinemanaDownloadItem.path, ((long) cinemanaDownloadItem.sizeMB) * 1024 * 1024, xc4.COMPLETED, null, cinemanaDownloadItem.lastUpdated));
                        z = true;
                    }
                    az0 az0VarB = vy0.b();
                    this.v = 1;
                    if (az0VarB.a(arrayList, this) == te0Var) {
                        return te0Var;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(obj);
            }
            return qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n00(CinemanaApplication cinemanaApplication, ud0<? super n00> ud0Var) {
        super(2, ud0Var);
        this.z = cinemanaApplication;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        n00 n00Var = new n00(this.z, ud0Var);
        n00Var.y = se0Var;
        return n00Var.t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        n00 n00Var = new n00(this.z, ud0Var);
        n00Var.y = obj;
        return n00Var;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0084  */
    /* JADX WARN: Code duplicated, block: B:29:0x009e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    /* JADX WARN: Code duplicated, block: B:33:0x00be A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00bf  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bf -> B:25:0x007e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.shabakaty.downloader.bj
    public final java.lang.Object t(java.lang.Object r11) {
        /*
            r10 = this;
            com.shabakaty.downloader.te0 r0 = com.shabakaty.downloader.te0.COROUTINE_SUSPENDED
            int r1 = r10.x
            r2 = 0
            r3 = 3
            r4 = 4
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L45
            if (r1 == r6) goto L41
            if (r1 == r5) goto L3d
            if (r1 == r3) goto L27
            if (r1 != r4) goto L1f
            java.lang.Object r1 = r10.v
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r5 = r10.y
            com.shabakaty.cinemana.CinemanaApplication r5 = (com.shabakaty.cinemana.CinemanaApplication) r5
            com.shabakaty.downloader.j96.i(r11)
            goto L7b
        L1f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L27:
            java.lang.Object r1 = r10.w
            com.shabakaty.downloader.pw0 r1 = (com.shabakaty.downloader.pw0) r1
            java.lang.Object r5 = r10.v
            java.util.Iterator r5 = (java.util.Iterator) r5
            java.lang.Object r6 = r10.y
            com.shabakaty.cinemana.CinemanaApplication r6 = (com.shabakaty.cinemana.CinemanaApplication) r6
            com.shabakaty.downloader.j96.i(r11)
            r7 = r6
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r10
            goto La6
        L3d:
            com.shabakaty.downloader.j96.i(r11)
            goto L70
        L41:
            com.shabakaty.downloader.j96.i(r11)
            goto L63
        L45:
            com.shabakaty.downloader.j96.i(r11)
            java.lang.Object r11 = r10.y
            com.shabakaty.downloader.se0 r11 = (com.shabakaty.downloader.se0) r11
            java.lang.String r1 = "add_downloads"
            com.shabakaty.downloader.n00$a r7 = new com.shabakaty.downloader.n00$a
            com.shabakaty.cinemana.CinemanaApplication r8 = r10.z
            r7.<init>(r8, r11, r2)
            r10.x = r6
            com.shabakaty.downloader.f73 r11 = new com.shabakaty.downloader.f73
            r11.<init>(r1, r2)
            java.lang.Object r11 = r11.a(r1, r7, r10)
            if (r11 != r0) goto L63
            return r0
        L63:
            com.shabakaty.downloader.az0 r11 = com.shabakaty.downloader.vy0.b()
            r10.x = r5
            java.lang.Object r11 = r11.f(r10)
            if (r11 != r0) goto L70
            return r0
        L70:
            java.util.List r11 = (java.util.List) r11
            if (r11 != 0) goto L75
            goto Lc4
        L75:
            com.shabakaty.cinemana.CinemanaApplication r5 = r10.z
            java.util.Iterator r1 = r11.iterator()
        L7b:
            r11 = r10
            r6 = r5
            r5 = r1
        L7e:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto Lc4
            java.lang.Object r1 = r5.next()
            com.shabakaty.downloader.pw0 r1 = (com.shabakaty.downloader.pw0) r1
            com.shabakaty.downloader.jw0 r7 = r6.h()
            java.lang.String r8 = r1.s
            r11.y = r6
            r11.v = r5
            r11.w = r1
            r11.x = r3
            java.lang.Object r7 = r7.n(r8, r11)
            if (r7 != r0) goto L9f
            return r0
        L9f:
            r9 = r0
            r0 = r11
            r11 = r7
            r7 = r6
            r6 = r5
            r5 = r1
            r1 = r9
        La6:
            com.shabakaty.cinemana.data.db.downloads.CombinedDownloadItem r11 = (com.shabakaty.cinemana.data.db.downloads.CombinedDownloadItem) r11
            com.shabakaty.downloader.jw0 r8 = r7.h()
            com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem r11 = com.shabakaty.downloader.he0.u(r5, r11)
            r0.y = r7
            r0.v = r6
            r0.w = r2
            r0.x = r4
            java.lang.Object r11 = r8.r(r11, r0)
            if (r11 != r1) goto Lbf
            return r1
        Lbf:
            r11 = r0
            r0 = r1
            r5 = r6
            r6 = r7
            goto L7e
        Lc4:
            com.shabakaty.downloader.qv4 r11 = com.shabakaty.downloader.qv4.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.downloader.n00.t(java.lang.Object):java.lang.Object");
    }
}
