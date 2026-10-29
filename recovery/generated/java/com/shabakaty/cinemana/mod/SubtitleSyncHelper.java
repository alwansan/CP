package com.shabakaty.cinemana.mod;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.I18n161;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitleSyncHelper {
    private static final int MAX_TENTHS = 864000;
    private static volatile long offsetUs;

    private static void addHalfSecondButtons(Context context, LinearLayout linearLayout, EditText editText) {
        Button button = new Button(context);
        button.setText("− 0.5s");
        button.setTextColor(ThemeEngine142.ink(context));
        linearLayout.addView(button, 0);
        button.setOnClickListener(new SubtitleSyncStepListener(context, editText, -5));
        Button button2 = new Button(context);
        button2.setText("+ 0.5s");
        button2.setTextColor(ThemeEngine142.ink(context));
        linearLayout.addView(button2, 4);
        button2.setOnClickListener(new SubtitleSyncStepListener(context, editText, 5));
    }

    private static void addZeroButton(Context context, LinearLayout linearLayout, EditText editText) {
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(17);
        linearLayout2.setPadding(0, 8, 0, 8);
        Button button = new Button(context);
        button.setText("0");
        button.setTextColor(ThemeEngine142.ink(context));
        linearLayout2.addView(button, new LinearLayout.LayoutParams(-2, -2));
        button.setOnClickListener(new SubtitleSyncStepListener(context, editText, Integer.MAX_VALUE));
        linearLayout.addView(linearLayout2);
    }

    public static long adjustPositionUs(long j) {
        long j2 = j - offsetUs;
        if (j2 >= 0) {
            return j2;
        }
        return 0L;
    }

    private static int clampTenths(int i) {
        if (i > MAX_TENTHS) {
            i = MAX_TENTHS;
        }
        int i2 = -MAX_TENTHS;
        return i < i2 ? i2 : i;
    }

    public static void commitText(Context context, EditText editText) {
        try {
            int iClampTenths = clampTenths(Math.round(Float.parseFloat(editText.getText().toString().trim().replace("s", BuildConfig.FLAVOR).replace("S", BuildConfig.FLAVOR).replace(",", ".")) * 10.0f));
            setOffsetTenths(iClampTenths);
            editText.setText(formatTenths(iClampTenths));
        } catch (Exception unused) {
            editText.setText(formatTenths(getTenths()));
        }
    }

    private static String formatTenths(int i) {
        int iAbs = Math.abs(i);
        int i2 = iAbs / 10;
        int i3 = iAbs % 10;
        StringBuilder sb = new StringBuilder();
        if (i < 0) {
            sb.append("-");
        } else {
            sb.append("+");
        }
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        sb.append("s");
        return sb.toString();
    }

    public static long getOffsetUs() {
        return offsetUs;
    }

    public static int getTenths() {
        return (int) (offsetUs / 100000);
    }

    public static void init(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        Context context = cinemanaPlayerControllerView.getContext();
        if (context != null) {
            setOffsetTenths(clampTenths(context.getSharedPreferences("cinemana_mod_prefs", 0).getInt("subtitle_sync_tenths", 0)));
        }
    }

    public static void save(Context context, int i) {
        if (context != null) {
            int iClampTenths = clampTenths(i);
            setOffsetTenths(iClampTenths);
            context.getSharedPreferences("cinemana_mod_prefs", 0).edit().putInt("subtitle_sync_tenths", iClampTenths).apply();
        }
    }

    private static void setOffsetTenths(int i) {
        offsetUs = ((long) clampTenths(i)) * 100000;
    }

    public static void showDialog(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        Context context = cinemanaPlayerControllerView.getContext();
        if (context != null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(32, 32, 32, 32);
            new TextView(context);
            TextView textView = new TextView(context);
            textView.setText(I18n161.t("الموجب يؤخر الترجمة، والسالب يقدمها"));
            textView.setGravity(17);
            textView.setTextSize(10.0f);
            textView.setTextColor(ThemeEngine142.inkMuted(context));
            textView.setPadding(16, 16, 16, 16);
            linearLayout.addView(textView);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            Button button = new Button(context);
            button.setText("− 0.1s");
            button.setTextColor(ThemeEngine142.ink(context));
            linearLayout2.addView(button, new LinearLayout.LayoutParams(-2, -2));
            EditText editText = new EditText(context);
            editText.setTextColor(ThemeEngine142.ink(context));
            editText.setGravity(17);
            editText.setInputType(12290);
            editText.setSelectAllOnFocus(true);
            editText.setText(formatTenths(getTenths()));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(16, 16, 16, 16);
            linearLayout2.addView(editText, layoutParams);
            Button button2 = new Button(context);
            button2.setText("+ 0.1s");
            button2.setTextColor(ThemeEngine142.ink(context));
            linearLayout2.addView(button2, new LinearLayout.LayoutParams(-2, -2));
            addHalfSecondButtons(context, linearLayout2, editText);
            linearLayout.addView(linearLayout2);
            addZeroButton(context, linearLayout, editText);
            TextView textView2 = new TextView(context);
            textView2.setText(I18n161.t("القيمة تحفظ تلقائيًا"));
            textView2.setGravity(17);
            textView2.setTextSize(10.0f);
            textView2.setTextColor(ThemeEngine142.inkMuted(context));
            linearLayout.addView(textView2);
            button.setOnClickListener(new SubtitleSyncStepListener(context, editText, -1));
            button2.setOnClickListener(new SubtitleSyncStepListener(context, editText, 1));
            Ui7.show(new AlertDialog.Builder(context).setTitle(I18n161.t("مزامنة الترجمة")).setView(linearLayout).setPositiveButton(I18n161.t("تم"), new SubtitleSyncDoneListener(context, editText)).setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null));
        }
    }

    public static void step(Context context, EditText editText, int i) {
        if (i == Integer.MAX_VALUE) {
            save(context, 0);
            editText.setText(formatTenths(0));
        } else {
            commitText(context, editText);
            int iClampTenths = clampTenths(getTenths() + i);
            setOffsetTenths(iClampTenths);
            editText.setText(formatTenths(iClampTenths));
        }
    }
}
