package com.shabakaty.cinemana.local;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
public final class AccountUi {

    public static class Builder extends AlertDialog.Builder {
        public Builder(Context context) {
            super(context);
        }

        @Override // android.app.AlertDialog.Builder
        public AlertDialog show() {
            AlertDialog alertDialogShow = super.show();
            AccountUi.style(alertDialogShow);
            return alertDialogShow;
        }
    }

    static void action(LinearLayout linearLayout, String str, int i, boolean z, final Runnable runnable) {
        Context context = linearLayout.getContext();
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(dp(context, 14), 0, dp(context, 14), 0);
        linearLayout2.setBackground(shape(context, -13618634, 12));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(i);
        imageView.setColorFilter(z ? -38814 : -1);
        linearLayout2.addView(imageView, new LinearLayout.LayoutParams(dp(context, 24), dp(context, 24)));
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(z ? -34960 : -1);
        textView.setTextSize(16.0f);
        textView.setPadding(dp(context, 14), 0, dp(context, 14), 0);
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dp(context, 54));
        layoutParams.topMargin = dp(context, 8);
        linearLayout.addView(linearLayout2, layoutParams);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.local.AccountUi$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
    }

    public static void actions(View view, final Runnable runnable, final Runnable runnable2) {
        Context context = view.getContext();
        final Dialog dialog = new Dialog(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutDirection(1);
        linearLayout.setPadding(dp(context, 18), dp(context, 16), dp(context, 18), dp(context, 24));
        linearLayout.setBackground(shape(context, -14408151, 20));
        TextView textView = new TextView(context);
        textView.setText("خيارات العمل");
        textView.setTextColor(-1);
        textView.setTextSize(19.0f);
        textView.setPadding(dp(context, 8), dp(context, 4), dp(context, 8), dp(context, 16));
        linearLayout.addView(textView);
        action(linearLayout, "تفاصيل العمل", R.drawable.ic_menu_info_details, false, new Runnable() { // from class: com.shabakaty.cinemana.local.AccountUi$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AccountUi.lambda$actions$0(dialog, runnable);
            }
        });
        action(linearLayout, "حذف من أكمل المشاهدة", R.drawable.ic_menu_delete, true, new Runnable() { // from class: com.shabakaty.cinemana.local.AccountUi$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AccountUi.lambda$actions$1(dialog, runnable2);
            }
        });
        action(linearLayout, "إغلاق", R.drawable.ic_menu_close_clear_cancel, false, new Runnable() { // from class: com.shabakaty.cinemana.local.AccountUi$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dialog.dismiss();
            }
        });
        dialog.setContentView(linearLayout);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
            window.setLayout(-1, -2);
            window.setGravity(80);
        }
        dialog.show();
        if (window != null) {
            window.setLayout(-1, -2);
        }
    }

    public static void button(Button button, boolean z) {
        Context context = button.getContext();
        button.setAllCaps(false);
        button.setTextColor(-1);
        button.setTextSize(13.0f);
        button.setMinHeight(dp(context, 46));
        button.setMinimumHeight(dp(context, 46));
        button.setPadding(dp(context, 8), dp(context, 4), dp(context, 8), dp(context, 4));
        button.setBackground(shape(context, z ? -3862004 : -13618634, 12));
        button.setBackgroundTintList(null);
    }

    static void colors(View view) {
        if (view instanceof TextView) {
            ((TextView) view).setTextColor(-1);
            if (view instanceof EditText) {
                ((EditText) view).setHintTextColor(-4867907);
            }
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return;
            }
            colors(viewGroup.getChildAt(i));
            i++;
        }
    }

    public static int dp(Context context, int i) {
        return Math.round(i * context.getResources().getDisplayMetrics().density);
    }

    static void drawIcon(final View view, final String str) {
        view.post(new Runnable() { // from class: com.shabakaty.cinemana.local.AccountUi$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                AccountUi.lambda$drawIcon$5(view, str);
            }
        });
    }

    static /* synthetic */ void lambda$actions$0(Dialog dialog, Runnable runnable) {
        dialog.dismiss();
        runnable.run();
    }

    static /* synthetic */ void lambda$actions$1(Dialog dialog, Runnable runnable) {
        dialog.dismiss();
        runnable.run();
    }

    static /* synthetic */ void lambda$drawIcon$5(View view, String str) {
        try {
            int identifier = view.getResources().getIdentifier(str, "drawable", view.getContext().getPackageName());
            if (identifier == 0) {
                return;
            }
            Drawable drawableMutate = view.getResources().getDrawable(identifier, view.getContext().getTheme()).mutate();
            if (str.equals("ic_watched")) {
                drawableMutate.setTint(-1);
            }
            int iDp = dp(view.getContext(), 30);
            int width = (view.getWidth() - iDp) / 2;
            int height = (view.getHeight() - iDp) / 2;
            drawableMutate.setBounds(width, height, width + iDp, iDp + height);
            view.getOverlay().clear();
            view.getOverlay().add(drawableMutate);
        } catch (Exception e) {
            LocalRuntime.failure("overlay_icon", e);
        }
    }

    static /* synthetic */ void lambda$watched$4(View view) {
        view.getOverlay().clear();
        if (view.getVisibility() == 0) {
            drawIcon(view, "ic_watched");
        }
    }

    static void nativeResume(View view) throws Exception {
        view.getOverlay().clear();
        Drawable drawableMutate = view.getResources().getDrawable(view.getResources().getIdentifier("ic_continue", "drawable", view.getContext().getPackageName()), view.getContext().getTheme()).mutate();
        drawableMutate.setTint(-1);
        Class<?> cls = Class.forName("com.facebook.drawee.drawable.ScalingUtils$ScaleType");
        Object objNewInstance = Class.forName("com.facebook.drawee.drawable.ScaleTypeDrawable").getConstructor(Drawable.class, cls).newInstance(drawableMutate, cls.getField("f").get(null));
        Class<?> cls2 = Class.forName("com.facebook.drawee.generic.GenericDraweeHierarchyBuilder");
        Object objNewInstance2 = cls2.getConstructor(Resources.class).newInstance(view.getResources());
        ArrayList arrayList = new ArrayList();
        arrayList.add(objNewInstance);
        cls2.getField("n").set(objNewInstance2, arrayList);
        view.getClass().getMethod("setHierarchy", Class.forName("com.facebook.drawee.interfaces.DraweeHierarchy")).invoke(view, cls2.getMethod("a", new Class[0]).invoke(objNewInstance2, new Object[0]));
    }

    public static void resume(Object obj, boolean z) {
        try {
            View view = (View) obj.getClass().getField("W").get(obj);
            TextView textView = (TextView) obj.getClass().getField("X").get(obj);
            if (z) {
                view.setVisibility(0);
                textView.setVisibility(0);
                textView.setText("أكمل");
                textView.setTextColor(-1);
                nativeResume(view);
            }
        } catch (Exception e) {
            LocalRuntime.failure("resume_overlay", e);
        }
    }

    public static GradientDrawable shape(Context context, int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(context, i2));
        return gradientDrawable;
    }

    public static void style(AlertDialog alertDialog) {
        Window window = alertDialog.getWindow();
        if (window == null) {
            return;
        }
        window.setBackgroundDrawable(shape(alertDialog.getContext(), -14408151, 18));
        colors(window.getDecorView());
        ListView listView = alertDialog.getListView();
        if (listView != null) {
            listView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.shabakaty.cinemana.local.AccountUi.1
                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewAdded(View view, View view2) {
                    AccountUi.colors(view2);
                }

                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewRemoved(View view, View view2) {
                }
            });
        }
        int[] iArr = {-1, -2, -3};
        for (int i = 0; i < 3; i++) {
            int i2 = iArr[i];
            Button button = alertDialog.getButton(i2);
            if (button != null) {
                button(button, i2 == -1);
            }
        }
    }

    public static void watched(Object obj) {
        try {
            final View view = (View) obj.getClass().getField("Y").get(obj);
            view.post(new Runnable() { // from class: com.shabakaty.cinemana.local.AccountUi$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    AccountUi.lambda$watched$4(view);
                }
            });
        } catch (Exception e) {
            LocalRuntime.failure("watched_overlay", e);
        }
    }
}
