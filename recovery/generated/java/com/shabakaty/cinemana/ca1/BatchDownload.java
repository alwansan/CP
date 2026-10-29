package com.shabakaty.cinemana.ca1;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class BatchDownload {
    static final Set<String> ADMITTED = Collections.synchronizedSet(new HashSet());
    static final Map<String, Cached> CACHE = Collections.synchronizedMap(new LinkedHashMap<String, Cached>(RecyclerView.b0.FLAG_TMP_DETACHED, 0.75f, true) { // from class: com.shabakaty.cinemana.ca1.BatchDownload.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Cached> entry) {
            return size() > 1500;
        }
    });
    static final String D = "com.shabakaty.downloader.";
    static final String M = "com.shabakaty.cinemana.domain.models.local.";
    static Dialog active;
    static volatile Screen activeScreen;

    interface Callback {
        void run(Object obj) throws Exception;
    }

    static long probeSize(String str, String str2, String str3) {
        return Sizes.probe(str, str2, str3);
    }

    static final class Ui {
        static final Handler MAIN = new Handler(Looper.getMainLooper());

        Ui() {
        }
    }

    static final class Cached {
        final long at = System.currentTimeMillis();
        final List<Variant> variants;

        Cached(List<Variant> list) {
            this.variants = list;
        }
    }

    static class Job implements Runnable, Comparable<Job> {
        static final AtomicLong serial = new AtomicLong();
        final int priority;
        final long sequence = serial.incrementAndGet();
        final Runnable work;

        Job(int i, Runnable runnable) {
            this.priority = i;
            this.work = runnable;
        }

        @Override // java.lang.Comparable
        public int compareTo(Job job) {
            int iCompare = Integer.compare(this.priority, job.priority);
            return iCompare != 0 ? iCompare : Long.compare(this.sequence, job.sequence);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.work.run();
        }
    }

    static ThreadPoolExecutor pool(int i) {
        return new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue());
    }

    static /* synthetic */ void lambda$toastSafe$0(Context context, Context context2, CharSequence charSequence) {
        if (context == null) {
            context = context2;
        }
        try {
            Toast.makeText(context, charSequence, 0).show();
        } catch (Throwable th) {
            BatchLog.event("guard", "toast_error", charSequence.toString(), th);
        }
    }

    public static void toastSafe(final Context context, final CharSequence charSequence) {
        if (context == null) {
            return;
        }
        BatchLog.init(context);
        BatchLog.event("guard", "toast_post", charSequence.toString(), null);
        final Context applicationContext = context.getApplicationContext();
        Ui.MAIN.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BatchDownload.lambda$toastSafe$0(applicationContext, context, charSequence);
            }
        });
    }

    public static void guardToast(Context context, Object obj, CharSequence charSequence) {
        BatchLog.init(context);
        BatchLog.event("guard", "guard_block", "id=" + str(obj, "id") + " task=" + str(obj, "downloadTaskId") + " path=" + str(obj, FileDownloadModel.PATH) + " message=" + ((Object) charSequence), null);
        toastSafe(context, charSequence);
    }

    static String number(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.trim().length(); i++) {
            int iDigit = Character.digit(str.trim().charAt(i), 10);
            if (iDigit < 0) {
                return "!";
            }
            sb.append(iDigit);
        }
        return sb.length() == 0 ? BuildConfig.FLAVOR : new BigInteger(sb.toString()).toString();
    }

    static boolean matches(String str, String str2) {
        return str2.isEmpty() || (!number(str2).equals("!") && number(str).equals(number(str2)));
    }

    static boolean series(Object obj) {
        return obj != null && "2".equals(str(obj, "kind"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void visibility(final Object obj, final View view, final View view2, final int i) {
        try {
            int i2 = 0;
            Object objCall = call(obj, "c2", new Object[0]);
            Object objCall2 = call(objCall, "v", new Object[0]);
            Object objCall3 = call(field(objCall, "v"), "a", new Object[0]);
            if (!series(objCall2) || !(objCall3 instanceof List) || ((List) objCall3).isEmpty()) {
                i2 = 8;
            }
            view2.setVisibility(i2);
        } catch (Throwable th) {
            view2.setVisibility(8);
        }
        if (i >= 120 || view.getTag(R.id.ca1_install_owner) != obj) {
            return;
        }
        view.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                BatchDownload.visibility(obj, view, view2, i + 1);
            }
        }, 500L);
    }

    static Object field(Object obj, String str) throws Exception {
        boolean z = obj instanceof Class;
        Field field = (z ? (Class) obj : obj.getClass()).getField(str);
        if (z) {
            obj = null;
        }
        return field.get(obj);
    }

    static void set(Object obj, String str, Object obj2) throws Exception {
        obj.getClass().getField(str).set(obj, obj2);
    }

    static String str(Object obj, String str) {
        try {
            Object objField = field(obj, str);
            return objField == null ? BuildConfig.FLAVOR : objField.toString();
        } catch (Exception e) {
            return BuildConfig.FLAVOR;
        }
    }

    static Class<?> type(String str) throws Exception {
        return Class.forName(str);
    }

    static boolean fits(Class<?>[] clsArr, Object[] objArr) {
        if (clsArr.length != objArr.length) {
            return false;
        }
        for (int i = 0; i < clsArr.length; i++) {
            if (objArr[i] != null && !clsArr[i].isInstance(objArr[i]) && ((clsArr[i] != Integer.TYPE || !(objArr[i] instanceof Integer)) && (clsArr[i] != Boolean.TYPE || !(objArr[i] instanceof Boolean)))) {
                return false;
            }
        }
        return true;
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        boolean z = obj instanceof Class;
        Class<?> cls = z ? (Class) obj : obj.getClass();
        for (Method method : cls.getMethods()) {
            if (method.getName().equals(str) && fits(method.getParameterTypes(), objArr)) {
                method.setAccessible(true);
                if (z) {
                    obj = null;
                }
                return method.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException(cls.getName() + "." + str);
    }

    static Object make(String str, Object... objArr) throws Exception {
        for (Constructor<?> constructor : type(str).getConstructors()) {
            if (fits(constructor.getParameterTypes(), objArr)) {
                return constructor.newInstance(objArr);
            }
        }
        throw new NoSuchMethodException(str + " constructor");
    }

    static Object proxy(String str, final Callback callback) throws Exception {
        Class<?> clsType = type(str);
        return Proxy.newProxyInstance(clsType.getClassLoader(), new Class[]{clsType}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.BatchDownload.2
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) throws Exception {
                if (method.getDeclaringClass() != Object.class) {
                    callback.run((objArr == null || objArr.length == 0) ? null : objArr[0]);
                    return null;
                }
                if (method.getName().equals("hashCode")) {
                    return Integer.valueOf(System.identityHashCode(obj));
                }
                if (method.getName().equals("equals")) {
                    return Boolean.valueOf(obj == objArr[0]);
                }
                return "CA1 callback";
            }
        });
    }

    static Object await(Object obj, final boolean z) throws Exception {
        if (!z) {
            obj = call(obj, "m", field(type("com.shabakaty.downloader.ay3"), "b"));
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Object[] objArr = new Object[1];
        final Throwable[] thArr = new Throwable[1];
        Object objProxy = proxy("com.shabakaty.downloader.xc0", new Callback() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda0
            @Override // com.shabakaty.cinemana.ca1.BatchDownload.Callback
            public final void run(Object obj2) throws Exception {
                BatchDownload.lambda$await$2(objArr, z, countDownLatch, obj2);
            }
        });
        Object objProxy2 = proxy("com.shabakaty.downloader.xc0", new Callback() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda1
            @Override // com.shabakaty.cinemana.ca1.BatchDownload.Callback
            public final void run(Object obj2) throws Exception {
                BatchDownload.lambda$await$3(thArr, countDownLatch, obj2);
            }
        });
        Object objCall = z ? call(obj, "g", objProxy, objProxy2, proxy("com.shabakaty.downloader.j2", new Callback() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda2
            @Override // com.shabakaty.cinemana.ca1.BatchDownload.Callback
            public final void run(Object obj2) {
                countDownLatch.countDown();
            }
        }), proxy("com.shabakaty.downloader.xc0", new Callback() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda3
            @Override // com.shabakaty.cinemana.ca1.BatchDownload.Callback
            public final void run(Object obj2) throws Exception {
                BatchDownload.lambda$await$5(obj2);
            }
        })) : call(obj, "k", objProxy, objProxy2);
        try {
            if (!countDownLatch.await(35L, TimeUnit.SECONDS)) {
                throw new TimeoutException(I18n161.t("انتهت مهلة قراءة البيانات"));
            }
            if (thArr[0] != null) {
                throw new Exception(thArr[0]);
            }
            if (objArr[0] == null) {
                throw new Exception(I18n161.t("لم تصل بيانات من الخادم"));
            }
            Object obj2 = objArr[0];
            try {
                call(objCall, "h", new Object[0]);
            } catch (Exception e) {
            }
            return obj2;
        } catch (Throwable th) {
            try {
                call(objCall, "h", new Object[0]);
            } catch (Exception e2) {
            }
            throw th;
        }
    }

    static /* synthetic */ void lambda$await$2(Object[] objArr, boolean z, CountDownLatch countDownLatch, Object obj) throws Exception {
        objArr[0] = obj;
        if (z) {
            return;
        }
        countDownLatch.countDown();
    }

    static /* synthetic */ void lambda$await$3(Throwable[] thArr, CountDownLatch countDownLatch, Object obj) throws Exception {
        thArr[0] = (Throwable) obj;
        countDownLatch.countDown();
    }

    static /* synthetic */ void lambda$await$5(Object obj) throws Exception {
    }

    static boolean existing(String str) throws Exception {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Object[] objArr = new Object[1];
        Class<?> clsType = type("com.shabakaty.downloader.ud0");
        Object objCall = call(call(type("com.shabakaty.downloader.vy0"), "b", new Object[0]), "e", str, Proxy.newProxyInstance(clsType.getClassLoader(), new Class[]{clsType}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda8
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr2) {
                return BatchDownload.lambda$existing$6(objArr, countDownLatch, obj, method, objArr2);
            }
        }));
        if (objCall == type("com.shabakaty.downloader.te0").getField("r").get(null)) {
            if (!countDownLatch.await(15L, TimeUnit.SECONDS)) {
                throw new TimeoutException(I18n161.t("تعذر التحقق من التنزيلات"));
            }
            objCall = objArr[0];
        }
        call(type("com.shabakaty.downloader.j96"), "i", objCall);
        return objCall != null;
    }

    static /* synthetic */ Object lambda$existing$6(Object[] objArr, CountDownLatch countDownLatch, Object obj, Method method, Object[] objArr2) throws Throwable {
        if (method.getName().equals("a")) {
            return type("com.shabakaty.downloader.s21").getField("r").get(null);
        }
        if (method.getName().equals("i")) {
            objArr[0] = objArr2[0];
            countDownLatch.countDown();
            return null;
        }
        if (method.getName().equals("hashCode")) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if (method.getName().equals("equals")) {
            return Boolean.valueOf(obj == objArr2[0]);
        }
        return "CA1 continuation";
    }

    static Object unwrap(Object obj) throws Exception {
        if (obj != null && obj.getClass().getName().equals("com.shabakaty.downloader.tj")) {
            Object objField = field(obj, "b");
            if (objField != null) {
                return objField;
            }
            throw new Exception(I18n161.t("تعذر جلب بيانات الحلقة"));
        }
        return obj;
    }

    public static void install(final Object obj, View view) {
        try {
            View viewFindViewWithTag = view.findViewWithTag("ca1_batch_download");
            if (viewFindViewWithTag == null) {
                return;
            }
            BatchLog.init(view.getContext());
            viewFindViewWithTag.setVisibility(8);
            view.setTag(R.id.ca1_install_owner, obj);
            visibility(obj, view, viewFindViewWithTag, 0);
            viewFindViewWithTag.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BatchDownload.lambda$install$7(obj, view2);
                }
            });
        } catch (Exception e) {
            Log.e("CA1_BATCH", "install", e);
        }
    }

    static /* synthetic */ void lambda$install$7(Object obj, View view) {
        try {
            if (active == null || !active.isShowing()) {
                Object objCall = call(obj, "c2", new Object[0]);
                Object objCall2 = call(objCall, "v", new Object[0]);
                if (series(objCall2)) {
                    new Screen(obj, objCall, field(objCall, "h"), objCall2, view.getContext()).show();
                } else {
                    Toast.makeText(view.getContext(), I18n161.t("التحميل المتعدد مخصص للمواسم والحلقات"), 0).show();
                }
            }
        } catch (Exception e) {
            Log.e("CA1_BATCH", "open", e);
            Toast.makeText(view.getContext(), I18n161.t("تعذر فتح التحميل المتعدد"), 1).show();
        }
    }

    public static void release(Object obj) {
        if (activeScreen == null || activeScreen.fragment != obj) {
            return;
        }
        activeScreen.dialog.dismiss();
        activeScreen = null;
    }

    static List<Episode> episodeList(List<?> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Episode episode = new Episode();
            episode.brief = obj;
            episode.id = str(obj, "nb");
            episode.season = str(obj, "season");
            episode.number = str(obj, "episodeNummer");
            episode.title = str(obj, "arTitle");
            if (episode.title.isEmpty()) {
                episode.title = str(obj, "enTitle");
            }
            if (episode.title.isEmpty()) {
                episode.title = I18n161.t("الحلقة ") + episode.number;
            }
            if (!episode.id.isEmpty()) {
                linkedHashMap.put(episode.id, episode);
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        Collections.sort(arrayList, new Comparator() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$$ExternalSyntheticLambda7
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return BatchDownload.lambda$episodeList$8((BatchDownload.Episode) obj2, (BatchDownload.Episode) obj3);
            }
        });
        return arrayList;
    }

    static /* synthetic */ int lambda$episodeList$8(Episode episode, Episode episode2) {
        int iOrder = order(episode.season, episode2.season);
        return iOrder != 0 ? iOrder : order(episode.number, episode2.number);
    }

    static int order(String str, String str2) {
        try {
            return Integer.compare(Integer.parseInt(str), Integer.parseInt(str2));
        } catch (Exception e) {
            return str.compareTo(str2);
        }
    }

    static int height(String str) {
        String strTrim = str.toLowerCase(Locale.ROOT).trim();
        if (strTrim.contains("4k")) {
            return 2160;
        }
        if (strTrim.contains("8k")) {
            return 4320;
        }
        Matcher matcher = Pattern.compile("(\\d+)\\s*[x×]\\s*(\\d+)").matcher(strTrim);
        if (matcher.find()) {
            return Integer.parseInt(matcher.group(2));
        }
        Matcher matcher2 = Pattern.compile("(\\d+)").matcher(strTrim);
        if (matcher2.find()) {
            return Integer.parseInt(matcher2.group(1));
        }
        return 0;
    }

    static int choose(List<Variant> list, int i) {
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int i5 = list.get(i4).height;
            if (i5 > 0) {
                if (i3 < 0 || i5 < list.get(i3).height) {
                    i3 = i4;
                }
                if (i5 <= i && (i2 < 0 || i5 > list.get(i2).height)) {
                    i2 = i4;
                }
            }
        }
        return i2 >= 0 ? i2 : i3;
    }

    static class Variant {
        volatile boolean checked;
        int height;
        String label;
        volatile boolean probing;
        Object quality;
        volatile long size = -1;
        Job sizeJob;
        String url;

        Variant() {
        }
    }

    static String bytes(long j) {
        if (j < 0) {
            return I18n161.t("غير معروف");
        }
        if (j < 1024) {
            return j + " B";
        }
        double d = j;
        String[] strArr = {"B", "KiB", "MiB", "GiB", "TiB"};
        int i = 0;
        while (d >= 1024.0d && i < 4) {
            d /= 1024.0d;
            i++;
        }
        return String.format(Locale.US, "%.2f %s", Double.valueOf(d), strArr[i]);
    }

    static class Episode {
        Object brief;
        String error;
        volatile boolean existing;
        int generation;
        String id;
        Job job;
        Object model;
        String number;
        boolean queued;
        String season;
        boolean selected;
        boolean submitted;
        String title;
        volatile List<Variant> variants = Collections.emptyList();
        volatile boolean loading = true;
        int manual = -1;

        Episode() {
        }
    }

    static final class Screen {
        Button allButton;
        boolean busy;
        Button clearButton;
        Button closeButton;
        volatile boolean closed;
        final Context context;
        final Object current;
        final Dialog dialog;
        int enqueueFailures;
        int episodeAttempts;
        final Object fragment;
        ListView list;
        TextView progress;
        Button qualityButton;
        Rail rail;
        boolean refreshPosted;
        final Object repo;
        int resolved;
        EditText search;
        Button seasonButton;
        Button start;
        TextView summary;
        final Object vm;
        final ThreadPoolExecutor metadata = BatchDownload.pool(6);
        final ThreadPoolExecutor sizes = BatchDownload.pool(3);
        final String session = UUID.randomUUID().toString();
        final long opened = SystemClock.elapsedRealtime();
        final ConcurrentHashMap<String, String> running = new ConcurrentHashMap<>();
        String query = BuildConfig.FLAVOR;
        final List<Episode> episodes = new ArrayList();
        final List<Object> rows = new ArrayList();
        final Adapter adapter = new Adapter();
        final Map<String, Long> sizeCache = new ConcurrentHashMap();
        String filter = BuildConfig.FLAVOR;
        int cap = 1080;

        Screen(Object obj, Object obj2, Object obj3, Object obj4, Context context) {
            this.fragment = obj;
            this.vm = obj2;
            this.repo = obj3;
            this.current = obj4;
            this.context = context;
            this.dialog = new Dialog(context);
        }

        int dp(int i) {
            return (int) ((i * this.context.getResources().getDisplayMetrics().density) + 0.5f);
        }

        TextView text(String str, int i) {
            Context context = this.context;
            TextView textView = new TextView(context);
            textView.setText(str);
            textView.setTextSize(i);
            textView.setTextColor(ThemeEngine142.legacy(context, -1));
            textView.setPadding(dp(8), dp(6), dp(8), dp(6));
            textView.setGravity(8388627);
            return textView;
        }

        GradientDrawable bg(int i) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(ThemeEngine142.legacy(this.context, i));
            gradientDrawable.setCornerRadius(dp(8));
            return gradientDrawable;
        }

        Button button(String str) {
            Context context = this.context;
            Button button = new Button(context);
            button.setText(str);
            button.setTextSize(12.0f);
            button.setTextColor(ThemeEngine142.legacy(context, -1));
            button.setAllCaps(false);
            button.setMinWidth(0);
            button.setMinimumWidth(0);
            button.setPadding(dp(4), 0, dp(4), 0);
            button.setBackground(bg(-13421767));
            return button;
        }

        void log(String str, String str2, Throwable th) {
            BatchLog.event(this.session, str, "work=" + BatchDownload.str(this.current, "nb") + " " + str2, th);
        }

        /* JADX INFO: renamed from: lambda$laterRefresh$0$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m5x161776b2() {
            this.refreshPosted = false;
            if (this.closed) {
                return;
            }
            prioritize();
            refresh();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: laterRefresh, reason: merged with bridge method [inline-methods] */
        public void m9lambda$probe$16$comshabakatycinemanaca1BatchDownload$Screen() {
            if (this.closed || this.refreshPosted) {
                return;
            }
            this.refreshPosted = true;
            Ui.MAIN.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m5x161776b2();
                }
            }, 120L);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: heartbeat, reason: merged with bridge method [inline-methods] */
        public void m4xf2a789e6() {
            if (this.closed) {
                return;
            }
            log("heartbeat", "resolved=" + this.resolved + " total=" + this.episodes.size() + " metadata_active=" + this.metadata.getActiveCount() + " queued=" + this.metadata.getQueue().size() + " sizes_active=" + this.sizes.getActiveCount() + " sizes_queued=" + this.sizes.getQueue().size() + " stages=" + this.running, null);
            Ui.MAIN.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m4xf2a789e6();
                }
            }, 5000L);
        }

        void show() {
            log("dialog_open", "kind=" + BatchDownload.str(this.current, "kind") + " title=" + BatchDownload.str(this.current, "enTitle"), null);
            LinearLayout linearLayout = new LinearLayout(this.context);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(dp(12), dp(10), dp(12), dp(10));
            I18n161.applyDir(linearLayout);
            linearLayout.setBackgroundColor(ThemeEngine142.legacy(-15263973));
            LinearLayout linearLayout2 = new LinearLayout(this.context);
            linearLayout2.addView(text(I18n161.t("التحميل المتعدد"), 17), new LinearLayout.LayoutParams(0, dp(44), 1.0f));
            ImageButton imageButton = new ImageButton(this.context);
            imageButton.setImageResource(android.R.drawable.ic_menu_search);
            imageButton.setColorFilter(ThemeEngine142.legacy(-1));
            imageButton.setBackground(bg(-14079697));
            imageButton.setContentDescription(I18n161.t("البحث برقم الحلقة"));
            int i = 40;
            linearLayout2.addView(imageButton, new LinearLayout.LayoutParams(dp(44), dp(40)));
            Button button = button(I18n161.t("إغلاق"));
            this.closeButton = button;
            linearLayout2.addView(button, new LinearLayout.LayoutParams(dp(64), dp(40)));
            button.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m16lambda$show$2$comshabakatycinemanaca1BatchDownload$Screen(view);
                }
            });
            linearLayout.addView(linearLayout2);
            this.search = new EditText(this.context);
            this.search.setSingleLine(true);
            this.search.setTextColor(ThemeEngine142.legacy(-1));
            this.search.setHintTextColor(ThemeEngine142.legacy(-4671294));
            this.search.setTextSize(14.0f);
            this.search.setHint(I18n161.t("رقم الحلقة بالضبط، مثل 7"));
            this.search.setInputType(2);
            this.search.setBackground(bg(-14079697));
            this.search.setPadding(dp(12), 0, dp(12), 0);
            linearLayout.addView(this.search, new LinearLayout.LayoutParams(-1, dp(44)));
            this.search.setVisibility(8);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m17lambda$show$3$comshabakatycinemanaca1BatchDownload$Screen(view);
                }
            });
            this.search.addTextChangedListener(new TextWatcher() { // from class: com.shabakaty.cinemana.ca1.BatchDownload.Screen.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    Screen.this.query = charSequence.toString().trim();
                    Screen.this.log("search", "number=" + Screen.this.query, null);
                    Screen.this.rebuild();
                }
            });
            LinearLayout linearLayout3 = new LinearLayout(this.context);
            this.seasonButton = button(I18n161.t("الموسم: كل المواسم"));
            this.qualityButton = button(I18n161.t("الجودة: 1080p"));
            this.allButton = button(I18n161.t("تحديد الكل"));
            int i2 = 3;
            Button[] buttonArr = {this.seasonButton, this.qualityButton, this.allButton};
            int i3 = 0;
            while (i3 < i2) {
                Button button2 = buttonArr[i3];
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, dp(i), 1.0f);
                layoutParams.setMargins(dp(2), 0, dp(2), 0);
                linearLayout3.addView(button2, layoutParams);
                i3++;
                i2 = 3;
                i = 40;
            }
            linearLayout.addView(linearLayout3);
            this.clearButton = button(I18n161.t("إلغاء التحديد"));
            linearLayout.addView(this.clearButton, new LinearLayout.LayoutParams(-1, dp(36)));
            this.clearButton.setVisibility(8);
            this.progress = text(I18n161.t("جارٍ جلب المواسم والحلقات…"), 12);
            linearLayout.addView(this.progress);
            LinearLayout linearLayout4 = new LinearLayout(this.context);
            I18n161.applyDir(linearLayout4);
            this.list = new Enhancements.DragList(this.context);
            I18n161.applyDir(this.list);
            this.list.setVerticalScrollBarEnabled(false);
            this.list.setDivider(new ColorDrawable(ThemeEngine142.legacy(-15263973)));
            this.list.setDividerHeight(dp(4));
            this.list.setAdapter((ListAdapter) this.adapter);
            linearLayout4.addView(this.list, new LinearLayout.LayoutParams(0, -1, 1.0f));
            this.rail = new Rail(this.context);
            linearLayout4.addView(this.rail, new LinearLayout.LayoutParams(dp(24), -1));
            linearLayout.addView(linearLayout4, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            this.list.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload.Screen.2
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i4, int i5, int i6) {
                    Screen.this.rail.invalidate();
                    Screen.this.prioritize();
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i4) {
                    if (i4 == 0) {
                        Screen.this.prioritize();
                    }
                }
            });
            this.start = button(I18n161.t("ابدأ التحميل"));
            this.start.setBackground(bg(-3790808));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, dp(48));
            layoutParams2.setMargins(0, dp(8), 0, 0);
            linearLayout.addView(this.start, layoutParams2);
            this.summary = text(I18n161.t("لم تُحدد حلقات"), 12);
            this.summary.setBackground(bg(-14079698));
            linearLayout.addView(this.summary, new LinearLayout.LayoutParams(-1, -2));
            this.seasonButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m18lambda$show$4$comshabakatycinemanaca1BatchDownload$Screen(view);
                }
            });
            this.qualityButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m19lambda$show$5$comshabakatycinemanaca1BatchDownload$Screen(view);
                }
            });
            this.allButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m20lambda$show$6$comshabakatycinemanaca1BatchDownload$Screen(view);
                }
            });
            this.clearButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m21lambda$show$7$comshabakatycinemanaca1BatchDownload$Screen(view);
                }
            });
            this.start.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda21
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m22lambda$show$8$comshabakatycinemanaca1BatchDownload$Screen(view);
                }
            });
            this.dialog.setContentView(linearLayout);
            this.dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda22
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.m23lambda$show$9$comshabakatycinemanaca1BatchDownload$Screen(dialogInterface);
                }
            });
            this.dialog.show();
            BatchDownload.active = this.dialog;
            BatchDownload.activeScreen = this;
            Window window = this.dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawable(new ColorDrawable(ThemeEngine142.legacy(0)));
                window.setLayout(-1, (int) (((double) this.context.getResources().getDisplayMetrics().heightPixels) * 0.9d));
            }
            Enhancements.bulk(this);
            refresh();
            m7xe04fdf83();
            m4xf2a789e6();
        }

        /* JADX INFO: renamed from: lambda$show$2$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m16lambda$show$2$comshabakatycinemanaca1BatchDownload$Screen(View view) {
            this.dialog.dismiss();
        }

        /* JADX INFO: renamed from: lambda$show$3$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m17lambda$show$3$comshabakatycinemanaca1BatchDownload$Screen(View view) {
            if (this.search.getVisibility() == 0) {
                this.search.setText(BuildConfig.FLAVOR);
                this.search.setVisibility(8);
                ((InputMethodManager) this.context.getSystemService("input_method")).hideSoftInputFromWindow(this.search.getWindowToken(), 0);
            } else {
                this.search.setVisibility(0);
                this.search.requestFocus();
                ((InputMethodManager) this.context.getSystemService("input_method")).showSoftInput(this.search, 1);
            }
        }

        /* JADX INFO: renamed from: lambda$show$4$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m18lambda$show$4$comshabakatycinemanaca1BatchDownload$Screen(View view) {
            seasons();
        }

        /* JADX INFO: renamed from: lambda$show$5$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m19lambda$show$5$comshabakatycinemanaca1BatchDownload$Screen(View view) {
            qualities();
        }

        /* JADX INFO: renamed from: lambda$show$6$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m20lambda$show$6$comshabakatycinemanaca1BatchDownload$Screen(View view) {
            toggleAll();
        }

        /* JADX INFO: renamed from: lambda$show$7$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m21lambda$show$7$comshabakatycinemanaca1BatchDownload$Screen(View view) {
            Iterator<Episode> it = this.episodes.iterator();
            while (it.hasNext()) {
                it.next().selected = false;
            }
            log("selection_clear", "all=true", null);
            refresh();
        }

        /* JADX INFO: renamed from: lambda$show$8$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m22lambda$show$8$comshabakatycinemanaca1BatchDownload$Screen(View view) {
            begin();
        }

        /* JADX INFO: renamed from: lambda$show$9$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m23lambda$show$9$comshabakatycinemanaca1BatchDownload$Screen(DialogInterface dialogInterface) {
            log("dialog_close", "age_ms=" + (SystemClock.elapsedRealtime() - this.opened) + " resolved=" + this.resolved + " total=" + this.episodes.size(), null);
            this.closed = true;
            this.metadata.shutdownNow();
            this.sizes.shutdownNow();
            if (BatchDownload.active == this.dialog) {
                BatchDownload.active = null;
            }
            if (BatchDownload.activeScreen == this) {
                BatchDownload.activeScreen = null;
            }
        }

        /* JADX INFO: renamed from: lambda$ui$10$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m24lambda$ui$10$comshabakatycinemanaca1BatchDownload$Screen(Runnable runnable) {
            if (this.closed) {
                return;
            }
            runnable.run();
        }

        void ui(final Runnable runnable) {
            if (this.closed) {
                return;
            }
            Ui.MAIN.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m24lambda$ui$10$comshabakatycinemanaca1BatchDownload$Screen(runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: loadEpisodes, reason: merged with bridge method [inline-methods] */
        public void m7xe04fdf83() {
            if (this.closed) {
                return;
            }
            try {
                Object objCall = BatchDownload.call(BatchDownload.field(this.vm, "v"), "a", new Object[0]);
                if ((objCall instanceof List) && !((List) objCall).isEmpty()) {
                    List<Episode> listEpisodeList = BatchDownload.episodeList((List) objCall);
                    this.episodes.clear();
                    this.episodes.addAll(listEpisodeList);
                    Ui7.restoreSelection(this);
                    log("episodes_ready", "count=" + listEpisodeList.size() + " elapsed_ms=" + (SystemClock.elapsedRealtime() - this.opened), null);
                    rebuild();
                    this.progress.setOnClickListener(null);
                    this.progress.setText(I18n161.t("جارٍ قراءة جودات الحلقات: ") + listEpisodeList.size());
                    Iterator<Episode> it = listEpisodeList.iterator();
                    while (it.hasNext()) {
                        schedule(it.next(), 20);
                    }
                    prioritize();
                    return;
                }
                int i = this.episodeAttempts;
                this.episodeAttempts = i + 1;
                if (i >= 35) {
                    this.progress.setText(I18n161.t("لم تصل قائمة الحلقات؛ اضغط هنا لإعادة المحاولة"));
                    this.progress.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.m8xdfd97984(view);
                        }
                    });
                } else {
                    if (this.episodeAttempts == 1) {
                        log("episodes_wait", "native_cache_empty", null);
                    }
                    Ui.MAIN.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m7xe04fdf83();
                        }
                    }, 1000L);
                }
            } catch (Throwable th) {
                log("episodes_error", BuildConfig.FLAVOR, th);
                this.progress.setText(I18n161.t("تعذر قراءة قائمة الحلقات: ") + th.getClass().getSimpleName());
            }
        }

        /* JADX INFO: renamed from: lambda$loadEpisodes$12$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m8xdfd97984(View view) {
            this.episodeAttempts = 0;
            m7xe04fdf83();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: natural, reason: merged with bridge method [inline-methods] */
        public int m14xc5e34b12(String str, String str2) {
            try {
                return Integer.compare(Integer.parseInt(str), Integer.parseInt(str2));
            } catch (Exception e) {
                return str.compareTo(str2);
            }
        }

        void schedule(final Episode episode, int i) {
            if (this.closed || !episode.loading) {
                return;
            }
            if (!episode.queued || (episode.job != null && i < episode.job.priority && this.metadata.remove(episode.job))) {
                episode.queued = true;
                Job job = new Job(i, new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m13x9fe0deac(episode);
                    }
                });
                episode.job = job;
                this.metadata.execute(job);
            }
        }

        void prioritize() {
            if (this.closed || this.list == null) {
                return;
            }
            int firstVisiblePosition = this.list.getFirstVisiblePosition();
            int lastVisiblePosition = this.list.getLastVisiblePosition();
            for (int iMax = Math.max(0, firstVisiblePosition); iMax <= lastVisiblePosition && iMax < this.rows.size(); iMax++) {
                if (this.rows.get(iMax) instanceof Episode) {
                    Episode episode = (Episode) this.rows.get(iMax);
                    schedule(episode, 0);
                    if (!episode.loading) {
                        probe(episode);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: loadEpisode, reason: merged with bridge method [inline-methods] */
        public void m13x9fe0deac(final Episode episode) {
            Runnable runnable;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.running.put(episode.id, "qualities@" + jElapsedRealtime);
            try {
                Cached cached = BatchDownload.CACHE.get(episode.id);
                ArrayList arrayList = new ArrayList();
                if (cached != null && System.currentTimeMillis() - cached.at < 120000) {
                    for (Variant variant : cached.variants) {
                        Variant variant2 = new Variant();
                        variant2.url = variant.url;
                        variant2.label = variant.label;
                        variant2.height = variant.height;
                        variant2.quality = variant.quality;
                        variant2.size = variant.size;
                        variant2.checked = variant.size >= 0;
                        arrayList.add(variant2);
                    }
                    log("qualities_cache_hit", "id=" + episode.id, null);
                } else {
                    log("qualities_start", "id=" + episode.id, null);
                    for (Object obj : (List) BatchDownload.unwrap(BatchDownload.await(BatchDownload.call(this.repo, "a", episode.id), false))) {
                        Variant variant3 = new Variant();
                        variant3.url = BatchDownload.str(obj, "videoUrl");
                        variant3.label = BatchDownload.str(obj, "resolution");
                        variant3.height = BatchDownload.height(variant3.label);
                        if (!variant3.url.isEmpty() && variant3.height != 0) {
                            variant3.quality = BatchDownload.make("com.shabakaty.cinemana.domain.models.local.Quality", variant3.label, BatchDownload.str(obj, "name"), variant3.url);
                            arrayList.add(variant3);
                        }
                    }
                    Collections.sort(arrayList, new Comparator() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            return Integer.compare(((BatchDownload.Variant) obj2).height, ((BatchDownload.Variant) obj3).height);
                        }
                    });
                    if (arrayList.isEmpty()) {
                        throw new Exception(I18n161.t("لا توجد جودة تحميل متاحة"));
                    }
                    BatchDownload.CACHE.put(episode.id, new Cached(arrayList));
                }
                episode.variants = arrayList;
                episode.error = null;
                StringBuilder sb = new StringBuilder();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    sb.append(((Variant) it.next()).label).append(',');
                }
                log("qualities_ready", "id=" + episode.id + " season=" + episode.season + " episode=" + episode.number + " qualities=" + ((Object) sb) + " elapsed_ms=" + (SystemClock.elapsedRealtime() - jElapsedRealtime), null);
                this.running.remove(episode.id);
                episode.loading = false;
                runnable = new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m6x7a49e22a(episode);
                    }
                };
            } catch (Throwable th) {
                try {
                    episode.error = I18n161.t("تعذر قراءة الجودات؛ اضغط لإعادة المحاولة");
                    log("qualities_error", "id=" + episode.id, th);
                    this.running.remove(episode.id);
                    episode.loading = false;
                    runnable = new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m6x7a49e22a(episode);
                        }
                    };
                } catch (Throwable th2) {
                    this.running.remove(episode.id);
                    episode.loading = false;
                    ui(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m6x7a49e22a(episode);
                        }
                    });
                    throw th2;
                }
            }
            ui(runnable);
        }

        /* JADX INFO: renamed from: lambda$loadEpisode$15$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m6x7a49e22a(Episode episode) {
            this.resolved++;
            this.progress.setText(I18n161.t("الجودات: ") + this.resolved + " / " + this.episodes.size() + I18n161.t(" · الظاهرة ") + visible().size());
            if (episode.selected) {
                probe(episode);
            }
            m9lambda$probe$16$comshabakatycinemanaca1BatchDownload$Screen();
        }

        void prepare(Episode episode) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.running.put(episode.id, "detail@" + jElapsedRealtime);
            try {
                log("detail_start", "id=" + episode.id, null);
                episode.model = BatchDownload.unwrap(BatchDownload.await(BatchDownload.call(this.repo, "b", episode.id), false));
                ArrayList arrayList = new ArrayList();
                Iterator<Variant> it = episode.variants.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().quality);
                }
                BatchDownload.set(episode.model, "qualities", arrayList);
                log("detail_ready", "id=" + episode.id + " subtitles=" + (BatchDownload.field(episode.model, "subtitles") instanceof List ? ((List) BatchDownload.field(episode.model, "subtitles")).size() : 0) + " elapsed_ms=" + (SystemClock.elapsedRealtime() - jElapsedRealtime), null);
            } finally {
                this.running.remove(episode.id);
            }
        }

        Variant effective(Episode episode) {
            int iChoose = episode.manual >= 0 ? episode.manual : BatchDownload.choose(episode.variants, this.cap);
            if (iChoose < 0 || iChoose >= episode.variants.size()) {
                return null;
            }
            return episode.variants.get(iChoose);
        }

        void probe(final Episode episode) {
            final Variant variantEffective = effective(episode);
            if (variantEffective == null || variantEffective.checked || this.closed) {
                return;
            }
            if (!variantEffective.probing) {
                variantEffective.probing = true;
                variantEffective.sizeJob = new Job(episode.selected ? 0 : 10, new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m10lambda$probe$17$comshabakatycinemanaca1BatchDownload$Screen(episode, variantEffective);
                    }
                });
                this.sizes.execute(variantEffective.sizeJob);
            } else {
                if (!episode.selected || variantEffective.sizeJob == null || variantEffective.sizeJob.priority <= 0 || !this.sizes.remove(variantEffective.sizeJob)) {
                    return;
                }
                variantEffective.sizeJob = new Job(0, variantEffective.sizeJob.work);
                this.sizes.execute(variantEffective.sizeJob);
            }
        }

        /* JADX INFO: renamed from: lambda$probe$17$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m10lambda$probe$17$comshabakatycinemanaca1BatchDownload$Screen(Episode episode, Variant variant) {
            String str = "size:" + episode.id;
            this.running.put(str, "probe@" + SystemClock.elapsedRealtime());
            log("size_start", "id=" + episode.id + " quality=" + variant.label + " url=" + BatchLog.url(variant.url), null);
            long jLongValue = this.sizeCache.containsKey(variant.url) ? this.sizeCache.get(variant.url).longValue() : BatchDownload.probeSize(variant.url, this.session, episode.id);
            if (jLongValue >= 0) {
                this.sizeCache.put(variant.url, Long.valueOf(jLongValue));
            }
            variant.size = jLongValue;
            variant.checked = true;
            variant.probing = false;
            this.running.remove(str);
            log(jLongValue >= 0 ? "size_ready" : "size_unknown", "id=" + episode.id + " quality=" + variant.label + " bytes=" + jLongValue, null);
            ui(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m9lambda$probe$16$comshabakatycinemanaca1BatchDownload$Screen();
                }
            });
        }

        void rebuild() {
            this.rows.clear();
            String str = null;
            for (Episode episode : this.episodes) {
                if (this.filter.isEmpty() || this.filter.equals(episode.season)) {
                    if (BatchDownload.matches(episode.number, this.query)) {
                        if (!episode.season.equals(str)) {
                            this.rows.add(I18n161.t("الموسم ") + (episode.season.isEmpty() ? I18n161.t("غير محدد") : episode.season));
                            str = episode.season;
                        }
                        this.rows.add(episode);
                    }
                }
            }
            refresh();
            if (this.list != null) {
                this.list.setSelection(0);
            }
            prioritize();
            if (this.episodes.size() <= 0 || !this.rows.isEmpty()) {
                return;
            }
            this.progress.setText(I18n161.t("لا توجد حلقات بهذا الرقم في المواسم المختارة"));
        }

        List<Episode> visible() {
            ArrayList arrayList = new ArrayList();
            for (Object obj : this.rows) {
                if (obj instanceof Episode) {
                    arrayList.add((Episode) obj);
                }
            }
            return arrayList;
        }

        void toggleAll() {
            List<Episode> listVisible = visible();
            boolean z = !listVisible.isEmpty();
            for (Episode episode : listVisible) {
                if (!episode.selected && !episode.existing && !episode.submitted) {
                    z = false;
                }
            }
            for (Episode episode2 : listVisible) {
                if (!episode2.existing && !episode2.submitted) {
                    episode2.selected = !z;
                    if (episode2.selected) {
                        schedule(episode2, 1);
                        probe(episode2);
                    }
                }
            }
            log("selection_all", "selected=" + (!z) + " visible=" + listVisible.size(), null);
            refresh();
        }

        void seasons() {
            TreeSet treeSet = new TreeSet(new Comparator() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda23
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.m14xc5e34b12((String) obj, (String) obj2);
                }
            });
            Iterator<Episode> it = this.episodes.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().season);
            }
            final ArrayList arrayList = new ArrayList();
            arrayList.add(BuildConfig.FLAVOR);
            arrayList.addAll(treeSet);
            int size = arrayList.size();
            final String[] strArr = new String[size];
            strArr[0] = I18n161.t("كل المواسم");
            for (int i = 1; i < size; i++) {
                strArr[i] = I18n161.t("الموسم ") + ((String) arrayList.get(i));
            }
            Dialogs.show(new AlertDialog.Builder(this.context).setTitle(I18n161.t("الموسم")).setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda24
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.m15xc56ce513(arrayList, strArr, dialogInterface, i2);
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$seasons$19$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m15xc56ce513(List list, String[] strArr, DialogInterface dialogInterface, int i) {
            this.filter = (String) list.get(i);
            log("season_filter", "season=" + this.filter, null);
            this.seasonButton.setText(I18n161.t("الموسم: ") + strArr[i]);
            rebuild();
        }

        void qualities() {
            TreeSet treeSet = new TreeSet();
            treeSet.add(1080);
            Iterator<Episode> it = this.episodes.iterator();
            while (it.hasNext()) {
                Iterator<Variant> it2 = it.next().variants.iterator();
                while (it2.hasNext()) {
                    treeSet.add(Integer.valueOf(it2.next().height));
                }
            }
            final ArrayList arrayList = new ArrayList(treeSet);
            int size = arrayList.size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = arrayList.get(i) + "p";
            }
            Dialogs.show(new AlertDialog.Builder(this.context).setTitle(I18n161.t("حد الجودة العام · الاختيارات الفردية محفوظة")).setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda13
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.m11x1ec604dc(arrayList, dialogInterface, i2);
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$qualities$20$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m11x1ec604dc(List list, DialogInterface dialogInterface, int i) {
            this.cap = ((Integer) list.get(i)).intValue();
            log("quality_global", "cap=" + this.cap, null);
            this.qualityButton.setText(I18n161.t("الجودة: ") + this.cap + "p");
            for (Episode episode : this.episodes) {
                if (episode.selected) {
                    probe(episode);
                }
            }
            prioritize();
            refresh();
        }

        void quality(final Episode episode) {
            if (episode.loading || this.busy) {
                return;
            }
            int i = 0;
            if (episode.error != null) {
                episode.loading = true;
                episode.error = null;
                this.resolved--;
                episode.queued = false;
                schedule(episode, 0);
                refresh();
                return;
            }
            String[] strArr = new String[episode.variants.size() + 1];
            strArr[0] = I18n161.t("تلقائي حسب الجودة العامة");
            while (i < episode.variants.size()) {
                Variant variant = episode.variants.get(i);
                i++;
                strArr[i] = variant.label + " · " + BatchDownload.bytes(variant.size);
            }
            Dialogs.show(new AlertDialog.Builder(this.context).setTitle(episode.title).setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.m12x9eb097bb(episode, dialogInterface, i2);
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$quality$21$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m12x9eb097bb(Episode episode, DialogInterface dialogInterface, int i) {
            episode.manual = i - 1;
            log("quality_individual", "id=" + episode.id + " index=" + episode.manual, null);
            Variant variantEffective = effective(episode);
            if (variantEffective != null && variantEffective.size < 0) {
                variantEffective.checked = false;
            }
            probe(episode);
            refresh();
        }

        void refresh() {
            String string;
            if (this.closed) {
                return;
            }
            boolean z = !visible().isEmpty();
            long j = 0;
            long j2 = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            for (Episode episode : this.episodes) {
                if (episode.selected) {
                    i++;
                    if ((!this.filter.isEmpty() && !this.filter.equals(episode.season)) || !BatchDownload.matches(episode.number, this.query)) {
                        i2++;
                    }
                    if (episode.loading) {
                        i3++;
                    }
                    if (episode.error != null) {
                        i4++;
                    }
                    Variant variantEffective = effective(episode);
                    if (variantEffective == null || variantEffective.size < j || j2 > Long.MAX_VALUE - variantEffective.size) {
                        i5++;
                    } else {
                        j2 += variantEffective.size;
                    }
                }
                j = 0;
            }
            int i6 = 0;
            for (Episode episode2 : visible()) {
                if (episode2.selected) {
                    i6++;
                } else if (!episode2.existing && !episode2.submitted) {
                    z = false;
                }
            }
            this.allButton.setText(z ? I18n161.t("إلغاء تحديد الكل") : I18n161.t("تحديد الكل"));
            this.clearButton.setVisibility((i <= 0 || (z && i6 == i)) ? 8 : 0);
            TextView textView = this.summary;
            if (i == 0) {
                string = I18n161.t("لم تُحدد حلقات");
            } else {
                StringBuilder sbAppend = new StringBuilder().append(i).append(I18n161.t(" حلقة محددة"));
                String str = BuildConfig.FLAVOR;
                StringBuilder sbAppend2 = sbAppend.append(i2 > 0 ? " · " + i2 + I18n161.t(" خارج العرض الحالي") : BuildConfig.FLAVOR).append(SSDPPacket.LF).append(i5 == 0 ? I18n161.t("حجم الفيديو الإجمالي: ") : I18n161.t("حجم الفيديو المعروف: ")).append(i5 == i ? I18n161.t("لم يُعرف بعد") : BatchDownload.bytes(j2)).append(i5 > 0 ? " · " + i5 + I18n161.t(" بحجم غير معروف") : BuildConfig.FLAVOR).append(i3 > 0 ? I18n161.t("\nجارٍ قراءة ") + i3 + I18n161.t(" حلقة") : BuildConfig.FLAVOR);
                if (i4 > 0) {
                    str = I18n161.t("\nتعذر تجهيز ") + i4 + I18n161.t(" حلقة؛ أعد المحاولة");
                }
                string = sbAppend2.append(str).toString();
            }
            textView.setText(string);
            this.seasonButton.setEnabled(!this.busy);
            this.qualityButton.setEnabled(!this.busy);
            this.allButton.setEnabled(!this.busy);
            this.clearButton.setEnabled(!this.busy);
            this.closeButton.setEnabled(!this.busy);
            this.search.setEnabled(!this.busy);
            this.dialog.setCancelable(!this.busy);
            this.start.setEnabled(i > 0 && i3 == 0 && i4 == 0 && !this.busy);
            this.start.setText(this.busy ? I18n161.t("جارٍ إرسال الحلقات للطابور…") : I18n161.t("ابدأ التحميل"));
            this.adapter.notifyDataSetChanged();
            if (this.rail != null) {
                this.rail.invalidate();
            }
        }

        void begin() {
            if (this.busy) {
                return;
            }
            try {
                if (((Boolean) BatchDownload.call(BatchDownload.make("com.shabakaty.cinemana.ca1.NativeBatchScope", this.current, this.fragment), "i", new Object[0])).booleanValue()) {
                    log("permission_required", "storage=true", null);
                    BatchDownload.call(BatchDownload.type("com.shabakaty.downloader.wt2"), "l", this.context);
                    Toast.makeText(this.context, I18n161.t("امنح صلاحية التخزين ثم اضغط ابدأ التحميل"), 1).show();
                    return;
                }
                final ArrayList<Episode> arrayList = new ArrayList();
                for (Episode episode : this.episodes) {
                    if (episode.selected && !episode.submitted && !episode.existing) {
                        arrayList.add(episode);
                    }
                }
                if (arrayList.isEmpty()) {
                    Toast.makeText(this.context, I18n161.t("الحلقات المحددة أُرسلت مسبقًا للطابور"), 0).show();
                    return;
                }
                this.busy = true;
                this.enqueueFailures = 0;
                log("enqueue_plan", "count=" + arrayList.size() + " cap=" + this.cap, null);
                refresh();
                final AtomicLong atomicLong = new AtomicLong(arrayList.size());
                for (final Episode episode2 : arrayList) {
                    this.metadata.execute(new Job(-1, new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m2lambda$begin$23$comshabakatycinemanaca1BatchDownload$Screen(episode2, atomicLong, arrayList);
                        }
                    }));
                }
            } catch (Exception e) {
                log("begin_error", BuildConfig.FLAVOR, e);
                Toast.makeText(this.context, I18n161.t("تعذر بدء التحميل"), 1).show();
            }
        }

        /* JADX INFO: renamed from: lambda$begin$22$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m1lambda$begin$22$comshabakatycinemanaca1BatchDownload$Screen(List list) {
            enqueue(list, 0, 0);
        }

        /* JADX INFO: renamed from: lambda$begin$23$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m2lambda$begin$23$comshabakatycinemanaca1BatchDownload$Screen(Episode episode, AtomicLong atomicLong, final List list) {
            Runnable runnable;
            try {
                log("existing_check", "id=" + episode.id, null);
                episode.existing = BatchDownload.existing(episode.id);
                if (!episode.existing && episode.model == null) {
                    prepare(episode);
                }
                if (atomicLong.decrementAndGet() == 0) {
                    runnable = new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1lambda$begin$22$comshabakatycinemanaca1BatchDownload$Screen(list);
                        }
                    };
                    ui(runnable);
                }
            } catch (Throwable th) {
                try {
                    episode.error = I18n161.t("تعذر تجهيز الحلقة؛ أعد المحاولة");
                    log("prepare_error", "id=" + episode.id, th);
                    if (atomicLong.decrementAndGet() != 0) {
                    } else {
                        runnable = new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda11
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m1lambda$begin$22$comshabakatycinemanaca1BatchDownload$Screen(list);
                            }
                        };
                    }
                } catch (Throwable th2) {
                    if (atomicLong.decrementAndGet() == 0) {
                        ui(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda11
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m1lambda$begin$22$comshabakatycinemanaca1BatchDownload$Screen(list);
                            }
                        });
                    }
                    throw th2;
                }
            }
        }

        void enqueue(final List<Episode> list, final int i, final int i2) {
            if (this.closed) {
                return;
            }
            if (i == list.size()) {
                this.busy = false;
                log("enqueue_complete", "accepted=" + i2 + " failed=" + this.enqueueFailures + " count=" + list.size(), null);
                refresh();
                Toast.makeText(this.context, I18n161.t("أُرسل ") + i2 + I18n161.t(" طلبًا للطابور؛ تابع حالتها في التنزيلات") + (this.enqueueFailures > 0 ? I18n161.t(" · تعذر ") + this.enqueueFailures : BuildConfig.FLAVOR), 1).show();
                if (this.enqueueFailures == 0) {
                    this.dialog.dismiss();
                    return;
                }
                return;
            }
            Episode episode = list.get(i);
            Variant variantEffective = effective(episode);
            try {
                if (!episode.existing && (variantEffective == null || episode.model == null || episode.error != null)) {
                    throw new Exception(I18n161.t("بيانات الحلقة غير مكتملة"));
                }
                if (episode.existing) {
                    episode.selected = false;
                    log("enqueue_skip", "id=" + episode.id + " reason=existing", null);
                } else {
                    Set<String> set = BatchDownload.ADMITTED;
                    String str = episode.id;
                    Delete94.reenqueue(str);
                    if (set.add(str)) {
                        try {
                            Object objMake = BatchDownload.make("com.shabakaty.cinemana.ca1.NativeBatchScope", episode.model, this.fragment);
                            BatchDownload.set(episode.model, "url", variantEffective.url);
                            BatchDownload.set(episode.model, "wantedQuality", variantEffective.quality);
                            log("enqueue_dispatch", "id=" + episode.id + " quality=" + variantEffective.label + " bytes=" + variantEffective.size + " url=" + BatchLog.url(variantEffective.url), null);
                            BatchDownload.call(objMake, "m", new Object[0]);
                            episode.submitted = true;
                            i2++;
                            log("enqueue_admitted", "id=" + episode.id, null);
                        } catch (Exception e) {
                            BatchDownload.ADMITTED.remove(episode.id);
                            throw e;
                        }
                    } else {
                        Fresh121.skipped(this, episode);
                        episode.submitted = true;
                    }
                }
            } catch (Exception e2) {
                this.enqueueFailures++;
                log("enqueue_error", "id=" + episode.id, e2);
                Toast.makeText(this.context, I18n161.t("تعذر إرسال الحلقة ") + episode.number, 1).show();
            }
            m9lambda$probe$16$comshabakatycinemanaca1BatchDownload$Screen();
            Ui.MAIN.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m3x1260e615(list, i, i2);
                }
            }, 8L);
        }

        /* JADX INFO: renamed from: lambda$enqueue$24$com-shabakaty-cinemana-ca1-BatchDownload$Screen, reason: not valid java name */
        /* synthetic */ void m3x1260e615(List list, int i, int i2) {
            enqueue(list, i + 1, i2);
        }

        void toggle(Episode episode) {
            if (this.busy || episode.submitted || episode.existing) {
                return;
            }
            episode.selected = !episode.selected;
            log("selection", "id=" + episode.id + " selected=" + episode.selected, null);
            if (episode.selected) {
                schedule(episode, 0);
                probe(episode);
            }
            refresh();
        }

        final class Rail extends View {
            final Paint paint;

            Rail(Context context) {
                super(context);
                this.paint = new Paint(1);
                setContentDescription(I18n161.t("اسحب للتمرير السريع بين الحلقات"));
                setFocusable(true);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                float width = getWidth() / 2.0f;
                this.paint.setColor(ThemeEngine142.legacy(-13092800));
                this.paint.setStrokeWidth(Screen.this.dp(3));
                canvas.drawLine(width, Screen.this.dp(8), width, getHeight() - Screen.this.dp(8), this.paint);
                if (Screen.this.rows.size() == 0) {
                    return;
                }
                float fDp = Screen.this.dp(8) + (Math.min(1.0f, Screen.this.list.getFirstVisiblePosition() / Math.max(1, Screen.this.rows.size() - Math.max(1, Screen.this.list.getChildCount()))) * Math.max(0.0f, getHeight() - Screen.this.dp(48)));
                this.paint.setColor(ThemeEngine142.legacy(-2344384));
                this.paint.setStrokeWidth(Screen.this.dp(7));
                this.paint.setStrokeCap(Paint.Cap.ROUND);
                canvas.drawLine(width, fDp, width, fDp + Screen.this.dp(32), this.paint);
                this.paint.setStrokeCap(Paint.Cap.BUTT);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (Screen.this.busy || Screen.this.rows.isEmpty()) {
                    return false;
                }
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    Screen.this.log("fast_scroll_start", "rows=" + Screen.this.rows.size(), null);
                }
                if (actionMasked == 0 || actionMasked == 2) {
                    Screen.this.list.setSelectionFromTop(Math.min(Screen.this.rows.size() - 1, (int) (Math.max(0.0f, Math.min(1.0f, (motionEvent.getY() - Screen.this.dp(8)) / Math.max(1, getHeight() - Screen.this.dp(16)))) * (Screen.this.rows.size() - 1))), 0);
                    invalidate();
                    return true;
                }
                if (actionMasked != 1 && actionMasked != 3) {
                    return true;
                }
                getParent().requestDisallowInterceptTouchEvent(false);
                performClick();
                Screen.this.prioritize();
                Screen.this.log("fast_scroll_end", "position=" + Screen.this.list.getFirstVisiblePosition(), null);
                return true;
            }

            @Override // android.view.View
            public boolean performClick() {
                super.performClick();
                return true;
            }
        }

        final class Holder {
            CheckBox check;
            LinearLayout info;
            Button quality;
            LinearLayout row;
            TextView sub;
            TextView title;

            Holder() {
            }
        }

        final class Adapter extends BaseAdapter {
            Adapter() {
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return Screen.this.rows.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int i) {
                return Screen.this.rows.get(i);
            }

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return i;
            }

            @Override // android.widget.BaseAdapter, android.widget.Adapter
            public int getItemViewType(int i) {
                return !(Screen.this.rows.get(i) instanceof String) ? 1 : 0;
            }

            @Override // android.widget.BaseAdapter, android.widget.Adapter
            public int getViewTypeCount() {
                return 2;
            }

            @Override // android.widget.BaseAdapter, android.widget.ListAdapter
            public boolean isEnabled(int i) {
                return false;
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                Holder holder;
                String strT;
                String strT2;
                Object obj = Screen.this.rows.get(i);
                boolean z = obj instanceof String;
                String strT3 = BuildConfig.FLAVOR;
                if (z) {
                    TextView textViewText = view instanceof TextView ? (TextView) view : Screen.this.text(BuildConfig.FLAVOR, 12);
                    textViewText.setText((String) obj);
                    textViewText.setHeight(Screen.this.dp(28));
                    textViewText.setTextColor(ThemeEngine142.legacy(-1973784));
                    textViewText.setBackground(Screen.this.bg(-13882316));
                    Enhancements.card(textViewText);
                    return textViewText;
                }
                final Episode episode = (Episode) obj;
                if (view == null || !(view.getTag() instanceof Holder)) {
                    holder = Screen.this.new Holder();
                    holder.row = new LinearLayout(Screen.this.context);
                    I18n161.applyDir(holder.row);
                    holder.row.setGravity(16);
                    holder.row.setPadding(Screen.this.dp(4), 0, Screen.this.dp(6), 0);
                    holder.row.setLayoutParams(new AbsListView.LayoutParams(-1, Screen.this.dp(64)));
                    holder.check = new CheckBox(Screen.this.context);
                    holder.check.setButtonTintList(ColorStateList.valueOf(ThemeEngine142.accent(Screen.this.context)));
                    holder.row.addView(holder.check, new LinearLayout.LayoutParams(Screen.this.dp(40), Screen.this.dp(44)));
                    holder.info = new LinearLayout(Screen.this.context);
                    holder.info.setOrientation(1);
                    I18n161.applyDir(holder.info);
                    holder.title = Screen.this.text(BuildConfig.FLAVOR, 13);
                    holder.title.setPadding(Screen.this.dp(4), 0, Screen.this.dp(4), 0);
                    holder.title.setMaxLines(1);
                    holder.title.setEllipsize(TextUtils.TruncateAt.END);
                    holder.info.addView(holder.title);
                    holder.sub = Screen.this.text(BuildConfig.FLAVOR, 10);
                    holder.sub.setTextColor(ThemeEngine142.legacy(-4408121));
                    holder.sub.setPadding(Screen.this.dp(4), 0, Screen.this.dp(4), 0);
                    holder.sub.setMaxLines(2);
                    holder.sub.setEllipsize(TextUtils.TruncateAt.END);
                    holder.info.addView(holder.sub);
                    holder.row.addView(holder.info, new LinearLayout.LayoutParams(0, -2, 1.0f));
                    holder.quality = Screen.this.button(BuildConfig.FLAVOR);
                    holder.quality.setTextSize(11.0f);
                    holder.row.addView(holder.quality, new LinearLayout.LayoutParams(Screen.this.dp(68), Screen.this.dp(36)));
                    holder.row.setTag(holder);
                } else {
                    holder = (Holder) view.getTag();
                }
                GradientDrawable gradientDrawableBg = Screen.this.bg(episode.selected ? -13360344 : -14342868);
                if (episode.selected) {
                    gradientDrawableBg.setStroke(Screen.this.dp(1), ThemeEngine142.legacy(-4639170));
                }
                holder.row.setBackground(gradientDrawableBg);
                holder.check.setOnCheckedChangeListener(null);
                holder.check.setChecked(episode.selected);
                holder.check.setEnabled((Screen.this.busy || episode.submitted || episode.existing) ? false : true);
                holder.check.setContentDescription(I18n161.t("تحديد الحلقة ") + episode.number);
                holder.check.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$Adapter$$ExternalSyntheticLambda0
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                        this.f$0.m25x89a54f8f(episode, compoundButton, z2);
                    }
                });
                holder.row.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$Adapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.m26xaf395890(episode, view2);
                    }
                });
                holder.info.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$Adapter$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.m27xd4cd6191(episode, view2);
                    }
                });
                holder.title.setText(episode.title);
                Variant variantEffective = Screen.this.effective(episode);
                int i2 = episode.variants.isEmpty() ? 0 : episode.variants.get(episode.variants.size() - 1).height;
                StringBuilder sbAppend = new StringBuilder().append(I18n161.t("م") + episode.season + I18n161.t(" · الحلقة ") + episode.number + (i2 > 0 ? I18n161.t(" · الأعلى ") + i2 + "p" : BuildConfig.FLAVOR)).append(SSDPPacket.LF);
                if (episode.error != null) {
                    strT = I18n161.t("تعذر الجلب؛ أعد المحاولة");
                } else if (episode.loading) {
                    strT = I18n161.t("جارٍ قراءة الجودات");
                } else if (variantEffective == null) {
                    strT = I18n161.t("لا توجد جودة");
                } else {
                    strT = variantEffective.probing ? I18n161.t("جارٍ قراءة الحجم") : BatchDownload.bytes(variantEffective.size);
                }
                StringBuilder sbAppend2 = sbAppend.append(strT).append(episode.manual >= 0 ? I18n161.t(" · فردي") : BuildConfig.FLAVOR);
                if (episode.existing) {
                    strT3 = I18n161.t(" · موجود");
                } else if (episode.submitted) {
                    strT3 = I18n161.t(" · أُرسل");
                }
                holder.sub.setText(sbAppend2.append(strT3).toString());
                Button button = holder.quality;
                if (episode.loading) {
                    strT2 = "…";
                } else {
                    strT2 = variantEffective == null ? I18n161.t("إعادة") : variantEffective.label;
                }
                button.setText(strT2);
                holder.quality.setEnabled((Screen.this.busy || episode.submitted || episode.loading) ? false : true);
                holder.quality.setContentDescription(I18n161.t("جودة الحلقة ") + episode.number);
                holder.quality.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.BatchDownload$Screen$Adapter$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.m28xfa616a92(episode, view2);
                    }
                });
                LinearLayout linearLayout = holder.row;
                Enhancements.card(linearLayout);
                return linearLayout;
            }

            /* JADX INFO: renamed from: lambda$getView$0$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter, reason: not valid java name */
            /* synthetic */ void m25x89a54f8f(Episode episode, CompoundButton compoundButton, boolean z) {
                if (episode.selected != z) {
                    Screen.this.toggle(episode);
                }
            }

            /* JADX INFO: renamed from: lambda$getView$1$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter, reason: not valid java name */
            /* synthetic */ void m26xaf395890(Episode episode, View view) {
                Screen.this.toggle(episode);
            }

            /* JADX INFO: renamed from: lambda$getView$2$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter, reason: not valid java name */
            /* synthetic */ void m27xd4cd6191(Episode episode, View view) {
                Screen.this.toggle(episode);
            }

            /* JADX INFO: renamed from: lambda$getView$3$com-shabakaty-cinemana-ca1-BatchDownload$Screen$Adapter, reason: not valid java name */
            /* synthetic */ void m28xfa616a92(Episode episode, View view) {
                Screen.this.quality(episode);
            }
        }
    }

    static long probeSize(String str) {
        return probeSize(str, "test", BuildConfig.FLAVOR);
    }
}
