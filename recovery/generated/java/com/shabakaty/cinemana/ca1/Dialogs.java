package com.shabakaty.cinemana.ca1;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class Dialogs {
    public static void style(AlertDialog alertDialog) {
        if (alertDialog != null) {
            int iInk = ThemeEngine142.ink(alertDialog.getContext());
            Button button = alertDialog.getButton(-1);
            if (button != null) {
                button.setTextColor(iInk);
            }
            Button button2 = alertDialog.getButton(-2);
            if (button2 != null) {
                button2.setTextColor(iInk);
            }
            Button button3 = alertDialog.getButton(-3);
            if (button3 != null) {
                button3.setTextColor(iInk);
            }
        }
    }

    public static AlertDialog show(AlertDialog.Builder builder) {
        builder.setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        style(alertDialogCreate);
        return alertDialogCreate;
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.Dialogs$1, reason: invalid class name */
    class AnonymousClass1 extends BaseAdapter {
        final /* synthetic */ Context val$c;
        final /* synthetic */ ListAdapter val$original;

        AnonymousClass1(ListAdapter listAdapter, Context context) {
            this.val$original = listAdapter;
            this.val$c = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.val$original.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.val$original.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.val$original.getItemId(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = view instanceof TextView ? (TextView) view : new TextView(this.val$c);
            textView.setText(String.valueOf(getItem(i)));
            textView.setTextColor(ThemeEngine142.legacy(-1117708));
            textView.setTextSize(14.0f);
            textView.setGravity(21);
            textView.setPadding(Enhancements.dp(this.val$c, 18), 0, Enhancements.dp(this.val$c, 18), 0);
            textView.setMinHeight(Enhancements.dp(this.val$c, 48));
            textView.setBackground(new RippleDrawable(ColorStateList.valueOf(ThemeEngine142.legacy(870394416)), new ColorDrawable(ThemeEngine142.legacy(-15459292)), null));
            return textView;
        }
    }
}
