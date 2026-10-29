package com.shabakaty.downloader;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import com.shabakaty.cinemana.ca1.Ui8;
import com.shabakaty.cinemana.utils.extensions.ObserverWhileStartedImpl;
import com.skydoves.colorpickerview.ColorPickerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/downloader/vg4;", "Lcom/shabakaty/downloader/hj;", "Lcom/shabakaty/downloader/wk1;", "Lcom/shabakaty/downloader/ah4;", "Lcom/shabakaty/downloader/ih4;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class vg4 extends hj<wk1, ah4, ih4> implements ah4 {
    public static final /* synthetic */ int x = 0;

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    public static final class a implements t50 {
        public final /* synthetic */ vg4 b;

        public a(vg4 vg4Var) {
            this.b = vg4Var;
        }

        @Override // com.shabakaty.downloader.t50
        public void b(s50 s50Var, boolean z) {
            if (z) {
                ih4 ih4VarC2 = this.b.c2();
                ih4VarC2.i(new ch4(ih4VarC2, s50Var == null ? 0 : s50Var.a, null));
                vg4.h2(this.b).e0.setBackground(new ColorDrawable(s50Var != null ? s50Var.a : 0));
                nh3.y(cl3.e(this.b), wl2.a, 0, this.b.new b(null), 2, null);
                vg4.i2(this.b);
            }
            vg4.i2(vg4.this);
        }
    }

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$onSubtitleBackgroundColorClicked$1$1", f = "SubtitlesSettingsFragment.kt", l = {}, m = "invokeSuspend")
    public static final class b extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public b(ud0<? super b> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            b bVar = vg4.this.new b(ud0Var);
            qv4 qv4Var = qv4.a;
            bVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return vg4.this.new b(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            TextView textView = vg4.h2(vg4.this).Q;
            String str = String.format("#%08X", Arrays.copyOf(new Object[]{new Integer(vg4.this.c2().f.g().c)}, 1));
            j32.d(str, "format(format, *args)");
            textView.setText(str);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    public static final class c implements t50 {
        public final /* synthetic */ vg4 b;

        public c(vg4 vg4Var) {
            this.b = vg4Var;
        }

        @Override // com.shabakaty.downloader.t50
        public void b(s50 s50Var, boolean z) {
            if (z) {
                ih4 ih4VarC2 = this.b.c2();
                ih4VarC2.i(new eh4(ih4VarC2, s50Var == null ? 0 : s50Var.a, null));
                vg4.h2(this.b).g0.setBackground(new ColorDrawable(s50Var != null ? s50Var.a : 0));
                nh3.y(cl3.e(this.b), wl2.a, 0, this.b.new d(null), 2, null);
                vg4.i2(this.b);
            }
            vg4.i2(vg4.this);
        }
    }

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$onSubtitleEdgeColorClicked$1$1", f = "SubtitlesSettingsFragment.kt", l = {}, m = "invokeSuspend")
    public static final class d extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public d(ud0<? super d> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            d dVar = vg4.this.new d(ud0Var);
            qv4 qv4Var = qv4.a;
            dVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return vg4.this.new d(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            TextView textView = vg4.h2(vg4.this).W;
            String str = String.format("#%08X", Arrays.copyOf(new Object[]{new Integer(vg4.this.c2().f.g().b)}, 1));
            j32.d(str, "format(format, *args)");
            textView.setText(str);
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$onSubtitleEdgeTypeClicked$1", f = "SubtitlesSettingsFragment.kt", l = {}, m = "invokeSuspend")
    public static final class e extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {

        /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
        public static final class a extends af2 implements hn1<fg4, Integer, qv4> {
            public final /* synthetic */ vg4 r;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(vg4 vg4Var) {
                super(2);
                this.r = vg4Var;
            }

            @Override // com.shabakaty.downloader.hn1
            public qv4 o(fg4 fg4Var, Integer num) {
                fg4 fg4Var2 = fg4Var;
                num.intValue();
                j32.e(fg4Var2, "item");
                ih4 ih4VarC2 = this.r.c2();
                j32.e(fg4Var2, "value");
                ih4VarC2.i(new fh4(ih4VarC2, fg4Var2, null));
                vg4.i2(this.r);
                return qv4.a;
            }
        }

        /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
        public static final class b extends af2 implements tm1<fg4, String> {
            public final /* synthetic */ vg4 r;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(vg4 vg4Var) {
                super(1);
                this.r = vg4Var;
            }

            @Override // com.shabakaty.downloader.tm1
            public String invoke(fg4 fg4Var) {
                fg4 fg4Var2 = fg4Var;
                j32.e(fg4Var2, "it");
                String string = this.r.getString(fg4Var2.b);
                j32.d(string, "getString(it.titleRes)");
                return string;
            }
        }

        public e(ud0<? super e> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            e eVar = vg4.this.new e(ud0Var);
            qv4 qv4Var = qv4.a;
            eVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return vg4.this.new e(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            List listP = iq6.p(fg4.c.c, fg4.b.c, fg4.d.c, fg4.e.c, fg4.a.c);
            fg4 fg4Var = vg4.this.c2().f.g().d;
            vg4 vg4Var = vg4.this;
            vg4.j2(vg4Var, fg4Var, listP, new a(vg4Var), new b(vg4.this));
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$onSubtitleSizeClicked$1", f = "SubtitlesSettingsFragment.kt", l = {}, m = "invokeSuspend")
    public static final class f extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {

        /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
        public static final class a extends af2 implements hn1<hg4, Integer, qv4> {
            public final /* synthetic */ vg4 r;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(vg4 vg4Var) {
                super(2);
                this.r = vg4Var;
            }

            @Override // com.shabakaty.downloader.hn1
            public qv4 o(hg4 hg4Var, Integer num) {
                hg4 hg4Var2 = hg4Var;
                num.intValue();
                j32.e(hg4Var2, "item");
                ih4 ih4VarC2 = this.r.c2();
                j32.e(hg4Var2, "value");
                ih4VarC2.i(new hh4(ih4VarC2, hg4Var2, null));
                vg4.i2(this.r);
                return qv4.a;
            }
        }

        /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
        public static final class b extends af2 implements tm1<hg4, String> {
            public final /* synthetic */ vg4 r;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(vg4 vg4Var) {
                super(1);
                this.r = vg4Var;
            }

            @Override // com.shabakaty.downloader.tm1
            public String invoke(hg4 hg4Var) {
                hg4 hg4Var2 = hg4Var;
                j32.e(hg4Var2, "it");
                String string = this.r.getString(hg4Var2.b);
                j32.d(string, "getString(it.titleRes)");
                return string;
            }
        }

        public f(ud0<? super f> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            f fVar = vg4.this.new f(ud0Var);
            qv4 qv4Var = qv4.a;
            fVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return vg4.this.new f(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            List listP = iq6.p(hg4.e.c, hg4.c.c, hg4.b.c, hg4.a.c, hg4.d.c);
            hg4 hg4Var = vg4.this.c2().f.g().e;
            vg4 vg4Var = vg4.this;
            vg4.j2(vg4Var, hg4Var, listP, new a(vg4Var), new b(vg4.this));
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    public static final class g implements t50 {
        public final /* synthetic */ vg4 b;

        public g(vg4 vg4Var) {
            this.b = vg4Var;
        }

        @Override // com.shabakaty.downloader.t50
        public void b(s50 s50Var, boolean z) {
            if (z) {
                ih4 ih4VarC2 = this.b.c2();
                ih4VarC2.i(new dh4(ih4VarC2, s50Var == null ? -1 : s50Var.a, null));
                vg4.h2(this.b).f0.setBackground(new ColorDrawable(s50Var != null ? s50Var.a : -1));
                nh3.y(cl3.e(this.b), wl2.a, 0, this.b.new h(null), 2, null);
                vg4.i2(this.b);
            }
            vg4.i2(vg4.this);
        }
    }

    /* JADX INFO: compiled from: SubtitlesSettingsFragment.kt */
    @pm0(c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$onSubtitleTextColorClicked$1$1", f = "SubtitlesSettingsFragment.kt", l = {}, m = "invokeSuspend")
    public static final class h extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public h(ud0<? super h> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            h hVar = vg4.this.new h(ud0Var);
            qv4 qv4Var = qv4.a;
            hVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return vg4.this.new h(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            TextView textView = vg4.h2(vg4.this).T;
            String str = String.format("#%08X", Arrays.copyOf(new Object[]{new Integer(vg4.this.c2().f.g().a)}, 1));
            j32.d(str, "format(format, *args)");
            textView.setText(str);
            return qv4.a;
        }
    }

    public vg4() {
        super(R.layout.fragment_subtitles_settings);
    }

    public static final wk1 h2(vg4 vg4Var) {
        T t = vg4Var.t;
        j32.c(t);
        return (wk1) t;
    }

    public static final void i2(vg4 vg4Var) {
        T t = vg4Var.t;
        j32.c(t);
        ((wk1) t).p();
        T t2 = vg4Var.t;
        j32.c(t2);
        ((wk1) t2).k();
    }

    public static final void j2(vg4 vg4Var, Object obj, List list, hn1 hn1Var, tm1 tm1Var) {
        bn2 bn2Var = new bn2(vg4Var.requireContext());
        ArrayList arrayList = new ArrayList(i50.O(list, 10));
        for (Object obj2 : list) {
            String strValueOf = (String) tm1Var.invoke(obj2);
            if (strValueOf == null) {
                strValueOf = String.valueOf(obj2);
            }
            arrayList.add(strValueOf);
        }
        int i = 0;
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CharSequence[] charSequenceArr = (CharSequence[]) array;
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int i3 = i2 + 1;
            if (j32.a(it.next(), obj)) {
                i = i2;
                break;
            }
            i2 = i3;
        }
        ib ibVar = new ib(hn1Var, list, 1);
        AlertController.b bVar = bn2Var.a;
        bVar.p = charSequenceArr;
        bVar.r = ibVar;
        bVar.v = i;
        bVar.u = true;
        s45.h(bn2Var, null, 1);
        bn2Var.j();
    }

    @Override // com.shabakaty.downloader.ah4
    public void B() {
        bn2 bn2VarQ = new bn2(requireContext()).q(getString(R.string.reset_subtitles_settings_txt));
        bn2VarQ.m(getString(R.string.txt_no), qg4.s);
        bn2VarQ.o(getString(R.string.txt_yes), new ph0(this));
        bn2VarQ.j();
    }

    @Override // com.shabakaty.downloader.ah4
    public void J1() {
        yg4 yg4Var = new yg4(this);
        j32.e(yg4Var, "fontClicked");
        kg4.J = yg4Var;
        kg4 kg4Var = new kg4();
        kg4Var.I = kg4.J;
        kg4Var.c2(getChildFragmentManager(), BuildConfig.FLAVOR);
    }

    @Override // com.shabakaty.downloader.ah4
    public void N() {
        ih2 ih2VarE = cl3.e(this);
        pe0 pe0Var = hu0.a;
        nh3.y(ih2VarE, wl2.a, 0, new f(null), 2, null);
    }

    @Override // com.shabakaty.downloader.ah4
    public void X() {
        Context contextRequireContext = requireContext();
        b60 b60Var = new b60(contextRequireContext, ThemeEngine142.dialogStyle(contextRequireContext, R.style.DialogTheme));
        b60Var.n(R.string.choose_color_txt);
        ColorPickerView colorPickerView = b60Var.d;
        if (colorPickerView != null) {
            colorPickerView.setPreferenceName("SUB_EDGE_COLOR");
        }
        b60Var.m(R.string.txt_ok, new c(this));
        b60Var.l(R.string.cancel, wg4.r);
        b60Var.e = true;
        b60Var.f = true;
        b60Var.k(12);
        ColorPickerView colorPickerView2 = b60Var.d;
        colorPickerView2.setLifecycleOwner(this);
        yn ynVar = new yn(requireContext());
        ynVar.setFlagMode(wd1.FADE);
        colorPickerView2.setFlagView(ynVar);
        if (j32.a("SUB_EDGE_COLOR", "SUB_TEXT_COLOR")) {
            colorPickerView2.setInitialColor(Color.parseColor("#FFFFFF"));
        } else if (j32.a("SUB_EDGE_COLOR", "SUB_EDGE_COLOR")) {
            colorPickerView2.setInitialColor(Color.parseColor("#AA000000"));
        } else {
            colorPickerView2.setInitialColor(Color.parseColor("#00000000"));
        }
        b60Var.j();
        ViewGroup.LayoutParams layoutParams = colorPickerView2.getLayoutParams();
        layoutParams.height = (int) (((double) getResources().getDisplayMetrics().heightPixels) * 0.4d);
        colorPickerView2.setLayoutParams(layoutParams);
    }

    @Override // com.shabakaty.downloader.hj
    public vj Z1() {
        return this;
    }

    @Override // com.shabakaty.downloader.ah4
    public void b0() {
        Context contextRequireContext = requireContext();
        b60 b60Var = new b60(contextRequireContext, ThemeEngine142.dialogStyle(contextRequireContext, R.style.DialogTheme));
        b60Var.n(R.string.choose_color_txt);
        ColorPickerView colorPickerView = b60Var.d;
        if (colorPickerView != null) {
            colorPickerView.setPreferenceName("SUB_TEXT_COLOR");
        }
        b60Var.m(R.string.txt_ok, new g(this));
        b60Var.l(R.string.cancel, wg4.r);
        b60Var.e = true;
        b60Var.f = true;
        b60Var.k(12);
        ColorPickerView colorPickerView2 = b60Var.d;
        colorPickerView2.setLifecycleOwner(this);
        yn ynVar = new yn(requireContext());
        ynVar.setFlagMode(wd1.FADE);
        colorPickerView2.setFlagView(ynVar);
        if (j32.a("SUB_TEXT_COLOR", "SUB_TEXT_COLOR")) {
            colorPickerView2.setInitialColor(Color.parseColor("#FFFFFF"));
        } else if (j32.a("SUB_TEXT_COLOR", "SUB_EDGE_COLOR")) {
            colorPickerView2.setInitialColor(Color.parseColor("#AA000000"));
        } else {
            colorPickerView2.setInitialColor(Color.parseColor("#00000000"));
        }
        b60Var.j();
        ViewGroup.LayoutParams layoutParams = colorPickerView2.getLayoutParams();
        layoutParams.height = (int) (((double) getResources().getDisplayMetrics().heightPixels) * 0.4d);
        colorPickerView2.setLayoutParams(layoutParams);
    }

    public void ca1OnViewCreatedBase(View view, Bundle bundle) {
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewWithTag = view.findViewWithTag("import_subtitle_font_button");
        if (viewFindViewWithTag != null) {
            viewFindViewWithTag.setOnClickListener(new FontImportButtonClick(this));
        }
        List<vg0> listO = iq6.o(new vg0(getString(R.string.subtitle_sample_txt), null, null, null, -3.4028235E38f, CellBase.GROUP_ID_SYSTEM_MESSAGE, CellBase.GROUP_ID_SYSTEM_MESSAGE, -3.4028235E38f, CellBase.GROUP_ID_SYSTEM_MESSAGE, CellBase.GROUP_ID_SYSTEM_MESSAGE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, CellBase.GROUP_ID_SYSTEM_MESSAGE, 0.0f, null));
        T t = this.t;
        j32.c(t);
        ((wk1) t).O.setCues(listO);
        new ObserverWhileStartedImpl(this, new rg4(c2().g), new sg4(this, null));
    }

    @Override // com.shabakaty.downloader.hj
    public Class<ih4> d2() {
        return ih4.class;
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1334 && i2 == -1 && intent != null) {
            new Thread(new FontImportWorker(requireContext(), intent)).start();
        }
    }

    @Override // com.shabakaty.downloader.hj, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ca1OnViewCreatedBase(view, bundle);
        Ui8.subtitlePage(view);
    }

    @Override // com.shabakaty.downloader.ah4
    public void p1() {
        ih2 ih2VarE = cl3.e(this);
        pe0 pe0Var = hu0.a;
        nh3.y(ih2VarE, wl2.a, 0, new e(null), 2, null);
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.ah4
    public void y1() {
        Context contextRequireContext = requireContext();
        b60 b60Var = new b60(contextRequireContext, ThemeEngine142.dialogStyle(contextRequireContext, R.style.DialogTheme));
        b60Var.n(R.string.choose_color_txt);
        ColorPickerView colorPickerView = b60Var.d;
        if (colorPickerView != null) {
            colorPickerView.setPreferenceName("SUB_BACK_COLOR");
        }
        b60Var.m(R.string.txt_ok, new a(this));
        b60Var.l(R.string.cancel, wg4.r);
        b60Var.e = true;
        b60Var.f = true;
        b60Var.k(12);
        ColorPickerView colorPickerView2 = b60Var.d;
        colorPickerView2.setLifecycleOwner(this);
        yn ynVar = new yn(requireContext());
        ynVar.setFlagMode(wd1.FADE);
        colorPickerView2.setFlagView(ynVar);
        if (j32.a("SUB_BACK_COLOR", "SUB_TEXT_COLOR")) {
            colorPickerView2.setInitialColor(Color.parseColor("#FFFFFF"));
        } else if (j32.a("SUB_BACK_COLOR", "SUB_EDGE_COLOR")) {
            colorPickerView2.setInitialColor(Color.parseColor("#AA000000"));
        } else {
            colorPickerView2.setInitialColor(Color.parseColor("#00000000"));
        }
        b60Var.j();
        ViewGroup.LayoutParams layoutParams = colorPickerView2.getLayoutParams();
        layoutParams.height = (int) (((double) getResources().getDisplayMetrics().heightPixels) * 0.4d);
        colorPickerView2.setLayoutParams(layoutParams);
    }

    public void z2() {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        startActivityForResult(intent, 1334);
    }
}
