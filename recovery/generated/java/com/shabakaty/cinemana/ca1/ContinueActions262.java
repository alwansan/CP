package com.shabakaty.cinemana.ca1;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.local.AccountUi;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ContinueActions262 {
    private static final int MENU_ID = 2498822;
    private static final Map<View, More> pages = new WeakHashMap();
    private static final Map<View, Bound> bound = new WeakHashMap();
    private static final ThreadLocal<Boolean> details = new ThreadLocal<>();

    static final class Bound {
        final WeakReference<Object> listener;
        final Object model;
        final String originalTitle;
        final WeakReference<TextView> title;
        final WeakReference<View> view;

        Bound(View view, Object obj, Object obj2, TextView textView) {
            this.view = new WeakReference<>(view);
            this.model = obj;
            this.listener = new WeakReference<>(obj2);
            this.title = new WeakReference<>(textView);
            this.originalTitle = ContinueActions262.cleanTitle(textView.getText().toString());
        }

        void paint() {
            View view = this.view.get();
            TextView textView = this.title.get();
            if (view == null || textView == null) {
                return;
            }
            More morePage = ContinueActions262.page(view);
            boolean z = morePage != null && morePage.mode && morePage.selected.contains(ContinueActions262.text(this.model, "nb"));
            StringBuilder sb = new StringBuilder();
            sb.append(z ? "✓  " : BuildConfig.FLAVOR);
            sb.append(this.originalTitle.isEmpty() ? ContinueActions262.label(this.model) : this.originalTitle);
            textView.setText(sb.toString());
            view.setActivated(z);
            view.setAlpha((morePage == null || !morePage.mode || z) ? 1.0f : 0.65f);
        }
    }

    static final class More {
        Object adapter;
        LinearLayout bar;
        TextView count;
        ImageButton fallback;
        boolean inlineAction;
        Menu menu;
        boolean mode;
        int oldPadding;
        View recycler;
        final WeakReference<View> root;
        final LinkedHashSet<String> selected = new LinkedHashSet<>();
        boolean active = true;

        More(View view) {
            this.root = new WeakReference<>(view);
        }

        void attach() {
            try {
                View view = this.root.get();
                if (view == null) {
                    return;
                }
                View viewFind = ContinueActions262.find(view, "RecyclerView");
                this.recycler = viewFind;
                if (viewFind == null) {
                    throw new IllegalStateException("Missing continue list");
                }
                this.adapter = ContinueActions262.contentAdapter(ContinueActions262.call(viewFind, "getAdapter", new Object[0]));
                this.oldPadding = this.recycler.getPaddingTop();
                View viewVisibleToolbar = ContinueActions262.visibleToolbar(view.getRootView());
                ImageButton imageButton = new ImageButton(view.getContext());
                this.fallback = imageButton;
                imageButton.setImageResource(R.drawable.ic_menu_delete);
                this.fallback.setColorFilter(-1);
                this.fallback.setContentDescription(ContinueActions262.tr("حذف من أكمل المشاهدة"));
                this.fallback.setBackgroundColor(0);
                this.fallback.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        More.this.begin();
                    }
                });
                if (viewVisibleToolbar instanceof ViewGroup) {
                    Menu menu = (Menu) ContinueActions262.call(viewVisibleToolbar, "getMenu", new Object[0]);
                    this.menu = menu;
                    menu.removeItem(ContinueActions262.MENU_ID);
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) Class.forName("androidx.appcompat.widget.Toolbar$e").getConstructor(Integer.TYPE, Integer.TYPE).newInstance(Integer.valueOf(ContinueActions262.dp(view.getContext(), 48)), Integer.valueOf(ContinueActions262.dp(view.getContext(), 48)));
                    Continue106.set(layoutParams, "a", 19);
                    ((ViewGroup) viewVisibleToolbar).addView(this.fallback, layoutParams);
                } else {
                    this.inlineAction = true;
                    this.fallback.setBackgroundColor(Color.rgb(30, 30, 30));
                    ((ViewGroup) view).addView(this.fallback, new ViewGroup.LayoutParams(ContinueActions262.dp(view.getContext(), 48), ContinueActions262.dp(view.getContext(), 48)));
                    View view2 = this.recycler;
                    view2.setPadding(view2.getPaddingLeft(), this.oldPadding + ContinueActions262.dp(view.getContext(), 48), this.recycler.getPaddingRight(), this.recycler.getPaddingBottom());
                }
                this.fallback.setVisibility(this.active ? 0 : 8);
                ContinueActions262.call(this.adapter, "notifyDataSetChanged", new Object[0]);
            } catch (Exception e) {
                ContinueActions262.error("continue_more_toolbar262", e);
            }
        }

        void begin() {
            if (this.mode) {
                confirm();
                return;
            }
            View view = this.root.get();
            if (!(view instanceof ViewGroup) || this.recycler == null) {
                return;
            }
            this.mode = true;
            Context context = view.getContext();
            LinearLayout linearLayout = new LinearLayout(context);
            this.bar = linearLayout;
            linearLayout.setOrientation(1);
            this.bar.setBackground(AccountUi.shape(context, -14671323, 16));
            this.bar.setPadding(ContinueActions262.dp(context, 12), ContinueActions262.dp(context, 10), ContinueActions262.dp(context, 12), ContinueActions262.dp(context, 10));
            TextView textView = new TextView(context);
            this.count = textView;
            textView.setTextColor(-1);
            this.count.setGravity(17);
            this.bar.addView(this.count);
            LinearLayout linearLayout2 = new LinearLayout(context);
            this.bar.addView(linearLayout2);
            linearLayout2.addView(button(context, "تحديد الكل", new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Iterator<Object> it = More.this.items().iterator();
                    while (it.hasNext()) {
                        More.this.selected.add(ContinueActions262.text(it.next(), "nb"));
                    }
                    More.this.update();
                }
            }), cell(context));
            linearLayout2.addView(button(context, "إلغاء تحديد الكل", new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    More.this.selected.clear();
                    More.this.update();
                }
            }), cell(context));
            linearLayout2.addView(button(context, "تحديد عمل", new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    More.this.chooseWork();
                }
            }), cell(context));
            LinearLayout linearLayout3 = new LinearLayout(context);
            this.bar.addView(linearLayout3);
            linearLayout3.addView(button(context, "تحديد موسم", new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    More.this.chooseScope(false);
                }
            }), cell(context));
            linearLayout3.addView(button(context, "تحديد نطاق", new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    More.this.chooseScope(true);
                }
            }), cell(context));
            LinearLayout linearLayout4 = new LinearLayout(context);
            this.bar.addView(linearLayout4);
            linearLayout4.addView(button(context, "حذف المحدد", new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    More.this.confirm();
                }
            }), cell(context));
            linearLayout4.addView(button(context, "إلغاء", new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    More.this.end();
                }
            }), cell(context));
            ((ViewGroup) view).addView(this.bar, new ViewGroup.LayoutParams(-1, -2));
            this.bar.bringToFront();
            this.bar.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.9
                @Override // java.lang.Runnable
                public void run() {
                    if (More.this.mode) {
                        More.this.recycler.setPadding(More.this.recycler.getPaddingLeft(), More.this.oldPadding + More.this.bar.getHeight(), More.this.recycler.getPaddingRight(), More.this.recycler.getPaddingBottom());
                    }
                }
            });
            update();
        }

        Button button(Context context, String str, View.OnClickListener onClickListener) {
            Button button = new Button(context);
            button.setText(ContinueActions262.tr(str));
            button.setTextSize(13.0f);
            AccountUi.button(button, str.contains("حذف"));
            button.setOnClickListener(onClickListener);
            return button;
        }

        LinearLayout.LayoutParams cell(Context context) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, ContinueActions262.dp(context, 54), 1.0f);
            layoutParams.setMargins(ContinueActions262.dp(context, 4), ContinueActions262.dp(context, 4), ContinueActions262.dp(context, 4), ContinueActions262.dp(context, 4));
            return layoutParams;
        }

        void chooseScope(final boolean z) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : items()) {
                linkedHashMap.put(ContinueActions262.work(obj) + "|" + ContinueActions262.text(obj, "season"), ContinueActions262.label(obj) + " — " + ContinueActions262.tr("الموسم") + " " + ContinueActions262.text(obj, "season"));
            }
            final ArrayList arrayList = new ArrayList(linkedHashMap.keySet());
            new AccountUi.Builder(this.root.get().getContext()).setTitle(ContinueActions262.tr("اختر العمل والموسم")).setItems((CharSequence[]) linkedHashMap.values().toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.11
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    final ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : More.this.items()) {
                        if (((String) arrayList.get(i)).equals(ContinueActions262.work(obj2) + "|" + ContinueActions262.text(obj2, "season"))) {
                            arrayList2.add(obj2);
                        }
                    }
                    if (!z) {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            More.this.selected.add(ContinueActions262.text(it.next(), "nb"));
                        }
                        More.this.update();
                        return;
                    }
                    Context context = More.this.root.get().getContext();
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    final EditText editText = new EditText(context);
                    final EditText editText2 = new EditText(context);
                    editText.setInputType(2);
                    editText2.setInputType(2);
                    editText.setHint(ContinueActions262.tr("من الحلقة"));
                    editText2.setHint(ContinueActions262.tr("إلى الحلقة"));
                    linearLayout.addView(editText);
                    linearLayout.addView(editText2);
                    new AccountUi.Builder(context).setTitle(ContinueActions262.tr("تحديد نطاق")).setView(linearLayout).setPositiveButton(ContinueActions262.tr("تحديد"), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.11.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i2) {
                            try {
                                int i3 = Integer.parseInt(editText.getText().toString());
                                int i4 = Integer.parseInt(editText2.getText().toString());
                                if (i3 < 0 || i4 < i3) {
                                    throw new NumberFormatException();
                                }
                                for (Object obj3 : arrayList2) {
                                    try {
                                        int i5 = Integer.parseInt(ContinueActions262.text(obj3, "episodeNummer"));
                                        if (i5 >= i3 && i5 <= i4) {
                                            More.this.selected.add(ContinueActions262.text(obj3, "nb"));
                                        }
                                    } catch (NumberFormatException unused) {
                                    }
                                }
                                More.this.update();
                            } catch (NumberFormatException unused2) {
                                Toast.makeText(More.this.root.get().getContext(), ContinueActions262.tr("أدخل نطاق حلقات صحيحًا"), 0).show();
                            }
                        }
                    }).setNegativeButton(ContinueActions262.tr("إلغاء"), (DialogInterface.OnClickListener) null).show();
                }
            }).setNegativeButton(ContinueActions262.tr("إلغاء"), (DialogInterface.OnClickListener) null).show();
        }

        void chooseWork() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : items()) {
                linkedHashMap.put(ContinueActions262.work(obj), ContinueActions262.label(obj));
            }
            final ArrayList arrayList = new ArrayList(linkedHashMap.keySet());
            new AccountUi.Builder(this.root.get().getContext()).setTitle(ContinueActions262.tr("تحديد عمل")).setItems((CharSequence[]) linkedHashMap.values().toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    for (Object obj2 : More.this.items()) {
                        if (((String) arrayList.get(i)).equals(ContinueActions262.work(obj2))) {
                            More.this.selected.add(ContinueActions262.text(obj2, "nb"));
                        }
                    }
                    More.this.update();
                }
            }).setNegativeButton(ContinueActions262.tr("إلغاء"), (DialogInterface.OnClickListener) null).show();
        }

        void confirm() {
            if (this.selected.isEmpty()) {
                return;
            }
            final LinkedHashSet linkedHashSet = new LinkedHashSet(this.selected);
            new AccountUi.Builder(this.root.get().getContext()).setTitle(ContinueActions262.tr("حذف من أكمل المشاهدة")).setMessage(ContinueActions262.tr("حذف العناصر المحددة من سجل المشاهدة؟") + " (" + linkedHashSet.size() + ")").setPositiveButton(ContinueActions262.tr("حذف"), new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.More.12
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ContinueActions262.remove(linkedHashSet);
                    More.this.end();
                }
            }).setNegativeButton(ContinueActions262.tr("إلغاء"), (DialogInterface.OnClickListener) null).show();
        }

        void detach() {
            end();
            Menu menu = this.menu;
            if (menu != null) {
                menu.removeItem(ContinueActions262.MENU_ID);
            }
            ImageButton imageButton = this.fallback;
            if (imageButton != null && (imageButton.getParent() instanceof ViewGroup)) {
                ((ViewGroup) this.fallback.getParent()).removeView(this.fallback);
            }
            this.fallback = null;
            this.adapter = null;
            this.recycler = null;
        }

        void end() {
            LinearLayout linearLayout;
            this.mode = false;
            this.selected.clear();
            View view = this.root.get();
            if ((view instanceof ViewGroup) && (linearLayout = this.bar) != null) {
                ((ViewGroup) view).removeView(linearLayout);
            }
            this.bar = null;
            View view2 = this.recycler;
            if (view2 != null) {
                view2.setPadding(view2.getPaddingLeft(), this.oldPadding + (this.inlineAction ? ContinueActions262.dp(this.recycler.getContext(), 48) : 0), this.recycler.getPaddingRight(), this.recycler.getPaddingBottom());
            }
            update();
        }

        List<Object> items() {
            try {
                Object obj = ContinueActions262.get(this.adapter, "a");
                if (obj instanceof List) {
                    return new ArrayList((List) obj);
                }
            } catch (Exception e) {
                ContinueActions262.error("continue_items262", e);
            }
            return Collections.emptyList();
        }

        void refresh() {
            try {
                ArrayList arrayList = new ArrayList();
                synchronized (Continue106.class) {
                    for (Object obj : items()) {
                        if (Continue106.entries.containsKey(ContinueActions262.text(obj, "nb"))) {
                            arrayList.add(obj);
                        }
                    }
                }
                ContinueActions262.call(this.adapter, "e", arrayList);
                synchronized (Continue106.class) {
                    this.selected.retainAll(Continue106.entries.keySet());
                }
                update();
            } catch (Exception e) {
                ContinueActions262.error("continue_more_refresh262", e);
            }
        }

        void toggle(String str) {
            if (!this.selected.remove(str)) {
                this.selected.add(str);
            }
            update();
        }

        void update() {
            TextView textView = this.count;
            if (textView != null) {
                textView.setText(ContinueActions262.tr("المحدد") + ": " + this.selected.size());
            }
            Iterator it = new ArrayList(ContinueActions262.bound.values()).iterator();
            while (it.hasNext()) {
                ((Bound) it.next()).paint();
            }
        }
    }

    private ContinueActions262() {
    }

    public static void attachMore(Object obj) {
        View view;
        try {
            if (tr("أكمل المشاهدة").equals(text(call(obj, "c2", new Object[0]), "l")) && (view = (View) call(obj, "getView", new Object[0])) != null) {
                Map<View, More> map = pages;
                if (map.containsKey(view)) {
                    return;
                }
                final More more = new More(view);
                map.put(view, more);
                view.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.2
                    @Override // java.lang.Runnable
                    public void run() {
                        more.attach();
                    }
                });
            }
        } catch (Exception e) {
            error("continue_more_attach262", e);
        }
    }

    private static void bind(Object obj, boolean z, String str, String str2, String str3) {
        Object obj2;
        try {
            View view = (View) get(obj, "v");
            Map<View, Bound> map = bound;
            if (map.remove(view) != null) {
                view.setOnLongClickListener(null);
                view.setLongClickable(false);
            }
            if (!z || (obj2 = get(obj, str)) == null || text(obj2, "nb").isEmpty()) {
                return;
            }
            Bound bound2 = new Bound(view, obj2, get(obj, str2), (TextView) get(obj, str3));
            map.put(view, bound2);
            bound2.paint();
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    Bound bound3 = (Bound) ContinueActions262.bound.get(view2);
                    if (bound3 == null) {
                        return false;
                    }
                    More morePage = ContinueActions262.page(view2);
                    if (morePage == null || !morePage.mode) {
                        ContinueActions262.popup(view2, bound3);
                        return true;
                    }
                    morePage.toggle(ContinueActions262.text(bound3.model, "nb"));
                    return true;
                }
            });
        } catch (Exception e) {
            error("continue_bind262", e);
        }
    }

    public static void bindHorizontal(Object obj, boolean z) {
        bind(obj, z, "U", "T", "P");
        AccountUi.resume(obj, z);
    }

    public static void bindWide(Object obj) {
        try {
            boolean z = page((View) get(obj, "v")) != null;
            bind(obj, z, "S", "R", "M");
            if (z) {
                String strResumeSubtitle = resumeSubtitle(get(obj, "S"));
                TextView textView = (TextView) get(obj, "O");
                textView.setText(strResumeSubtitle);
                textView.setVisibility(strResumeSubtitle.isEmpty() ? 8 : 0);
                ((View) get(obj, "Q")).setVisibility(8);
            }
        } catch (Exception e) {
            error("continue_wide_bind262", e);
        }
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        return Continue106.call(obj, str, objArr);
    }

    public static String cleanTitle(String str) {
        return ResumeDisplay263.cleanTitle(str);
    }

    static Object contentAdapter(Object obj) throws Exception {
        for (int i = 0; obj != null && i < 8; i++) {
            if (!"androidx.recyclerview.widget.g".equals(obj.getClass().getName())) {
                if (get(obj, "a") instanceof List) {
                    return obj;
                }
                throw new IllegalArgumentException("Missing video list");
            }
            List list = (List) call(obj, "f", new Object[0]);
            obj = list.isEmpty() ? null : list.get(0);
        }
        throw new IllegalArgumentException("Missing video adapter");
    }

    public static void detachMore(Object obj) {
        try {
            More moreRemove = pages.remove((View) call(obj, "getView", new Object[0]));
            if (moreRemove != null) {
                moreRemove.detach();
            }
        } catch (Exception e) {
            error("continue_more_detach262", e);
        }
    }

    static int dp(Context context, int i) {
        return (int) ((context.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    static void error(String str, Exception exc) {
        Continue106.log(str, exc);
    }

    static View find(View view, String str) {
        if (view.getClass().getName().endsWith(str)) {
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
            View viewFind = find(viewGroup.getChildAt(i), str);
            if (viewFind != null) {
                return viewFind;
            }
            i++;
        }
    }

    static Object get(Object obj, String str) throws Exception {
        return Continue106.get(obj, str);
    }

    public static boolean interceptClick(Object obj, Object obj2, View view) {
        if (isDetails()) {
            return false;
        }
        More morePage = view == null ? null : page(view);
        if (morePage == null || !morePage.mode) {
            return false;
        }
        morePage.toggle(text(obj2, "nb"));
        return true;
    }

    public static boolean isDetails() {
        return Boolean.TRUE.equals(details.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String label(Object obj) {
        String[] strArr = {"customArTitle", "arTitle", "title", "customEnTitle", "enTitle"};
        for (int i = 0; i < 5; i++) {
            String strCleanTitle = cleanTitle(text(obj, strArr[i]));
            if (!strCleanTitle.isEmpty()) {
                return strCleanTitle;
            }
        }
        return tr("عمل بدون عنوان");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void openDetails(View view, Bound bound2) {
        try {
            Object objCreateFromParcel = bound2.model;
            String strText = text(objCreateFromParcel, "rootSeries");
            if (!strText.isEmpty() && !"0".equals(strText) && !strText.equals(text(objCreateFromParcel, "nb"))) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    ((Parcelable) objCreateFromParcel).writeToParcel(parcelObtain, 0);
                    parcelObtain.setDataPosition(0);
                    objCreateFromParcel = ((Parcelable.Creator) get(objCreateFromParcel.getClass(), "CREATOR")).createFromParcel(parcelObtain);
                    Continue106.set(objCreateFromParcel, "nb", strText);
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }
            Object obj = bound2.listener.get();
            if (obj == null) {
                throw new IllegalStateException("Missing item listener");
            }
            details.set(Boolean.TRUE);
            try {
                call(obj, "a", objCreateFromParcel, view);
            } finally {
                details.remove();
            }
        } catch (Exception e) {
            error("continue_details262", e);
            Toast.makeText(view.getContext(), tr("تعذر فتح تفاصيل العمل"), 0).show();
        }
    }

    static More page(View view) {
        for (int i = 0; view != null && i < 30; i++) {
            More more = pages.get(view);
            if (more != null) {
                return more;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    static void popup(final View view, final Bound bound2) {
        view.performHapticFeedback(0);
        AccountUi.actions(view, new Runnable() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ContinueActions262.openDetails(view, bound2);
            }
        }, new Runnable() { // from class: com.shabakaty.cinemana.ca1.ContinueActions262$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ContinueActions262.remove(Collections.singleton(ContinueActions262.text(bound2.model, "nb")));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void remove(Collection<String> collection) {
        try {
            Iterator it = new ArrayList(collection).iterator();
            while (it.hasNext()) {
                Continue106.removeOnly((String) it.next());
            }
            Object obj = Continue106.home == null ? null : Continue106.home.get();
            if (obj != null) {
                Continue106.refresh(obj);
            }
            Iterator it2 = new ArrayList(pages.values()).iterator();
            while (it2.hasNext()) {
                ((More) it2.next()).refresh();
            }
        } catch (Exception e) {
            error("continue_remove262", e);
        }
    }

    static String resumeSubtitle(Object obj) throws Exception {
        long jLongValue;
        long jLongValue2;
        synchronized (Continue106.class) {
            Continue106.Entry entry = Continue106.entries.get(text(obj, "nb"));
            if (entry != null) {
                jLongValue = ((Number) get(entry, "p")).longValue();
                jLongValue2 = ((Number) get(entry, "d")).longValue();
            } else {
                jLongValue = 0;
                jLongValue2 = 0;
            }
        }
        return ResumeDisplay263.subtitle(text(obj, "season"), text(obj, "episodeNummer"), jLongValue, jLongValue2);
    }

    static String text(Object obj, String str) {
        try {
            return Continue106.text(obj, str);
        } catch (Exception unused) {
            return BuildConfig.FLAVOR;
        }
    }

    static String tr(String str) {
        return I18n161.t(str);
    }

    public static void visibility(Object obj, boolean z) {
        try {
            int i = 0;
            More more = pages.get((View) call(obj, "getView", new Object[0]));
            if (more != null) {
                more.active = z;
                if (more.fallback != null) {
                    ImageButton imageButton = more.fallback;
                    if (!z) {
                        i = 8;
                    }
                    imageButton.setVisibility(i);
                }
            }
        } catch (Exception e) {
            error("continue_more_visibility264", e);
        }
    }

    static View visibleToolbar(View view) {
        if (view != null && view.isShown()) {
            int i = 0;
            if (view.getClass().getName().endsWith("Toolbar")) {
                try {
                    if (tr("أكمل المشاهدة").equals(String.valueOf(call(view, "getTitle", new Object[0])))) {
                        return view;
                    }
                } catch (Exception unused) {
                }
            }
            if (view instanceof ViewGroup) {
                while (true) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    if (i >= viewGroup.getChildCount()) {
                        break;
                    }
                    View viewVisibleToolbar = visibleToolbar(viewGroup.getChildAt(i));
                    if (viewVisibleToolbar != null) {
                        return viewVisibleToolbar;
                    }
                    i++;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String work(Object obj) {
        String strText = text(obj, "rootSeries");
        if (strText.isEmpty() || "0".equals(strText)) {
            return "title:" + label(obj).toLowerCase(Locale.ROOT);
        }
        return "id:" + strText;
    }
}
