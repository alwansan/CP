package com.shabakaty.cinemana.mod;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.connectsdk.R;
import com.google.android.exoplayer2.ui.PlayerView;
import com.shabakaty.cinemana.ca1.I18n161;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.cinemana.player.CinemanaPlayerView;
import com.shabakaty.downloader.n10;
import com.shabakaty.downloader.s64;

/* JADX INFO: loaded from: classes2.dex */
public final class PlayerEnhancements {
    private static final String PREFS = "cinemana_player_prefs";
    private static final String TAG = "cinemana_multi_skip_button";

    private PlayerEnhancements() {
    }

    private static int dpValue(Context context, int i) {
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private static View findButton(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        return cinemanaPlayerControllerView.findViewWithTag(TAG);
    }

    public static void hideAllPlayerUi(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        n10 binding;
        PlayerView playerView;
        if (cinemanaPlayerControllerView != null) {
            cinemanaPlayerControllerView.setVisibility(8);
            CinemanaPlayerView cinemanaPlayerView = cinemanaPlayerControllerView.getCinemanaPlayerView();
            if (cinemanaPlayerView == null || (binding = cinemanaPlayerView.getBinding()) == null || (playerView = binding.O) == null) {
                return;
            }
            playerView.d();
        }
    }

    public static void hideAllPlayerUiDelayed(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        if (cinemanaPlayerControllerView != null) {
            hideAllPlayerUi(cinemanaPlayerControllerView);
            cinemanaPlayerControllerView.postDelayed(new HidePlayerUiRunnable(cinemanaPlayerControllerView), 50L);
        }
    }

    public static void init(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        if (cinemanaPlayerControllerView.findViewWithTag(TAG) == null) {
            Context context = cinemanaPlayerControllerView.getContext();
            if (context == null) {
                return;
            }
            TextView textView = new TextView(context);
            textView.setTag(TAG);
            textView.setText("⏩︎");
            textView.setGravity(17);
            textView.setTextSize(32.0f);
            textView.setTextColor(-1);
            textView.setBackgroundResource(0);
            textView.setPadding(0, 0, 0, 0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpValue(context, 64), dpValue(context, 64), 85);
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = dpValue(context, 16);
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = dpValue(context, R.styleable.AppCompatTheme_windowFixedHeightMajor);
            textView.setOnClickListener(new PlayerEnhancementClickListener(cinemanaPlayerControllerView));
            cinemanaPlayerControllerView.addView(textView, layoutParams);
        }
        refreshMultiSkipButton(cinemanaPlayerControllerView);
        initPreviewShortcut(cinemanaPlayerControllerView);
    }

    private static void initPreviewShortcut(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        View viewFindViewWithTag = cinemanaPlayerControllerView.findViewWithTag("subtitle_preview_eye");
        if (viewFindViewWithTag != null) {
            viewFindViewWithTag.setOnClickListener(new SubtitlePreviewShortcutClickListener(cinemanaPlayerControllerView));
        }
    }

    private static boolean isEnabled(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        return cinemanaPlayerControllerView.getContext().getSharedPreferences(PREFS, 0).getBoolean("multi_skip_enabled", true);
    }

    public static void performMultiSkip(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        s64 player;
        CinemanaPlayerView cinemanaPlayerView = cinemanaPlayerControllerView.getCinemanaPlayerView();
        if (cinemanaPlayerView == null || (player = cinemanaPlayerView.getPlayer()) == null) {
            return;
        }
        int i = cinemanaPlayerControllerView.getContext().getSharedPreferences(PREFS, 0).getInt("multi_skip_seconds", 85);
        if (i <= 0) {
            i = 85;
        }
        long jC = player.C() + (((long) i) * 1000);
        long jX = player.X();
        if (jC < 0) {
            jC = 0;
        }
        if (jX > 0 && jC > jX) {
            jC = jX;
        }
        player.q(jC);
        showSkipBadge(cinemanaPlayerControllerView, i);
    }

    public static void refreshMultiSkipButton(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        View viewFindButton = findButton(cinemanaPlayerControllerView);
        if (viewFindButton != null) {
            if (isEnabled(cinemanaPlayerControllerView)) {
                viewFindButton.setVisibility(0);
            } else {
                viewFindButton.setVisibility(8);
            }
        }
    }

    public static void showMultiSkipDialog(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        Context context = cinemanaPlayerControllerView.getContext();
        if (context == null) {
            return;
        }
        EditText editText = new EditText(context);
        editText.setTextColor(ThemeEngine142.ink(context));
        editText.setInputType(2);
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS, 0);
        editText.setText(String.valueOf(sharedPreferences.getInt("multi_skip_seconds", 85)));
        Switch r3 = new Switch(context);
        r3.setText(I18n161.t("تفعيل زر ⏩︎"));
        r3.setTextColor(ThemeEngine142.ink(context));
        r3.setChecked(sharedPreferences.getBoolean("multi_skip_enabled", true));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(editText);
        linearLayout.addView(r3);
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(context).setTitle(I18n161.t("التخطي المتعدد")).setView(linearLayout).setPositiveButton(I18n161.t("حفظ"), new MultiSkipSaveListener(context, editText, r3, cinemanaPlayerControllerView));
        positiveButton.setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null);
        Ui7.show(positiveButton);
    }

    private static void showSkipBadge(CinemanaPlayerControllerView cinemanaPlayerControllerView, int i) {
        Context context;
        if (cinemanaPlayerControllerView == null || (context = cinemanaPlayerControllerView.getContext()) == null) {
            return;
        }
        View viewFindViewWithTag = cinemanaPlayerControllerView.findViewWithTag("cinemana_multi_skip_badge");
        if (viewFindViewWithTag != null) {
            cinemanaPlayerControllerView.removeView(viewFindViewWithTag);
        }
        TextView textView = new TextView(context);
        textView.setTag("cinemana_multi_skip_badge");
        textView.setText("+" + String.valueOf(i) + "s");
        textView.setGravity(17);
        textView.setTextSize(14.0f);
        textView.setTextColor(-1);
        textView.setBackgroundColor(1711276032);
        textView.setPadding(6, 6, 6, 6);
        cinemanaPlayerControllerView.addView(textView, new FrameLayout.LayoutParams(dpValue(context, 64), dpValue(context, 36), 17));
        textView.setTranslationY(dpValue(context, -75));
        cinemanaPlayerControllerView.postDelayed(new RemoveSkipBadgeRunnable(cinemanaPlayerControllerView, textView), 600L);
    }

    public static void updateForPlayback(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        View viewFindButton = findButton(cinemanaPlayerControllerView);
        if (viewFindButton == null) {
            return;
        }
        if (isEnabled(cinemanaPlayerControllerView)) {
            viewFindButton.setVisibility(0);
        } else {
            viewFindButton.setVisibility(8);
        }
    }
}
