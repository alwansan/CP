package com.shabakaty.cinemana.ca1;

import com.connectsdk.device.DefaultConnectableDeviceStore;
import com.connectsdk.discovery.provider.ssdp.Icon;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.local.LocalRuntime;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class Continue106 {
    static final String MODEL = "com.shabakaty.cinemana.domain.models.local.VideoModel";
    static final String RAIL = "-106106";
    static final String TITLE = "أكمل المشاهدة";
    static Object preferences;
    static final Map<Object, Session> sessions = new WeakHashMap();
    static final Map<String, Entry> entries = new LinkedHashMap();
    static final Map<Object, Integer> heights = new WeakHashMap();
    static WeakReference<Object> home = new WeakReference<>(null);
    static final Map<Object, Integer> visibility = new WeakHashMap();
    static final ExecutorService writer = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Continue106$$ExternalSyntheticLambda4
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Continue106.lambda$static$0(runnable);
        }
    });

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "cw108-save");
        thread.setDaemon(true);
        return thread;
    }

    static /* synthetic */ void lambda$write$1(Object obj) {
        try {
            if (Boolean.TRUE.equals(call(obj, "commit", new Object[0]))) {
                Persistence123.changed();
            } else {
                log("continue_commit_failed108", null);
            }
        } catch (Exception e) {
            log("continue_commit_error108", e);
        }
    }

    static void write(final Object obj) {
        writer.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Continue106$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Continue106.lambda$write$1(obj);
            }
        });
    }

    public static void nativeTick(Object obj) {
        try {
            sample(call(get(obj, "t"), "m0", new Object[0]), false);
        } catch (Exception e) {
        }
    }

    static void metadata(Object obj, boolean z) throws Exception {
        if (z) {
            Map<Object, Integer> map = visibility;
            if (!map.containsKey(obj)) {
                map.put(obj, Integer.valueOf(((Number) call(obj, "getVisibility", new Object[0])).intValue()));
            }
            call(obj, "setVisibility", 8);
            return;
        }
        Integer numRemove = visibility.remove(obj);
        if (numRemove != null) {
            call(obj, "setVisibility", numRemove);
        }
    }

    static final class Session {
        String id = BuildConfig.FLAVOR;
        long last;
        boolean muted;
        boolean restoring;

        Session() {
        }
    }

    static final class Entry {
        long d;
        String id;
        String localPath = BuildConfig.FLAVOR;
        long p;
        String parcel;
        long t;

        Entry() {
        }
    }

    static Object get(Object obj, String str) throws Exception {
        for (Class<?> superclass = obj instanceof Class ? (Class) obj : obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField.get(obj instanceof Class ? null : obj);
            } catch (NoSuchFieldException e) {
            }
        }
        throw new NoSuchFieldException(str);
    }

    static void set(Object obj, String str, Object obj2) throws Exception {
        obj.getClass().getField(str).set(obj, obj2);
    }

    static Class<?> box(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        return cls == Float.TYPE ? Float.class : cls;
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        boolean z;
        boolean z2 = obj instanceof Class;
        Class<?> cls = z2 ? (Class) obj : obj.getClass();
        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            for (Method method : superclass.getDeclaredMethods()) {
                if (method.getName().equals(str) && method.getParameterTypes().length == objArr.length) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    int i = 0;
                    while (true) {
                        if (i >= objArr.length) {
                            z = true;
                            break;
                        }
                        if (objArr[i] == null) {
                            if (parameterTypes[i].isPrimitive()) {
                                z = false;
                                break;
                            }
                            i++;
                        } else {
                            if (!box(parameterTypes[i]).isInstance(objArr[i])) {
                                z = false;
                                break;
                            }
                            i++;
                        }
                    }
                    if (z) {
                        method.setAccessible(true);
                        if (z2) {
                            obj = null;
                        }
                        return method.invoke(obj, objArr);
                    }
                }
            }
        }
        throw new NoSuchMethodException(cls.getName() + "." + str);
    }

    static Object make(String str, Object... objArr) throws Exception {
        boolean z;
        for (Constructor<?> constructor : Class.forName(str).getConstructors()) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == objArr.length) {
                int i = 0;
                while (true) {
                    if (i >= parameterTypes.length) {
                        z = true;
                        break;
                    }
                    if (objArr[i] == null) {
                        if (parameterTypes[i].isPrimitive()) {
                            z = false;
                            break;
                        }
                        i++;
                    } else {
                        if (!box(parameterTypes[i]).isInstance(objArr[i])) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                }
                if (z) {
                    return constructor.newInstance(objArr);
                }
            }
        }
        throw new NoSuchMethodException(str);
    }

    static String text(Object obj, String str) throws Exception {
        Object obj2 = get(obj, str);
        return obj2 == null ? BuildConfig.FLAVOR : String.valueOf(obj2);
    }

    static long num(Object obj, String str) throws Exception {
        return ((Number) call(obj, str, new Object[0])).longValue();
    }

    static void log(String str, Exception exc) {
        try {
            call(Class.forName("com.shabakaty.cinemana.ca1.Enhancements"), "log", str, "continue watching", exc);
        } catch (Exception e) {
        }
    }

    static Object app() throws Exception {
        return get(Class.forName("com.shabakaty.cinemana.ca1.Enhancements"), "app");
    }

    static synchronized void load(Object obj) throws Exception {
        if (preferences != null) {
            return;
        }
        if (obj == null) {
            return;
        }
        Object objCall = call(obj, "getSharedPreferences", "ca1_continue106", 0);
        preferences = objCall;
        for (Map.Entry entry : ((Map) call(objCall, "getAll", new Object[0])).entrySet()) {
            try {
                if (entry.getValue() instanceof String) {
                    Properties properties = new Properties();
                    properties.load(new StringReader((String) entry.getValue()));
                    if ("1".equals(properties.getProperty("version"))) {
                        Entry entry2 = new Entry();
                        entry2.id = String.valueOf(entry.getKey());
                        entry2.parcel = properties.getProperty("parcel", BuildConfig.FLAVOR);
                        entry2.localPath = properties.getProperty("local_path", BuildConfig.FLAVOR);
                        entry2.p = Long.parseLong(properties.getProperty("position"));
                        entry2.d = Long.parseLong(properties.getProperty("duration"));
                        entry2.t = Long.parseLong(properties.getProperty(DefaultConnectableDeviceStore.KEY_UPDATED));
                        if (entry2.localPath.isEmpty()) {
                            try {
                                entry2.localPath = localPath(unpack(entry2));
                            } catch (Exception e) {
                            }
                        }
                        if (!entry2.parcel.isEmpty() && Progress106.member(entry2.p, entry2.d) && localPresent(entry2.localPath)) {
                            entries.put(entry2.id, entry2);
                        } else {
                            Object objCall2 = call(preferences, "edit", new Object[0]);
                            call(objCall2, "remove", entry2.id);
                            write(objCall2);
                        }
                    }
                }
            } catch (Exception e2) {
            }
        }
    }

    public static void portableReload(Object obj) throws Exception {
        synchronized (Continue106.class) {
            preferences = null;
            entries.clear();
            load(obj);
        }
        call(make("android.os.Handler", call(Class.forName("android.os.Looper"), "getMainLooper", new Object[0])), "post", new Runnable() { // from class: com.shabakaty.cinemana.ca1.Continue106$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Continue106.lambda$portableReload$2();
            }
        });
    }

    static /* synthetic */ void lambda$portableReload$2() {
        Object obj = home.get();
        if (obj != null) {
            refresh(obj);
        }
    }

    static List<Entry> ordered() {
        ArrayList arrayList = new ArrayList(entries.values());
        Collections.sort(arrayList, new Comparator() { // from class: com.shabakaty.cinemana.ca1.Continue106$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((Continue106.Entry) obj2).t, ((Continue106.Entry) obj).t);
            }
        });
        return arrayList;
    }

    static void persist(Entry entry) throws Exception {
        LocalRuntime.resumeProgress(entry.id);
        Properties properties = new Properties();
        properties.setProperty("version", "1");
        properties.setProperty("parcel", entry.parcel);
        properties.setProperty("local_path", entry.localPath);
        properties.setProperty("position", String.valueOf(entry.p));
        properties.setProperty("duration", String.valueOf(entry.d));
        properties.setProperty(DefaultConnectableDeviceStore.KEY_UPDATED, String.valueOf(entry.t));
        StringWriter stringWriter = new StringWriter();
        properties.store(stringWriter, (String) null);
        Object objCall = call(preferences, "edit", new Object[0]);
        call(objCall, "putString", entry.id, stringWriter.toString());
        List<Entry> listOrdered = ordered();
        for (int i = 60; i < listOrdered.size(); i++) {
            entries.remove(listOrdered.get(i).id);
            call(objCall, "remove", listOrdered.get(i).id);
        }
        write(objCall);
        LocalRuntime.stateChanged();
    }

    static String pack(Object obj) throws Exception {
        Object objCall = call(Class.forName("android.os.Parcel"), "obtain", new Object[0]);
        try {
            call(obj, "writeToParcel", objCall, 0);
            String str = (String) call(Class.forName("android.util.Base64"), "encodeToString", (byte[]) call(objCall, "marshall", new Object[0]), 2);
            call(objCall, "recycle", new Object[0]);
            return str;
        } catch (Throwable th) {
            call(objCall, "recycle", new Object[0]);
            throw th;
        }
    }

    static Object unpack(Entry entry) throws Exception {
        byte[] bArr = (byte[]) call(Class.forName("android.util.Base64"), "decode", entry.parcel, 2);
        Object objCall = call(Class.forName("android.os.Parcel"), "obtain", new Object[0]);
        try {
            call(objCall, "unmarshall", bArr, 0, Integer.valueOf(bArr.length));
            call(objCall, "setDataPosition", 0);
            Object objCall2 = call(get(Class.forName(MODEL), "CREATOR"), "createFromParcel", objCall);
            if (!entry.id.equals(text(objCall2, "nb"))) {
                throw new IOException("identity mismatch");
            }
            Object objMake = get(objCall2, FileDownloadModel.STATUS);
            if (objMake == null) {
                objMake = make("com.shabakaty.downloader.q25", new Object[0]);
                set(objCall2, FileDownloadModel.STATUS, objMake);
            }
            set(objMake, "x", Long.valueOf(entry.p / 1000));
            call(objCall, "recycle", new Object[0]);
            return objCall2;
        } catch (Throwable th) {
            call(objCall, "recycle", new Object[0]);
            throw th;
        }
    }

    static String localPath(Object obj) {
        try {
            String strText = text(obj, "url");
            if (strText.startsWith("file:")) {
                return new File(new URI(strText)).getCanonicalPath();
            }
            return strText.startsWith("/") ? new File(strText).getCanonicalPath() : BuildConfig.FLAVOR;
        } catch (Exception e) {
            return BuildConfig.FLAVOR;
        }
    }

    static boolean localPresent(String str) {
        return str == null || str.isEmpty() || new File(str).isFile();
    }

    static void pruneLocal() throws Exception {
        for (Entry entry : new ArrayList(entries.values())) {
            if (!localPresent(entry.localPath)) {
                entries.remove(entry.id);
                Object objCall = call(preferences, "edit", new Object[0]);
                call(objCall, "remove", entry.id);
                write(objCall);
            }
        }
    }

    static synchronized void removeOnly(String str) throws Exception {
        if (preferences == null) {
            load(app());
        }
        for (Session session : sessions.values()) {
            if (str.equals(session.id)) {
                session.muted = true;
            }
        }
        entries.remove(str);
        Object obj = preferences;
        if (obj != null) {
            Object objCall = call(obj, "edit", new Object[0]);
            call(objCall, "remove", str);
            write(objCall);
        }
        LocalRuntime.removeProgress(str);
    }

    public static void dismiss(String str) {
        try {
            removeOnly(str);
            Object obj = home.get();
            if (obj != null) {
                refresh(obj);
            }
        } catch (Exception e) {
            log("continue_dismiss_error109", e);
        }
    }

    public static void deleted(String str) {
        if (str == null) {
            return;
        }
        try {
            removeOnly(str);
            call(make("android.os.Handler", call(Class.forName("android.os.Looper"), "getMainLooper", new Object[0])), "post", new Runnable() { // from class: com.shabakaty.cinemana.ca1.Continue106$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Continue106.lambda$deleted$4();
                }
            });
        } catch (Exception e) {
            log("continue_delete_sync109", e);
        }
    }

    static /* synthetic */ void lambda$deleted$4() {
        Object obj = home.get();
        if (obj != null) {
            refresh(obj);
        }
    }

    public static synchronized void sample(Object obj, boolean z) {
        try {
            load(call(obj, "getContext", new Object[0]));
            if (preferences == null) {
                return;
            }
            Object objCall = call(obj, "getPlayer", new Object[0]);
            Object objCall2 = call(obj, "getVideoModel", new Object[0]);
            String strText = text(objCall2, "nb");
            if (!strText.isEmpty() && !"0".equals(strText)) {
                Map<Object, Session> map = sessions;
                Session session = map.get(obj);
                if (session == null) {
                    session = new Session();
                    map.put(obj, session);
                }
                Session session2 = session;
                if (!session2.id.equals(strText)) {
                    session2.id = strText;
                    session2.last = 0L;
                    session2.muted = false;
                }
                if (!session2.restoring && !session2.muted) {
                    int iNum = (int) num(objCall, "h");
                    long jNum = num(objCall, "C");
                    long jNum2 = num(objCall, "X");
                    if (Progress106.valid(jNum, jNum2)) {
                        if (iNum == 3 && restore(obj, objCall, strText, jNum2, session2)) {
                            return;
                        }
                        if (iNum == 3 || iNum == 4) {
                            if (Boolean.TRUE.equals(get(call(obj, "getPlaybackEventsHandler", new Object[0]), "F"))) {
                                return;
                            }
                            long jNanoTime = System.nanoTime() / 1000000;
                            if (z || iNum == 4 || jNanoTime - session2.last >= 1000) {
                                session2.last = jNanoTime;
                                if (Progress106.completed(jNum, jNum2, iNum == 4)) {
                                    if (entries.remove(strText) != null) {
                                        Object objCall3 = call(preferences, "edit", new Object[0]);
                                        call(objCall3, "remove", strText);
                                        write(objCall3);
                                        log("continue_completed106", null);
                                    }
                                    return;
                                }
                                if (Progress106.member(jNum, jNum2)) {
                                    Map<String, Entry> map2 = entries;
                                    Entry entry = map2.get(strText);
                                    if (entry != null && entry.p == jNum && entry.d == jNum2) {
                                        return;
                                    }
                                    Entry entry2 = new Entry();
                                    entry2.id = strText;
                                    entry2.p = jNum;
                                    entry2.d = jNum2;
                                    entry2.t = System.currentTimeMillis();
                                    entry2.parcel = pack(objCall2);
                                    entry2.localPath = localPath(objCall2);
                                    if (localPresent(entry2.localPath)) {
                                        map2.put(strText, entry2);
                                        persist(entry2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            log("continue_save_error106", e);
        }
    }

    static boolean restore(Object obj, Object obj2, String str, long j, Session session) throws Exception {
        Object objCall = call(call(obj, "getContext", new Object[0]), "getIntent", new Object[0]);
        if (!str.equals(call(objCall, "getStringExtra", "ca1_continue_id106")) || Boolean.TRUE.equals(call(objCall, "getBooleanExtra", "ca1_continue_consumed106", false))) {
            return false;
        }
        long jLongValue = ((Number) call(objCall, "getLongExtra", "ca1_continue_position106", 0L)).longValue();
        call(objCall, "putExtra", "ca1_continue_consumed106", true);
        long jResume = Progress106.resume(jLongValue, j);
        if (jResume <= 0) {
            return false;
        }
        session.restoring = true;
        try {
            call(obj2, "q", Long.valueOf(jResume));
            call(obj2, "z", true);
            log("continue_resumed106", null);
            return true;
        } finally {
            session.restoring = false;
        }
    }

    public static boolean requested(Object obj) {
        try {
            return text(call(obj, "getVideoModel", new Object[0]), "nb").equals(call(call(call(obj, "getContext", new Object[0]), "getIntent", new Object[0]), "getStringExtra", "ca1_continue_id106"));
        } catch (Exception e) {
            return false;
        }
    }

    public static void pause(Object obj) {
        try {
            sample(call(obj, "m0", new Object[0]), true);
        } catch (Exception e) {
            log("continue_pause_error106", e);
        }
    }

    public static synchronized List<?> decorate(List<?> list) {
        int i;
        if (list == null) {
            return list;
        }
        try {
            load(app());
            pruneLocal();
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (!RAIL.equals(String.valueOf(call(next, "a", new Object[0])))) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator<Entry> it2 = ordered().iterator();
            while (it2.hasNext()) {
                try {
                    arrayList2.add(unpack(it2.next()));
                } catch (Exception e) {
                    log("continue_model_error106", e);
                }
            }
            if (arrayList2.isEmpty()) {
                return arrayList;
            }
            Object objMake = make("com.shabakaty.cinemana.ui.home_fragment.HomeItem$Horizontal$FeaturedMovies", arrayList2, I18n161.t(TITLE), RAIL, 0);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (arrayList.get(i2).getClass().getName().endsWith("HomeItem$Slider")) {
                    i = i2 + 1;
                    break;
                }
            }
            arrayList.add(i, objMake);
            return arrayList;
        } catch (Exception e2) {
            log("continue_home_error106", e2);
            return list;
        }
    }

    public static void refresh(Object obj) {
        home = new WeakReference<>(obj);
        try {
            try {
                load(call(obj, "requireContext", new Object[0]));
            } catch (Exception e) {
                load(app());
            }
            Object obj2 = get(obj, "x");
            if (obj2 == null) {
                return;
            }
            set(obj2, "c", decorate((List) get(obj2, "c")));
            call(obj2, "notifyDataSetChanged", new Object[0]);
        } catch (Exception e2) {
            log("continue_refresh_error106", e2);
        }
    }

    public static long itemId(Object obj, int i) {
        try {
            if (I18n161.t(TITLE).equals(call(get(obj, "b"), "getTitle", new Object[0]))) {
                String strText = text(((List) get(obj, "a")).get(i), "nb");
                try {
                    return Long.parseLong(strText);
                } catch (NumberFormatException e) {
                    long jCharAt = 1125899906842597L;
                    for (int i2 = 0; i2 < strText.length(); i2++) {
                        jCharAt = (jCharAt * 31) + ((long) strText.charAt(i2));
                    }
                    return jCharAt;
                }
            }
        } catch (Exception e2) {
        }
        return i;
    }

    public static void row(Object obj) {
        try {
            Object obj2 = get(call(get(obj, "L"), "getValue", new Object[0]), "M");
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(I18n161.t(TITLE).equals(call(obj, "getTitle", new Object[0])) ? 0 : 0);
            call(obj2, "setVisibility", objArr);
        } catch (Exception e) {
            log("continue_row_error106", e);
        }
    }

    public static synchronized boolean open(Object obj, Object obj2) {
        if (ContinueActions262.isDetails()) {
            return false;
        }
        synchronized (Continue106.class) {
            try {
                if (!I18n161.t(TITLE).equals(call(obj, "getTitle", new Object[0]))) {
                    return false;
                }
                Object objCall = call(obj, "getContext", new Object[0]);
                load(objCall);
                String strText = text(obj2, "nb");
                Entry entry = entries.get(strText);
                if (entry == null) {
                    return true;
                }
                Object objUnpack = unpack(entry);
                Object objMake = make("android.content.Intent", objCall, Class.forName("com.shabakaty.cinemana.player.VideoPlayerActivity"));
                call(objMake, "putExtra", "VideoModelArg", objUnpack);
                call(objMake, "putExtra", "ca1_continue_id106", strText);
                call(objMake, "putExtra", "ca1_continue_position106", Long.valueOf(entry.p));
                setStatic("com.shabakaty.downloader.ol0", "a", Episodes107.cached(objCall, objUnpack));
                call(objCall, "startActivity", objMake);
                return true;
            } catch (Exception e) {
                log("continue_open_error106", e);
                return true;
            }
            throw th;
        }
    }

    static void setStatic(String str, String str2, Object obj) throws Exception {
        Class.forName(str).getField(str2).set(null, obj);
    }

    public static void card(Object obj) {
        try {
            final WeakReference weakReference = new WeakReference(obj);
            call(get(obj, "v"), "post", new Runnable() { // from class: com.shabakaty.cinemana.ca1.Continue106$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Continue106.lambda$card$5(weakReference);
                }
            });
        } catch (Exception e) {
            log("continue_card_post106", e);
        }
    }

    static /* synthetic */ void lambda$card$5(WeakReference weakReference) {
        try {
            Object obj = weakReference.get();
            if (obj != null) {
                paint(obj);
            }
        } catch (Exception e) {
            log("continue_card_error106", e);
        }
    }

    static void paint(Object obj) throws Exception {
        Entry entry;
        Object objCall = call(get(obj, "v"), "getParent", new Object[0]);
        int i = 0;
        while (true) {
            if (objCall != null && i < 12) {
                if (objCall.getClass().getName().equals("com.shabakaty.cinemana.ui.home_fragment.HorizontalScrollVideosView")) {
                    break;
                }
                try {
                    objCall = call(objCall, "getParent", new Object[0]);
                    i++;
                } catch (Exception e) {
                }
            }
            objCall = null;
            break;
        }
        boolean z = objCall != null && I18n161.t(TITLE).equals(call(objCall, "getTitle", new Object[0]));
        Dismiss109.bind(obj, z);
        Episodes107.badge(obj, z);
        String[] strArr = {"M", "R"};
        for (int i2 = 0; i2 < 2; i2++) {
            metadata(get(obj, strArr[i2]), z);
        }
        if (!z) {
            Object obj2 = get(obj, "S");
            Integer numRemove = heights.remove(obj2);
            if (numRemove != null) {
                Object objCall2 = call(obj2, "getLayoutParams", new Object[0]);
                set(objCall2, Icon.TAG_HEIGHT, numRemove);
                call(obj2, "setLayoutParams", objCall2);
                return;
            }
            return;
        }
        call(get(obj, "N"), "setVisibility", 8);
        Object obj3 = get(obj, "U");
        if (obj3 == null) {
            return;
        }
        synchronized (Continue106.class) {
            entry = entries.get(text(obj3, "nb"));
        }
        if (entry == null) {
            return;
        }
        Object obj4 = get(obj, "S");
        call(obj4, "setVisibility", 0);
        call(obj4, "setMax", 100);
        call(obj4, "setProgress", Integer.valueOf(Progress106.percent(entry.p, entry.d)));
        call(obj4, "setProgressTintList", call(Class.forName("android.content.res.ColorStateList"), "valueOf", -2680544));
        Object objCall3 = call(obj4, "getLayoutParams", new Object[0]);
        Map<Object, Integer> map = heights;
        if (!map.containsKey(obj4)) {
            map.put(obj4, Integer.valueOf(((Number) get(objCall3, Icon.TAG_HEIGHT)).intValue()));
        }
        set(objCall3, Icon.TAG_HEIGHT, Integer.valueOf(Math.max(2, Math.round(((Number) get(call(call(obj4, "getResources", new Object[0]), "getDisplayMetrics", new Object[0]), "density")).floatValue() * 4.0f))));
        set(objCall3, "gravity", 16);
        call(obj4, "setLayoutParams", objCall3);
    }
}
