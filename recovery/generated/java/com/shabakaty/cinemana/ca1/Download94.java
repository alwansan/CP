package com.shabakaty.cinemana.ca1;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.liulishuo.filedownloader.BuildConfig;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class Download94 {
    static final WeakHashMap<View, State> states = new WeakHashMap<>();

    static int dp(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    static GradientDrawable bg(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(ThemeEngine142.legacy(i));
        gradientDrawable.setCornerRadius(14.0f);
        gradientDrawable.setStroke(1, ThemeEngine142.legacy(-13089200));
        return gradientDrawable;
    }

    static View find(View view, String str) {
        try {
            if (view.getResources().getResourceEntryName(view.getId()).equals(str)) {
                return view;
            }
        } catch (Exception e) {
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View viewFind = find(viewGroup.getChildAt(i), str);
            if (viewFind != null) {
                return viewFind;
            }
        }
        return null;
    }

    public static void install(final View view) {
        view.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Download94$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Download94.lambda$install$0(view);
            }
        });
    }

    static /* synthetic */ void lambda$install$0(View view) {
        try {
            View viewFind = find(view, "downloads_recycler");
            if (viewFind == null) {
                viewFind = find(view, "collections_recycler");
            }
            if ((view instanceof ViewGroup) && (viewFind instanceof ViewGroup)) {
                WeakHashMap<View, State> weakHashMap = states;
                State state = weakHashMap.get(view);
                if (state != null) {
                    state.m31lambda$header$12$comshabakatycinemanaca1Download94$State();
                    return;
                }
                State state2 = new State((ViewGroup) view, (ViewGroup) viewFind);
                weakHashMap.put(view, state2);
                state2.m31lambda$header$12$comshabakatycinemanaca1Download94$State();
            }
        } catch (Throwable th) {
            Log94.event(view.getContext(), "downloads_install_failed", th.getClass().getSimpleName());
        }
    }

    static final class State {
        LinearLayout advanced;
        Context c;
        final Button delete;
        long downTime;
        float downX;
        float downY;
        boolean dragValue;
        boolean expanded;
        final Fast fast;
        EditText from;
        int headerAttempts;
        ViewGroup headerBar;
        ImageButton headerView;
        boolean holding;
        ViewTreeObserver.OnGlobalLayoutListener layoutListener;
        boolean mode;
        boolean moved;
        int oldBottom;
        int oldTop;
        final FrameLayout overlay;
        final PaintView paint;
        boolean pending;
        Object proxy;
        ViewGroup root;
        ViewTreeObserver rootObserver;
        ViewGroup rv;
        ViewTreeObserver rvObserver;
        ViewTreeObserver.OnScrollChangedListener scrollListener;
        Spinner season;
        TextView title;
        EditText to;
        final LinearLayout top;
        Spinner work;
        float x;
        float y;
        final Handler h = new Handler(Looper.getMainLooper());
        final LinkedHashSet<String> selected = new LinkedHashSet<>();
        final HashSet<String> visited = new HashSet<>();
        final SelectionGesture95 gesture = new SelectionGesture95();
        ArrayList<String> workKeys = new ArrayList<>();
        Map<String, String> collectionNames = new HashMap();
        final Runnable hold = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m37lambda$new$14$comshabakatycinemanaca1Download94$State();
            }
        };
        final Runnable auto = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Download94.State.5
            @Override // java.lang.Runnable
            public void run() {
                int iDp;
                if (!State.this.holding || State.this.pending) {
                    return;
                }
                int iDp2 = Download94.dp(State.this.c, 72.0f);
                if (State.this.y < State.this.rv.getPaddingTop() + iDp2) {
                    iDp = -Download94.dp(State.this.c, 12.0f);
                } else {
                    iDp = State.this.y > ((float) (State.this.rv.getHeight() - iDp2)) ? Download94.dp(State.this.c, 12.0f) : 0;
                }
                if (iDp != 0) {
                    State.this.rv.scrollBy(0, iDp);
                    State.this.selectAt();
                }
                State.this.paint.invalidate();
                State.this.fast.invalidate();
                State.this.h.postDelayed(this, 24L);
            }
        };

        void addSelectionAction103(LinearLayout linearLayout, Button button) {
            linearLayout.addView(button, new LinearLayout.LayoutParams(0, Download94.dp(this.c, 44.0f), 1.0f));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: header, reason: merged with bridge method [inline-methods] */
        public void m31lambda$header$12$comshabakatycinemanaca1Download94$State() {
            Native98.header(this);
        }

        State(final ViewGroup viewGroup, final ViewGroup viewGroup2) throws Exception {
            this.root = viewGroup;
            this.rv = viewGroup2;
            this.c = viewGroup.getContext();
            this.oldTop = viewGroup2.getPaddingTop();
            this.oldBottom = viewGroup2.getPaddingBottom();
            FrameLayout frameLayout = new FrameLayout(this.c);
            this.overlay = frameLayout;
            frameLayout.setClipChildren(false);
            frameLayout.setElevation(Download94.dp(this.c, 8.0f));
            viewGroup.addView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
            PaintView paintView = new PaintView(this.c, this);
            this.paint = paintView;
            frameLayout.addView(paintView, new FrameLayout.LayoutParams(-1, -1));
            Fast fast = new Fast(this.c, this);
            this.fast = fast;
            frameLayout.addView(fast, new FrameLayout.LayoutParams(Download94.dp(this.c, 24.0f), -1, 5));
            LinearLayout linearLayout = new LinearLayout(this.c);
            this.top = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setBackground(Download94.bg(-15458005));
            linearLayout.setPadding(Download94.dp(this.c, 8.0f), Download94.dp(this.c, 4.0f), Download94.dp(this.c, 8.0f), Download94.dp(this.c, 4.0f));
            I18n161.applyDir(linearLayout);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 48);
            layoutParams.rightMargin = Download94.dp(this.c, 26.0f);
            layoutParams.leftMargin = Download94.dp(this.c, 8.0f);
            frameLayout.addView(linearLayout, layoutParams);
            LinearLayout linearLayout2 = new LinearLayout(this.c);
            TextView textView = new TextView(this.c);
            this.title = textView;
            int iLegacy = ThemeEngine142.legacy(-1);
            textView.setTextColor(iLegacy);
            this.title.setTextSize(16.0f);
            linearLayout2.addView(this.title, new LinearLayout.LayoutParams(0, Download94.dp(this.c, 44.0f), 1.0f));
            linearLayout.addView(linearLayout2);
            LinearLayout linearLayout3 = new LinearLayout(this.c);
            addSelectionAction103(linearLayout3, button(I18n161.t("إلغاء"), new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m35lambda$new$0$comshabakatycinemanaca1Download94$State(view);
                }
            }));
            addSelectionAction103(linearLayout3, button(I18n161.t("تحديد الكل"), new Bulk102(this, true)));
            addSelectionAction103(linearLayout3, button(I18n161.t("إلغاء التحديد"), new Bulk102(this, false)));
            addSelectionAction103(linearLayout3, button(I18n161.t("خيارات"), new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m36lambda$new$1$comshabakatycinemanaca1Download94$State(view);
                }
            }));
            linearLayout.addView(linearLayout3);
            LinearLayout linearLayout4 = new LinearLayout(this.c);
            this.advanced = linearLayout4;
            linearLayout4.setOrientation(1);
            LinearLayout linearLayout5 = new LinearLayout(this.c);
            linearLayout5.addView(button(I18n161.t("الكل"), new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m38lambda$new$2$comshabakatycinemanaca1Download94$State(view);
                }
            }));
            linearLayout5.addView(button(I18n161.t("عكس"), new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m39lambda$new$3$comshabakatycinemanaca1Download94$State(view);
                }
            }));
            this.advanced.addView(linearLayout5);
            LinearLayout linearLayout6 = new LinearLayout(this.c);
            TextView textView2 = new TextView(this.c);
            textView2.setText(I18n161.t("العمل"));
            textView2.setTextSize(16.0f);
            int iLegacy2 = ThemeEngine142.legacy(iLegacy);
            textView2.setTextColor(iLegacy2);
            textView2.setGravity(16);
            linearLayout6.addView(textView2, new LinearLayout.LayoutParams(Download94.dp(this.c, 60.0f), Download94.dp(this.c, 42.0f)));
            Spinner spinner = new Spinner(this.c);
            this.work = spinner;
            linearLayout6.addView(spinner, new LinearLayout.LayoutParams(0, Download94.dp(this.c, 42.0f), 1.0f));
            this.advanced.addView(linearLayout6);
            this.work.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.shabakaty.cinemana.ca1.Download94.State.1
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (!State.this.mode || i == 0 || i >= State.this.workKeys.size()) {
                        return;
                    }
                    State.this.selected.clear();
                    State.this.season.setSelection(0);
                    for (Object obj : State.this.items()) {
                        if (State.this.eligible(obj) && State.this.workKey(obj).equals(State.this.workKeys.get(i))) {
                            State.this.selected.add(State.this.id(obj));
                        }
                    }
                    State.this.update();
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            LinearLayout linearLayout7 = new LinearLayout(this.c);
            Spinner spinner2 = new Spinner(this.c);
            this.season = spinner2;
            linearLayout7.addView(spinner2, new LinearLayout.LayoutParams(0, Download94.dp(this.c, 42.0f), 1.0f));
            this.from = input(I18n161.t("من"));
            this.to = input(I18n161.t("إلى"));
            linearLayout7.addView(this.from, new LinearLayout.LayoutParams(Download94.dp(this.c, 64.0f), Download94.dp(this.c, 42.0f)));
            linearLayout7.addView(this.to, new LinearLayout.LayoutParams(Download94.dp(this.c, 64.0f), Download94.dp(this.c, 42.0f)));
            this.advanced.addView(linearLayout7);
            LinearLayout linearLayout8 = new LinearLayout(this.c);
            linearLayout8.addView(button(I18n161.t("تحديد النطاق"), new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m40lambda$new$4$comshabakatycinemanaca1Download94$State(view);
                }
            }), new LinearLayout.LayoutParams(0, Download94.dp(this.c, 44.0f), 1.0f));
            linearLayout8.addView(button(I18n161.t("استثناء النطاق"), new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m41lambda$new$5$comshabakatycinemanaca1Download94$State(view);
                }
            }), new LinearLayout.LayoutParams(0, Download94.dp(this.c, 44.0f), 1.0f));
            this.advanced.addView(linearLayout8);
            linearLayout.addView(this.advanced);
            this.advanced.setVisibility(8);
            Button button = button(I18n161.t("حذف"), new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m42lambda$new$6$comshabakatycinemanaca1Download94$State(view);
                }
            });
            this.delete = button;
            button.setBackground(Download94.bg(-2613205));
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iLegacy2, Download94.dp(this.c, 52.0f), 80);
            layoutParams2.leftMargin = Download94.dp(this.c, 12.0f);
            layoutParams2.rightMargin = Download94.dp(this.c, 28.0f);
            layoutParams2.bottomMargin = Download94.dp(this.c, 8.0f);
            frameLayout.addView(button, layoutParams2);
            linearLayout.setVisibility(8);
            button.setVisibility(8);
            Class<?> cls = Class.forName("androidx.recyclerview.widget.RecyclerView$q");
            this.proxy = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda14
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return this.f$0.m43lambda$new$7$comshabakatycinemanaca1Download94$State(obj, method, objArr);
                }
            });
            ((ArrayList) R94.get(viewGroup2, "H")).add(this.proxy);
            this.rvObserver = viewGroup2.getViewTreeObserver();
            this.rootObserver = viewGroup.getViewTreeObserver();
            this.scrollListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda15
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    this.f$0.m44lambda$new$8$comshabakatycinemanaca1Download94$State();
                }
            };
            this.layoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda6
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    this.f$0.m45lambda$new$9$comshabakatycinemanaca1Download94$State();
                }
            };
            this.rvObserver.addOnScrollChangedListener(this.scrollListener);
            this.rootObserver.addOnGlobalLayoutListener(this.layoutListener);
            viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.shabakaty.cinemana.ca1.Download94.State.2
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    State.this.m31lambda$header$12$comshabakatycinemanaca1Download94$State();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    View viewFindViewWithTag;
                    State.this.h.removeCallbacksAndMessages(null);
                    if (State.this.rvObserver.isAlive()) {
                        State.this.rvObserver.removeOnScrollChangedListener(State.this.scrollListener);
                    }
                    if (State.this.rootObserver.isAlive()) {
                        State.this.rootObserver.removeOnGlobalLayoutListener(State.this.layoutListener);
                    }
                    viewGroup.removeOnAttachStateChangeListener(this);
                    try {
                        ((ArrayList) R94.get(viewGroup2, "H")).remove(State.this.proxy);
                    } catch (Exception e) {
                    }
                    Download94.states.remove(viewGroup);
                    if (State.this.headerBar != null) {
                        Iterator<State> it = Download94.states.values().iterator();
                        boolean z = false;
                        while (it.hasNext()) {
                            if (it.next().root.isAttachedToWindow()) {
                                z = true;
                            }
                        }
                        if (z || (viewFindViewWithTag = State.this.headerBar.findViewWithTag("ca1_download_actions95")) == null) {
                            return;
                        }
                        State.this.headerBar.removeView(viewFindViewWithTag);
                    }
                }
            });
        }

        /* JADX INFO: renamed from: lambda$new$0$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m35lambda$new$0$comshabakatycinemanaca1Download94$State(View view) {
            end();
        }

        /* JADX INFO: renamed from: lambda$new$1$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m36lambda$new$1$comshabakatycinemanaca1Download94$State(View view) {
            boolean z = !this.expanded;
            this.expanded = z;
            this.advanced.setVisibility(z ? 0 : 8);
            spacing();
        }

        /* JADX INFO: renamed from: lambda$new$2$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m38lambda$new$2$comshabakatycinemanaca1Download94$State(View view) {
            for (Object obj : items()) {
                if (eligible(obj) && inSeason(obj)) {
                    this.selected.add(id(obj));
                }
            }
            update();
        }

        /* JADX INFO: renamed from: lambda$new$3$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m39lambda$new$3$comshabakatycinemanaca1Download94$State(View view) {
            for (Object obj : items()) {
                if (eligible(obj) && inSeason(obj)) {
                    String strId = id(obj);
                    if (!this.selected.remove(strId)) {
                        this.selected.add(strId);
                    }
                }
            }
            update();
        }

        void selectAll102(View view) {
            for (Object obj : items()) {
                if (eligible(obj)) {
                    this.selected.add(id(obj));
                }
            }
            update();
        }

        /* JADX INFO: renamed from: lambda$new$4$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m40lambda$new$4$comshabakatycinemanaca1Download94$State(View view) {
            range(true);
        }

        /* JADX INFO: renamed from: lambda$new$5$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m41lambda$new$5$comshabakatycinemanaca1Download94$State(View view) {
            range(false);
        }

        /* JADX INFO: renamed from: lambda$new$6$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m42lambda$new$6$comshabakatycinemanaca1Download94$State(View view) {
            confirm();
        }

        /* JADX INFO: renamed from: lambda$new$7$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ Object m43lambda$new$7$comshabakatycinemanaca1Download94$State(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            if (name.equals("c")) {
                return Boolean.valueOf(intercept((MotionEvent) objArr[1]));
            }
            if (name.equals("a")) {
                handle((MotionEvent) objArr[1]);
                return null;
            }
            if (name.equals("hashCode")) {
                return Integer.valueOf(System.identityHashCode(obj));
            }
            if (name.equals("equals")) {
                return Boolean.valueOf(obj == objArr[0]);
            }
            if (name.equals("toString")) {
                return "CA1 Download selection";
            }
            return null;
        }

        /* JADX INFO: renamed from: lambda$new$8$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m44lambda$new$8$comshabakatycinemanaca1Download94$State() {
            this.paint.invalidate();
            this.fast.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: bounds, reason: merged with bridge method [inline-methods] */
        public void m45lambda$new$9$comshabakatycinemanaca1Download94$State() {
            Rect rect = new Rect();
            if (this.root.getGlobalVisibleRect(rect)) {
                int[] iArr = new int[2];
                this.root.getLocationOnScreen(iArr);
                int iMax = Math.max(0, rect.top - iArr[1]);
                View viewFind = Download94.find(this.root.getRootView(), "home_bottom_nav");
                int iMin = rect.bottom;
                if (viewFind != null && viewFind.getVisibility() == 0) {
                    int[] iArr2 = new int[2];
                    viewFind.getLocationOnScreen(iArr2);
                    iMin = Math.min(iMin, iArr2[1]);
                }
                int iMax2 = Math.max(0, (iArr[1] + this.root.getHeight()) - iMin);
                if (this.overlay.getPaddingTop() == iMax && this.overlay.getPaddingBottom() == iMax2) {
                    return;
                }
                this.overlay.setPadding(0, iMax, 0, iMax2);
            }
        }

        Button button(String str, View.OnClickListener onClickListener) {
            Button button = new Button(this.c);
            button.setText(str);
            button.setTextSize(13.0f);
            button.setTextColor(ThemeEngine142.legacy(-1));
            button.setAllCaps(false);
            button.setMinWidth(0);
            button.setMinimumWidth(0);
            button.setPadding(Download94.dp(this.c, 10.0f), 0, Download94.dp(this.c, 10.0f), 0);
            button.setBackground(Download94.bg(-14865611));
            button.setOnClickListener(onClickListener);
            return button;
        }

        EditText input(String str) {
            EditText editText = new EditText(this.c);
            editText.setHint(str);
            editText.setHintTextColor(ThemeEngine142.legacy(-5592406));
            editText.setTextColor(ThemeEngine142.legacy(-1));
            editText.setTextSize(14.0f);
            editText.setInputType(2);
            editText.setSingleLine(true);
            return editText;
        }

        List<?> items() {
            try {
                Object obj = R94.get(R94.call(this.rv, "getAdapter", new Object[0]), "a");
                return obj instanceof List ? (List) obj : Collections.emptyList();
            } catch (Exception e) {
                return Collections.emptyList();
            }
        }

        boolean eligible(Object obj) {
            return Delete94.candidate(obj);
        }

        String id(Object obj) {
            return R94.str(obj, "id");
        }

        boolean inSeason(Object obj) {
            Spinner spinner = this.work;
            if (spinner != null && spinner.getSelectedItemPosition() > 0 && this.work.getSelectedItemPosition() < this.workKeys.size() && !workKey(obj).equals(this.workKeys.get(this.work.getSelectedItemPosition()))) {
                return false;
            }
            String strValueOf = String.valueOf(this.season.getSelectedItem());
            return I18n161.t("كل المواسم").equals(strValueOf) || strValueOf.equals(new StringBuilder().append("S").append(R94.str(obj, "season")).toString());
        }

        String workKey(Object obj) {
            String str = R94.str(obj, "rootEpisode");
            if (!str.isEmpty()) {
                return "root:" + str;
            }
            String str2 = R94.str(obj, "collectionID");
            return ((str2.isEmpty() || "0".equals(str2)) ? new StringBuilder().append("movie:").append(id(obj)) : new StringBuilder().append("collection:").append(str2)).toString();
        }

        String workName(Object obj) {
            String str = R94.str(obj, "rootEpisode");
            String str2 = R94.str(obj, "collectionID");
            String string = this.c.getSharedPreferences("ca1_work_names", 0).getString(str, BuildConfig.FLAVOR);
            if (string.isEmpty()) {
                string = this.collectionNames.get(str2);
            }
            if (string == null || string.isEmpty()) {
                return str.isEmpty() ? R94.str(obj, "title") : I18n161.t("عمل ") + str;
            }
            return string;
        }

        void works() {
            this.workKeys.clear();
            this.workKeys.add(BuildConfig.FLAVOR);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : items()) {
                if (eligible(obj)) {
                    linkedHashMap.put(workKey(obj), workName(obj));
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(I18n161.t("كل الأعمال"));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                this.workKeys.add((String) entry.getKey());
                arrayList.add((String) entry.getValue());
            }
            this.work.setAdapter((SpinnerAdapter) spinnerAdapter(arrayList));
            this.work.setPopupBackgroundDrawable(Download94.bg(-15458005));
        }

        ArrayAdapter<String> spinnerAdapter(List<String> list) {
            return new ArrayAdapter<String>(this.c, R.layout.simple_spinner_dropdown_item, list) { // from class: com.shabakaty.cinemana.ca1.Download94.State.3
                @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
                public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                    View dropDownView = super.getDropDownView(i, view, viewGroup);
                    dropDownView.setBackgroundColor(ThemeEngine142.legacy(-15458005));
                    if (dropDownView instanceof TextView) {
                        ((TextView) dropDownView).setTextColor(ThemeEngine142.legacy(-1));
                    }
                    return dropDownView;
                }

                @Override // android.widget.ArrayAdapter, android.widget.Adapter
                public View getView(int i, View view, ViewGroup viewGroup) {
                    View view2 = super.getView(i, view, viewGroup);
                    if (view2 instanceof TextView) {
                        ((TextView) view2).setTextColor(ThemeEngine142.legacy(-1));
                    }
                    return view2;
                }
            };
        }

        /* JADX INFO: renamed from: lambda$loadWorkNames$10$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m33x3c31e74b(Map map) {
            if (this.root.isAttachedToWindow()) {
                this.collectionNames = map;
                this.work.setEnabled(true);
                if (this.mode) {
                    works();
                }
            }
        }

        /* JADX INFO: renamed from: lambda$loadWorkNames$11$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m34xd6d2a9cc() {
            final HashMap map = new HashMap();
            try {
                Iterator it = ((List) R94.call(R94.call(this.c.getApplicationContext(), "h", new Object[0]), "J", new Object[0])).iterator();
                while (it.hasNext()) {
                    Object obj = R94.get(it.next(), "a");
                    map.put(R94.str(obj, "r"), R94.str(obj, "s"));
                }
            } catch (Throwable th) {
                Log94.event(this.c, "work_names_failed", th.getClass().getSimpleName());
            }
            this.h.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m33x3c31e74b(map);
                }
            });
        }

        void loadWorkNames() {
            this.work.setEnabled(false);
            Delete94.worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m34xd6d2a9cc();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$header$13$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m32lambda$header$13$comshabakatycinemanaca1Download94$State(View view) {
            for (State state : new ArrayList(Download94.states.values())) {
                Rect rect = new Rect();
                if (state.rv.getGlobalVisibleRect(rect) && rect.width() > Download94.dp(this.c, 80.0f)) {
                    if (state.mode) {
                        state.confirm();
                        return;
                    } else {
                        state.begin();
                        return;
                    }
                }
            }
        }

        void spacing() {
            ViewGroup viewGroup = this.rv;
            viewGroup.setPadding(viewGroup.getPaddingLeft(), this.oldTop + Download94.dp(this.c, this.expanded ? 278.0f : 100.0f), this.rv.getPaddingRight(), this.oldBottom + Download94.dp(this.c, 64.0f));
            this.paint.invalidate();
        }

        void begin() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            linkedHashSet.add(I18n161.t("كل المواسم"));
            boolean z = false;
            for (Object obj : items()) {
                if (eligible(obj)) {
                    linkedHashSet.add("S" + R94.str(obj, "season"));
                    z = true;
                }
            }
            if (!z) {
                Toast.makeText(this.c, I18n161.t("افتح قائمة الحلقات المكتملة أولًا"), 0).show();
                return;
            }
            ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this.c, R.layout.simple_spinner_dropdown_item, new ArrayList(linkedHashSet)) { // from class: com.shabakaty.cinemana.ca1.Download94.State.4
                @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
                public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                    View dropDownView = super.getDropDownView(i, view, viewGroup);
                    dropDownView.setBackgroundColor(ThemeEngine142.legacy(-15458005));
                    if (dropDownView instanceof TextView) {
                        ((TextView) dropDownView).setTextColor(ThemeEngine142.legacy(-1));
                    }
                    return dropDownView;
                }

                @Override // android.widget.ArrayAdapter, android.widget.Adapter
                public View getView(int i, View view, ViewGroup viewGroup) {
                    View view2 = super.getView(i, view, viewGroup);
                    if (view2 instanceof TextView) {
                        ((TextView) view2).setTextColor(ThemeEngine142.legacy(-1));
                    }
                    return view2;
                }
            };
            works();
            loadWorkNames();
            this.season.setAdapter((SpinnerAdapter) arrayAdapter);
            this.season.setPopupBackgroundDrawable(Download94.bg(-15458005));
            this.mode = true;
            this.top.setVisibility(0);
            this.delete.setVisibility(0);
            this.top.bringToFront();
            this.delete.bringToFront();
            this.expanded = false;
            this.advanced.setVisibility(8);
            spacing();
            update();
        }

        void end() {
            if (this.pending) {
                return;
            }
            this.mode = false;
            this.holding = false;
            this.selected.clear();
            this.h.removeCallbacks(this.hold);
            this.h.removeCallbacks(this.auto);
            this.top.setVisibility(8);
            this.delete.setVisibility(8);
            ViewGroup viewGroup = this.rv;
            viewGroup.setPadding(viewGroup.getPaddingLeft(), this.oldTop, this.rv.getPaddingRight(), this.oldBottom);
            update();
        }

        void update() {
            Native98.refresh(this);
            this.title.setText(I18n161.t("المحدد: ") + this.selected.size());
            this.delete.setText(this.pending ? I18n161.t("جارٍ الحذف…") : I18n161.t("حذف (") + this.selected.size() + ")");
            this.delete.setEnabled((this.pending || this.selected.isEmpty()) ? false : true);
            this.paint.invalidate();
        }

        void range(boolean z) {
            try {
                int i = Integer.parseInt(this.from.getText().toString());
                int i2 = Integer.parseInt(this.to.getText().toString());
                if (i > i2 || i < 0) {
                    throw new Exception();
                }
                for (Object obj : items()) {
                    int i3 = Integer.parseInt(R94.str(obj, "episodeNumber"));
                    if (eligible(obj) && inSeason(obj) && i3 >= i && i3 <= i2) {
                        if (z) {
                            this.selected.add(id(obj));
                        } else {
                            this.selected.remove(id(obj));
                        }
                    }
                }
                update();
            } catch (Exception e) {
                Toast.makeText(this.c, I18n161.t("أدخل نطاق حلقات صحيحًا"), 0).show();
            }
        }

        Object at(float f, float f2) {
            for (int childCount = this.rv.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = this.rv.getChildAt(childCount);
                if (f >= childAt.getLeft() && f <= childAt.getRight() && f2 >= childAt.getTop() && f2 <= childAt.getBottom()) {
                    try {
                        int iIntValue = ((Number) R94.call(this.rv, "P", childAt)).intValue();
                        List<?> listItems = items();
                        if (iIntValue < 0 || iIntValue >= listItems.size()) {
                            return null;
                        }
                        return listItems.get(iIntValue);
                    } catch (Exception e) {
                        return null;
                    }
                }
            }
            return null;
        }

        void selectAt() {
            Object objAt = at(this.x, this.y);
            if (objAt != null && eligible(objAt) && this.visited.add(id(objAt))) {
                if (this.dragValue) {
                    this.selected.add(id(objAt));
                } else {
                    this.selected.remove(id(objAt));
                }
                update();
            }
        }

        /* JADX INFO: renamed from: lambda$new$14$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m37lambda$new$14$comshabakatycinemanaca1Download94$State() {
            Object objAt;
            if (this.pending || !this.gesture.ready(SystemClock.uptimeMillis()) || (objAt = at(this.x, this.y)) == null || !eligible(objAt)) {
                return;
            }
            if (!this.mode) {
                begin();
            }
            if (this.mode) {
                this.holding = true;
                this.dragValue = !this.selected.contains(id(objAt));
                this.visited.clear();
                selectAt();
                this.h.post(this.auto);
                this.rv.performHapticFeedback(0);
            }
        }

        boolean intercept(MotionEvent motionEvent) {
            if (this.pending) {
                return this.mode;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (motionEvent.getPointerCount() > 1) {
                this.h.removeCallbacks(this.hold);
                this.gesture.cancel();
                this.holding = false;
                this.h.removeCallbacks(this.auto);
                return false;
            }
            if (actionMasked == 0) {
                float x = motionEvent.getX();
                this.downX = x;
                this.x = x;
                float y = motionEvent.getY();
                this.downY = y;
                this.y = y;
                this.downTime = motionEvent.getEventTime();
                this.holding = false;
                this.moved = false;
                this.visited.clear();
                this.h.removeCallbacks(this.hold);
                this.gesture.down(this.x, this.y, motionEvent.getEventTime(), ViewConfiguration.get(this.c).getScaledTouchSlop());
                this.h.postAtTime(this.hold, 1000 + this.downTime);
                return false;
            }
            if (actionMasked == 2) {
                this.x = motionEvent.getX();
                this.y = motionEvent.getY();
                if (!this.holding && (Math.abs(this.x - this.downX) > ViewConfiguration.get(this.c).getScaledTouchSlop() || Math.abs(this.y - this.downY) > ViewConfiguration.get(this.c).getScaledTouchSlop())) {
                    this.moved = true;
                    this.gesture.move(this.x, this.y);
                    this.h.removeCallbacks(this.hold);
                }
                if (this.holding) {
                    selectAt();
                    return true;
                }
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            this.h.removeCallbacks(this.hold);
            this.h.removeCallbacks(this.auto);
            boolean z = this.holding;
            this.holding = false;
            if (actionMasked == 1 && this.mode && this.gesture.tap() && !z) {
                this.x = motionEvent.getX();
                float y2 = motionEvent.getY();
                this.y = y2;
                Object objAt = at(this.x, y2);
                if (objAt != null && eligible(objAt)) {
                    String strId = id(objAt);
                    if (!this.selected.remove(strId)) {
                        this.selected.add(strId);
                    }
                    update();
                    return true;
                }
            }
            this.gesture.cancel();
            return z;
        }

        void handle(MotionEvent motionEvent) {
            this.x = motionEvent.getX();
            this.y = motionEvent.getY();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2 && this.holding) {
                selectAt();
            }
            if (actionMasked == 1 || actionMasked == 3) {
                this.holding = false;
                this.h.removeCallbacks(this.auto);
                this.h.removeCallbacks(this.hold);
            }
        }

        void confirm() {
            if (this.pending || this.selected.isEmpty()) {
                return;
            }
            final ArrayList arrayList = new ArrayList();
            for (Object obj : items()) {
                if (this.selected.contains(id(obj)) && eligible(obj)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            Dialog95.show(new AlertDialog.Builder(this.c).setTitle(I18n161.t("حذف ") + arrayList.size() + I18n161.t(" حلقة؟")).setMessage(I18n161.t("سيتم حذف ملفات الحلقات المحددة من الجهاز. هذه العملية لا يمكن التراجع عنها.")).setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null).setPositiveButton(I18n161.t("حذف"), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m30lambda$confirm$16$comshabakatycinemanaca1Download94$State(arrayList, dialogInterface, i);
                }
            }).create());
        }

        /* JADX INFO: renamed from: lambda$confirm$15$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m29lambda$confirm$15$comshabakatycinemanaca1Download94$State(int i, List list) {
            this.pending = false;
            boolean zIsEmpty = list.isEmpty();
            String strT = I18n161.t(" حلقة");
            String strT2 = I18n161.t("تم حذف ");
            if (zIsEmpty) {
                end();
            } else {
                DownloadStore263.retainFailed(this.selected, list);
                update();
                Dialog95.show(new AlertDialog.Builder(this.c).setTitle(strT2 + i + strT).setMessage(DownloadStore263.errorSummary(list)).setPositiveButton(I18n161.t("حسنًا"), (DialogInterface.OnClickListener) null).create());
            }
            Toast.makeText(this.c, strT2 + i + strT, 1).show();
        }

        /* JADX INFO: renamed from: lambda$confirm$16$com-shabakaty-cinemana-ca1-Download94$State, reason: not valid java name */
        /* synthetic */ void m30lambda$confirm$16$comshabakatycinemanaca1Download94$State(List list, DialogInterface dialogInterface, int i) {
            this.pending = true;
            update();
            Delete94.run(this.c, list, new Delete94.Result() { // from class: com.shabakaty.cinemana.ca1.Download94$State$$ExternalSyntheticLambda16
                @Override // com.shabakaty.cinemana.ca1.Delete94.Result
                public final void done(int i2, List list2) {
                    this.f$0.m29lambda$confirm$15$comshabakatycinemanaca1Download94$State(i2, list2);
                }
            });
        }
    }

    static final class PaintView extends View {
        final Paint p;
        final State s;

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Native98.refresh(this.s);
        }

        PaintView(Context context, State state) {
            super(context);
            this.p = new Paint(3);
            this.s = state;
            setImportantForAccessibility(2);
        }
    }

    static final class Fast extends View {
        boolean dragging;
        final Paint p;
        final State s;

        Fast(Context context, State state) {
            super(context);
            this.p = new Paint(3);
            this.s = state;
            setContentDescription(I18n161.t("التمرير السريع"));
        }

        int metric(String str) {
            try {
                return ((Number) R94.call(this.s.rv, str, new Object[0])).intValue();
            } catch (Exception e) {
                return 0;
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int iMetric = metric("computeVerticalScrollRange");
            int iMetric2 = metric("computeVerticalScrollExtent");
            int iMetric3 = metric("computeVerticalScrollOffset");
            if (iMetric <= iMetric2 || getHeight() < 1) {
                return;
            }
            float fMax = Math.max(Download94.dp(getContext(), 48.0f), (getHeight() * iMetric2) / iMetric);
            float height = ((getHeight() - fMax) * iMetric3) / Math.max(1, iMetric - iMetric2);
            this.p.setColor(ThemeEngine142.legacy(this.dragging ? -1328663487 : 1433370765));
            canvas.drawRoundRect(getWidth() - Download94.dp(getContext(), this.dragging ? 5.0f : 4.0f), height, getWidth() - Download94.dp(getContext(), 2.0f), height + fMax, 3.0f, 3.0f, this.p);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (metric("computeVerticalScrollRange") <= metric("computeVerticalScrollExtent")) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.dragging = true;
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (actionMasked == 0 || actionMasked == 2) {
                int size = this.s.items().size() - 1;
                try {
                    R94.call(this.s.rv, "q0", Integer.valueOf(Math.max(0, Math.min(size, Math.round((motionEvent.getY() / getHeight()) * size)))));
                } catch (Exception e) {
                }
            } else {
                if (actionMasked != 1 && actionMasked != 3) {
                    return true;
                }
                this.dragging = false;
            }
            invalidate();
            return true;
        }
    }
}
