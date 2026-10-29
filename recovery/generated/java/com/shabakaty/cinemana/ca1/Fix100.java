package com.shabakaty.cinemana.ca1;

import android.R;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class Fix100 {
    private static final WeakHashMap<Object, View> headers = new WeakHashMap<>();

    public static void hide(Object obj) {
        View viewRemove = headers.remove(obj);
        if (viewRemove == null || !(viewRemove.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) viewRemove.getParent()).removeView(viewRemove);
    }

    public static void show(final Object obj) {
        try {
            hide(obj);
            View view = (View) R94.call(obj, "getView", new Object[0]);
            if (view == null) {
                return;
            }
            final Context context = view.getContext();
            View viewNearestToolbar = nearestToolbar(view, context.getResources().getIdentifier("main_nav_toolbar", "id", context.getPackageName()));
            if (viewNearestToolbar instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) viewNearestToolbar;
                View viewFindViewWithTag = viewGroup.findViewWithTag("ca1_download_actions100");
                if (viewFindViewWithTag != null) {
                    viewGroup.removeView(viewFindViewWithTag);
                }
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setTag("ca1_download_actions100");
                linearLayout.setOrientation(0);
                I18n161.applyDir(linearLayout);
                ImageButton imageButtonButton = button(context, I18n161.t("فرز التنزيلات"));
                imageButtonButton.setImageResource(R.drawable.ic_menu_sort_by_size);
                imageButtonButton.setColorFilter(ThemeEngine142.legacy(-1));
                imageButtonButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Fix100.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        try {
                            R94.call(Class.forName("com.shabakaty.cinemana.ca1.Enhancements"), "sortPopup", context, view2);
                        } catch (Exception e) {
                        }
                    }
                });
                ImageButton imageButtonButton2 = button(context, I18n161.t("حذف متعدد"));
                imageButtonButton2.setImageDrawable(new Native98.Trash());
                imageButtonButton2.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Fix100.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Native98.lambda$header$1(context, view2);
                    }
                });
                linearLayout.addView(imageButtonButton, new LinearLayout.LayoutParams(dp(context, 48), dp(context, 48)));
                linearLayout.addView(imageButtonButton2, new LinearLayout.LayoutParams(dp(context, 48), dp(context, 48)));
                Class<?> cls = Class.forName("androidx.appcompat.widget.Toolbar$e");
                ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) cls.getConstructor(Integer.TYPE, Integer.TYPE).newInstance(Integer.valueOf(dp(context, 96)), Integer.valueOf(dp(context, 48)));
                cls.getField("a").setInt(layoutParams, 19);
                viewGroup.addView(linearLayout, layoutParams);
                headers.put(obj, linearLayout);
                view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.shabakaty.cinemana.ca1.Fix100.3
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view2) {
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view2) {
                        Fix100.hide(obj);
                        view2.removeOnAttachStateChangeListener(this);
                    }
                });
                Log.i("Cinemana101", "downloads actions host=" + context.getResources().getResourceEntryName(viewNearestToolbar.getId()));
            }
        } catch (Exception e) {
            Log.e("Cinemana100", "downloads actions", e);
        }
    }

    static View nearestToolbar(View view, int i) {
        Context context = view.getContext();
        int identifier = context.getResources().getIdentifier("downloads_toolbar", "id", context.getPackageName());
        int identifier2 = context.getResources().getIdentifier("fragment_container", "id", context.getPackageName());
        View view2 = view;
        while (view2 != null && view2 != view.getRootView() && (identifier2 == 0 || view2.getId() != identifier2)) {
            View viewFindViewById = identifier == 0 ? null : view2.findViewById(identifier);
            if (viewFindViewById instanceof ViewGroup) {
                return viewFindViewById;
            }
            View viewFindViewById2 = i == 0 ? null : view2.findViewById(i);
            if (viewFindViewById2 instanceof ViewGroup) {
                return viewFindViewById2;
            }
            view2 = view2.getParent() instanceof View ? (View) view2.getParent() : null;
        }
        return null;
    }

    private static int dp(Context context, int i) {
        return (int) ((context.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    private static ImageButton button(Context context, String str) {
        ImageButton imageButton = new ImageButton(context);
        imageButton.setContentDescription(str);
        imageButton.setBackgroundColor(ThemeEngine142.legacy(0));
        int iDp = dp(context, 12);
        imageButton.setPadding(iDp, iDp, iDp, iDp);
        return imageButton;
    }
}
