package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.Episodes107;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$getSeasonsAndEpisodes$1", f = "CinemanaVideoPlayerViewModel.kt", l = {255}, m = "invokeSuspend")
public final class s10 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public /* synthetic */ Object w;
    public final /* synthetic */ y25 x;
    public final /* synthetic */ q10 y;

    /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
    @pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$getSeasonsAndEpisodes$1$1", f = "CinemanaVideoPlayerViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public final /* synthetic */ q10 v;
        public final /* synthetic */ bi2<String, List<b41>> w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(q10 q10Var, bi2<String, List<b41>> bi2Var, ud0<? super a> ud0Var) {
            super(2, ud0Var);
            this.v = q10Var;
            this.w = bi2Var;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            a aVar = new a(this.v, this.w, ud0Var);
            qv4 qv4Var = qv4.a;
            aVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return new a(this.v, this.w, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            this.v.B.setValue(this.w);
            q10 q10Var = this.v;
            xv2<List<b41>> xv2Var = q10Var.A;
            bi2<String, List<b41>> value = q10Var.B.getValue();
            Object obj2 = null;
            if (value != null) {
                VideoModel value2 = this.v.z.getValue();
                obj2 = (List) value.get(value2 != null ? value2.season : null);
            }
            xv2Var.setValue((List<b41>) obj2);
            this.v.f().L0();
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
    @pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$getSeasonsAndEpisodes$1$episodes$1$1", f = "CinemanaVideoPlayerViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class b extends ui4 implements hn1<se0, ud0<? super bi2<String, List<b41>>>, Object> {
        public final /* synthetic */ y25 v;
        public final /* synthetic */ q10 w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(y25 y25Var, q10 q10Var, ud0<? super b> ud0Var) {
            super(2, ud0Var);
            this.v = y25Var;
            this.w = q10Var;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super bi2<String, List<b41>>> ud0Var) {
            return new b(this.v, this.w, ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return new b(this.v, this.w, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            String str;
            j96.i(obj);
            y25 y25Var = this.v;
            List<? extends Object> list = ol0.a;
            Episodes107.capture(list, y25Var);
            ol0.a = null;
            if (!(list instanceof List)) {
                list = null;
            }
            VideoModel value = this.w.z.getValue();
            if (value == null || (str = value.nb) == null) {
                str = BuildConfig.FLAVOR;
            }
            Objects.requireNonNull(y25Var);
            if (list == null) {
                list = w21.r;
            }
            ArrayList arrayList = new ArrayList(i50.O(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((VideoModel) it.next()).season);
            }
            List listT0 = m50.t0(m50.U(arrayList), new x25());
            int i = kf5.i(i50.O(listT0, 10));
            if (i < 16) {
                i = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(i);
            for (Object obj2 : listT0) {
                String str2 = (String) obj2;
                ArrayList<VideoModel> arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    if (j32.a(((VideoModel) obj3).season, str2)) {
                        arrayList2.add(obj3);
                    }
                }
                ArrayList arrayList3 = new ArrayList(i50.O(arrayList2, 10));
                for (VideoModel videoModel : arrayList2) {
                    arrayList3.add(new b41(j32.a(str, videoModel.nb), videoModel));
                }
                linkedHashMap.put(obj2, m50.z0(m50.t0(arrayList3, new w25())));
            }
            bi2 bi2Var = new bi2();
            bi2Var.putAll(linkedHashMap);
            return bi2Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s10(y25 y25Var, q10 q10Var, ud0<? super s10> ud0Var) {
        super(2, ud0Var);
        this.x = y25Var;
        this.y = q10Var;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        s10 s10Var = new s10(this.x, this.y, ud0Var);
        s10Var.w = se0Var;
        return s10Var.t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        s10 s10Var = new s10(this.x, this.y, ud0Var);
        s10Var.w = obj;
        return s10Var;
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        se0 se0Var;
        Throwable th;
        Object objB;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            se0 se0Var2 = (se0) this.w;
            try {
                b bVar = new b(this.x, this.y, null);
                this.w = se0Var2;
                this.v = 1;
                me0 me0Var = this.s;
                j32.c(me0Var);
                qh4 qh4Var = new qh4(me0Var, this);
                Object objQ = md0.Q(qh4Var, qh4Var, bVar);
                if (objQ == te0Var) {
                    return te0Var;
                }
                se0Var = se0Var2;
                obj = objQ;
            } catch (Throwable th2) {
                se0Var = se0Var2;
                th = th2;
                objB = j96.b(th);
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            se0Var = (se0) this.w;
            try {
                j96.i(obj);
            } catch (Throwable th3) {
                th = th3;
                objB = j96.b(th);
            }
        }
        objB = (bi2) obj;
        se0 se0Var3 = se0Var;
        if (objB instanceof dt3.a) {
            objB = null;
        }
        bi2 bi2Var = (bi2) objB;
        if (bi2Var == null) {
            bi2Var = new bi2();
        }
        pe0 pe0Var = hu0.a;
        nh3.y(se0Var3, wl2.a, 0, new a(this.y, bi2Var, null), 2, null);
        return qv4.a;
    }
}
