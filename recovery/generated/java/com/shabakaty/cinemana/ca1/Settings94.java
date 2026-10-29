package com.shabakaty.cinemana.ca1;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import com.connectsdk.R;

/* JADX INFO: loaded from: classes6.dex */
public final class Settings94 {
    public static void settings(View view) {
        CacheCleaner124.settings(view);
        SpeedSettings120.settings(view);
        try {
            Log94.init(view.getContext());
            View viewFindViewWithTag = view.findViewWithTag("ca1_log94");
            if (viewFindViewWithTag instanceof Switch) {
                Switch r0 = (Switch) viewFindViewWithTag;
                r0.setChecked(Log94.enabled());
                r0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.shabakaty.cinemana.ca1.Settings94$$ExternalSyntheticLambda0
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        Log94.set(z);
                    }
                });
            }
            View viewFindViewWithTag2 = view.findViewWithTag("ca1_player94");
            if (viewFindViewWithTag2 != null) {
                viewFindViewWithTag2.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Settings94$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        Settings94.dialog(view2.getContext());
                    }
                });
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void dialog(Context context) {
        int i = 0;
        final SharedPreferences sharedPreferences = context.getSharedPreferences("ca1_94", 0);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setPadding(24, 12, 24, 12);
        linearLayout.setOrientation(1);
        linearLayout.setBackground(Download94.bg(-15458005));
        final Switch r4 = new Switch(context);
        r4.setText(I18n161.t("السحب الأفقي لتمرير الفيديو"));
        int iLegacy = ThemeEngine142.legacy(-1);
        r4.setTextColor(iLegacy);
        r4.setChecked(sharedPreferences.getBoolean("swipe", true));
        linearLayout.addView(r4);
        final TextView textView = new TextView(context);
        int iLegacy2 = ThemeEngine142.legacy(iLegacy);
        textView.setTextColor(iLegacy2);
        linearLayout.addView(textView);
        final SeekBar seekBar = new SeekBar(context);
        seekBar.setMax(4);
        int i2 = sharedPreferences.getInt("sensitivity", 60);
        if (i2 != 30) {
            if (i2 == 60) {
                i = 1;
            } else if (i2 == 180) {
                i = 3;
            } else {
                i = i2 == 240 ? 4 : 2;
            }
        }
        seekBar.setProgress(i);
        final int[] iArr = {30, 60, R.styleable.AppCompatTheme_windowFixedHeightMajor, 180, 240};
        textView.setText(I18n161.t("حساسية السحب: ") + iArr[seekBar.getProgress()] + I18n161.t(" ثانية لعرض الشاشة"));
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.shabakaty.cinemana.ca1.Settings94.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i3, boolean z) {
                textView.setText(I18n161.t("حساسية السحب: ") + iArr[i3] + I18n161.t(" ثانية لعرض الشاشة"));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }
        });
        linearLayout.addView(seekBar);
        final Switch r1 = new Switch(context);
        r1.setText(I18n161.t("معاينة مصغرة أثناء سحب شريط الوقت"));
        int iLegacy3 = ThemeEngine142.legacy(iLegacy2);
        r1.setTextColor(iLegacy3);
        r1.setChecked(sharedPreferences.getBoolean("preview", true));
        linearLayout.addView(r1);
        final Switch r6 = new Switch(context);
        r6.setText(I18n161.t("تمرير سريع قرب إطار مفتاحي"));
        r6.setTextColor(ThemeEngine142.legacy(iLegacy3));
        r6.setChecked(sharedPreferences.getBoolean("keyframe95", true));
        linearLayout.addView(r6);
        TextView textView2 = new TextView(context);
        textView2.setTextColor(ThemeEngine142.legacy(-5194297));
        textView2.setTextSize(13.0f);
        textView2.setText(I18n161.t("السحب لليسار يرجع الفيديو، ولليمين يقدمه. القفزة قرب إطار مفتاحي قد تختلف قليلًا عن الوقت المطلوب، وتطبق عند فتح المشغل التالي. المعاينة لا توقف الفيديو؛ معاينة البث تعتمد على استجابة الخادم."));
        linearLayout.addView(textView2);
        ScrollView scrollView = new ScrollView(context);
        scrollView.addView(linearLayout);
        Dialog95.show(new AlertDialog.Builder(context).setTitle(I18n161.t("التمرير ومعاينة الفيديو")).setView(scrollView).setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null).setPositiveButton(I18n161.t("حفظ"), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Settings94$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                sharedPreferences.edit().putBoolean("swipe", r4.isChecked()).putBoolean("preview", r1.isChecked()).putBoolean("keyframe95", r6.isChecked()).putInt("sensitivity", iArr[seekBar.getProgress()]).apply();
            }
        }).create());
    }
}
