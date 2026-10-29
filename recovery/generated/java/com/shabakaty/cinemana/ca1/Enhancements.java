package com.shabakaty.cinemana.ca1;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.connectsdk.service.NetcastTVService;
import com.liulishuo.filedownloader.BuildConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import zendesk.core.ZendeskBlipsProvider;

/* JADX INFO: loaded from: classes6.dex */
public final class Enhancements {
    static Context app;
    static final Handler MAIN = new Handler(Looper.getMainLooper());
    static final Map<Object, State> STATES = Collections.synchronizedMap(new WeakHashMap());
    static final Map<String, String> ROOTS = new ConcurrentHashMap();
    static final Set<String> LOOKUPS = Collections.synchronizedSet(new HashSet());
    static final ExecutorService NAMES = Executors.newFixedThreadPool(2, new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda4
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Enhancements.lambda$static$11(runnable);
        }
    });
    static int mode = 0;
    static boolean descending = false;

    static Button button(Context context, String str) {
        Button button = new Button(context);
        button.setText(str);
        button.setTextColor(ThemeEngine142.ink(context));
        button.setTextSize(13.0f);
        button.setAllCaps(false);
        int iDp = dp(context, 12);
        button.setPadding(iDp, 0, iDp, 0);
        decorate(button, -15458519, -13616572);
        return button;
    }

    public static void card(View view) {
        cardBase(view);
        Ui7.card(view);
    }

    static void installSortHeader(View view) {
        Download94.install(view);
    }

    public static void season(Object obj, View view) {
        seasonBase(obj, view);
        Ui7.season(obj, view);
    }

    static GradientDrawable surface(Context context, int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(ThemeEngine142.legacy(context, i));
        gradientDrawable.setCornerRadius(dp(context, 6));
        gradientDrawable.setStroke(dp(context, 1), ThemeEngine142.legacy(context, i2));
        return gradientDrawable;
    }

    static Object get(Object obj, String str) {
        try {
            for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    Field declaredField = superclass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    return declaredField.get(obj);
                } catch (NoSuchFieldException e) {
                }
            }
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    static void put(Object obj, String str, Object obj2) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (Exception e) {
            log("field_error", str, e);
        }
    }

    static Object call(Object obj, String str, Object... objArr) {
        try {
            for (Class<?> superclass = obj instanceof Class ? (Class) obj : obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                for (Method method : superclass.getDeclaredMethods()) {
                    if (method.getName().equals(str) && method.getParameterTypes().length == objArr.length) {
                        try {
                            method.setAccessible(true);
                            return method.invoke(obj instanceof Class ? null : obj, objArr);
                        } catch (IllegalArgumentException e) {
                        }
                    }
                }
            }
        } catch (Exception e2) {
            log("call_error", str, e2);
        }
        return null;
    }

    static void initLog(Context context) {
        try {
            call(Class.forName("com.shabakaty.cinemana.ca1.BatchLog"), ZendeskBlipsProvider.ACTION_CORE_INIT, context);
        } catch (Exception e) {
            Log.e("CA1_BATCH", "Log initialization", e);
        }
    }

    static void log(String str, String str2, Throwable th) {
        try {
            Class.forName("com.shabakaty.cinemana.ca1.BatchLog").getDeclaredMethod(NetcastTVService.UDAP_API_EVENT, String.class, String.class, String.class, Throwable.class).invoke(null, "enhancements", str, str2, th);
        } catch (Exception e) {
            Log.e("CA1_BATCH", str + " " + str2, th);
        }
    }

    static String str(Object obj, String str) {
        Object obj2 = get(obj, str);
        return obj2 == null ? BuildConfig.FLAVOR : String.valueOf(obj2);
    }

    static String num(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.trim().toCharArray()) {
            int iDigit = Character.digit(c, 10);
            if (iDigit < 0) {
                return "!";
            }
            sb.append(iDigit);
        }
        return sb.length() == 0 ? BuildConfig.FLAVOR : new BigInteger(sb.toString()).toString();
    }

    static int dp(Context context, int i) {
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    static GradientDrawable bg(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(ThemeEngine142.legacy(i));
        gradientDrawable.setCornerRadius(10.0f);
        return gradientDrawable;
    }

    static EditText search(Context context) {
        EditText editText = new EditText(context);
        editText.setSingleLine(true);
        editText.setInputType(2);
        editText.setTextColor(ThemeEngine142.legacy(-1));
        editText.setHintTextColor(ThemeEngine142.legacy(-5592398));
        editText.setTextSize(14.0f);
        editText.setHint(I18n161.t("البحث برقم الحلقة بالضبط"));
        editText.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_menu_search, 0, 0, 0);
        editText.setCompoundDrawablePadding(dp(context, 8));
        editText.setBackground(surface(context, -15261913, -13616572));
        editText.setPadding(dp(context, 12), 0, dp(context, 12), 0);
        return editText;
    }

    public static void install(Object obj, View view) {
        Context applicationContext = view.getContext().getApplicationContext();
        app = applicationContext;
        initLog(applicationContext);
        mode = app.getSharedPreferences("ca1_sort", 0).getInt("mode", 0);
        descending = app.getSharedPreferences("ca1_sort", 0).getBoolean("descending", false);
        loadNames();
        log("entry_install", "root=" + view.getClass().getName(), null);
        tick(obj, view, 0);
    }

    static /* synthetic */ void lambda$tick$0(boolean z, Object obj, View view) {
        if (z) {
            try {
                call(Class.forName("com.shabakaty.cinemana.ca1.BatchDownload"), "lambda$install$7", obj, view);
            } catch (Exception e) {
                log("entry_open_error", BuildConfig.FLAVOR, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void tick(final Object obj, final View view, final int i) {
        boolean z = false;
        if (call(obj, "getView", new Object[0]) != view) {
            return;
        }
        Context context = view.getContext();
        View viewFindViewById = view.findViewById(context.getResources().getIdentifier("ca1_batch_download", "id", context.getPackageName()));
        Object objCall = call(obj, "c2", new Object[0]);
        Object objCall2 = call(objCall, "v", new Object[0]);
        Object objCall3 = call(get(objCall, "v"), "a", new Object[0]);
        boolean z2 = objCall3 instanceof List;
        final boolean z3 = z2 && !((List) objCall3).isEmpty();
        boolean zEquals = "2".equals(str(objCall2, "kind"));
        if (zEquals) {
            resolveName(get(objCall, "h"), objCall2);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(zEquals ? 0 : 8);
            viewFindViewById.setEnabled(z3);
            viewFindViewById.setAlpha(z3 ? 1.0f : 0.6f);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Enhancements.lambda$tick$0(z3, obj, view2);
                }
            });
        }
        if (i == 0 || i % 10 == 0) {
            StringBuilder sbAppend = new StringBuilder().append("attempt=").append(i).append(" found=").append(viewFindViewById != null).append(" kind=").append(str(objCall2, "kind")).append(" id=").append(str(objCall2, "nb")).append(" episodes=").append(z2 ? ((List) objCall3).size() : -1).append(" visible=").append(zEquals).append(" shown=");
            if (viewFindViewById != null && viewFindViewById.isShown()) {
                z = true;
            }
            log("entry_visibility", sbAppend.append(z).append(" parents=").append(parents(viewFindViewById)).toString(), null);
        }
        view.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Enhancements.tick(obj, view, i + 1);
            }
        }, 1000L);
    }

    static String parents(View view) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; view != null && i < 8; i++) {
            sb.append(view.getClass().getSimpleName()).append(":").append(view.getVisibility()).append("/");
            view = view.getParent() instanceof View ? (View) view.getParent() : null;
        }
        return sb.toString();
    }

    public static void bulk(final Object obj) {
        try {
            final EditText editText = (EditText) get(obj, "search");
            editText.setVisibility(0);
            editText.setHint(I18n161.t("البحث برقم الحلقة بالضبط"));
            editText.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_menu_search, 0, 0, 0);
            editText.setCompoundDrawablePadding(dp(editText.getContext(), 8));
            LinearLayout linearLayout = (LinearLayout) editText.getParent();
            hideSearchButton(linearLayout);
            Button button = button(editText.getContext(), I18n161.t("التحديد المتعدد والاستثناء"));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dp(editText.getContext(), 38));
            layoutParams.topMargin = dp(editText.getContext(), 6);
            linearLayout.addView(button, linearLayout.indexOfChild(editText) + 1, layoutParams);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Enhancements.lambda$bulk$3(obj, editText, view);
                }
            });
            drag((ListView) get(obj, "list"), obj, null, false);
            styleBulk(obj, button);
            log("bulk_controls", "search_visible=true advanced_selection=true", null);
        } catch (Exception e) {
            log("bulk_controls_error", BuildConfig.FLAVOR, e);
        }
    }

    static /* synthetic */ void lambda$bulk$2(Object obj, DialogInterface dialogInterface, int i) {
        if (i % 2 == 0) {
            range(obj, i >= 2);
        } else {
            grid(obj, i >= 2);
        }
    }

    static /* synthetic */ void lambda$bulk$3(final Object obj, EditText editText, View view) {
        if (Boolean.TRUE.equals(get(obj, "busy"))) {
            return;
        }
        Dialogs.show(new AlertDialog.Builder(editText.getContext()).setTitle(I18n161.t("التحديد المتعدد")).setItems(new String[]{I18n161.t("تحديد نطاق الحلقات"), I18n161.t("تحديد الحلقات بالمربعات"), I18n161.t("استثناء نطاق الحلقات"), I18n161.t("استثناء الحلقات بالمربعات")}, new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Enhancements.lambda$bulk$2(obj, dialogInterface, i);
            }
        }));
    }

    static void hideSearchButton(View view) {
        Object tag = view.getTag();
        if ("ca1_download_actions95".equals(tag) || "ca1_delete94".equals(tag) || "ca1_sort".equals(tag)) {
            return;
        }
        if (view instanceof ImageButton) {
            view.setVisibility(8);
            return;
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
            hideSearchButton(viewGroup.getChildAt(i));
            i++;
        }
    }

    static List<Object> scope(Object obj) {
        List list = (List) get(obj, "episodes");
        ArrayList arrayList = new ArrayList();
        String strValueOf = String.valueOf(get(obj, "filter"));
        for (Object obj2 : list) {
            if (strValueOf.equals("all") || strValueOf.equals("*") || strValueOf.equals(BuildConfig.FLAVOR) || strValueOf.equals("null") || strValueOf.equals(str(obj2, "season"))) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void refresh(Object obj) {
        call(obj, "refresh", new Object[0]);
        call(obj, "prioritize", new Object[0]);
    }

    static void select(Object obj, Object obj2, boolean z) {
        if (Boolean.TRUE.equals(get(obj, "busy")) || Boolean.TRUE.equals(get(obj2, "submitted")) || Boolean.TRUE.equals(get(obj2, "existing"))) {
            return;
        }
        put(obj2, "selected", Boolean.valueOf(z));
    }

    static /* synthetic */ void lambda$range$4(EditText editText, EditText editText2, Object obj, boolean z, AlertDialog alertDialog, View view) {
        String strNum = num(editText.getText().toString());
        String strNum2 = num(editText2.getText().toString());
        if (strNum.isEmpty() || strNum.equals("!") || strNum2.isEmpty() || strNum2.equals("!") || new BigInteger(strNum).compareTo(new BigInteger(strNum2)) > 0) {
            editText.setError(I18n161.t("اكتب نطاقًا صحيحًا، مثل 5 إلى 17"));
            return;
        }
        int iApplyRange = applyRange(obj, strNum, strNum2, z);
        refresh(obj);
        log("selection_range", "exclude=" + z + " from=" + strNum + " to=" + strNum2 + " matches=" + iApplyRange, null);
        alertDialog.dismiss();
    }

    static void range(final Object obj, final boolean z) {
        Context context = (Context) get(obj, "context");
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(context, 20), dp(context, 8), dp(context, 20), dp(context, 8));
        final EditText editTextSearch = search(context);
        final EditText editTextSearch2 = search(context);
        editTextSearch.setHint(I18n161.t("من رقم الحلقة"));
        editTextSearch2.setHint(I18n161.t("إلى رقم الحلقة"));
        linearLayout.addView(editTextSearch, new LinearLayout.LayoutParams(-1, dp(context, 48)));
        linearLayout.addView(editTextSearch2, new LinearLayout.LayoutParams(-1, dp(context, 48)));
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setTitle(z ? I18n161.t("استثناء نطاق حلقات") : I18n161.t("تحديد نطاق حلقات")).setView(linearLayout).setPositiveButton(I18n161.t("تنفيذ"), (DialogInterface.OnClickListener) null).setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null).create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AlertDialog alertDialog = alertDialogCreate;
                alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Enhancements.lambda$range$4(editText, editText, obj, z, alertDialog, view);
                    }
                });
            }
        });
        alertDialogCreate.show();
        Dialogs.style(alertDialogCreate);
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.Enhancements$1, reason: invalid class name */
    class AnonymousClass1 extends BaseAdapter {
        final /* synthetic */ Context val$c;
        final /* synthetic */ boolean val$exclude;
        final /* synthetic */ List val$rows;
        final /* synthetic */ Object val$s;

        AnonymousClass1(List list, Context context, Object obj, boolean z) {
            this.val$rows = list;
            this.val$c = context;
            this.val$s = obj;
            this.val$exclude = z;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.val$rows.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.val$rows.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object obj = this.val$rows.get(i);
            if (obj instanceof String) {
                TextView textView = new TextView(this.val$c);
                textView.setText((String) obj);
                textView.setTextColor(ThemeEngine142.legacy(-1));
                textView.setPadding(14, 12, 14, 12);
                Enhancements.decorate(textView, -15656670, -13616572);
                return textView;
            }
            LinearLayout linearLayout = new LinearLayout(this.val$c);
            I18n161.applyDir(linearLayout);
            List list = (List) obj;
            for (final Object obj2 : list) {
                Button button = Enhancements.button(this.val$c, Enhancements.str(obj2, "number"));
                button.setTag(obj2);
                Enhancements.decorate(button, Boolean.TRUE.equals(Enhancements.get(obj2, "selected")) ? -2612953 : -15458519, Boolean.TRUE.equals(Enhancements.get(obj2, "selected")) ? -2020816 : -13616572);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, Enhancements.dp(this.val$c, 48), 1.0f);
                layoutParams.setMargins(3, 3, 3, 3);
                linearLayout.addView(button, layoutParams);
                final Object obj3 = this.val$s;
                final boolean z = this.val$exclude;
                button.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$1$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.m46lambda$getView$0$comshabakatycinemanaca1Enhancements$1(obj3, obj2, z, view2);
                    }
                });
            }
            for (int size = list.size(); size < 5; size++) {
                linearLayout.addView(new View(this.val$c), new LinearLayout.LayoutParams(0, 1, 1.0f));
            }
            return linearLayout;
        }

        /* JADX INFO: renamed from: lambda$getView$0$com-shabakaty-cinemana-ca1-Enhancements$1, reason: not valid java name */
        /* synthetic */ void m46lambda$getView$0$comshabakatycinemanaca1Enhancements$1(Object obj, Object obj2, boolean z, View view) {
            boolean z2 = false;
            if (!z && !Boolean.TRUE.equals(Enhancements.get(obj2, "selected"))) {
                z2 = true;
            }
            Enhancements.select(obj, obj2, z2);
            notifyDataSetChanged();
            Enhancements.refresh(obj);
        }
    }

    static int applyRange(Object obj, String str, String str2, boolean z) {
        int i = 0;
        for (Object obj2 : scope(obj)) {
            String strNum = num(str(obj2, "number"));
            if (!strNum.isEmpty() && !strNum.equals("!") && new BigInteger(strNum).compareTo(new BigInteger(str)) >= 0 && new BigInteger(strNum).compareTo(new BigInteger(str2)) <= 0) {
                select(obj, obj2, !z);
                i++;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.String] */
    static void grid(final Object obj, boolean z) {
        ?? r4;
        Context context = (Context) get(obj, "context");
        ArrayList arrayList = new ArrayList();
        ?? r5 = 0;
        ArrayList arrayList2 = null;
        for (Object obj2 : scope(obj)) {
            ?? Str = str(obj2, "season");
            if (!Str.equals(r5)) {
                r4 = r5;
                arrayList.add(I18n161.t("الموسم ") + Str);
                arrayList2 = null;
                r4 = Str;
            }
            if (arrayList2 == null || arrayList2.size() == 5) {
                arrayList2 = new ArrayList();
                arrayList.add(arrayList2);
            }
            arrayList2.add(obj2);
            r5 = r4;
        }
        DragList dragList = new DragList(context);
        dragList.setAdapter((ListAdapter) new AnonymousClass1(arrayList, context, obj, z));
        drag(dragList, obj, arrayList, z);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setTitle(z ? I18n161.t("استثناء الحلقات · اسحب بعد الضغط المطول") : I18n161.t("تحديد الحلقات · اسحب بعد الضغط المطول")).setView(dragList).setPositiveButton(I18n161.t("تم"), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Enhancements.refresh(obj);
            }
        }).create();
        alertDialogCreate.show();
        Dialogs.style(alertDialogCreate);
        alertDialogCreate.getWindow().setLayout(-1, (int) (((double) context.getResources().getDisplayMetrics().heightPixels) * 0.75d));
        log("selection_grid", "exclude=" + z + " rows=" + arrayList.size(), null);
    }

    static void drag(final ListView listView, final Object obj, final List<Object> list, final boolean z) {
        final boolean[] zArr = {false};
        final boolean[] zArr2 = {true};
        final float[] fArr = {0.0f, 0.0f};
        final float[] fArr2 = {0.0f, 0.0f};
        final int[] iArr = {-1};
        final Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        final Runnable[] runnableArr = {null};
        final Runnable[] runnableArr2 = {null};
        final Runnable runnable = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                Enhancements.lambda$drag$7(listView, fArr, list, obj, setNewSetFromMap, zArr2);
            }
        };
        runnableArr2[0] = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                Enhancements.lambda$drag$8(zArr, listView, fArr, runnable, runnableArr2);
            }
        };
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda17
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Enhancements.lambda$drag$10(fArr, fArr2, iArr, listView, setNewSetFromMap, runnableArr, obj, zArr, zArr2, z, list, runnable, runnableArr2, view, motionEvent);
            }
        };
        if (listView instanceof DragList) {
            ((DragList) listView).controller = onTouchListener;
        } else {
            listView.setOnTouchListener(onTouchListener);
        }
    }

    static /* synthetic */ boolean lambda$drag$10(final float[] fArr, float[] fArr2, final int[] iArr, final ListView listView, Set set, Runnable[] runnableArr, final Object obj, final boolean[] zArr, final boolean[] zArr2, final boolean z, final List list, final Runnable runnable, final Runnable[] runnableArr2, View view, MotionEvent motionEvent) {
        Runnable runnable2;
        fArr[0] = motionEvent.getX();
        fArr[1] = motionEvent.getY();
        switch (motionEvent.getActionMasked()) {
            case 0:
                fArr2[0] = fArr[0];
                fArr2[1] = fArr[1];
                iArr[0] = listView.pointToPosition((int) fArr[0], (int) fArr[1]);
                set.clear();
                runnableArr[0] = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        Enhancements.lambda$drag$9(obj, zArr, zArr2, z, list, iArr, listView, fArr, runnable, runnableArr2);
                    }
                };
                listView.postDelayed(runnableArr[0], ViewConfiguration.getLongPressTimeout());
                break;
            case 1:
            case 3:
                Runnable runnable3 = runnableArr[0];
                if (runnable3 != null) {
                    listView.removeCallbacks(runnable3);
                }
                listView.removeCallbacks(runnableArr2[0]);
                boolean z2 = zArr[0];
                zArr[0] = false;
                if (z2) {
                    refresh(obj);
                    log("selection_drag", "exclude=" + z + " count=" + set.size(), null);
                    return true;
                }
                break;
            case 2:
                if (zArr[0]) {
                    runnable.run();
                    return true;
                }
                if ((Math.abs(fArr[0] - fArr2[0]) > ViewConfiguration.get(listView.getContext()).getScaledTouchSlop() || Math.abs(fArr[1] - fArr2[1]) > ViewConfiguration.get(listView.getContext()).getScaledTouchSlop()) && (runnable2 = runnableArr[0]) != null) {
                    listView.removeCallbacks(runnable2);
                }
                break;
        }
        return zArr[0];
    }

    static /* synthetic */ void lambda$drag$7(ListView listView, float[] fArr, List list, Object obj, Set set, boolean[] zArr) {
        int iPointToPosition = listView.pointToPosition((int) fArr[0], (int) fArr[1]);
        if (iPointToPosition < 0) {
            return;
        }
        Object tag = null;
        if (list == null) {
            List list2 = (List) get(obj, "rows");
            if (iPointToPosition < list2.size() && !(list2.get(iPointToPosition) instanceof String)) {
                tag = list2.get(iPointToPosition);
            }
        } else {
            View childAt = listView.getChildAt(iPointToPosition - listView.getFirstVisiblePosition());
            if (childAt instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) childAt;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    View childAt2 = viewGroup.getChildAt(i);
                    if (fArr[0] >= childAt2.getLeft() && fArr[0] < childAt2.getRight()) {
                        tag = childAt2.getTag();
                    }
                }
            }
        }
        if (tag == null || !set.add(tag)) {
            return;
        }
        select(obj, tag, zArr[0]);
        if (list == null) {
            call(obj, "refresh", new Object[0]);
        } else {
            ((BaseAdapter) listView.getAdapter()).notifyDataSetChanged();
        }
    }

    static /* synthetic */ void lambda$drag$8(boolean[] zArr, ListView listView, float[] fArr, Runnable runnable, Runnable[] runnableArr) {
        int iDp;
        if (zArr[0]) {
            int iDp2 = dp(listView.getContext(), 48);
            float f = fArr[1];
            float f2 = iDp2;
            if (f < f2) {
                iDp = -dp(listView.getContext(), ((int) (Math.min(1.0f, (f2 - fArr[1]) / f2) * 28.0f)) + 8);
            } else {
                iDp = f > ((float) (listView.getHeight() - iDp2)) ? dp(listView.getContext(), ((int) (Math.min(1.0f, (fArr[1] - (listView.getHeight() - iDp2)) / f2) * 28.0f)) + 8) : 0;
            }
            if (iDp != 0) {
                listView.scrollListBy(iDp);
                runnable.run();
            }
            listView.postDelayed(runnableArr[0], 32L);
        }
    }

    static /* synthetic */ void lambda$drag$9(Object obj, boolean[] zArr, boolean[] zArr2, boolean z, List list, int[] iArr, ListView listView, float[] fArr, Runnable runnable, Runnable[] runnableArr) {
        if (Boolean.TRUE.equals(get(obj, "busy"))) {
            return;
        }
        zArr[0] = true;
        zArr2[0] = !z;
        if (list == null) {
            List list2 = (List) get(obj, "rows");
            int i = iArr[0];
            if (i >= 0 && i < list2.size() && !(list2.get(iArr[0]) instanceof String)) {
                zArr2[0] = !Boolean.TRUE.equals(get(list2.get(iArr[0]), "selected"));
            }
        }
        listView.getParent().requestDisallowInterceptTouchEvent(true);
        listView.performHapticFeedback(0);
        MotionEvent motionEventObtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, fArr[0], fArr[1], 0);
        motionEventObtain.setAction(3);
        listView.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        runnable.run();
        listView.post(runnableArr[0]);
    }

    static /* synthetic */ Thread lambda$static$11(Runnable runnable) {
        Thread thread = new Thread(runnable, "CA1-work-names");
        thread.setDaemon(true);
        return thread;
    }

    static void loadNames() {
        Context context = app;
        if (context != null) {
            for (Map.Entry<String, ?> entry : context.getSharedPreferences("ca1_work_names", 0).getAll().entrySet()) {
                if (entry.getValue() instanceof String) {
                    ROOTS.put(entry.getKey(), (String) entry.getValue());
                }
            }
        }
    }

    static /* synthetic */ void lambda$resolveName$13(Object obj, String str) {
        String str2;
        try {
            Class<?> cls = Class.forName("com.shabakaty.cinemana.ca1.BatchDownload");
            Object[] objArr = new Object[2];
            objArr[0] = obj != null ? call(obj, "b", str) : call(get(get(app, "z"), "a"), "A", str, "max-age=900");
            objArr[1] = false;
            Object objCall = call(cls, "await", objArr);
            if (obj != null) {
                objCall = call(cls, "unwrap", objCall);
            }
            if (obj != null) {
                str2 = String.valueOf(call(objCall, "c", new Object[0]));
            } else {
                str2 = str(objCall, Locale.getDefault().getLanguage().equals("en") ? "enTitle" : "arTitle");
            }
            if (str2.isEmpty()) {
                str2 = str(objCall, "enTitle");
            }
            if (str2.equals("null") || str2.trim().isEmpty()) {
                throw new IllegalStateException("No root work title");
            }
            ROOTS.put(str, str2);
            Context context = app;
            if (context != null) {
                context.getSharedPreferences("ca1_work_names", 0).edit().putString(str, str2).apply();
            }
            log("work_name_resolved", "root=" + str + " title=" + str2, null);
            MAIN.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Enhancements.sortAll();
                }
            });
        } catch (Exception e) {
            log("work_name_error", "root=" + str, e);
        }
    }

    static void resolveName(final Object obj, Object obj2) {
        final String str = str(obj2, "rootSeries");
        if (str.isEmpty()) {
            str = str(obj2, "rootEpisode");
        }
        if (str.isEmpty()) {
            str = str(obj2, "nb");
        }
        if (str.isEmpty()) {
            return;
        }
        if ((obj == null && app == null) || ROOTS.containsKey(str) || !LOOKUPS.add(str)) {
            return;
        }
        NAMES.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Enhancements.lambda$resolveName$13(obj, str);
            }
        });
    }

    static class State {
        List<Object> base = new ArrayList();
        String query = BuildConfig.FLAVOR;
        boolean updating;

        State() {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
    
        if (r1.equals(get(r5, "d")) != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List transform(java.lang.Object r5, java.util.List r6) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.cinemana.ca1.Enhancements.transform(java.lang.Object, java.util.List):java.util.List");
    }

    static int natural(String str, String str2) {
        String strNum = num(str);
        String strNum2 = num(str2);
        return (strNum.isEmpty() || strNum2.isEmpty() || strNum.equals("!") || strNum2.equals("!")) ? str.compareToIgnoreCase(str2) : new BigInteger(strNum).compareTo(new BigInteger(strNum2));
    }

    static String work(Object obj, Map<String, String> map) {
        String str = map.get(str(obj, "rootEpisode"));
        if (str != null) {
            return str;
        }
        String str2 = str(obj, "title");
        return str2.isEmpty() ? str(obj, "s") : str2;
    }

    static String date(Object obj) {
        String str = str(obj, "lastUpdated");
        if (str.isEmpty()) {
            Object obj2 = get(obj, "u");
            if (obj2 instanceof List) {
                Iterator it = ((List) obj2).iterator();
                while (it.hasNext()) {
                    String str2 = str(it.next(), "lastUpdated");
                    if (str2.compareTo(str) > 0) {
                        str = str2;
                    }
                }
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int compare(Object obj, Object obj2, Map<String, String> map) {
        String str;
        String str2;
        int iNatural;
        switch (mode) {
            case 1:
                str = str(obj, "episodeNumber");
                str2 = str(obj2, "episodeNumber");
                iNatural = natural(str, str2);
                break;
            case 2:
                str = date(obj);
                str2 = date(obj2);
                iNatural = natural(str, str2);
                break;
            case 3:
                str = str(obj, "season");
                str2 = str(obj2, "season");
                iNatural = natural(str, str2);
                break;
            case 4:
                iNatural = natural(str(obj, "special"), str(obj2, "special"));
                break;
            default:
                iNatural = work(obj, map).compareToIgnoreCase(work(obj2, map));
                break;
        }
        if (iNatural == 0) {
            iNatural = work(obj, map).compareToIgnoreCase(work(obj2, map));
        }
        if (iNatural == 0) {
            iNatural = natural(str(obj, "season"), str(obj2, "season"));
        }
        if (iNatural == 0) {
            iNatural = natural(str(obj, "episodeNumber"), str(obj2, "episodeNumber"));
        }
        if (iNatural == 0) {
            iNatural = natural(str(obj, "rootEpisode"), str(obj2, "rootEpisode"));
        }
        if (iNatural == 0) {
            iNatural = natural(str(obj, "id"), str(obj2, "id"));
        }
        return descending ? -iNatural : iNatural;
    }

    static void update(Object obj, State state) {
        state.updating = true;
        try {
            call(obj, "e", new ArrayList(state.base));
        } finally {
            state.updating = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sortAll() {
        for (Map.Entry entry : new ArrayList(STATES.entrySet())) {
            if (!entry.getKey().getClass().getSimpleName().equals("d41")) {
                update(entry.getKey(), (State) entry.getValue());
            }
        }
        Context context = app;
        if (context != null) {
            context.getSharedPreferences("ca1_sort", 0).edit().putInt("mode", mode).putBoolean("descending", descending).apply();
        }
        log("sort_changed", "mode=" + mode + " descending=" + descending, null);
    }

    public static void downloads(View view) {
        Download94.install(view);
        installSortHeader(view);
        final Context context = view.getContext();
        Context applicationContext = context.getApplicationContext();
        app = applicationContext;
        initLog(applicationContext);
        loadNames();
        mode = app.getSharedPreferences("ca1_sort", 0).getInt("mode", 0);
        descending = app.getSharedPreferences("ca1_sort", 0).getBoolean("descending", false);
        View viewFindViewWithTag = view.getRootView().findViewWithTag("ca1_sort");
        if (viewFindViewWithTag != null) {
            viewFindViewWithTag.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Enhancements.sortPopup(context, view2);
                }
            });
        }
        log("sort_install", "anchor=" + (viewFindViewWithTag != null), null);
    }

    static View recycler(View view) {
        if (view.getClass().getName().equals("androidx.recyclerview.widget.RecyclerView")) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        int i = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return null;
            }
            View viewRecycler = recycler(viewGroup.getChildAt(i));
            if (viewRecycler != null) {
                return viewRecycler;
            }
            i++;
        }
    }

    public static void seasonBase(Object obj, View view) {
        String str;
        String str2;
        View viewFindViewWithTag = view.findViewWithTag("ca1_season_search");
        final View viewRecycler = recycler(view);
        if (!(viewFindViewWithTag instanceof EditText) || viewRecycler == null) {
            str = "season_search_error";
            str2 = "controls_missing";
        } else {
            EditText editText = (EditText) viewFindViewWithTag;
            editText.setTextColor(ThemeEngine142.legacy(-1));
            editText.setHintTextColor(ThemeEngine142.legacy(-5592398));
            editText.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_menu_search, 0, 0, 0);
            editText.addTextChangedListener(new TextWatcher() { // from class: com.shabakaty.cinemana.ca1.Enhancements.2
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    Object objCall = Enhancements.call(viewRecycler, "getAdapter", new Object[0]);
                    if (objCall == null) {
                        return;
                    }
                    State state = Enhancements.STATES.get(objCall);
                    if (state == null) {
                        state = new State();
                        Object obj2 = Enhancements.get(objCall, "a");
                        if (obj2 instanceof List) {
                            state.base = new ArrayList((List) obj2);
                        }
                        Enhancements.STATES.put(objCall, state);
                    }
                    state.query = charSequence.toString();
                    Enhancements.update(objCall, state);
                    Enhancements.log("season_search", "query=" + Enhancements.num(charSequence.toString()) + " total=" + state.base.size() + " shown=" + Enhancements.call(objCall, "getItemCount", new Object[0]), null);
                }
            });
            str = "season_search_install";
            str2 = "ready";
        }
        log(str, str2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sortPopup(Context context, View view) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        I18n161.applyDir(linearLayout);
        linearLayout.setPadding(dp(context, 12), dp(context, 10), dp(context, 12), dp(context, 12));
        decorate(linearLayout, -15459292, -13352627);
        TextView textView = new TextView(context);
        textView.setText(I18n161.t("ترتيب التنزيلات"));
        int iLegacy = ThemeEngine142.legacy(-1);
        textView.setTextColor(iLegacy);
        textView.setTextSize(14.0f);
        textView.setGravity(8388611);
        textView.setPadding(0, 0, 0, dp(context, 8));
        linearLayout.addView(textView);
        RadioGroup radioGroup = new RadioGroup(context);
        String[] strArr = {I18n161.t("اسم العمل"), I18n161.t("الحلقة"), I18n161.t("التاريخ"), I18n161.t("الموسم"), I18n161.t("خاص")};
        int i = 0;
        for (int i2 = 8388611; i < i2; i2 = 5) {
            RadioButton radioButton = new RadioButton(context);
            radioButton.setId(View.generateViewId());
            radioButton.setTag(Integer.valueOf(i));
            radioButton.setText(strArr[i]);
            radioButton.setTextSize(13.0f);
            radioButton.setTextColor(ThemeEngine142.legacy(-2235416));
            radioButton.setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{-2020816, -8351586}));
            radioGroup.addView(radioButton, new RadioGroup.LayoutParams(iLegacy, dp(context, 36)));
            radioButton.setChecked(mode == i);
            i++;
        }
        linearLayout.addView(radioGroup);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda10
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i3) {
                Enhancements.lambda$sortPopup$16(radioGroup2, i3);
            }
        });
        View view2 = new View(context);
        int iLegacy2 = ThemeEngine142.legacy(-13352627);
        view2.setBackgroundColor(iLegacy2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iLegacy, dp(context, 1));
        layoutParams.setMargins(0, dp(context, 8), 0, dp(context, 10));
        linearLayout.addView(view2, layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout.addView(linearLayout2);
        final PopupWindow popupWindow = new PopupWindow((View) linearLayout, dp(context, 240), -2, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(surface(context, -15459292, iLegacy2));
        popupWindow.setElevation(dp(context, 8));
        int i3 = 0;
        while (i3 < 2) {
            final boolean z = i3 == 1;
            Button button = button(context, z ? I18n161.t("↓ تنازلي") : I18n161.t("↑ تصاعدي"));
            decorate(button, descending == z ? -2612953 : -14866639, iLegacy2);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, dp(context, 38), 1.0f);
            layoutParams2.setMargins(dp(context, 3), 0, dp(context, 3), 0);
            linearLayout2.addView(button, layoutParams2);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Enhancements$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    Enhancements.lambda$sortPopup$17(z, popupWindow, view3);
                }
            });
            i3++;
        }
        popupWindow.showAsDropDown(view, 0, dp(context, 4), 3);
        log("sort_popup", "header native_canva_panel", null);
    }

    static /* synthetic */ void lambda$sortPopup$16(RadioGroup radioGroup, int i) {
        View viewFindViewById = radioGroup.findViewById(i);
        if (viewFindViewById != null) {
            mode = ((Integer) viewFindViewById.getTag()).intValue();
            sortAll();
        }
    }

    static /* synthetic */ void lambda$sortPopup$17(boolean z, PopupWindow popupWindow, View view) {
        descending = z;
        sortAll();
        popupWindow.dismiss();
    }

    static void decorate(View view, int i, int i2) {
        if (view != null) {
            view.setBackground(surface(view.getContext(), i, i2));
        }
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.Enhancements$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnAttachStateChangeListener {
        final /* synthetic */ ImageButton val$button;
        final /* synthetic */ ViewGroup val$host;

        AnonymousClass3(ImageButton imageButton, ViewGroup viewGroup) {
            this.val$button = imageButton;
            this.val$host = viewGroup;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewParent parent = this.val$button.getParent();
            ViewGroup viewGroup = this.val$host;
            if (parent == viewGroup) {
                viewGroup.removeView(this.val$button);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    static void styleBulk(Object obj, Button button) {
        EditText editText = (EditText) get(obj, "search");
        Context context = editText.getContext();
        LinearLayout linearLayout = (LinearLayout) editText.getParent();
        linearLayout.setBackgroundColor(ThemeEngine142.legacy(-16051944));
        linearLayout.setPadding(dp(context, 12), dp(context, 8), dp(context, 12), dp(context, 10));
        decorate(editText, -15261913, -13616572);
        editText.setTextSize(13.0f);
        editText.setHintTextColor(ThemeEngine142.legacy(-6576464));
        button.setText(I18n161.t("اختيار متقدم"));
        Button button2 = (Button) get(obj, "allButton");
        LinearLayout linearLayout2 = (LinearLayout) button2.getParent();
        linearLayout2.removeView(button2);
        linearLayout.removeView(button);
        LinearLayout linearLayout3 = new LinearLayout(context);
        I18n161.applyDir(linearLayout3);
        int i = 2;
        int i2 = 0;
        Button[] buttonArr = {button, button2};
        int i3 = 0;
        while (i3 < i) {
            Button button3 = buttonArr[i3];
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, dp(context, 36), 1.0f);
            layoutParams.setMargins(dp(context, 3), dp(context, 6), dp(context, 3), dp(context, 6));
            linearLayout3.addView(button3, layoutParams);
            button3.setTextSize(12.0f);
            decorate(button3, -15459292, button3 == button ? -2612953 : -13616572);
            i3++;
            i = 2;
            i2 = 0;
        }
        linearLayout.addView(linearLayout3, linearLayout.indexOfChild(linearLayout2) + 1);
        String[] strArr = {"seasonButton", "qualityButton", "clearButton", "closeButton"};
        for (int i4 = 0; i4 < 4; i4++) {
            View view = (View) get(obj, strArr[i4]);
            decorate(view, -15261913, -13616572);
            if (view instanceof TextView) {
                ((TextView) view).setTextSize(12.0f);
            }
        }
        ListView listView = (ListView) get(obj, "list");
        listView.setDivider(new ColorDrawable(ThemeEngine142.legacy(-16051944)));
        listView.setDividerHeight(dp(context, 4));
        TextView textView = (TextView) get(obj, "progress");
        textView.setTextColor(ThemeEngine142.legacy(-6576464));
        textView.setTextSize(11.0f);
        TextView textView2 = (TextView) get(obj, "summary");
        textView2.setTextColor(ThemeEngine142.legacy(-3682088));
        textView2.setTextSize(11.0f);
        decorate(textView2, -15722463, -13616572);
        Button button4 = (Button) get(obj, "start");
        decorate(button4, -2612953, -2612953);
        button4.setTextSize(14.0f);
        log("ui_canva_applied", "native_controls compact_cards dark_surfaces red_accents", null);
    }

    public static void cardBase(View view) {
        try {
            Context context = view.getContext();
            Object tag = view.getTag();
            if (tag == null) {
                decorate(view, -15656670, -13616572);
                if (view instanceof TextView) {
                    ((TextView) view).setTextSize(11.0f);
                    ((TextView) view).setTextColor(ThemeEngine142.legacy(-3682088));
                    return;
                }
                return;
            }
            CheckBox checkBox = (CheckBox) get(tag, "check");
            boolean z = checkBox != null && checkBox.isChecked();
            decorate(view, z ? -14410976 : -15459292, z ? -2612953 : -14076865);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = dp(context, 60);
                view.setLayoutParams(layoutParams);
            }
            view.setPadding(dp(context, 4), dp(context, 2), dp(context, 6), dp(context, 2));
            TextView textView = (TextView) get(tag, "title");
            TextView textView2 = (TextView) get(tag, "sub");
            textView.setTextSize(12.0f);
            textView.setTextColor(ThemeEngine142.legacy(-1117708));
            textView.setPadding(dp(context, 6), 0, dp(context, 6), 0);
            textView2.setTextSize(10.0f);
            textView2.setTextColor(ThemeEngine142.legacy(-6576464));
            textView2.setPadding(dp(context, 6), dp(context, 1), dp(context, 6), 0);
            Button button = (Button) get(tag, "quality");
            decorate(button, -14866639, -13352627);
            button.setTextSize(11.0f);
            if (checkBox != null) {
                checkBox.setButtonTintList(ColorStateList.valueOf(ThemeEngine142.legacy(-2020816)));
            }
        } catch (Exception e) {
            log("card_style_error", BuildConfig.FLAVOR, e);
        }
    }

    public static class DragList extends ListView {
        boolean captured;
        View.OnTouchListener controller;

        public DragList(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            View.OnTouchListener onTouchListener = this.controller;
            boolean z = onTouchListener != null && onTouchListener.onTouch(this, motionEvent);
            if (z && !this.captured) {
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                motionEventObtain.setAction(3);
                super.dispatchTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                this.captured = true;
            }
            boolean z2 = z || this.captured;
            if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                this.captured = false;
            }
            if (z2) {
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    public static void profile(View view) {
        CacheCleaner124.profile(view);
        AppUpdater133.profile(view);
        DownloadRepair129.profile(view);
        String[] strArr = {"profile_app_help_item", "profile_share", "profile_discover_more"};
        for (int i = 0; i < 3; i++) {
            View viewFindViewById = view.findViewById(view.getResources().getIdentifier(strArr[i], "id", view.getContext().getPackageName()));
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
        }
        log("profile_cleanup", "help share discover removed", null);
    }
}
