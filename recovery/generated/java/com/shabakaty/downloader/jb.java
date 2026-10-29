package com.shabakaty.downloader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AlertController;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ca1.Ui8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: compiled from: AppSettingsFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/downloader/jb;", "Lcom/shabakaty/downloader/hj;", "Lcom/shabakaty/downloader/ki1;", "Lcom/shabakaty/downloader/nb;", "Lcom/shabakaty/downloader/rb;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class jb extends hj<ki1, nb, rb> implements nb {
    public static final /* synthetic */ int x = 0;

    /* JADX INFO: compiled from: AppSettingsFragment.kt */
    public static final class a extends af2 implements hn1<Integer, Integer, qv4> {
        public a() {
            super(2);
        }

        @Override // com.shabakaty.downloader.hn1
        public qv4 o(Integer num, Integer num2) {
            int iIntValue = num.intValue();
            num2.intValue();
            rb rbVarC2 = jb.this.c2();
            rbVarC2.h(new ob(rbVarC2, iIntValue, null));
            T t = jb.this.t;
            j32.c(t);
            ((ki1) t).S.setText(jb.this.getResources().getQuantityString(R.plurals.duration_seconds, jb.this.c2().l(), Integer.valueOf(jb.this.c2().l())));
            return qv4.a;
        }
    }

    public jb() {
        super(R.layout.fragment_app_settings);
    }

    @Override // com.shabakaty.downloader.hj
    public vj Z1() {
        return this;
    }

    @Override // com.shabakaty.downloader.hj
    public Class<rb> d2() {
        return rb.class;
    }

    @Override // com.shabakaty.downloader.nb
    public void j() {
        bn2 bn2VarQ = new bn2(requireContext()).q(getString(R.string.txt_clear_search));
        bn2VarQ.m(getString(R.string.txt_no), ig3.t);
        bn2VarQ.o(getString(R.string.txt_yes), new ph0(this));
        bn2VarQ.j();
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        j32.e(this, "this");
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        vj.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.nb
    public void w0() {
        Bundle bundleA = ml3.a(new x93("destination_id", 6103));
        Context contextRequireContext = requireContext();
        ji1 activity = getActivity();
        Intent intent = new Intent(contextRequireContext, activity == null ? null : activity.getClass());
        intent.putExtra("saved_state", bundleA);
        ji1 activity2 = getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
        ji1 activity3 = getActivity();
        if (activity3 != null) {
            activity3.overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
        }
        startActivity(intent);
        ji1 activity4 = getActivity();
        if (activity4 == null) {
            return;
        }
        activity4.overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
    }

    @Override // com.shabakaty.downloader.nb
    public void Z() {
        List listP = iq6.p(Ui8.seekValues());
        Integer numValueOf = Integer.valueOf(c2().l());
        a aVar = new a();
        bn2 bn2Var = new bn2(requireContext());
        ArrayList arrayList = new ArrayList(i50.O(listP, 10));
        Iterator it = listP.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        CharSequence[] charSequenceArr = (CharSequence[]) array;
        Iterator it2 = listP.iterator();
        int i = 0;
        while (it2.hasNext()) {
            int i2 = i + 1;
            if (j32.a(it2.next(), numValueOf)) {
                ib ibVar = new ib(aVar, listP, 0);
                AlertController.b bVar = bn2Var.a;
                bVar.p = charSequenceArr;
                bVar.r = ibVar;
                bVar.v = i;
                bVar.u = true;
                s45.h(bn2Var, null, 1);
                bn2Var.j();
            }
            i = i2;
        }
        i = 0;
        ib ibVar2 = new ib(aVar, listP, 0);
        AlertController.b bVar2 = bn2Var.a;
        bVar2.p = charSequenceArr;
        bVar2.r = ibVar2;
        bVar2.v = i;
        bVar2.u = true;
        s45.h(bn2Var, null, 1);
        bn2Var.j();
    }
}
