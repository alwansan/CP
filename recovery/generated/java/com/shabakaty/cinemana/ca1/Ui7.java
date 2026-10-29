package com.shabakaty.cinemana.ca1;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.liulishuo.filedownloader.BuildConfig;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes6.dex */
public final class Ui7 {
    static final int BG = -16051172;
    static final int BORDER = -13352627;
    static final int MUTED = -6575433;
    static final int RED = -2546896;
    static final int SURFACE = -15458519;
    static final int TEXT = -1182986;
    public static Context app;
    static final Handler MAIN = new Handler(Looper.getMainLooper());
    static final Map<Object, String> previous = Collections.synchronizedMap(new WeakHashMap());
    static final Map<Object, SeasonSelection> sessions = Collections.synchronizedMap(new WeakHashMap());
    static final Map<Object, Set<String>> handoffs = Collections.synchronizedMap(new WeakHashMap());

    public static void card(View view) {
        Ui8.card(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void limitDialog(TextView textView) {
        LegacyDialogs144.showDownloadLimit(textView);
    }

    public static void settings(View view) {
        Settings94.settings(view);
        View viewFindViewWithTag = view.findViewWithTag("ca1_download_count");
        if (viewFindViewWithTag instanceof TextView) {
            final TextView textView = (TextView) viewFindViewWithTag;
            updateLimit(textView);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Ui7$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Ui7.limitDialog(textView);
                }
            });
        }
    }

    public static void styleDialog(AlertDialog alertDialog) {
    }

    static Object call(Object obj, String str, Object... objArr) {
        return Enhancements.call(obj, str, objArr);
    }

    static Object get(Object obj, String str) {
        return Enhancements.get(obj, str);
    }

    static String str(Object obj, String str) {
        return Enhancements.str(obj, str);
    }

    static Class<?> type(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    static void log(String str, String str2, Throwable th) {
        Enhancements.log(str, str2, th);
    }

    static int dp(Context context, int i) {
        return (int) ((context.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    static int id(Context context, String str) {
        return context.getResources().getIdentifier(str, "id", context.getPackageName());
    }

    static int icon(Context context, String str) {
        return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
    }

    static Drawable bg(Context context, int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(ThemeEngine142.legacy(context, i));
        gradientDrawable.setCornerRadius(dp(context, 10));
        gradientDrawable.setStroke(dp(context, 1), ThemeEngine142.legacy(BORDER));
        return gradientDrawable;
    }

    static void decorate(View view, int i) {
        view.setBackground(new RippleDrawable(ColorStateList.valueOf(ThemeEngine142.legacy(869868336)), bg(view.getContext(), i), null));
    }

    static TextView text(Context context, String str, int i) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextSize(i);
        textView.setTextColor(ThemeEngine142.legacy(TEXT));
        textView.setGravity(21);
        textView.setPadding(dp(context, 12), dp(context, 8), dp(context, 12), dp(context, 8));
        return textView;
    }

    static Button button(Context context, String str) {
        Button button = new Button(context);
        button.setText(str);
        button.setTextColor(ThemeEngine142.legacy(TEXT));
        button.setTextSize(13.0f);
        button.setAllCaps(false);
        button.setPadding(dp(context, 12), 0, dp(context, 12), 0);
        decorate(button, SURFACE);
        return button;
    }

    static Object make(String str, Object... objArr) throws Exception {
        for (Constructor<?> constructor : type(str).getDeclaredConstructors()) {
            if (constructor.getParameterTypes().length == objArr.length) {
                try {
                    constructor.setAccessible(true);
                    return constructor.newInstance(objArr);
                } catch (IllegalArgumentException e) {
                }
            }
        }
        throw new IllegalArgumentException(str);
    }

    public static void init(Context context) {
        Log94.init(context);
        if (context == null) {
            return;
        }
        app = context.getApplicationContext();
        int iLimit = limit(context);
        call(type("com.shabakaty.downloader.CnmDownloadQueue"), "setMaxParallel", Integer.valueOf(iLimit));
        log("download_limit_restore", "desired=" + iLimit, null);
    }

    public static int limit(Context context) {
        if (context == null) {
            context = app;
        }
        if (context == null) {
            return 2;
        }
        return Math.max(1, Math.min(5, context.getSharedPreferences("ca1_downloads", 0).getInt("parallel", 2)));
    }

    public static int engineLimit() {
        return limit((Context) call(type("com.liulishuo.filedownloader.util.FileDownloadHelper"), "getAppContext", new Object[0]));
    }

    public static boolean resize(Object obj, int i) {
        try {
            int iMax = Math.max(1, Math.min(5, i));
            ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) get(obj, "mThreadPool");
            if (threadPoolExecutor != null && !threadPoolExecutor.isShutdown()) {
                resizePool(threadPoolExecutor, iMax);
                Enhancements.put(obj, "mMaxThreadCount", Integer.valueOf(iMax));
                log("download_limit_applied", "parallel=" + iMax + " active=" + threadPoolExecutor.getActiveCount() + " waiting=" + threadPoolExecutor.getQueue().size(), null);
                return true;
            }
            return false;
        } catch (Throwable th) {
            log("download_limit_error", BuildConfig.FLAVOR, th);
            return false;
        }
    }

    public static void resizePool(ThreadPoolExecutor threadPoolExecutor, int i) {
        if (i > threadPoolExecutor.getMaximumPoolSize()) {
            threadPoolExecutor.setMaximumPoolSize(i);
            threadPoolExecutor.setCorePoolSize(i);
        } else {
            threadPoolExecutor.setCorePoolSize(i);
            threadPoolExecutor.setMaximumPoolSize(i);
        }
    }

    static void updateLimit(TextView textView) {
        textView.setText(I18n161.t("عدد التحميلات     ") + limit(textView.getContext()));
    }

    static /* synthetic */ void lambda$limitDialog$1(RadioGroup radioGroup, Context context, TextView textView, DialogInterface dialogInterface, int i) {
        int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId() - 2131456000;
        if (checkedRadioButtonId < 1 || checkedRadioButtonId > 5) {
            return;
        }
        context.getSharedPreferences("ca1_downloads", 0).edit().putInt("parallel", checkedRadioButtonId).commit();
        call(type("com.shabakaty.downloader.CnmDownloadQueue"), "setMaxParallel", Integer.valueOf(checkedRadioButtonId));
        updateLimit(textView);
        log("download_limit_selected", "desired=" + checkedRadioButtonId, null);
    }

    public static void markPrevious(Object obj, Object obj2) {
        String strValueOf = String.valueOf(call(obj2, "c", new Object[0]));
        previous.put(obj, strValueOf);
        log("previous_episode_requested", "target=" + strValueOf, null);
    }

    public static void navigation(Object obj, Object obj2) {
        String strValueOf = String.valueOf(call(obj2, "c", new Object[0]));
        Map<Object, String> map = previous;
        String str = map.get(obj);
        if (str == null || str.equals(strValueOf)) {
            return;
        }
        map.remove(obj);
    }

    public static void noProgress(Object obj) {
        previous.remove(obj);
    }

    public static long resume(Object obj, long j) {
        Map<Object, String> map = previous;
        String str = map.get(obj);
        Object objCall = call(obj, "getVideoModel", new Object[0]);
        if (str == null || !str.equals(str(objCall, "nb"))) {
            return j;
        }
        map.remove(obj);
        long jMax = Math.max(0L, j - 10000);
        log("previous_episode_resume", "saved_ms=" + j + " resume_ms=" + jMax, null);
        return jMax;
    }

    public static AlertDialog show(AlertDialog.Builder builder) {
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        Dialogs.style(alertDialogCreate);
        styleDialog(alertDialogCreate);
        return alertDialogCreate;
    }

    static void styleTree(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextColor(ThemeEngine142.legacy(TEXT));
            if (view instanceof EditText) {
                decorate(view, BG);
                textView.setHintTextColor(ThemeEngine142.legacy(MUTED));
                view.setPadding(dp(view.getContext(), 12), dp(view.getContext(), 8), dp(view.getContext(), 12), dp(view.getContext(), 8));
            } else if (view instanceof Button) {
                decorate(view, SURFACE);
                textView.setTextSize(13.0f);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup instanceof LinearLayout) {
                viewGroup.setBackgroundColor(ThemeEngine142.legacy(SURFACE));
            }
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                styleTree(viewGroup.getChildAt(i));
            }
        }
    }

    public static final class CachedSeason {
        final List data;

        CachedSeason(List list) {
            this.data = list;
        }

        public List a() {
            return this.data;
        }
    }

    public static final class SeasonVm {
        public final CachedSeason v;

        SeasonVm(List list) {
            this.v = new CachedSeason(list);
        }
    }

    public static final class SeasonSelection {
        boolean active;
        public final Object adapter;
        public final Context context;
        TextView count;
        public final List<Object> episodes;
        public final Object fragment;
        public final View root;
        View toolbar;
        public String filter = BuildConfig.FLAVOR;
        public boolean busy = false;

        SeasonSelection(Object obj, Object obj2, View view, List list) {
            this.fragment = obj;
            this.adapter = obj2;
            this.root = view;
            this.context = view.getContext();
            this.episodes = (List) Ui7.call(Ui7.type("com.shabakaty.cinemana.ca1.BatchDownload"), "episodeList", list);
        }

        public void prioritize() {
        }

        public void refresh() {
            Iterator<Object> it = this.episodes.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (Boolean.TRUE.equals(Ui7.get(it.next(), "selected"))) {
                    i++;
                }
            }
            TextView textView = this.count;
            if (textView != null) {
                textView.setText(i + I18n161.t(" حلقة محددة"));
            }
            Ui7.call(this.adapter, "notifyDataSetChanged", new Object[0]);
            Ui7.log("season_selection", "selected=" + i, null);
        }
    }

    public static void season(final Object obj, final View view) {
        EditText editText = (EditText) view.findViewWithTag("ca1_season_search");
        if (editText == null) {
            return;
        }
        editText.setTextSize(13.0f);
        editText.setCompoundDrawablePadding(dp(view.getContext(), 8));
        Drawable drawable = view.getContext().getDrawable(icon(view.getContext(), "ic_ca1_search"));
        drawable.setBounds(0, 0, dp(view.getContext(), 20), dp(view.getContext(), 20));
        editText.setCompoundDrawables(drawable, null, null, null);
        View viewFindViewWithTag = view.findViewWithTag("ca1_season_select");
        if (viewFindViewWithTag != null) {
            viewFindViewWithTag.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Ui7$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Ui7.nativeMenu(obj, view);
                }
            });
        }
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.shabakaty.cinemana.ca1.Ui7.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                Iterator<Map.Entry<Object, SeasonSelection>> it = Ui7.sessions.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().root == view) {
                        it.remove();
                    }
                }
            }
        });
    }

    static /* synthetic */ void lambda$nativeMenu$4(SeasonSelection seasonSelection, View view, View view2) {
        seasonSelection.active = false;
        view.setVisibility(8);
        Iterator<Object> it = seasonSelection.episodes.iterator();
        while (it.hasNext()) {
            Enhancements.put(it.next(), "selected", false);
        }
        seasonSelection.refresh();
    }

    static /* synthetic */ void lambda$nativeMenu$5(SeasonSelection seasonSelection, DialogInterface dialogInterface, int i) {
        if (i % 2 == 0) {
            Enhancements.range(seasonSelection, i >= 2);
        } else {
            Enhancements.grid(seasonSelection, i >= 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void nativeMenu(Object obj, View view) {
        try {
            Object objCall = call(obj, "h2", new Object[0]);
            Map<Object, SeasonSelection> map = sessions;
            final SeasonSelection seasonSelection = map.get(objCall);
            if (seasonSelection == null) {
                Object objCall2 = call(get(call(obj, "f2", new Object[0]), "j"), "getValue", new Object[0]);
                if ((objCall2 instanceof List) && !((List) objCall2).isEmpty()) {
                    SeasonSelection seasonSelection2 = new SeasonSelection(obj, objCall, view, new ArrayList((List) objCall2));
                    map.put(objCall, seasonSelection2);
                    seasonSelection = seasonSelection2;
                }
                Toast.makeText(view.getContext(), I18n161.t("لم تصل الحلقات بعد"), 0).show();
                return;
            }
            seasonSelection.active = true;
            final View viewFindViewWithTag = view.findViewWithTag("ca1_season_selection_toolbar");
            if (viewFindViewWithTag != null) {
                viewFindViewWithTag.setVisibility(0);
                seasonSelection.toolbar = viewFindViewWithTag;
                seasonSelection.count = (TextView) view.findViewWithTag("ca1_season_selection_count");
                view.findViewWithTag("ca1_season_download_selected").setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Ui7$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        Ui7.openSelected(seasonSelection);
                    }
                });
                view.findViewWithTag("ca1_season_selection_close").setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Ui7$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        Ui7.lambda$nativeMenu$4(seasonSelection, viewFindViewWithTag, view2);
                    }
                });
            }
            seasonSelection.refresh();
            Dialogs.show(new AlertDialog.Builder(seasonSelection.context).setTitle(I18n161.t("التحديد المتعدد")).setItems(new String[]{I18n161.t("تحديد نطاق الحلقات"), I18n161.t("تحديد الحلقات بالمربعات"), I18n161.t("استثناء نطاق الحلقات"), I18n161.t("استثناء الحلقات بالمربعات")}, new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Ui7$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    Ui7.lambda$nativeMenu$5(seasonSelection, dialogInterface, i);
                }
            }));
        } catch (Throwable th) {
            log("season_selection_error", BuildConfig.FLAVOR, th);
            Toast.makeText(view.getContext(), I18n161.t("تعذر فتح التحديد المتعدد"), 0).show();
        }
    }

    static /* synthetic */ void lambda$nativeCard$6(Object obj, SeasonSelection seasonSelection, CompoundButton compoundButton, boolean z) {
        Enhancements.put(obj, "selected", Boolean.valueOf(z));
        seasonSelection.refresh();
    }

    public static void nativeCard(Object obj, Object obj2, int i) {
        final SeasonSelection seasonSelection = sessions.get(obj);
        View view = (View) call(obj2, "getRoot", new Object[0]);
        if (view == null) {
            return;
        }
        View viewFindViewWithTag = view.findViewWithTag("ca1_native_episode_check");
        if (viewFindViewWithTag instanceof CheckBox) {
            CheckBox checkBox = (CheckBox) viewFindViewWithTag;
            final Object obj3 = null;
            checkBox.setOnCheckedChangeListener(null);
            if (seasonSelection == null || !seasonSelection.active) {
                checkBox.setVisibility(8);
                view.setBackgroundColor(ThemeEngine142.legacy(0));
                return;
            }
            List list = (List) get(obj, "a");
            if (list == null || i >= list.size()) {
                return;
            }
            String str = str(list.get(i), "nb");
            for (Object obj4 : seasonSelection.episodes) {
                if (str.equals(str(obj4, "id"))) {
                    obj3 = obj4;
                    break;
                }
            }
            if (obj3 == null) {
                return;
            }
            boolean zEquals = Boolean.TRUE.equals(get(obj3, "selected"));
            checkBox.setVisibility(0);
            checkBox.setButtonTintList(ColorStateList.valueOf(ThemeEngine142.legacy(RED)));
            checkBox.setChecked(zEquals);
            view.setBackgroundColor(ThemeEngine142.legacy(zEquals ? -14083036 : 0));
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.shabakaty.cinemana.ca1.Ui7$$ExternalSyntheticLambda1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    Ui7.lambda$nativeCard$6(obj3, seasonSelection, compoundButton, z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void openSelected(SeasonSelection seasonSelection) {
        try {
            HashSet hashSet = new HashSet();
            for (Object obj : seasonSelection.episodes) {
                if (Boolean.TRUE.equals(get(obj, "selected"))) {
                    hashSet.add(str(obj, "id"));
                }
            }
            if (hashSet.isEmpty()) {
                Toast.makeText(seasonSelection.context, I18n161.t("حدد الحلقات أولًا"), 0).show();
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Object> it = seasonSelection.episodes.iterator();
            while (it.hasNext()) {
                arrayList.add(get(it.next(), "brief"));
            }
            Object objMake = make("com.shabakaty.cinemana.ca1.BatchDownload$Screen", seasonSelection.fragment, new SeasonVm(arrayList), get(call(seasonSelection.fragment, "f2", new Object[0]), "g"), arrayList.get(0), seasonSelection.context);
            handoffs.put(objMake, hashSet);
            call(objMake, "show", new Object[0]);
            log("season_selection_download", "selected=" + hashSet.size(), null);
        } catch (Throwable th) {
            log("season_selection_download_error", BuildConfig.FLAVOR, th);
            Toast.makeText(seasonSelection.context, I18n161.t("تعذر فتح التحميل المحدد"), 0).show();
        }
    }

    public static void restoreSelection(Object obj) {
        Set<String> setRemove = handoffs.remove(obj);
        if (setRemove == null) {
            return;
        }
        for (Object obj2 : (List) get(obj, "episodes")) {
            Enhancements.put(obj2, "selected", Boolean.valueOf(setRemove.contains(str(obj2, "id"))));
        }
        call(obj, "refresh", new Object[0]);
    }
}
