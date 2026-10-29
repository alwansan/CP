package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.RadioGroup;
import android.widget.TextView;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class Ui7$$ExternalSyntheticLambda0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ RadioGroup f$0;
    public final /* synthetic */ Context f$1;
    public final /* synthetic */ TextView f$2;

    public /* synthetic */ Ui7$$ExternalSyntheticLambda0(RadioGroup radioGroup, Context context, TextView textView) {
        this.f$0 = radioGroup;
        this.f$1 = context;
        this.f$2 = textView;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Ui7.lambda$limitDialog$1(this.f$0, this.f$1, this.f$2, dialogInterface, i);
    }
}
