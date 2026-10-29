package com.shabakaty.cinemana.ca1;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class Ui8 {
    static final float BASE = 20.0f;
    static final String KEY = "ca1_subtitle_sp";
    static final Map<SubtitleView, Boolean> views = new WeakHashMap();
    static final Map<View, Boolean> pages = new WeakHashMap();
    static final Map<Context, Float> initialScale = new WeakHashMap();

    static SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences("cinemana_mod_prefs", 0);
    }

    public static float clamp(float f) {
        return (Float.isNaN(f) || Float.isInfinite(f)) ? BASE : Math.max(2.0f, Math.min(100.0f, f));
    }

    public static float nativeSp(float f) {
        return clamp(f * 14.0f);
    }

    public static float percentSp(int i) {
        return clamp((i * BASE) / 100.0f);
    }

    static float read(Context context) {
        SharedPreferences sharedPreferencesPrefs = prefs(context);
        boolean zContains = sharedPreferencesPrefs.contains(KEY);
        float fFloatValue = BASE;
        if (zContains) {
            return clamp(sharedPreferencesPrefs.getFloat(KEY, BASE));
        }
        if (sharedPreferencesPrefs.contains("srt_font_size")) {
            float fPercentSp = percentSp(Math.round(sharedPreferencesPrefs.getFloat("srt_font_size", 100.0f)));
            sharedPreferencesPrefs.edit().putFloat(KEY, fPercentSp).commit();
            Ui7.log("subtitle_size_migrate", "sp=" + fPercentSp, null);
            return fPercentSp;
        }
        Map<Context, Float> map = initialScale;
        synchronized (map) {
            Float f = map.get(context.getApplicationContext());
            if (f != null) {
                fFloatValue = f.floatValue();
            }
        }
        return fFloatValue;
    }

    static void save(Context context, float f, String str) {
        if (context == null) {
            return;
        }
        float fClamp = clamp(f);
        prefs(context).edit().putFloat(KEY, fClamp).putFloat("srt_font_size", (fClamp / BASE) * 100.0f).commit();
        Ui7.log("subtitle_size_save", "source=" + str + " sp=" + fClamp, null);
        refresh();
    }

    public static int percent(Context context) {
        return Math.round((read(context) / BASE) * 100.0f);
    }

    public static void savePercent(Context context, int i) {
        save(context, percentSp(i), "SRT");
    }

    public static void resetSize() {
        save(Ui7.app, nativeSp(2.2f), "reset");
    }

    public static void saveNative(Object obj, Object obj2) {
        try {
            Object obj3 = Ui7.get(obj2, "a");
            if (obj3 instanceof Number) {
                save(Ui7.app, nativeSp(((Number) obj3).floatValue()), "native");
            }
        } catch (Throwable th) {
            Ui7.log("subtitle_size_error", "save_native", th);
        }
    }

    public static void prepare(SubtitleView subtitleView) {
        if (subtitleView == null) {
            return;
        }
        Map<SubtitleView, Boolean> map = views;
        synchronized (map) {
            map.put(subtitleView, true);
        }
        float f = read(subtitleView.getContext()) * subtitleView.getResources().getDisplayMetrics().scaledDensity;
        if (subtitleView.t != 2 || Math.abs(subtitleView.u - f) > 0.01f || subtitleView.x) {
            Ui7.log("subtitle_size_apply", "sp=" + read(subtitleView.getContext()) + " px=" + f, null);
        }
        subtitleView.t = 2;
        subtitleView.u = f;
        subtitleView.x = false;
    }

    public static void fixed(SubtitleView subtitleView, float f) {
        prepare(subtitleView);
        if (subtitleView != null) {
            subtitleView.c();
        }
    }

    public static void restoreNative(SubtitleView subtitleView, float f) {
        if (subtitleView == null) {
            return;
        }
        SharedPreferences sharedPreferencesPrefs = prefs(subtitleView.getContext());
        if (!sharedPreferencesPrefs.contains(KEY) && !sharedPreferencesPrefs.contains("srt_font_size")) {
            Map<Context, Float> map = initialScale;
            synchronized (map) {
                map.put(subtitleView.getContext().getApplicationContext(), Float.valueOf(nativeSp(f)));
            }
        }
        fixed(subtitleView, 0.0f);
    }

    public static void restoreController(Object obj) {
        Object objCall = Ui7.call(obj, "getSubtitleLayout", new Object[0]);
        if (objCall instanceof SubtitleView) {
            fixed((SubtitleView) objCall, 0.0f);
        }
    }

    public static void applyPercent(Object obj, int i) {
        if (obj instanceof View) {
            savePercent(((View) obj).getContext(), i);
            restoreController(obj);
        }
    }

    static void refresh() {
        ArrayList<SubtitleView> arrayList;
        ArrayList<View> arrayList2;
        Map<SubtitleView, Boolean> map = views;
        synchronized (map) {
            arrayList = new ArrayList(map.keySet());
        }
        for (final SubtitleView subtitleView : arrayList) {
            if (subtitleView != null) {
                subtitleView.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Ui8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Ui8.fixed(subtitleView, 0.0f);
                    }
                });
            }
        }
        Map<View, Boolean> map2 = pages;
        synchronized (map2) {
            arrayList2 = new ArrayList(map2.keySet());
        }
        for (final View view : arrayList2) {
            if (view != null) {
                view.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Ui8$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Ui8.sizeLabel(view);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sizeLabel(View view) {
        View viewFindViewById = view.findViewById(view.getResources().getIdentifier("settings_subtitles_size", "id", view.getContext().getPackageName()));
        if (viewFindViewById instanceof TextView) {
            String str = percent(view.getContext()) + I18n161.t("% · حجم ثابت");
            TextView textView = (TextView) viewFindViewById;
            if (str.contentEquals(textView.getText())) {
                return;
            }
            textView.setText(str);
        }
    }

    public static void subtitlePage(View view) {
        Map<View, Boolean> map = pages;
        synchronized (map) {
            map.put(view, true);
        }
        sizeLabel(view);
    }

    public static Integer[] seekValues() {
        return new Integer[]{2, 3, 5, 10, 15, 20, 25, 30, 45, 60};
    }

    public static void landscape(Activity activity, Bundle bundle) {
        if (bundle == null) {
            activity.setRequestedOrientation(6);
        }
    }

    public static void card(View view) {
        try {
            Object tag = view.getTag();
            if (tag == null) {
                return;
            }
            TextView textView = (TextView) Ui7.get(tag, "sub");
            TextView textView2 = (TextView) Ui7.get(tag, "title");
            LinearLayout linearLayout = (LinearLayout) Ui7.get(tag, "info");
            if (textView != null && linearLayout != null) {
                String string = textView.getText().toString();
                Matcher matcher = Pattern.compile("(?:الحلقة|ح)\\s*([0-9٠-٩۰-۹]+)").matcher(string);
                if (matcher.find()) {
                    String strGroup = matcher.group(1);
                    String strReplaceFirst = (string.substring(0, matcher.start()) + string.substring(matcher.end()).replaceFirst("^\\s*·?\\s*", BuildConfig.FLAVOR)).replaceFirst("^م\\s*([0-9٠-٩۰-۹]+)", "S$1");
                    strReplaceFirst.split("\\n", 2);
                    TextView textViewText = (TextView) linearLayout.findViewWithTag("ca1_episode_rtl");
                    if (textViewText == null) {
                        textViewText = Ui7.text(view.getContext(), BuildConfig.FLAVOR, 16);
                        textViewText.setTag("ca1_episode_rtl");
                        textViewText.setGravity(8388627);
                        textViewText.setTextDirection(5);
                        I18n161.applyDir(textViewText);
                        textViewText.setTypeface(null, 1);
                        textViewText.setSingleLine(true);
                        textViewText.setPadding(Ui7.dp(view.getContext(), 6), 0, Ui7.dp(view.getContext(), 6), 0);
                        linearLayout.addView(textViewText, linearLayout.indexOfChild(textView2) + 1, new LinearLayout.LayoutParams(-1, -2));
                    }
                    textViewText.setText(I18n161.t("الحلقة: \u2066") + strGroup + "\u2069");
                    textViewText.setTextSize(strGroup.length() > 7 ? 13.0f : 16.0f);
                    textView.setText(strReplaceFirst);
                    textView.setTextSize(12.0f);
                    textView.setGravity(3);
                    textView.setTextDirection(3);
                    textView2.setTextSize(12.0f);
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams != null) {
                        layoutParams.height = Ui7.dp(view.getContext(), 76);
                        view.setLayoutParams(layoutParams);
                    }
                }
            }
        } catch (Throwable th) {
            Ui7.log("episode_card_rtl_error", BuildConfig.FLAVOR, th);
        }
    }
}
