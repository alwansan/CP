package com.shabakaty.cinemana.mod;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.shabakaty.cinemana.ca1.I18n161;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.ca1.Ui8;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public class SrtSettingsHelper {
    public static void applyPercent(CinemanaPlayerControllerView cinemanaPlayerControllerView, int i) {
        Ui8.applyPercent(cinemanaPlayerControllerView, i);
    }

    public static void applySavedFontSize(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        Ui8.restoreController(cinemanaPlayerControllerView);
    }

    public static void applySavedTranslationY(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        Context context = cinemanaPlayerControllerView.getContext();
        if (context != null) {
            applyTranslationY(cinemanaPlayerControllerView, getSavedTranslationY(context));
        }
    }

    public static void applyTranslationY(CinemanaPlayerControllerView cinemanaPlayerControllerView, float f) {
        SubtitleView subtitleLayout = cinemanaPlayerControllerView.getSubtitleLayout();
        if (subtitleLayout != null) {
            subtitleLayout.setTranslationY(f);
        }
    }

    public static String buildLabelText(int i) {
        return I18n161.t("حجم الخط: ") + i + "%";
    }

    public static int getSavedPercent(Context context) {
        return Ui8.percent(context);
    }

    public static float getSavedTranslationY(Context context) {
        return context.getSharedPreferences("cinemana_mod_prefs", 0).getFloat("srt_translation_y", 0.0f);
    }

    public static void init(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        int identifier;
        View viewFindViewById;
        Context context = cinemanaPlayerControllerView.getContext();
        if (context != null && (identifier = context.getResources().getIdentifier("srt_settings_icon", "id", context.getPackageName())) != 0 && (viewFindViewById = cinemanaPlayerControllerView.findViewById(identifier)) != null) {
            viewFindViewById.setOnClickListener(new SrtSettingsClickListener(cinemanaPlayerControllerView));
        }
        applySavedFontSize(cinemanaPlayerControllerView);
        applySavedTranslationY(cinemanaPlayerControllerView);
    }

    public static void savePercent(Context context, int i) {
        Ui8.savePercent(context, i);
    }

    public static void saveTranslationY(Context context, float f) {
        if (context != null) {
            context.getSharedPreferences("cinemana_mod_prefs", 0).edit().putFloat("srt_translation_y", f).apply();
        }
    }

    public static void showDialog(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        Context context = cinemanaPlayerControllerView.getContext();
        if (context != null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(56, 56, 56, 56);
            linearLayout.setBackgroundColor(ThemeEngine142.playerSurface(context));
            int savedPercent = getSavedPercent(context);
            TextView textView = new TextView(context);
            textView.setText(I18n161.t("إعدادات الترجمة SRT"));
            textView.setGravity(17);
            textView.setTextSize(16.0f);
            Typeface typeface = Typeface.DEFAULT_BOLD;
            textView.setTypeface(typeface);
            textView.setTextColor(ThemeEngine142.ink(context));
            textView.setPadding(0, 0, 0, 24);
            linearLayout.addView(textView);
            TextView textView2 = new TextView(context);
            textView2.setGravity(17);
            textView2.setTextSize(24.0f);
            textView2.setTypeface(typeface);
            textView2.setTextColor(ThemeEngine142.ink(context));
            textView2.setText(buildLabelText(savedPercent));
            linearLayout.addView(textView2);
            SeekBar seekBar = new SeekBar(context);
            seekBar.setMax(290);
            int i = savedPercent - 10;
            if (i < 0) {
                i = 0;
            }
            seekBar.setProgress(i);
            seekBar.setOnSeekBarChangeListener(new SrtSizeSeekListener(cinemanaPlayerControllerView, textView2));
            linearLayout.addView(seekBar);
            TextView textView3 = new TextView(context);
            textView3.setText(I18n161.t("موضع الترجمة"));
            textView3.setGravity(17);
            textView3.setTextColor(ThemeEngine142.inkMuted(context));
            textView3.setPadding(20, 20, 20, 20);
            linearLayout.addView(textView3);
            SeekBar seekBar2 = new SeekBar(context);
            seekBar2.setMax(400);
            int savedTranslationY = (int) (getSavedTranslationY(context) + 200.0f);
            if (savedTranslationY < 0) {
                savedTranslationY = 0;
            }
            if (savedTranslationY > 400) {
                savedTranslationY = 400;
            }
            seekBar2.setProgress(savedTranslationY);
            seekBar2.setOnSeekBarChangeListener(new SrtPositionSeekListener(cinemanaPlayerControllerView));
            linearLayout.addView(seekBar2);
            TextView textView4 = new TextView(context);
            textView4.setText(I18n161.t("يطبق التغيير فورياً ويحفظ تلقائياً"));
            textView4.setGravity(17);
            textView4.setTextSize(10.0f);
            textView4.setTextColor(ThemeEngine142.inkMuted(context));
            textView4.setPadding(0, 20, 0, 0);
            linearLayout.addView(textView4);
            Ui7.show(new AlertDialog.Builder(context).setView(linearLayout).setPositiveButton(I18n161.t("إغلاق"), (DialogInterface.OnClickListener) null));
        }
    }
}
