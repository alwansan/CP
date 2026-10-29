package com.shabakaty.cinemana.ca1;

import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
public final class Episodes107 {

    interface Sink {
        void take(Object obj);
    }

    static Object prefs(Object obj) throws Exception {
        return Continue106.call(obj, "getSharedPreferences", "ca1_episode_context107", 0);
    }

    static String field(Object obj, String str) {
        try {
            return Continue106.text(obj, str);
        } catch (Exception e) {
            return BuildConfig.FLAVOR;
        }
    }

    static boolean episodic(Object obj) {
        return "2".equals(field(obj, "kind"));
    }

    static String label(Object obj) {
        if (!episodic(obj)) {
            return BuildConfig.FLAVOR;
        }
        String strField = field(obj, "season");
        String strField2 = field(obj, "episodeNummer");
        return (strField.isEmpty() || strField2.isEmpty()) ? BuildConfig.FLAVOR : "S" + strField + " E" + strField2;
    }

    static boolean sameWork(Object obj, Object obj2) {
        String strField = field(obj, "rootSeries");
        return episodic(obj2) && (field(obj, "nb").equals(field(obj2, "nb")) || !(strField.isEmpty() || "0".equals(strField) || !strField.equals(field(obj2, "rootSeries"))));
    }

    static List<Object> merge(Object obj, List<?>... listArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (List<?> list : listArr) {
            if (list != null) {
                for (Object obj2 : list) {
                    if (sameWork(obj, obj2)) {
                        linkedHashMap.put(field(obj2, "nb"), obj2);
                    }
                }
            }
        }
        if (episodic(obj)) {
            linkedHashMap.put(field(obj, "nb"), obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        Collections.sort(arrayList, new Comparator() { // from class: com.shabakaty.cinemana.ca1.Episodes107$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj3, Object obj4) {
                return Episodes107.lambda$merge$0(obj3, obj4);
            }
        });
        return arrayList;
    }

    static /* synthetic */ int lambda$merge$0(Object obj, Object obj2) {
        int iNumber = number(field(obj, "season")) - number(field(obj2, "season"));
        return iNumber != 0 ? iNumber : Integer.compare(number(field(obj, "episodeNummer")), number(field(obj2, "episodeNummer")));
    }

    static int number(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            return 0;
        }
    }

    public static void capture(Object obj, Object obj2) {
        try {
            final Object obj3 = Continue106.get(obj2, "a");
            if (obj3 == null || !(obj instanceof List)) {
                return;
            }
            final ArrayList arrayList = new ArrayList((List) obj);
            Thread thread = new Thread(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Episodes107$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Episodes107.lambda$capture$1(obj3, arrayList);
                }
            }, "continue-cache107");
            thread.setDaemon(true);
            thread.start();
        } catch (Exception e) {
            Continue106.log("continue_context_save107", e);
        }
    }

    static /* synthetic */ void lambda$capture$1(Object obj, List list) {
        try {
            save(obj, list);
        } catch (Exception e) {
            Continue106.log("continue_context_save107", e);
        }
    }

    static synchronized void save(Object obj, List<?> list) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : list) {
            if (episodic(obj2) && !field(obj2, "nb").isEmpty()) {
                String strField = field(obj2, "rootSeries");
                if (!strField.isEmpty() && !"0".equals(strField)) {
                    ((List) linkedHashMap.computeIfAbsent(strField, new Function() { // from class: com.shabakaty.cinemana.ca1.Episodes107$$ExternalSyntheticLambda2
                        @Override // java.util.function.Function
                        public final Object apply(Object obj3) {
                            return Episodes107.lambda$save$2((String) obj3);
                        }
                    })).add(obj2);
                }
            }
        }
        Object objPrefs = prefs(obj);
        Object objCall = Continue106.call(objPrefs, "edit", new Object[0]);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : cached(obj, ((List) entry.getValue()).get(0))) {
                linkedHashMap2.put(field(obj3, "nb"), obj3);
            }
            for (Object obj4 : (List) entry.getValue()) {
                linkedHashMap2.put(field(obj4, "nb"), obj4);
            }
            StringBuilder sb = new StringBuilder("1\n");
            Iterator it = linkedHashMap2.values().iterator();
            while (it.hasNext()) {
                sb.append(Continue106.pack(it.next())).append('\n');
            }
            Continue106.call(objCall, "putString", "work/" + ((String) entry.getKey()), sb.toString());
            Continue106.call(objCall, "putLong", "time/" + ((String) entry.getKey()), Long.valueOf(System.currentTimeMillis()));
        }
        final Map map = (Map) Continue106.call(objPrefs, "getAll", new Object[0]);
        ArrayList arrayList = new ArrayList();
        for (Object obj5 : map.keySet()) {
            if (obj5.toString().startsWith("time/")) {
                arrayList.add(obj5.toString());
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.shabakaty.cinemana.ca1.Episodes107$$ExternalSyntheticLambda3
            @Override // java.util.Comparator
            public final int compare(Object obj6, Object obj7) {
                Map map2 = map;
                return Long.compare(((Number) map2.get((String) obj7)).longValue(), ((Number) map2.get((String) obj6)).longValue());
            }
        });
        for (int i = 60; i < arrayList.size(); i++) {
            Continue106.call(objCall, "remove", arrayList.get(i));
            Continue106.call(objCall, "remove", "work/" + ((String) arrayList.get(i)).substring(5));
        }
        Continue106.call(objCall, "apply", new Object[0]);
        Persistence123.changed();
    }

    static /* synthetic */ List lambda$save$2(String str) {
        return new ArrayList();
    }

    static synchronized List<Object> cached(Object obj, Object obj2) {
        ArrayList arrayList = new ArrayList();
        if (!episodic(obj2)) {
            return arrayList;
        }
        try {
            String strField = field(obj2, "rootSeries");
            if (!strField.isEmpty() && !"0".equals(strField)) {
                String[] strArrSplit = Continue106.call(prefs(obj), "getString", "work/" + strField, BuildConfig.FLAVOR).toString().split(SSDPPacket.LF);
                if (strArrSplit.length != 0 && "1".equals(strArrSplit[0])) {
                    for (int i = 1; i < strArrSplit.length; i++) {
                        try {
                            Object objRaw = raw(strArrSplit[i]);
                            if (sameWork(obj2, objRaw)) {
                                arrayList.add(objRaw);
                            }
                        } catch (Exception e) {
                        }
                    }
                    return merge(obj2, arrayList);
                }
                return arrayList;
            }
            return arrayList;
        } catch (Exception e2) {
            Continue106.log("continue_context_read107", e2);
        }
    }

    static Object raw(String str) throws Exception {
        byte[] bArr = (byte[]) Continue106.call(Class.forName("android.util.Base64"), "decode", str, 2);
        Object objCall = Continue106.call(Class.forName("android.os.Parcel"), "obtain", new Object[0]);
        try {
            Continue106.call(objCall, "unmarshall", bArr, 0, Integer.valueOf(bArr.length));
            Continue106.call(objCall, "setDataPosition", 0);
            Object objCall2 = Continue106.call(Continue106.get(Class.forName("com.shabakaty.cinemana.domain.models.local.VideoModel"), "CREATOR"), "createFromParcel", objCall);
            Continue106.call(objCall, "recycle", new Object[0]);
            return objCall2;
        } catch (Throwable th) {
            Continue106.call(objCall, "recycle", new Object[0]);
            throw th;
        }
    }

    public static void onPlayer(Object obj) {
        try {
            final String str = (String) Continue106.call(Continue106.call(obj, "getIntent", new Object[0]), "getStringExtra", "ca1_continue_id106");
            if (str == null) {
                return;
            }
            Object objCall = Continue106.call(obj, "F", new Object[0]);
            final Object objCall2 = Continue106.call(Continue106.get(objCall, "z"), "getValue", new Object[0]);
            if (episodic(objCall2)) {
                final Object objCall3 = Continue106.call(obj, "getApplicationContext", new Object[0]);
                final Object obj2 = Continue106.get(objCall, "g");
                final WeakReference weakReference = new WeakReference(obj);
                Thread thread = new Thread(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Episodes107$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Episodes107.lambda$onPlayer$4(objCall3, objCall2, weakReference, str, obj2);
                    }
                }, "continue-episodes107");
                thread.setDaemon(true);
                thread.start();
            }
        } catch (Exception e) {
            Continue106.log("continue_context_start107", e);
        }
    }

    static /* synthetic */ void lambda$onPlayer$4(Object obj, Object obj2, WeakReference weakReference, String str, Object obj3) {
        try {
            List<Object> listDownloads = downloads(obj, obj2);
            List<Object> listCached = cached(obj, obj2);
            post(weakReference, str, merge(obj2, listCached, listDownloads));
            List<Object> listMerge = merge(obj2, listCached, remote(obj3, obj2), listDownloads);
            save(obj, listMerge);
            post(weakReference, str, listMerge);
            Continue106.log("continue_context_ready107", null);
        } catch (Exception e) {
            Continue106.log("continue_context_load107", e);
        }
    }

    static boolean localFile(String str) {
        try {
            return (str.startsWith("file:") ? new File(new URI(str)) : new File(str)).isFile();
        } catch (Exception e) {
            return false;
        }
    }

    static List<Object> downloads(Object obj, Object obj2) {
        ArrayList arrayList = new ArrayList();
        try {
            Object objCall = Continue106.call(obj, "h", new Object[0]);
            List list = (List) Continue106.call(objCall, "j", new Object[0]);
            HashSet hashSet = new HashSet();
            String strField = field(obj2, "rootSeries");
            String strField2 = field(obj2, "nb");
            for (Object obj3 : list) {
                if (strField2.equals(field(obj3, "id")) || (!strField.isEmpty() && !"0".equals(strField) && strField.equals(field(obj3, "rootEpisode")))) {
                    hashSet.add(Integer.valueOf(((Number) Continue106.get(obj3, "collectionID")).intValue()));
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                for (Object obj4 : (List) Continue106.call(objCall, "o", Integer.valueOf(((Integer) it.next()).intValue()))) {
                    Object obj5 = Continue106.get(obj4, "cinemanaDownloadItem");
                    if (strField2.equals(field(obj5, "id")) || strField.equals(field(obj5, "rootEpisode"))) {
                        Object objCall2 = Continue106.call(obj5, "b", Continue106.get(obj4, "subtitles"), Continue106.get(obj4, "skippableScenes"), obj);
                        String strField3 = field(obj5, FileDownloadModel.PATH);
                        String str = (String) Continue106.call(Class.forName("com.shabakaty.cinemana.features.LocalMkvResolver"), "resolve", obj, objCall2);
                        if ((str != null && localFile(str)) || (!strField3.isEmpty() && localFile(strField3))) {
                            Continue106.set(objCall2, "finished", true);
                            arrayList.add(objCall2);
                        }
                    }
                }
            }
        } catch (Exception e) {
            Continue106.log("continue_context_local107", e);
        }
        return arrayList;
    }

    /**
     * Reconstructed from smali_classes6/Episodes107.remote.
     *
     * The asynchronous callback contract is intentionally unchanged: request
     * work, wait at most 25 seconds, map/filter episodes, and always dispose
     * the network subscription. Exceptions are logged and preserve partial
     * results rather than crashing playback's Continue Watching screen.
     */
    static List<Object> remote(Object repository, Object currentVideo) throws Throwable {
        List<Object> matched = new ArrayList<>();
        Object subscription = null;
        try {
            Object service = Continue106.get(repository, "a");
            Object request = Continue106.call(service, "b", field(currentVideo, "nb"),
                    "cacheable-for-authorized, max-age=900");

            final CountDownLatch completed = new CountDownLatch(1);
            final List received = Collections.synchronizedList(new ArrayList());
            final Throwable[] failure = {null};
            Class<?> consumerType = Class.forName("com.shabakaty.downloader.xc0");
            Class<?> actionType = Class.forName("com.shabakaty.downloader.j2");
            subscription = Continue106.call(request, "g",
                    callback(consumerType, new Sink() {
                        @Override public void take(Object data) {
                            lambda$remote$5(received, data);
                        }
                    }),
                    callback(consumerType, new Sink() {
                        @Override public void take(Object error) {
                            lambda$remote$6(failure, completed, error);
                        }
                    }),
                    callback(actionType, new Sink() {
                        @Override public void take(Object ignored) {
                            completed.countDown();
                        }
                    }),
                    callback(consumerType, new Sink() {
                        @Override public void take(Object ignored) {
                            lambda$remote$8(ignored);
                        }
                    }));

            if (!completed.await(25L, TimeUnit.SECONDS)) {
                throw new IOException("episode context timeout");
            }
            if (failure[0] != null) {
                throw new IOException("episode context request failed", failure[0]);
            }

            Object downloads = Continue106.get(repository, "d");
            Object mapper = Continue106.get(downloads, "c");
            Object videoService = Continue106.get(repository, "b");
            for (Object dto : received) {
                Object episode = Continue106.call(mapper, "mapDtoToDomain", dto);
                String rootSeries = field(episode, "rootSeries");
                if (episodic(episode) &&
                        (rootSeries.isEmpty() || "0".equals(rootSeries))) {
                    Continue106.set(episode, "rootSeries", field(currentVideo, "rootSeries"));
                }
                if (!sameWork(currentVideo, episode)) {
                    continue;
                }
                Continue106.call(episode, "p", downloads,
                        Continue106.call(videoService, "a", field(episode, "nb")));
                Continue106.set(episode, "episodeDesc",
                        Continue106.call(Continue106.get(downloads, "d"), "a", episode));
                matched.add(episode);
            }
        } catch (Exception error) {
            Continue106.log("continue_context_remote107", error);
        } finally {
            if (subscription != null) {
                try {
                    Continue106.call(subscription, "h", new Object[0]);
                } catch (Exception ignored) {
                    // Disposal is best effort, identical to the original Smali.
                }
            }
        }
        return matched;
    }

    static /* synthetic */ void lambda$remote$5(List list, Object obj) {
        if (obj instanceof List) {
            list.addAll((List) obj);
        }
    }

    static /* synthetic */ void lambda$remote$6(Throwable[] thArr, CountDownLatch countDownLatch, Object obj) {
        if (obj instanceof Throwable) {
            thArr[0] = (Throwable) obj;
        }
        countDownLatch.countDown();
    }

    static /* synthetic */ void lambda$remote$8(Object obj) {
    }

    static Object callback(Class<?> cls, final Sink sink) {
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.Episodes107$$ExternalSyntheticLambda5
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return Episodes107.lambda$callback$9(sink, obj, method, objArr);
            }
        });
    }

    static /* synthetic */ Object lambda$callback$9(Sink sink, Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getDeclaringClass() != Object.class) {
            sink.take((objArr == null || objArr.length == 0) ? null : objArr[0]);
            return null;
        }
        if (method.getName().equals("hashCode")) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if (method.getName().equals("equals")) {
            return Boolean.valueOf(obj == objArr[0]);
        }
        return "ContinueEpisodes107";
    }

    static void post(final WeakReference<Object> weakReference, final String str, final List<?> list) throws Exception {
        Object obj = weakReference.get();
        if (obj == null) {
            return;
        }
        Continue106.call(obj, "runOnUiThread", new Runnable() { // from class: com.shabakaty.cinemana.ca1.Episodes107$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Episodes107.lambda$post$10(weakReference, str, list);
            }
        });
    }

    static /* synthetic */ void lambda$post$10(WeakReference weakReference, String str, List list) {
        try {
            Object obj = weakReference.get();
            if (obj != null && !Boolean.TRUE.equals(Continue106.call(obj, "isFinishing", new Object[0])) && !Boolean.TRUE.equals(Continue106.call(obj, "isDestroyed", new Object[0]))) {
                Object objCall = Continue106.call(obj, "F", new Object[0]);
                Object objCall2 = Continue106.call(Continue106.get(objCall, "z"), "getValue", new Object[0]);
                if (str.equals(field(objCall2, "nb"))) {
                    Map map = (Map) Continue106.make("com.shabakaty.downloader.bi2", new Object[0]);
                    for (Object obj2 : merge(objCall2, list)) {
                        String strField = field(obj2, "season");
                        List arrayList = (List) map.get(strField);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            map.put(strField, arrayList);
                        }
                        arrayList.add(Continue106.make("com.shabakaty.downloader.b41", Boolean.valueOf(str.equals(field(obj2, "nb"))), obj2));
                    }
                    Continue106.call(Continue106.get(objCall, "B"), "setValue", map);
                    Continue106.call(Continue106.get(objCall, "A"), "setValue", map.get(field(objCall2, "season")));
                    Continue106.call(obj, "L0", new Object[0]);
                }
            }
        } catch (Exception e) {
            Continue106.log("continue_context_ui107", e);
        }
    }

    public static void badge(Object obj, boolean z) throws Exception {
        try {
            Object objCall = Continue106.call(Continue106.get(obj, "O"), "getParent", new Object[0]);
            if (objCall == null) {
                return;
            }
            Object objCall2 = Continue106.call(objCall, "findViewWithTag", "ca1_episode_badge107");
            String strLabel = z ? label(Continue106.get(obj, "U")) : BuildConfig.FLAVOR;
            if (strLabel.isEmpty()) {
                if (objCall2 != null) {
                    Continue106.call(objCall2, "setVisibility", 8);
                    return;
                }
                return;
            }
            if (objCall2 == null) {
                objCall2 = Continue106.make("android.widget.TextView", Continue106.call(objCall, "getContext", new Object[0]));
                Continue106.call(objCall2, "setTag", "ca1_episode_badge107");
                float fFloatValue = ((Number) Continue106.get(Continue106.call(Continue106.call(objCall, "getResources", new Object[0]), "getDisplayMetrics", new Object[0]), "density")).floatValue();
                Object objMake = Continue106.make("android.widget.FrameLayout$LayoutParams", -2, -2, 51);
                float f = 5.0f * fFloatValue;
                Continue106.set(objMake, "leftMargin", Integer.valueOf(Math.round(f)));
                Continue106.set(objMake, "topMargin", Integer.valueOf(Math.round(f)));
                Continue106.call(objCall2, "setTextColor", -1);
                Continue106.call(objCall2, "setBackgroundColor", -1157427433);
                Continue106.call(objCall2, "setTextSize", Float.valueOf(12.0f));
                Continue106.call(objCall2, "setTypeface", null, 1);
                Continue106.call(objCall2, "setGravity", 3);
                Continue106.call(objCall2, "setLayoutDirection", 0);
                Continue106.call(objCall2, "setTextDirection", 3);
                float f2 = 2.0f * fFloatValue;
                Continue106.call(objCall2, "setPadding", Integer.valueOf(Math.round(f)), Integer.valueOf(Math.round(f2)), Integer.valueOf(Math.round(f)), Integer.valueOf(Math.round(f2)));
                Continue106.call(objCall2, "setElevation", Float.valueOf(fFloatValue * 20.0f));
                Continue106.call(objCall2, "setClickable", false);
                Continue106.call(objCall2, "setFocusable", false);
                Continue106.call(objCall, "addView", objCall2, objMake);
            }
            Continue106.call(objCall2, "setText", strLabel);
            Continue106.call(objCall2, "setVisibility", 0);
        } catch (Exception e) {
        }
    }
}
