package com.shabakaty.cinemana.ca1;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import com.cinemana.pro.logo.LogoFeature;
import com.connectsdk.R;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class ThemeEngine142 {
    private static volatile Context APP = null;
    private static volatile Activity CURRENT = null;
    public static final int MODE_CLASSIC = 0;
    public static final int MODE_CUSTOM = 3;
    public static final int MODE_HARBOR = 1;
    public static final int MODE_OLED = 2;
    public static final String PREFS = "ca1_theme_engine_142";
    public static final int CINEMANA_RED = Color.rgb(201, 23, 15);
    public static final int CINEMANA_RED_SOFT = Color.rgb(201, 72, 79);
    public static final int HARBOR_CANVAS = Color.rgb(17, 18, 19);
    public static final int HARBOR_SURFACE = Color.rgb(25, 27, 28);
    public static final int HARBOR_ELEVATED = Color.rgb(37, 38, 40);
    public static final int HARBOR_RAISED = Color.rgb(50, 51, 53);
    public static final int HARBOR_INK = Color.rgb(244, 245, 247);
    public static final int HARBOR_INK_MUTED = Color.rgb(163, 165, 166);
    public static final int HARBOR_INK_SUBTLE = Color.rgb(98, 99, R.styleable.AppCompatTheme_switchStyle);
    public static final int HARBOR_EDGE = Color.rgb(60, 61, 63);
    public static final int HARBOR_ACCENT = CINEMANA_RED;
    public static final int HARBOR_DANGER = Color.rgb(197, 54, 55);
    public static final int OLED_CANVAS = Color.rgb(0, 0, 0);
    public static final int OLED_SURFACE = Color.rgb(8, 8, 8);
    public static final int OLED_ELEVATED = Color.rgb(16, 16, 16);
    public static final int OLED_RAISED = Color.rgb(26, 26, 26);
    public static final int OLED_INK = Color.rgb(245, 245, 245);
    public static final int OLED_INK_MUTED = Color.rgb(181, 181, 181);
    public static final int OLED_INK_SUBTLE = Color.rgb(R.styleable.AppCompatTheme_windowFixedWidthMajor, R.styleable.AppCompatTheme_windowFixedWidthMajor, R.styleable.AppCompatTheme_windowFixedWidthMajor);
    public static final int OLED_EDGE = Color.rgb(42, 42, 42);
    public static final int OLED_ACCENT = CINEMANA_RED;
    public static final int OLED_DANGER = Color.rgb(214, 59, 59);
    public static final int CLASSIC_PREVIEW_CANVAS = Color.rgb(3, 15, 23);
    public static final int CLASSIC_PREVIEW_SURFACE = Color.rgb(5, 21, 32);
    public static final int CLASSIC_PREVIEW_ELEVATED = Color.rgb(12, 30, 41);
    public static final int CLASSIC_PREVIEW_INK = Color.rgb(245, 247, 249);
    public static final int CLASSIC_PREVIEW_MUTED = Color.rgb(158, 169, 176);
    public static final int CLASSIC_PREVIEW_EDGE = Color.rgb(40, 58, 70);
    private static final AtomicBoolean INSTALLED = new AtomicBoolean(false);
    private static final CopyOnWriteArrayList<Activity> ACTIVITIES = new CopyOnWriteArrayList<>();

    public static void apply(Activity activity) {
        if (activity != null) {
            CURRENT = activity;
            syncSystemBars(activity);
        }
    }

    public static int getMode(Context context) {
        int i = prefs(context).getInt("mode", 1);
        if (i == 3) {
            i = 1;
        }
        return clamp(i, 0, 2);
    }

    public static String modeName(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return "Dark";
        }
        return mode == 2 ? "OLED" : I18n161.t("الافتراضي");
    }

    public static void setMode(Context context, int i) {
        prefs(context).edit().putInt("mode", clamp(i, 0, 2)).commit();
    }

    private ThemeEngine142() {
    }

    public static void install(Application application) {
        if (application == null) {
            return;
        }
        LogoFeature.init(application);
        StorageMigration151.migrate();
        StorageMaintenance152.scanSoon();
        APP = application;
        if (INSTALLED.compareAndSet(false, true)) {
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.shabakaty.cinemana.ca1.ThemeEngine142.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPreCreated(Activity activity, Bundle bundle) {
                    ThemeEngine142.prepare(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                    if (activity != null && !ThemeEngine142.ACTIVITIES.contains(activity)) {
                        ThemeEngine142.ACTIVITIES.add(activity);
                    }
                    ThemeEngine142.apply(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    StartupUpdate160.lifecycleStarted(activity);
                    ThemeEngine142.apply(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    StartupUpdate160.lifecycleResumed(activity);
                    Activity unused = ThemeEngine142.CURRENT = activity;
                    ThemeEngine142.apply(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    StartupUpdate160.lifecycleStopped(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    ThemeEngine142.ACTIVITIES.remove(activity);
                    if (ThemeEngine142.CURRENT == activity) {
                        Activity unused = ThemeEngine142.CURRENT = null;
                    }
                }
            });
        }
    }

    public static void prepare(Activity activity) {
        String str;
        if (activity == null) {
            return;
        }
        try {
            int mode = getMode(activity);
            if (mode != 0 && isThemeEligible(activity)) {
                String str2 = mode == 2 ? "OLED" : "Harbor";
                String name = activity.getClass().getName();
                if (name.endsWith("SplashActivity")) {
                    str = "AppTheme." + str2 + ".Splash";
                } else if (name.endsWith("VideoPlayerActivity")) {
                    str = "AppTheme." + str2 + ".PlayerTheme";
                } else if (name.endsWith("ExpandedControlsActivity")) {
                    str = "Theme.CastVideosTheme." + str2;
                } else if (name.endsWith("DLNAControlsActivity")) {
                    str = "SwipeBackTransparent." + str2;
                } else {
                    str = "AppTheme." + str2;
                }
                int identifier = activity.getResources().getIdentifier(str, "style", activity.getPackageName());
                if (identifier != 0) {
                    activity.setTheme(identifier);
                }
            }
        } catch (Throwable th) {
        }
    }

    private static boolean isThemeEligible(Activity activity) {
        return activity.getClass().getName().startsWith("com.shabakaty.cinemana.");
    }

    private static int presetStyle(Context context, String str, int i) {
        if (context == null) {
            return i;
        }
        int mode = getMode(context);
        if (mode != 1 && mode != 2 && mode != 3) {
            return i;
        }
        try {
            int identifier = context.getResources().getIdentifier(str + "." + (mode == 2 ? "OLED" : "Harbor"), "style", context.getPackageName());
            return identifier != 0 ? identifier : i;
        } catch (Throwable th) {
            return i;
        }
    }

    public static int dialogStyle(Context context, int i) {
        return presetStyle(context, "DialogTheme", i);
    }

    public static int appStyle(Context context, int i) {
        return presetStyle(context, "AppTheme", i);
    }

    public static boolean isGlassEnabled(Context context) {
        return prefs(context).getBoolean("glass", false);
    }

    public static int getSurfaceOpacity(Context context) {
        return clamp(prefs(context).getInt("opacity", 92), 20, 100);
    }

    public static int getCornerRadiusDp(Context context) {
        return clamp(prefs(context).getInt("radius", 8), 0, 32);
    }

    public static int getBottomNavOpacity(Context context) {
        return clamp(prefs(context).getInt("bottomNavOpacity", 100), 0, 100);
    }

    public static int canvas(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_CANVAS;
        }
        if (mode == 2) {
            return OLED_CANVAS;
        }
        return mode == 3 ? prefs(context).getInt("canvas", HARBOR_CANVAS) : CLASSIC_PREVIEW_CANVAS;
    }

    public static int surface(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_SURFACE;
        }
        if (mode == 2) {
            return OLED_SURFACE;
        }
        return mode == 3 ? prefs(context).getInt("surface", HARBOR_SURFACE) : CLASSIC_PREVIEW_SURFACE;
    }

    public static int elevated(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_ELEVATED;
        }
        if (mode == 2) {
            return OLED_ELEVATED;
        }
        return mode == 3 ? prefs(context).getInt("elevated", HARBOR_ELEVATED) : CLASSIC_PREVIEW_ELEVATED;
    }

    public static int raised(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_RAISED;
        }
        if (mode == 2) {
            return OLED_RAISED;
        }
        return mode == 3 ? prefs(context).getInt("raised", HARBOR_RAISED) : CLASSIC_PREVIEW_ELEVATED;
    }

    public static int ink(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_INK;
        }
        if (mode == 2) {
            return OLED_INK;
        }
        return mode == 3 ? prefs(context).getInt("ink", HARBOR_INK) : CLASSIC_PREVIEW_INK;
    }

    public static int inkMuted(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_INK_MUTED;
        }
        if (mode == 2) {
            return OLED_INK_MUTED;
        }
        return mode == 3 ? prefs(context).getInt("inkMuted", HARBOR_INK_MUTED) : CLASSIC_PREVIEW_MUTED;
    }

    public static int inkSubtle(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_INK_SUBTLE;
        }
        if (mode == 2) {
            return OLED_INK_SUBTLE;
        }
        return mode == 3 ? prefs(context).getInt("inkSubtle", HARBOR_INK_SUBTLE) : CLASSIC_PREVIEW_MUTED;
    }

    public static int edge(Context context) {
        int mode = getMode(context);
        if (mode == 1) {
            return HARBOR_EDGE;
        }
        if (mode == 2) {
            return OLED_EDGE;
        }
        return mode == 3 ? prefs(context).getInt("edge", HARBOR_EDGE) : CLASSIC_PREVIEW_EDGE;
    }

    public static int accent(Context context) {
        int mode = getMode(context);
        if (mode == 2) {
            return OLED_ACCENT;
        }
        return mode == 3 ? prefs(context).getInt("accent", HARBOR_ACCENT) : HARBOR_ACCENT;
    }

    public static int danger(Context context) {
        int mode = getMode(context);
        if (mode == 2) {
            return OLED_DANGER;
        }
        return mode == 3 ? prefs(context).getInt("danger", HARBOR_DANGER) : HARBOR_DANGER;
    }

    public static int topBar(Context context) {
        return getMode(context) == 3 ? prefs(context).getInt("topBar", surface(context)) : surface(context);
    }

    public static int downloadsSurface(Context context) {
        return getMode(context) == 3 ? prefs(context).getInt("downloadsSurface", elevated(context)) : elevated(context);
    }

    public static int playerSurface(Context context) {
        return getMode(context) == 3 ? prefs(context).getInt("playerSurface", elevated(context)) : elevated(context);
    }

    public static int updaterSurface(Context context) {
        return getMode(context) == 3 ? prefs(context).getInt("updaterSurface", elevated(context)) : elevated(context);
    }

    public static int bottomNavSurface(Context context) {
        return getMode(context) == 3 ? prefs(context).getInt("bottomNavSurface", surface(context)) : surface(context);
    }

    public static int updaterRole(Context context, String str, int i) {
        if (context == null || getMode(context) == 0) {
            return i;
        }
        if ("primaryTextColor".equals(str)) {
            return ink(context);
        }
        if ("secondaryTextColor".equals(str)) {
            return inkMuted(context);
        }
        if ("cardBackgroundColor".equals(str) || "backgroundTint".equals(str) || "colorPrimary".equals(str)) {
            return updaterSurface(context);
        }
        return legacy(context, i);
    }

    public static void saveCustom(Context context, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        prefs(context).edit().putInt("mode", 3).putBoolean("glass", z).putInt("opacity", clamp(i, 20, 100)).putInt("radius", clamp(i2, 0, 32)).putInt("bottomNavOpacity", clamp(i3, 0, 100)).putInt("canvas", i4).putInt("surface", i5).putInt("elevated", i6).putInt("raised", i7).putInt("ink", i8).putInt("inkMuted", i9).putInt("inkSubtle", i10).putInt("edge", i11).putInt("accent", i12).putInt("danger", i13).putInt("topBar", i14).putInt("downloadsSurface", i15).putInt("playerSurface", i16).putInt("updaterSurface", i17).putInt("bottomNavSurface", i18).commit();
    }

    public static void resetAll(Context context) {
        prefs(context).edit().clear().commit();
    }

    public static void restartApp(Activity activity) {
        if (activity == null) {
            return;
        }
        Intent launchIntentForPackage = activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        ComponentName component = launchIntentForPackage == null ? null : launchIntentForPackage.getComponent();
        if (component != null) {
            activity.startActivity(Intent.makeRestartActivityTask(component));
            activity.finishAffinity();
            return;
        }
        try {
            activity.recreate();
        } catch (Throwable th) {
        }
    }

    public static void recreateAll(Activity activity) {
        for (Activity activity2 : ACTIVITIES) {
            if (activity2 != null && activity2 != activity) {
                activity2.recreate();
            }
        }
    }

    public static int legacy(Context context, int i) {
        int iCanvas;
        if (context == null || getMode(context) == 0) {
            return i;
        }
        int i2 = (i >>> 24) & 255;
        switch ((-16777216) | i) {
            case -16051944:
                iCanvas = canvas(context);
                break;
            case -16051172:
            case -15458519:
            case -15261913:
            case -14866639:
            case -14865611:
            case -14342868:
            case -14079697:
            case -13882316:
            case -13421767:
                iCanvas = scopedSurface(context, 1);
                break;
            case -15722463:
            case -15656670:
            case -15459292:
            case -15458005:
            case -15263973:
                iCanvas = scopedSurface(context, 0);
                break;
            case -14410976:
            case -14083036:
            case -13360344:
                iCanvas = scopedSurface(context, 2);
                break;
            case -14076865:
            case -13616572:
            case -13352627:
            case -13092800:
            case -13089200:
            case -9469811:
                iCanvas = edge(context);
                break;
            case -6576464:
            case -6575433:
            case -5592406:
            case -5592398:
            case -5194297:
            case -4671294:
            case -4408121:
            case -3682088:
            case -2760730:
                iCanvas = inkMuted(context);
                break;
            case -4710357:
            case -4639170:
            case -2612953:
            case -2546896:
            case -2344384:
            case -2020816:
            case -1097399:
                iCanvas = accent(context);
                break;
            case -2235416:
            case -1973784:
            case -1708557:
            case -1182986:
            case -1117708:
            case -1:
                iCanvas = ink(context);
                break;
            default:
                return i;
        }
        return withAlpha(iCanvas, i2);
    }

    private static int scopedSurface(Context context, int i) {
        String name;
        if (context == null) {
            name = BuildConfig.FLAVOR;
        } else {
            try {
                name = context.getClass().getName();
            } catch (Throwable th) {
            }
        }
        if (!name.contains("DownloadsActivity") && !name.contains("downloads")) {
            if (name.contains("VideoPlayerActivity") || name.contains("player")) {
                return playerSurface(context);
            }
            if (i <= 0) {
                return surface(context);
            }
            return i == 1 ? elevated(context) : raised(context);
        }
        return downloadsSurface(context);
    }

    public static int legacy(int i) {
        Context context = CURRENT != null ? CURRENT : APP;
        return context == null ? i : legacy(context, i);
    }

    public static String hex(int i) {
        return String.format("#%06X", Integer.valueOf(i & 16777215));
    }

    public static int parseColor(String str, int i) {
        String strTrim;
        if (str == null) {
            strTrim = BuildConfig.FLAVOR;
        } else {
            try {
                strTrim = str.trim();
            } catch (Throwable th) {
                return i;
            }
        }
        return Color.parseColor(strTrim);
    }

    private static void syncSystemBars(Activity activity) {
        try {
            Window window = activity.getWindow();
            if (window == null) {
                return;
            }
            int iCanvas = canvas(activity);
            window.setStatusBarColor(iCanvas);
            window.setNavigationBarColor(iCanvas);
            View decorView = window.getDecorView();
            if (decorView != null) {
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8209));
            }
        } catch (Throwable th) {
        }
    }

    private static void styleChromeTree(Context context, View view) {
        if (view == null) {
            return;
        }
        String name = view.getClass().getName();
        String resourceEntryName = BuildConfig.FLAVOR;
        String name2 = context == null ? BuildConfig.FLAVOR : context.getClass().getName();
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : BuildConfig.FLAVOR;
        try {
            int id = view.getId();
            if (id != -1) {
                resourceEntryName = view.getResources().getResourceEntryName(id);
            }
        } catch (Throwable th) {
        }
        if (name.contains("Toolbar") || resourceEntryName.contains("toolbar") || resourceEntryName.contains("app_bar")) {
            view.setBackgroundColor(topBar(context));
            invokeColor(view, "setTitleTextColor", ink(context));
            invokeColor(view, "setSubtitleTextColor", inkMuted(context));
        }
        if (name.contains("BottomNavigationView") || name.contains("NavigationBarView") || resourceEntryName.contains("bottom_nav")) {
            view.setBackgroundColor(withAlpha(bottomNavSurface(context), Math.round((getBottomNavOpacity(context) / 100.0f) * 255.0f)));
            applyNavigationTint(view, inkMuted(context), accent(context));
        }
        if (name2.contains("DownloadsActivity")) {
            if (name.contains("CardView")) {
                invokeColor(view, "setCardBackgroundColor", downloadsSurface(context));
            }
            if (str.startsWith("layout/item_download") && (view instanceof ViewGroup)) {
                view.setBackground(makeSurface(context, downloadsSurface(context)));
            }
        }
        if (name2.contains("VideoPlayerActivity") && str.startsWith("ca1_") && (view instanceof ViewGroup)) {
            view.setBackground(makeSurface(context, playerSurface(context)));
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                styleChromeTree(context, viewGroup.getChildAt(i));
            }
        }
    }

    private static void styleTree(Context context, View view, int i, int i2, int i3, int i4, int i5) {
        if (view == null) {
            return;
        }
        String name = view.getClass().getName();
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : BuildConfig.FLAVOR;
        int iSurfaceWithOpacity = isGlassEnabled(context) ? surfaceWithOpacity(context, i) : i;
        int iSurfaceWithOpacity2 = isGlassEnabled(context) ? surfaceWithOpacity(context, i2) : i2;
        if (name.contains("Toolbar")) {
            view.setBackgroundColor(iSurfaceWithOpacity);
            invokeColor(view, "setTitleTextColor", i3);
            invokeColor(view, "setSubtitleTextColor", i4);
        } else if (name.contains("BottomNavigationView") || name.contains("NavigationBarView")) {
            view.setBackgroundColor(iSurfaceWithOpacity);
            applyNavigationTint(view, i4, i5);
        } else if (name.contains("CardView")) {
            invokeColor(view, "setCardBackgroundColor", iSurfaceWithOpacity2);
            invokeFloat(view, "setRadius", dp(context, getCornerRadiusDp(context)));
        } else if (str.startsWith("ca1_") && ((view instanceof ViewGroup) || (view instanceof EditText) || name.contains("ImageButton"))) {
            view.setBackground(makeSurface(context, iSurfaceWithOpacity));
        }
        if (view instanceof EditText) {
            EditText editText = (EditText) view;
            editText.setTextColor(i3);
            editText.setHintTextColor(i4);
        } else if (view instanceof Switch) {
            ((Switch) view).setTextColor(i3);
            applySwitchTint(view, i4, i5);
        } else if (view instanceof Button) {
            ((Button) view).setTextColor(i3);
        } else if (view instanceof TextView) {
            ((TextView) view).setTextColor(i3);
        }
        if (view instanceof SeekBar) {
            applySeekTint(view, i5);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i6 = 0; i6 < viewGroup.getChildCount(); i6++) {
                styleTree(context, viewGroup.getChildAt(i6), i, i2, i3, i4, i5);
            }
        }
    }

    public static GradientDrawable makeSurface(Context context, int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(context, getCornerRadiusDp(context)));
        return gradientDrawable;
    }

    public static int surfaceWithOpacity(Context context, int i) {
        return withAlpha(i, Math.round((getSurfaceOpacity(context) / 100.0f) * 255.0f));
    }

    private static void applyNavigationTint(View view, int i, int i2) {
        try {
            ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i});
            view.getClass().getMethod("setItemIconTintList", ColorStateList.class).invoke(view, colorStateList);
            view.getClass().getMethod("setItemTextColor", ColorStateList.class).invoke(view, colorStateList);
        } catch (Throwable th) {
        }
    }

    private static void applySeekTint(View view, int i) {
        try {
            ColorStateList colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{i});
            view.getClass().getMethod("setProgressTintList", ColorStateList.class).invoke(view, colorStateList);
            view.getClass().getMethod("setThumbTintList", ColorStateList.class).invoke(view, colorStateList);
        } catch (Throwable th) {
        }
    }

    private static void applySwitchTint(View view, int i, int i2) {
        try {
            int[][] iArr = {new int[]{android.R.attr.state_checked}, new int[0]};
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{i2, i});
            ColorStateList colorStateList2 = new ColorStateList(iArr, new int[]{withAlpha(i2, R.styleable.AppCompatTheme_textColorAlertDialogListItem), withAlpha(i, 80)});
            view.getClass().getMethod("setThumbTintList", ColorStateList.class).invoke(view, colorStateList);
            view.getClass().getMethod("setTrackTintList", ColorStateList.class).invoke(view, colorStateList2);
        } catch (Throwable th) {
        }
    }

    private static void invokeColor(View view, String str, int i) {
        try {
            view.getClass().getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(i));
        } catch (Throwable th) {
        }
    }

    private static void invokeFloat(View view, String str, float f) {
        try {
            view.getClass().getMethod(str, Float.TYPE).invoke(view, Float.valueOf(f));
        } catch (Throwable th) {
        }
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, 0);
    }

    public static int withAlpha(int i, int i2) {
        return (i & 16777215) | ((clamp(i2, 0, 255) & 255) << 24);
    }

    public static float dp(Context context, int i) {
        return i * context.getResources().getDisplayMetrics().density;
    }

    private static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }
}
