package com.shabakaty.cinemana.ca1;

import android.app.AlertDialog;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: loaded from: classes6.dex */
public final class Dialog95 {
    public static void show(AlertDialog alertDialog) {
        alertDialog.show();
        Dialogs.style(alertDialog);
    }

    static void panels(View view) {
        String resourceEntryName;
        try {
            resourceEntryName = view.getResources().getResourceEntryName(view.getId());
        } catch (Exception e) {
            resourceEntryName = BuildConfig.FLAVOR;
        }
        int iLegacy = 0;
        if (resourceEntryName.endsWith("Panel")) {
            iLegacy = ThemeEngine142.legacy(0);
            view.setBackgroundColor(iLegacy);
        }
        if (resourceEntryName.equals("alertTitle") && (view instanceof TextView)) {
            ((TextView) view).setTextColor(ThemeEngine142.legacy(-1));
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            while (iLegacy < viewGroup.getChildCount()) {
                panels(viewGroup.getChildAt(iLegacy));
                iLegacy++;
            }
        }
    }
}
