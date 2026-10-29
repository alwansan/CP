package com.shabakaty.cinemana.ca1;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class StartupUpdate160 {
    static final String KEY_NEVER = "never_show";
    static final String PREFS = "ca1_startup_update160";
    static final AtomicBoolean running = new AtomicBoolean(false);
    static int started = 0;
    static boolean pending = true;

    final class Later implements Runnable {
        final Activity activity;
        final CheckBox checkbox;
        final Dialog dialog;

        Later(Dialog dialog, Activity activity, CheckBox checkBox) {
            this.dialog = dialog;
            this.activity = activity;
            this.checkbox = checkBox;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.checkbox.isChecked()) {
                StartupUpdate160.neverAgain(this.activity);
            }
            this.dialog.dismiss();
            StartupUpdate160.finish();
        }
    }

    final class Prompt implements Runnable {
        final Activity activity;
        final AppUpdater133.Update update;

        Prompt(Activity activity, AppUpdater133.Update update) {
            this.activity = activity;
            this.update = update;
        }

        @Override // java.lang.Runnable
        public void run() {
            StartupUpdate160.showPrompt(this.activity, this.update);
        }
    }

    final class Trigger implements Runnable {
        final Activity activity;

        Trigger(Activity activity) {
            this.activity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Activity activity = this.activity;
                View viewFindViewWithTag = activity.getWindow().getDecorView().findViewWithTag("ca1_update_check135");
                if (viewFindViewWithTag != null) {
                    viewFindViewWithTag.performClick();
                } else {
                    AppUpdater133.check(activity, null, null);
                }
            } catch (Exception unused) {
            }
        }
    }

    final class UpdateAction implements Runnable {
        final Activity activity;
        final Dialog dialog;

        UpdateAction(Dialog dialog, Activity activity) {
            this.dialog = dialog;
            this.activity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.dialog.dismiss();
            StartupUpdate160.finish();
            StartupUpdate160.openManual(this.activity);
        }
    }

    final class Worker implements Runnable {
        final Activity activity;

        Worker(Activity activity) {
            this.activity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AppUpdater133.Update updateFetchRelease = AppUpdater133.fetchRelease();
                Activity activity = this.activity;
                if (AppUpdater133.isNewRelease(activity, updateFetchRelease)) {
                    activity.runOnUiThread(new Prompt(activity, updateFetchRelease));
                } else {
                    StartupUpdate160.finish();
                }
            } catch (Exception e) {
                StartupUpdate160.finish();
            }
        }
    }

    private StartupUpdate160() {
    }

    public static void check(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.getSharedPreferences(PREFS, 0).getBoolean(KEY_NEVER, false) || !running.compareAndSet(false, true)) {
            return;
        }
        try {
            AppUpdater133.worker.execute(new Worker(activity));
        } catch (Exception e) {
            finish();
        }
    }

    static void finish() {
        running.set(false);
    }

    public static void lifecycleResumed(Activity activity) {
        if (activity != null && (activity instanceof HomeActivity) && pending) {
            pending = false;
            check(activity);
        }
    }

    public static void lifecycleStarted(Activity activity) {
        int i = started;
        if (i == 0) {
            pending = true;
        }
        started = i + 1;
    }

    public static void lifecycleStopped(Activity activity) {
        int i = started;
        if (i > 0) {
            started = i - 1;
        } else {
            started = 0;
        }
    }

    static void neverAgain(Activity activity) {
        activity.getSharedPreferences(PREFS, 0).edit().putBoolean(KEY_NEVER, true).apply();
    }

    static void openManual(Activity activity) {
        try {
            if (!(activity instanceof HomeActivity)) {
                AppUpdater133.check(activity, null, null);
            } else {
                ((HomeActivity) activity).m0().setSelectedItemId(R.id.navigation_profile);
                new Handler(Looper.getMainLooper()).postDelayed(new Trigger(activity), 600L);
            }
        } catch (Exception e) {
            try {
                AppUpdater133.check(activity, null, null);
            } catch (Exception unused) {
            }
        }
    }

    static void showPrompt(Activity activity, AppUpdater133.Update update) {
        if (activity != null && !activity.isFinishing()) {
            try {
                Dialog dialog = (Dialog) AppUpdater133.createDialog(activity);
                dialog.setCancelable(false);
                dialog.setCanceledOnTouchOutside(false);
                LinearLayout linearLayout = (LinearLayout) AppUpdater133.makeColumn(activity, 22, 18);
                AppUpdater133.addText(activity, linearLayout, I18n161.t("هناك تحديث"), 22, true, 17);
                CheckBox checkBox = new CheckBox(activity);
                checkBox.setText(I18n161.t("لا تعرض ثانية"));
                checkBox.setTextSize(16.0f);
                checkBox.setTextColor(AppUpdater133.color(activity, "primaryTextColor", -723724));
                checkBox.setGravity(8388613);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.topMargin = AppUpdater133.dp(activity, 6);
                linearLayout.addView(checkBox, layoutParams);
                LinearLayout linearLayout2 = new LinearLayout(activity);
                linearLayout2.setOrientation(0);
                linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
                View view = (View) AppUpdater133.addAction(activity, linearLayout2, I18n161.t("لاحقًا"));
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams2.width = 0;
                layoutParams2.weight = 1.0f;
                view.setLayoutParams(layoutParams2);
                View view2 = (View) AppUpdater133.addAction(activity, linearLayout2, I18n161.t("تحديث"));
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                layoutParams3.width = 0;
                layoutParams3.weight = 1.0f;
                view2.setLayoutParams(layoutParams3);
                AppUpdater133.setClick(view, new Later(dialog, activity, checkBox));
                AppUpdater133.setClick(view2, new UpdateAction(dialog, activity));
                AppUpdater133.showDialog(dialog, linearLayout);
                return;
            } catch (Exception e) {
            }
        }
        finish();
    }
}
