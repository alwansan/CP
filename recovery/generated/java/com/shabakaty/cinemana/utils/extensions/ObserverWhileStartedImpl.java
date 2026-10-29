package com.shabakaty.cinemana.utils.extensions;

import androidx.lifecycle.e;
import androidx.lifecycle.f;
import com.connectsdk.R;
import com.connectsdk.service.NetcastTVService;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.cl3;
import com.shabakaty.downloader.e92;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.ih2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.kh2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rh2;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.te0;
import com.shabakaty.downloader.te1;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;
import com.shabakaty.downloader.zy;
import kotlin.Metadata;

/* JADX INFO: compiled from: FlowsExtensions.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002BD\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;", "T", "Landroidx/lifecycle/f;", "Lcom/shabakaty/downloader/rh2;", "lifecycleOwner", "Lcom/shabakaty/downloader/te1;", "flow", "Lkotlin/Function2;", "Lcom/shabakaty/downloader/ud0;", "Lcom/shabakaty/downloader/qv4;", BuildConfig.FLAVOR, "collector", "<init>", "(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class ObserverWhileStartedImpl<T> implements f {
    public final te1<T> r;
    public final hn1<T, ud0<? super qv4>, Object> s;
    public e92 t;

    /* JADX INFO: compiled from: FlowsExtensions.kt */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e.b.values().length];
            iArr[e.b.ON_START.ordinal()] = 1;
            iArr[e.b.ON_STOP.ordinal()] = 2;
            a = iArr;
        }
    }

    /* JADX INFO: compiled from: FlowsExtensions.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.extensions.ObserverWhileStartedImpl$onStateChanged$1", f = "FlowsExtensions.kt", l = {R.styleable.AppCompatTheme_actionOverflowMenuStyle}, m = "invokeSuspend")
    public static final class b extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;
        public final /* synthetic */ ObserverWhileStartedImpl<T> w;

        /* JADX INFO: compiled from: FlowsExtensions.kt */
        @pm0(c = "com.shabakaty.cinemana.utils.extensions.ObserverWhileStartedImpl$onStateChanged$1$1", f = "FlowsExtensions.kt", l = {R.styleable.AppCompatTheme_activityChooserViewStyle}, m = "invokeSuspend")
        public static final class a extends ui4 implements hn1<T, ud0<? super qv4>, Object> {
            public int v;
            public /* synthetic */ Object w;
            public final /* synthetic */ ObserverWhileStartedImpl<T> x;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(ObserverWhileStartedImpl<T> observerWhileStartedImpl, ud0<? super a> ud0Var) {
                super(2, ud0Var);
                this.x = observerWhileStartedImpl;
            }

            @Override // com.shabakaty.downloader.hn1
            public Object o(Object obj, ud0<? super qv4> ud0Var) {
                a aVar = new a(this.x, ud0Var);
                aVar.w = obj;
                return aVar.t(qv4.a);
            }

            @Override // com.shabakaty.downloader.bj
            public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
                a aVar = new a(this.x, ud0Var);
                aVar.w = obj;
                return aVar;
            }

            /**
             * Recovered from ObserverWhileStartedImpl$b$a.t Smali.
             * Preserve coroutine suspension state and error propagation.
             */
            @Override
            public final Object t(Object result) {
                Object suspended = te0.r;
                if (this.v == 0) {
                    j96.i(result);
                    Object emission = this.w;
                    hn1 callback = this.x.s;
                    this.v = 1;
                    Object dispatched = callback.o(emission, this);
                    if (dispatched == suspended) {
                        return suspended;
                    }
                } else if (this.v == 1) {
                    j96.i(result);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return qv4.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ObserverWhileStartedImpl<T> observerWhileStartedImpl, ud0<? super b> ud0Var) {
            super(2, ud0Var);
            this.w = observerWhileStartedImpl;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return new b(this.w, ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return new b(this.w, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                ObserverWhileStartedImpl<T> observerWhileStartedImpl = this.w;
                te1<T> te1Var = observerWhileStartedImpl.r;
                a aVar = new a(observerWhileStartedImpl, null);
                this.v = 1;
                if (zy.e(te1Var, aVar, this) == te0Var) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public ObserverWhileStartedImpl(rh2 rh2Var, te1<? extends T> te1Var, hn1<? super T, ? super ud0<? super qv4>, ? extends Object> hn1Var) {
        this.r = te1Var;
        this.s = hn1Var;
        rh2Var.getLifecycle().a(this);
    }

    @Override // androidx.lifecycle.f
    public void j(rh2 rh2Var, e.b bVar) {
        j32.e(rh2Var, "source");
        j32.e(bVar, NetcastTVService.UDAP_API_EVENT);
        int i = a.a[bVar.ordinal()];
        if (i == 1) {
            ih2 ih2VarE = cl3.e(rh2Var);
            this.t = nh3.y(ih2VarE, null, 0, new kh2(ih2VarE, new b(this, null), null), 3, null);
        } else {
            if (i != 2) {
                return;
            }
            e92 e92Var = this.t;
            if (e92Var != null) {
                e92Var.b(null);
            }
            this.t = null;
        }
    }
}
