package com.shabakaty.cinemana.ca1;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.widget.TextView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public final class LegacyDialogs144 {
    private LegacyDialogs144() {
    }

    public static void showDownloadLimit(final TextView textView) {
        Context context;
        if (textView == null || (context = textView.getContext()) == null) {
            return;
        }
        final SharedPreferences sharedPreferences = context.getSharedPreferences("ca1_downloads", 0);
        int i = sharedPreferences.getInt("parallel", 3);
        if (i < 1 || i > 5) {
            i = 3;
        }
        final int[] iArr = {i};
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(I18n161.t("عدد التحميلات"));
        builder.setSingleChoiceItems(new CharSequence[]{"1", "2", "3", "4", "5"}, i - 1, new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.LegacyDialogs144.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                iArr[0] = i2 + 1;
            }
        });
        builder.setPositiveButton(I18n161.t("حفظ"), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.LegacyDialogs144.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                int i3 = iArr[0];
                sharedPreferences.edit().putInt("parallel", i3).commit();
                LegacyDialogs144.applyParallel(i3);
                textView.setText(I18n161.t("عدد التحميلات     ") + i3);
            }
        });
        builder.setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        Dialogs.style(alertDialogCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void applyParallel(int i) {
        try {
            Method declaredMethod = Class.forName("com.shabakaty.downloader.CnmDownloadQueue").getDeclaredMethod("setMaxParallel", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, Integer.valueOf(i));
        } catch (Throwable th) {
        }
    }
}
