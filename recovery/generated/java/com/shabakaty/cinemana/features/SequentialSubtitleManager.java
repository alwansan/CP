package com.shabakaty.cinemana.features;

import android.app.AlertDialog;
import android.widget.Button;
import com.connectsdk.R;
import com.connectsdk.service.DLNAService;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.cinemana.player.VideoPlayerActivity;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import zendesk.core.ZendeskBlipsProvider;
import zendesk.support.request.CellBase;

/* JADX INFO: loaded from: classes9.dex */
public final class SequentialSubtitleManager {
    private static final String PREFS = "cinemana_sequential_subtitles_v1";
    private static final int REQUEST_TREE = 21011;
    private static final String TAG = "CinemanaSeqSubs";
    private static final Pattern NUMBER_PATTERN = Pattern.compile("[0-9٠-٩۰-۹]+");
    private static final Pattern EP_MARKER = Pattern.compile("(?iu)(?:^|[^\\p{L}])(?:episode|episodes|ep|حلقة|الحلقة|ح)\\s*[._ -]*0*([0-9٠-٩۰-۹]+)(?:[^0-9٠-٩۰-۹]|$)");
    private static final Map<Object, Object> OBSERVERS = new WeakHashMap();
    private static final Map<Object, String> LAST_HANDLED = new WeakHashMap();
    private static final Map<Object, Boolean> AUTO_ACTIVE = new WeakHashMap();
    private static final Map<Object, Boolean> MANUAL_ACTIVE = new WeakHashMap();
    private static final Map<Object, WorkInfo> PENDING_WORK = new WeakHashMap();
    private static final Map<Object, String> OBSERVED_EPISODES = new WeakHashMap();
    private static final Map<Object, Object> POLL_HANDLERS = new WeakHashMap();
    private static final Map<Object, Runnable> POLL_RUNNABLES = new WeakHashMap();
    private static final Map<Object, String> RETRYING_EPISODES = new WeakHashMap();
    private static final Map<String, List<SubtitleFile>> FILE_CACHE = new HashMap();
    private static final Map<String, String> SCAN_REPORTS = new HashMap();
    private static final Class<?>[] NO_TYPES = new Class[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.shabakaty.cinemana.player.VideoPlayerActivity, java.lang.Object] */
    public static void openSubtitleSyncDialog(Object obj) {
        try {
            obj = (VideoPlayerActivity) obj;
            CinemanaPlayerControllerView cinemanaPlayerControllerViewP0 = obj.p0();
            if (cinemanaPlayerControllerViewP0 == null) {
                showToast(obj, "Player controller is unavailable");
            } else {
                SequentialSubtitleSyncHelper.init(cinemanaPlayerControllerViewP0);
                SequentialSubtitleSyncHelper.showSequentialDialog(cinemanaPlayerControllerViewP0);
            }
        } catch (Throwable th) {
            logError("Could not open subtitle sync dialog", th);
            showToast(obj, isArabic() ? "تعذر فتح مزامنة الترجمة" : "Could not open subtitle sync settings");
        }
    }

    private static void styleDialogButtons(Object obj, Object obj2) {
        try {
            AlertDialog alertDialog = (AlertDialog) obj2;
            Button button = alertDialog.getButton(-1);
            if (button != null) {
                button.setTextColor(-1);
            }
            Button button2 = alertDialog.getButton(-2);
            if (button2 != null) {
                button2.setTextColor(-1);
            }
            Button button3 = alertDialog.getButton(-3);
            if (button3 != null) {
                button3.setTextColor(-1);
            }
        } catch (Throwable th) {
        }
    }

    private SequentialSubtitleManager() {
    }

    public static void installObserver(final Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return;
        }
        synchronized (OBSERVERS) {
            if (!OBSERVERS.containsKey(obj)) {
                try {
                    Class<?> cls = Class.forName("androidx.lifecycle.Observer");
                    Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.1
                        @Override // java.lang.reflect.InvocationHandler
                        public Object invoke(Object obj3, Method method, Object[] objArr) {
                            String name = method.getName();
                            boolean z = false;
                            if ("onChanged".equals(name)) {
                                SequentialSubtitleManager.onObservedModelChanged(obj, (objArr == null || objArr.length <= 0) ? null : objArr[0]);
                                return null;
                            }
                            if ("toString".equals(name)) {
                                return "CinemanaSequentialSubtitleObserver";
                            }
                            if ("hashCode".equals(name)) {
                                return Integer.valueOf(System.identityHashCode(obj3));
                            }
                            if (!"equals".equals(name)) {
                                return null;
                            }
                            if (objArr != null && objArr.length > 0 && obj3 == objArr[0]) {
                                z = true;
                            }
                            return Boolean.valueOf(z);
                        }
                    });
                    call(obj2, "observe", new Class[]{Class.forName("androidx.lifecycle.LifecycleOwner"), cls}, obj, objNewProxyInstance);
                    OBSERVERS.put(obj, objNewProxyInstance);
                    logInfo("Observer installed");
                } catch (Throwable th) {
                    logError("Observer installation failed", th);
                }
            }
        }
        startEpisodePolling(obj);
        onPlayerReady(obj);
        scheduleStartupRetry(obj, 350L);
        scheduleStartupRetry(obj, 950L);
        scheduleStartupRetry(obj, 1800L);
    }

    public static void onPlayerReady(Object obj) {
        Object currentModel;
        WorkInfo workInfoMakeWorkInfo;
        boolean zEquals;
        if (obj == null || (currentModel = getCurrentModel(obj)) == null || (workInfoMakeWorkInfo = makeWorkInfo(currentModel)) == null || workInfoMakeWorkInfo.episode == null) {
            return;
        }
        String stringPref = getStringPref(obj, treeKey(workInfoMakeWorkInfo), null);
        if (stringPref != null && stringPref.length() != 0) {
            boolean z = true;
            if (getBooleanPref(obj, enabledKey(workInfoMakeWorkInfo), true)) {
                String str = workInfoMakeWorkInfo.key + "|" + emptyDash(workInfoMakeWorkInfo.season) + "|" + workInfoMakeWorkInfo.episode;
                String stringPref2 = getStringPref(obj, lastStatusKey(workInfoMakeWorkInfo), BuildConfig.FLAVOR);
                String strStatusEpisode = statusEpisode(stringPref2);
                synchronized (LAST_HANDLED) {
                    zEquals = str.equals(LAST_HANDLED.get(obj));
                }
                if (!strStatusEpisode.equals(workInfoMakeWorkInfo.episode) || (!stringPref2.startsWith("applied:") && !stringPref2.startsWith("no_match:"))) {
                    z = false;
                }
                if (!zEquals || !z) {
                    synchronized (LAST_HANDLED) {
                        LAST_HANDLED.remove(obj);
                    }
                    onModelChanged(obj, currentModel);
                    return;
                }
                return;
            }
        }
        onModelChanged(obj, currentModel);
    }

    private static void scheduleStartupRetry(final Object obj, long j) {
        try {
            Class<?> cls = Class.forName("android.os.Handler");
            cls.getMethod("postDelayed", Runnable.class, Long.TYPE).invoke(cls.getConstructor(new Class[0]).newInstance(new Object[0]), new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        SequentialSubtitleManager.onPlayerReady(obj);
                    } catch (Throwable th) {
                        SequentialSubtitleManager.logError("Startup subtitle retry failed", th);
                    }
                }
            }, Long.valueOf(j));
        } catch (Throwable th) {
            logError("Could not schedule startup subtitle retry", th);
        }
    }

    public static void onManualImport(Object obj) {
        if (obj == null) {
            return;
        }
        synchronized (AUTO_ACTIVE) {
            AUTO_ACTIVE.remove(obj);
        }
        synchronized (MANUAL_ACTIVE) {
            MANUAL_ACTIVE.put(obj, Boolean.TRUE);
        }
        logInfo("Manual subtitle import selected; automatic reset ownership released");
    }

    public static void selectFolder(Object obj, Object obj2) {
        if (obj == null) {
            return;
        }
        Object currentModel = getCurrentModel(obj);
        if (currentModel != null) {
            obj2 = currentModel;
        }
        WorkInfo workInfoMakeWorkInfo = makeWorkInfo(obj2);
        if (workInfoMakeWorkInfo == null || workInfoMakeWorkInfo.episode == null) {
            showMessage(obj, isArabic() ? "متابعة الترجمات" : "Sequential subtitles", isArabic() ? "تعذر تحديد رقم الحلقة الحالية. افتح الخيار من حلقة مسلسل." : "The current episode could not be identified. Open this option from a series episode.");
        } else {
            startTreePicker(obj, workInfoMakeWorkInfo);
        }
    }

    public static void openSettings(Object obj, Object obj2) {
        if (obj == null) {
            return;
        }
        Object currentModel = getCurrentModel(obj);
        if (currentModel != null) {
            obj2 = currentModel;
        }
        WorkInfo workInfoMakeWorkInfo = makeWorkInfo(obj2);
        if (workInfoMakeWorkInfo == null || workInfoMakeWorkInfo.episode == null) {
            showMessage(obj, isArabic() ? "إعدادات متابعة الترجمات" : "Sequential subtitle settings", isArabic() ? "تعذر تحديد العمل والحلقة الحالية." : "Could not identify the current title and episode.");
            return;
        }
        if (clearStaleEpisodeState(obj, workInfoMakeWorkInfo)) {
            synchronized (LAST_HANDLED) {
                LAST_HANDLED.remove(obj);
            }
            onModelChanged(obj, obj2);
        }
        showManageDialog(obj, workInfoMakeWorkInfo, getStringPref(obj, treeKey(workInfoMakeWorkInfo), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onObservedModelChanged(Object obj, Object obj2) {
        String strPut;
        WorkInfo workInfoMakeWorkInfo = makeWorkInfo(obj2);
        if (workInfoMakeWorkInfo == null || workInfoMakeWorkInfo.episode == null) {
            onModelChanged(obj, obj2);
            return;
        }
        String strEpisodeKey = episodeKey(workInfoMakeWorkInfo);
        synchronized (OBSERVED_EPISODES) {
            strPut = OBSERVED_EPISODES.put(obj, strEpisodeKey);
        }
        onModelChanged(obj, obj2);
        if (strPut == null || strPut.equals(strEpisodeKey)) {
            return;
        }
        scheduleEpisodeTransitionRetries(obj, strEpisodeKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String episodeKey(WorkInfo workInfo) {
        return workInfo.key + "|" + emptyDash(workInfo.season) + "|" + workInfo.episode;
    }

    private static void startEpisodePolling(final Object obj) {
        if (obj == null) {
            return;
        }
        synchronized (POLL_RUNNABLES) {
            if (POLL_RUNNABLES.containsKey(obj)) {
                return;
            }
            try {
                final Class<?> cls = Class.forName("android.os.Handler");
                final Object objNewInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
                Runnable[] runnableArr = {new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.3
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean z;
                        String str;
                        synchronized (SequentialSubtitleManager.POLL_RUNNABLES) {
                            z = SequentialSubtitleManager.POLL_RUNNABLES.get(obj) == this;
                        }
                        if (z && !SequentialSubtitleManager.isActivityInactive(obj)) {
                            try {
                                Object currentModel = SequentialSubtitleManager.getCurrentModel(obj);
                                WorkInfo workInfoMakeWorkInfo = SequentialSubtitleManager.makeWorkInfo(currentModel);
                                if (workInfoMakeWorkInfo != null && workInfoMakeWorkInfo.episode != null) {
                                    String strEpisodeKey = SequentialSubtitleManager.episodeKey(workInfoMakeWorkInfo);
                                    synchronized (SequentialSubtitleManager.OBSERVED_EPISODES) {
                                        str = (String) SequentialSubtitleManager.OBSERVED_EPISODES.put(obj, strEpisodeKey);
                                    }
                                    if (str != null && !str.equals(strEpisodeKey)) {
                                        synchronized (SequentialSubtitleManager.LAST_HANDLED) {
                                            SequentialSubtitleManager.LAST_HANDLED.remove(obj);
                                        }
                                        SequentialSubtitleManager.onModelChanged(obj, currentModel);
                                        SequentialSubtitleManager.scheduleEpisodeTransitionRetries(obj, strEpisodeKey);
                                    } else {
                                        SequentialSubtitleManager.onPlayerReady(obj);
                                    }
                                }
                            } catch (Throwable th) {
                                SequentialSubtitleManager.logError("Episode transition polling failed", th);
                            }
                            try {
                                cls.getMethod("postDelayed", Runnable.class, Long.TYPE).invoke(objNewInstance, this, 650L);
                                return;
                            } catch (Throwable th2) {
                                SequentialSubtitleManager.logError("Could not reschedule episode polling", th2);
                                SequentialSubtitleManager.stopEpisodePolling(obj);
                                return;
                            }
                        }
                        SequentialSubtitleManager.stopEpisodePolling(obj);
                    }
                }};
                POLL_HANDLERS.put(obj, objNewInstance);
                POLL_RUNNABLES.put(obj, runnableArr[0]);
                cls.getMethod("postDelayed", Runnable.class, Long.TYPE).invoke(objNewInstance, runnableArr[0], 500L);
            } catch (Throwable th) {
                logError("Could not start episode transition polling", th);
            }
        }
    }

    public static void stopEpisodePolling(Object obj) {
        Runnable runnableRemove;
        Object objRemove;
        if (obj == null) {
            return;
        }
        synchronized (POLL_RUNNABLES) {
            runnableRemove = POLL_RUNNABLES.remove(obj);
            objRemove = POLL_HANDLERS.remove(obj);
        }
        if (objRemove != null && runnableRemove != null) {
            try {
                call(objRemove, "removeCallbacks", new Class[]{Runnable.class}, runnableRemove);
            } catch (Throwable th) {
                logError("Could not stop episode polling", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isActivityInactive(Object obj) {
        try {
            if (Boolean.TRUE.equals(call(obj, "isFinishing", NO_TYPES, new Object[0]))) {
                return true;
            }
        } catch (Throwable th) {
        }
        try {
            return Boolean.TRUE.equals(call(obj, "isDestroyed", NO_TYPES, new Object[0]));
        } catch (Throwable th2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void scheduleEpisodeTransitionRetries(Object obj, String str) {
        synchronized (RETRYING_EPISODES) {
            if (str.equals(RETRYING_EPISODES.get(obj))) {
                return;
            }
            RETRYING_EPISODES.put(obj, str);
            scheduleEpisodeRetry(obj, str, 300L);
            scheduleEpisodeRetry(obj, str, 900L);
            scheduleEpisodeRetry(obj, str, 1750L);
        }
    }

    private static void scheduleEpisodeRetry(final Object obj, final String str, long j) {
        try {
            Class<?> cls = Class.forName("android.os.Handler");
            cls.getMethod("postDelayed", Runnable.class, Long.TYPE).invoke(cls.getConstructor(new Class[0]).newInstance(new Object[0]), new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Object currentModel = SequentialSubtitleManager.getCurrentModel(obj);
                        WorkInfo workInfoMakeWorkInfo = SequentialSubtitleManager.makeWorkInfo(currentModel);
                        if (workInfoMakeWorkInfo == null || !str.equals(SequentialSubtitleManager.episodeKey(workInfoMakeWorkInfo)) || SequentialSubtitleManager.getStringPref(obj, SequentialSubtitleManager.lastStatusKey(workInfoMakeWorkInfo), BuildConfig.FLAVOR).equals("applied:" + workInfoMakeWorkInfo.episode)) {
                            return;
                        }
                        synchronized (SequentialSubtitleManager.LAST_HANDLED) {
                            SequentialSubtitleManager.LAST_HANDLED.remove(obj);
                        }
                        SequentialSubtitleManager.onModelChanged(obj, currentModel);
                    } catch (Throwable th) {
                        SequentialSubtitleManager.logError("Delayed episode subtitle refresh failed", th);
                    }
                }
            }, Long.valueOf(j));
        } catch (Throwable th) {
            logError("Could not schedule episode subtitle refresh", th);
        }
    }

    public static void onActivityResult(Object obj, int i, int i2, Object obj2) {
        WorkInfo workInfoRemove;
        if (obj == null || i != REQUEST_TREE) {
            return;
        }
        synchronized (PENDING_WORK) {
            workInfoRemove = PENDING_WORK.remove(obj);
        }
        if (i2 != -1 || obj2 == null) {
            logInfo("Folder selection canceled");
            return;
        }
        try {
            Object objCall = call(obj2, "getData", NO_TYPES, new Object[0]);
            if (objCall == null) {
                return;
            }
            String strValueOf = String.valueOf(objCall);
            int iNumber = number(call(obj2, "getFlags", NO_TYPES, new Object[0]), 0) & 3;
            if ((iNumber & 1) == 0) {
                iNumber = 1;
            }
            Object objCall2 = call(obj, "getContentResolver", NO_TYPES, new Object[0]);
            try {
                call(objCall2, "takePersistableUriPermission", new Class[]{Class.forName("android.net.Uri"), Integer.TYPE}, objCall, Integer.valueOf(iNumber));
            } catch (Throwable th) {
                try {
                    call(objCall2, "takePersistableUriPermission", new Class[]{Class.forName("android.net.Uri"), Integer.TYPE}, objCall, 1);
                } catch (Throwable th2) {
                    logError("Could not persist folder permission", th);
                }
            }
            Object currentModel = getCurrentModel(obj);
            if (workInfoRemove == null) {
                workInfoRemove = makeWorkInfo(currentModel);
            }
            if (workInfoRemove != null && workInfoRemove.key != null) {
                putStringPref(obj, treeKey(workInfoRemove), strValueOf);
                putBooleanPref(obj, enabledKey(workInfoRemove), true);
                removePref(obj, lastStatusKey(workInfoRemove));
                removePref(obj, lastDiagnosticsKey(workInfoRemove));
                removePref(obj, lastIndexCountKey(workInfoRemove));
                synchronized (FILE_CACHE) {
                    FILE_CACHE.remove(strValueOf);
                }
                synchronized (LAST_HANDLED) {
                    LAST_HANDLED.remove(obj);
                }
                String strDisplayFolderName = displayFolderName(obj, strValueOf);
                showToast(obj, (isArabic() ? new StringBuilder().append("تم حفظ مجلد الترجمات: ").append(strDisplayFolderName) : new StringBuilder().append("Subtitle folder saved: ").append(strDisplayFolderName)).toString());
                logInfo("Folder saved for " + workInfoRemove.key + ", uri=" + strValueOf);
                onModelChanged(obj, currentModel);
                return;
            }
            showToast(obj, isArabic() ? "تعذر ربط المجلد بالعمل الحالي" : "Could not link the folder to the current title");
        } catch (Throwable th3) {
            logError("Folder selection processing failed", th3);
            showToast(obj, isArabic() ? "تعذر حفظ مجلد الترجمات" : "Could not save the subtitle folder");
        }
    }

    private static void showManageDialog(final Object obj, final WorkInfo workInfo, String str) {
        int i;
        String str2;
        String str3;
        boolean z = str != null && str.length() > 0;
        boolean booleanPref = getBooleanPref(obj, enabledKey(workInfo), z);
        String stringPref = getStringPref(obj, lastFileKey(workInfo), BuildConfig.FLAVOR);
        String stringPref2 = getStringPref(obj, lastEpisodeKey(workInfo), BuildConfig.FLAVOR);
        String stringPref3 = getStringPref(obj, lastStatusKey(workInfo), BuildConfig.FLAVOR);
        String stringPref4 = getStringPref(obj, lastDiagnosticsKey(workInfo), BuildConfig.FLAVOR);
        StringBuilder sb = new StringBuilder();
        try {
            i = Integer.parseInt(getStringPref(obj, lastIndexCountKey(workInfo), "-1"));
        } catch (Throwable th) {
            i = -1;
        }
        if (isArabic()) {
            sb.append("العمل: ").append(emptyDash(workInfo.title)).append('\n');
            sb.append("الحلقة الحالية: ").append(emptyDash(workInfo.episodeRaw)).append('\n');
            sb.append("المجلد: ").append(z ? emptyDash(displayFolderName(obj, str)) : "لم يتم اختيار مجلد").append('\n');
            StringBuilder sbAppend = sb.append("الحالة: ");
            if (z) {
                str3 = booleanPref ? "المتابعة مفعّلة" : "المتابعة متوقفة";
            } else {
                str3 = "بانتظار اختيار مجلد";
            }
            sbAppend.append(str3).append('\n');
            sb.append("مزامنة متابعة الترجمات: ").append((booleanPref && z) ? "تُطبّق عند تشغيل ترجمة تلقائية" : "غير فعّالة حاليًا").append(" (التوقيت ").append(syncOffsetLabel(obj)).append(")\n");
            if (i >= 0) {
                sb.append("ملفات الترجمة المكتشفة: ").append(i).append('\n');
            }
            if (stringPref.length() > 0) {
                sb.append("آخر ملف طُبّق: ").append(stringPref);
                if (stringPref2.length() > 0) {
                    sb.append(" (الحلقة ").append(stringPref2).append(')');
                }
                sb.append('\n');
            }
            if (stringPref3.startsWith("no_match:")) {
                sb.append("لم توجد ترجمة مطابقة للحلقة ").append(workInfo.episode).append("؛ سيبقى المشغل على ترجمته المعتادة.");
                if (stringPref4.length() > 0) {
                    sb.append("\n\nتفاصيل الفحص: ").append(stringPref4);
                }
            } else if (stringPref3.startsWith("import_failed:")) {
                sb.append("عُثر على ملف، لكن تعذر استيراده إلى المشغل.");
                if (stringPref4.length() > 0) {
                    sb.append("\n\nتفاصيل الفحص: ").append(stringPref4);
                }
            } else if (stringPref3.startsWith("scan_error:")) {
                sb.append("حدث خطأ أثناء قراءة المجلد أو مطابقة الملف.");
                if (stringPref4.length() > 0) {
                    sb.append("\n\nتفاصيل الخطأ: ").append(stringPref4);
                }
            } else if (!z) {
                sb.append("اختر مجلد الترجمات من الإعدادات أولاً.");
            } else if (stringPref.length() == 0) {
                sb.append("سيبحث التطبيق تلقائيًا عن ملف الحلقة أثناء تشغيلها.");
            }
        } else {
            sb.append("Title: ").append(emptyDash(workInfo.title)).append('\n');
            sb.append("Current episode: ").append(emptyDash(workInfo.episodeRaw)).append('\n');
            sb.append("Folder: ").append(z ? emptyDash(displayFolderName(obj, str)) : "No folder selected").append('\n');
            StringBuilder sbAppend2 = sb.append("Status: ");
            if (z) {
                str2 = booleanPref ? "Automatic matching enabled" : "Automatic matching disabled";
            } else {
                str2 = "Waiting for folder";
            }
            sbAppend2.append(str2).append('\n');
            sb.append("Sequential subtitle sync: ").append((booleanPref && z) ? "applies to automatic subtitles" : "currently inactive").append(" (offset ").append(syncOffsetLabel(obj)).append(")\n");
            if (i >= 0) {
                sb.append("Subtitle files discovered: ").append(i).append('\n');
            }
            if (stringPref.length() > 0) {
                sb.append("Last applied file: ").append(stringPref).append(stringPref2.length() > 0 ? " (episode " + stringPref2 + ")" : BuildConfig.FLAVOR).append('\n');
            }
            if (stringPref3.startsWith("no_match:")) {
                sb.append("No matching subtitle for episode ").append(workInfo.episode).append("; the player's normal subtitles will remain active.");
            } else if (stringPref3.startsWith("import_failed:")) {
                sb.append("A matching file was found but could not be imported.");
            } else if (!z) {
                sb.append("Choose a subtitle folder from settings first.");
            } else if (stringPref.length() == 0) {
                sb.append("The app will look for the matching file when the episode plays.");
            }
            if (stringPref4.length() > 0 && (stringPref3.startsWith("no_match:") || stringPref3.startsWith("import_failed:") || stringPref3.startsWith("scan_error:"))) {
                sb.append("\n\nScan details: ").append(stringPref4);
            }
        }
        try {
            Object objNewBuilder = newBuilder(obj);
            setBuilderText(objNewBuilder, "setTitle", isArabic() ? "معلومات متابعة الترجمات" : "Sequential subtitle information");
            setBuilderText(objNewBuilder, "setMessage", sb.toString());
            Class<?> cls = Class.forName("android.content.DialogInterface$OnClickListener");
            call(objNewBuilder, "setPositiveButton", new Class[]{CharSequence.class, cls}, isArabic() ? "الإعدادات" : "Settings", Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.5
                @Override // java.lang.reflect.InvocationHandler
                public Object invoke(Object obj2, Method method, Object[] objArr) {
                    if ("onClick".equals(method.getName())) {
                        SequentialSubtitleManager.postSettingsActionsDialog(obj, workInfo);
                        return null;
                    }
                    return null;
                }
            }));
            call(objNewBuilder, "setNegativeButton", new Class[]{CharSequence.class, cls}, isArabic() ? "إغلاق" : "Close", null);
            styleDialogButtons(obj, call(objNewBuilder, "show", NO_TYPES, new Object[0]));
        } catch (Throwable th2) {
            logError("Could not show sequential subtitle information", th2);
            showToast(obj, isArabic() ? "تعذر عرض معلومات متابعة الترجمات" : "Could not display subtitle information");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void postSettingsActionsDialog(final Object obj, final WorkInfo workInfo) {
        try {
            Class<?> cls = Class.forName("android.os.Handler");
            cls.getMethod("postDelayed", Runnable.class, Long.TYPE).invoke(cls.getConstructor(new Class[0]).newInstance(new Object[0]), new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.6
                @Override // java.lang.Runnable
                public void run() {
                    SequentialSubtitleManager.showSettingsActionsDialog(obj, workInfo);
                }
            }, 180L);
        } catch (Throwable th) {
            logError("Could not schedule subtitle settings controls", th);
            showSettingsActionsDialog(obj, workInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showSettingsActionsDialog(final Object obj, final WorkInfo workInfo) {
        String str;
        String str2;
        try {
            String stringPref = getStringPref(obj, treeKey(workInfo), null);
            boolean booleanPref = getBooleanPref(obj, enabledKey(workInfo), stringPref != null && stringPref.length() > 0);
            Class<?> cls = Class.forName("android.content.Context");
            Class<?> cls2 = Class.forName("android.view.View");
            Object objNewInstance = Class.forName("android.widget.LinearLayout").getConstructor(cls).newInstance(obj);
            call(objNewInstance, "setOrientation", new Class[]{Integer.TYPE}, 1);
            call(objNewInstance, "setPadding", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE}, 24, 12, 24, 12);
            if (isArabic()) {
                str = "تحكم بالمتابعة التلقائية ومزامنة ملفات الترجمة لهذا العمل.";
            } else {
                str = "Control automatic matching and sync for this title.";
            }
            addSettingsHint(obj, objNewInstance, str);
            Object[] objArr = new Object[1];
            addSettingsButton(obj, objNewInstance, isArabic() ? "تغيير مجلد الترجمات" : "Change subtitle folder", new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.7
                @Override // java.lang.Runnable
                public void run() {
                    SequentialSubtitleManager.startTreePicker(obj, workInfo);
                }
            }, objArr);
            if (booleanPref) {
                str2 = isArabic() ? "إيقاف المتابعة التلقائية" : "Disable automatic matching";
            } else {
                str2 = isArabic() ? "تشغيل المتابعة التلقائية" : "Enable automatic matching";
            }
            addSettingsButton(obj, objNewInstance, str2, new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.8
                @Override // java.lang.Runnable
                public void run() {
                    SequentialSubtitleManager.toggleSequentialMatching(obj, workInfo);
                }
            }, objArr);
            addSettingsButton(obj, objNewInstance, (isArabic() ? "مزامنة متابعة الترجمات: " : "Sequential subtitle sync: ") + syncOffsetLabel(obj), new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.9
                @Override // java.lang.Runnable
                public void run() {
                    SequentialSubtitleManager.openSubtitleSyncDialog(obj);
                }
            }, objArr);
            addSettingsButton(obj, objNewInstance, isArabic() ? "إعادة فحص مجلد الترجمات" : "Rescan subtitle folder", new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.10
                @Override // java.lang.Runnable
                public void run() {
                    SequentialSubtitleManager.rescanCurrentFolder(obj, workInfo);
                }
            }, objArr);
            addSettingsButton(obj, objNewInstance, isArabic() ? "مسح إعدادات هذا العمل" : "Clear settings for this title", new Runnable() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.11
                @Override // java.lang.Runnable
                public void run() {
                    SequentialSubtitleManager.clearWorkFolder(obj, workInfo, SequentialSubtitleManager.getStringPref(obj, SequentialSubtitleManager.treeKey(workInfo), null));
                }
            }, objArr);
            Object objNewInstance2 = Class.forName("android.widget.ScrollView").getConstructor(cls).newInstance(obj);
            call(objNewInstance2, "addView", new Class[]{cls2}, objNewInstance);
            Object objNewBuilder = newBuilder(obj);
            setBuilderText(objNewBuilder, "setTitle", isArabic() ? "إعدادات متابعة الترجمات" : "Sequential subtitle settings");
            call(objNewBuilder, "setView", new Class[]{cls2}, objNewInstance2);
            call(objNewBuilder, "setNegativeButton", new Class[]{CharSequence.class, Class.forName("android.content.DialogInterface$OnClickListener")}, isArabic() ? "إغلاق" : "Close", null);
            Object objCall = call(objNewBuilder, "show", NO_TYPES, new Object[0]);
            styleDialogButtons(obj, objCall);
            objArr[0] = objCall;
        } catch (Throwable th) {
            logError("Could not show sequential subtitle controls", th);
            showToast(obj, isArabic() ? "تعذر عرض أزرار الإعدادات" : "Could not display settings controls");
        }
    }

    private static void addSettingsHint(Object obj, Object obj2, String str) throws Exception {
        Class<?> cls = Class.forName("android.content.Context");
        Class<?> cls2 = Class.forName("android.widget.TextView");
        Class<?> cls3 = Class.forName("android.view.View");
        Object objNewInstance = cls2.getConstructor(cls).newInstance(obj);
        call(objNewInstance, "setText", new Class[]{CharSequence.class}, str);
        call(objNewInstance, "setTextSize", new Class[]{Float.TYPE}, Float.valueOf(14.0f));
        call(objNewInstance, "setPadding", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE}, 8, 8, 8, 16);
        call(obj2, "addView", new Class[]{cls3}, objNewInstance);
    }

    private static void addSettingsButton(Object obj, Object obj2, String str, final Runnable runnable, final Object[] objArr) throws Exception {
        Class<?> cls = Class.forName("android.content.Context");
        Class<?> cls2 = Class.forName("android.widget.Button");
        Class<?> cls3 = Class.forName("android.view.View");
        Class<?> cls4 = Class.forName("android.view.View$OnClickListener");
        Button button = (Button) cls2.getConstructor(cls).newInstance(obj);
        call(button, "setText", new Class[]{CharSequence.class}, str);
        button.setTextColor(-1);
        call(button, "setOnClickListener", new Class[]{cls4}, Proxy.newProxyInstance(cls4.getClassLoader(), new Class[]{cls4}, new InvocationHandler() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.12
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj3, Method method, Object[] objArr2) {
                if ("onClick".equals(method.getName())) {
                    try {
                        if (objArr[0] != null) {
                            SequentialSubtitleManager.call(objArr[0], "dismiss", SequentialSubtitleManager.NO_TYPES, new Object[0]);
                        }
                    } catch (Throwable th) {
                    }
                    runnable.run();
                    return null;
                }
                return null;
            }
        }));
        call(obj2, "addView", new Class[]{cls3}, button);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void toggleSequentialMatching(Object obj, WorkInfo workInfo) {
        String stringPref = getStringPref(obj, treeKey(workInfo), null);
        boolean z = stringPref != null && stringPref.length() > 0;
        boolean z2 = !getBooleanPref(obj, enabledKey(workInfo), z);
        if (z2 && !z) {
            putBooleanPref(obj, enabledKey(workInfo), true);
            startTreePicker(obj, workInfo);
            return;
        }
        putBooleanPref(obj, enabledKey(workInfo), z2);
        synchronized (LAST_HANDLED) {
            LAST_HANDLED.remove(obj);
        }
        if (z2) {
            setSubtitleSyncEnabled(obj, false);
            showToast(obj, isArabic() ? "تم تفعيل المتابعة التلقائية" : "Automatic matching enabled");
            if (getCurrentModel(obj) != null) {
                onPlayerReady(obj);
                return;
            }
            return;
        }
        resetAutomaticSubtitle(obj);
        synchronized (AUTO_ACTIVE) {
            AUTO_ACTIVE.remove(obj);
        }
        setSubtitleSyncEnabled(obj, false);
        removePref(obj, lastFileKey(workInfo));
        removePref(obj, lastEpisodeKey(workInfo));
        putStringPref(obj, lastStatusKey(workInfo), "disabled:" + workInfo.episode);
        removePref(obj, lastDiagnosticsKey(workInfo));
        showToast(obj, isArabic() ? "تم تعطيل المتابعة التلقائية" : "Automatic matching disabled");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void rescanCurrentFolder(Object obj, WorkInfo workInfo) {
        String stringPref = getStringPref(obj, treeKey(workInfo), null);
        synchronized (FILE_CACHE) {
            if (stringPref != null) {
                FILE_CACHE.remove(stringPref);
            }
        }
        synchronized (LAST_HANDLED) {
            LAST_HANDLED.remove(obj);
        }
        removePref(obj, lastStatusKey(workInfo));
        removePref(obj, lastDiagnosticsKey(workInfo));
        showToast(obj, isArabic() ? "أُعيد فحص مجلد الترجمات" : "Subtitle folder rescanned");
        onPlayerReady(obj);
    }

    private static void setSubtitleSyncEnabled(Object obj, boolean z) {
        Object objCall;
        try {
            Class<?> cls = Class.forName("com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper");
            if (z && (objCall = call(obj, "p0", NO_TYPES, new Object[0])) != null) {
                cls.getMethod(ZendeskBlipsProvider.ACTION_CORE_INIT, Object.class).invoke(null, objCall);
            }
            cls.getMethod("setAutoEnabled", Boolean.TYPE).invoke(null, Boolean.valueOf(z));
        } catch (Throwable th) {
            logError("Could not update automatic subtitle sync state to " + z, th);
        }
    }

    private static String syncOffsetLabel(Object obj) {
        try {
            Object objCall = call(obj, "p0", NO_TYPES, new Object[0]);
            if (objCall == null) {
                return "0.0s";
            }
            Class<?> cls = Class.forName("com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper");
            cls.getMethod(ZendeskBlipsProvider.ACTION_CORE_INIT, Object.class).invoke(null, objCall);
            int iNumber = number(cls.getMethod("getSequentialTenths", new Class[0]).invoke(null, new Object[0]), 0);
            String str = iNumber < 0 ? "-" : "+";
            int iAbs = Math.abs(iNumber);
            return str + (iAbs / 10) + "." + (iAbs % 10) + "s";
        } catch (Throwable th) {
            logError("Could not read subtitle sync setting", th);
            return "0.0s";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void clearWorkFolder(Object obj, WorkInfo workInfo, String str) {
        removePref(obj, treeKey(workInfo));
        removePref(obj, enabledKey(workInfo));
        removePref(obj, lastStatusKey(workInfo));
        removePref(obj, lastDiagnosticsKey(workInfo));
        removePref(obj, lastIndexCountKey(workInfo));
        synchronized (FILE_CACHE) {
            if (str != null) {
                FILE_CACHE.remove(str);
            }
        }
        synchronized (LAST_HANDLED) {
            LAST_HANDLED.remove(obj);
        }
        resetAutomaticSubtitle(obj);
        synchronized (AUTO_ACTIVE) {
            AUTO_ACTIVE.remove(obj);
        }
        synchronized (MANUAL_ACTIVE) {
            MANUAL_ACTIVE.remove(obj);
        }
        setSubtitleSyncEnabled(obj, false);
        showToast(obj, isArabic() ? "تم مسح إعدادات مجلد الترجمات لهذا العمل" : "Saved subtitle folder cleared for this title");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startTreePicker(Object obj, WorkInfo workInfo) {
        if (obj == null || workInfo == null) {
            return;
        }
        try {
            synchronized (PENDING_WORK) {
                PENDING_WORK.put(obj, workInfo);
            }
            Class<?> cls = Class.forName("android.content.Intent");
            Object objNewInstance = cls.getConstructor(String.class).newInstance("android.intent.action.OPEN_DOCUMENT_TREE");
            call(objNewInstance, "addFlags", new Class[]{Integer.TYPE}, 65);
            call(obj, "startActivityForResult", new Class[]{cls, Integer.TYPE}, objNewInstance, Integer.valueOf(REQUEST_TREE));
        } catch (Throwable th) {
            synchronized (PENDING_WORK) {
                PENDING_WORK.remove(obj);
                logError("Could not launch folder picker", th);
                showToast(obj, isArabic() ? "تعذر فتح اختيار المجلد" : "Could not open folder picker");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:162:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:163:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:174:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:209:0x0405 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x03fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x03e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x03d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0431 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void onModelChanged(Object obj, Object obj2) {
        WorkInfo workInfoMakeWorkInfo;
        String str;
        String string;
        boolean zEquals;
        boolean zEquals2;
        boolean zEquals3;
        boolean zEquals4;
        boolean zEquals5;
        boolean zEquals6;
        if (obj == null || obj2 == null || (workInfoMakeWorkInfo = makeWorkInfo(obj2)) == null || workInfoMakeWorkInfo.episode == null) {
            return;
        }
        if (clearStaleEpisodeState(obj, workInfoMakeWorkInfo)) {
            synchronized (LAST_HANDLED) {
                LAST_HANDLED.remove(obj);
            }
        }
        String str2 = workInfoMakeWorkInfo.key + "|" + emptyDash(workInfoMakeWorkInfo.season) + "|" + workInfoMakeWorkInfo.episode;
        String stringPref = getStringPref(obj, treeKey(workInfoMakeWorkInfo), null);
        boolean z = stringPref != null && stringPref.length() > 0 && getBooleanPref(obj, enabledKey(workInfoMakeWorkInfo), true);
        synchronized (LAST_HANDLED) {
            if (str2.equals(LAST_HANDLED.get(obj))) {
                return;
            }
            LAST_HANDLED.put(obj, str2);
            if (!z) {
                synchronized (AUTO_ACTIVE) {
                    zEquals5 = Boolean.TRUE.equals(AUTO_ACTIVE.get(obj));
                }
                synchronized (MANUAL_ACTIVE) {
                    zEquals6 = Boolean.TRUE.equals(MANUAL_ACTIVE.get(obj));
                }
                if (zEquals5 || zEquals6) {
                    resetSubtitleTrack(obj);
                }
                synchronized (AUTO_ACTIVE) {
                    AUTO_ACTIVE.remove(obj);
                }
                synchronized (MANUAL_ACTIVE) {
                    MANUAL_ACTIVE.remove(obj);
                }
                setSubtitleSyncEnabled(obj, false);
                return;
            }
            setSubtitleSyncEnabled(obj, false);
            try {
                List<SubtitleFile> listFilesForTree = filesForTree(obj, stringPref);
                putStringPref(obj, lastIndexCountKey(workInfoMakeWorkInfo), String.valueOf(listFilesForTree.size()));
                SubtitleFile subtitleFileBestMatch = bestMatch(listFilesForTree, workInfoMakeWorkInfo.episode, workInfoMakeWorkInfo.season);
                if (subtitleFileBestMatch == null) {
                    synchronized (AUTO_ACTIVE) {
                        zEquals3 = Boolean.TRUE.equals(AUTO_ACTIVE.get(obj));
                    }
                    synchronized (MANUAL_ACTIVE) {
                        zEquals4 = Boolean.TRUE.equals(MANUAL_ACTIVE.get(obj));
                    }
                    if (zEquals3 || zEquals4) {
                        resetSubtitleTrack(obj);
                    }
                    synchronized (AUTO_ACTIVE) {
                        AUTO_ACTIVE.remove(obj);
                    }
                    synchronized (MANUAL_ACTIVE) {
                        MANUAL_ACTIVE.remove(obj);
                    }
                    removePref(obj, lastFileKey(workInfoMakeWorkInfo));
                    removePref(obj, lastEpisodeKey(workInfoMakeWorkInfo));
                    putStringPref(obj, lastStatusKey(workInfoMakeWorkInfo), "no_match:" + workInfoMakeWorkInfo.episode);
                    String strScanReport = scanReport(stringPref);
                    String str3 = "episode=" + workInfoMakeWorkInfo.episode + "; indexed=" + listFilesForTree.size() + "; examples=" + sampleNames(listFilesForTree, 4);
                    if (strScanReport.length() > 0) {
                        str3 = str3 + "; scan=" + strScanReport;
                    }
                    putStringPref(obj, lastDiagnosticsKey(workInfoMakeWorkInfo), str3);
                    logInfo("No matching subtitle for " + workInfoMakeWorkInfo.key + " episode " + workInfoMakeWorkInfo.episode + "; indexed=" + listFilesForTree.size() + "; examples=" + sampleNames(listFilesForTree, 8) + (strScanReport.length() > 0 ? "; scan=" + strScanReport : BuildConfig.FLAVOR));
                    return;
                }
                boolean zImportSubtitle = importSubtitle(obj, subtitleFileBestMatch.uri);
                if (!zImportSubtitle && subtitleFileBestMatch.alternateUri != null) {
                    logInfo("Primary subtitle URI failed; retrying through filesystem URI for " + subtitleFileBestMatch.name);
                    zImportSubtitle = importSubtitle(obj, subtitleFileBestMatch.alternateUri);
                }
                if (zImportSubtitle) {
                    synchronized (AUTO_ACTIVE) {
                        AUTO_ACTIVE.put(obj, Boolean.TRUE);
                    }
                    synchronized (MANUAL_ACTIVE) {
                        MANUAL_ACTIVE.remove(obj);
                    }
                    putStringPref(obj, lastFileKey(workInfoMakeWorkInfo), subtitleFileBestMatch.name);
                    putStringPref(obj, lastEpisodeKey(workInfoMakeWorkInfo), workInfoMakeWorkInfo.episode);
                    putStringPref(obj, lastStatusKey(workInfoMakeWorkInfo), "applied:" + workInfoMakeWorkInfo.episode);
                    putStringPref(obj, lastDiagnosticsKey(workInfoMakeWorkInfo), "matched=" + subtitleFileBestMatch.name + "; indexed=" + listFilesForTree.size());
                    setSubtitleSyncEnabled(obj, true);
                    logInfo("Applied " + subtitleFileBestMatch.name + " to " + workInfoMakeWorkInfo.key + " episode " + workInfoMakeWorkInfo.episode + "; indexed=" + listFilesForTree.size());
                } else {
                    synchronized (AUTO_ACTIVE) {
                        zEquals2 = Boolean.TRUE.equals(AUTO_ACTIVE.get(obj));
                    }
                    if (zEquals2) {
                        resetAutomaticSubtitle(obj);
                    }
                    synchronized (AUTO_ACTIVE) {
                        AUTO_ACTIVE.remove(obj);
                    }
                    setSubtitleSyncEnabled(obj, false);
                    removePref(obj, lastFileKey(workInfoMakeWorkInfo));
                    removePref(obj, lastEpisodeKey(workInfoMakeWorkInfo));
                    putStringPref(obj, lastStatusKey(workInfoMakeWorkInfo), "import_failed:" + workInfoMakeWorkInfo.episode);
                    putStringPref(obj, lastDiagnosticsKey(workInfoMakeWorkInfo), "matched=" + subtitleFileBestMatch.name + "; uri=" + String.valueOf(subtitleFileBestMatch.uri) + "; indexed=" + listFilesForTree.size());
                    synchronized (LAST_HANDLED) {
                        LAST_HANDLED.remove(obj);
                    }
                }
                return;
            } catch (Throwable th) {
                StringBuilder sbAppend = new StringBuilder().append(th.getClass().getSimpleName());
                if (th.getMessage() == null) {
                    str = BuildConfig.FLAVOR;
                } else {
                    str = ": " + th.getMessage();
                }
                string = sbAppend.append(str).toString();
                synchronized (AUTO_ACTIVE) {
                    zEquals = Boolean.TRUE.equals(AUTO_ACTIVE.get(obj));
                    synchronized (MANUAL_ACTIVE) {
                        boolean zEquals7 = Boolean.TRUE.equals(MANUAL_ACTIVE.get(obj));
                        if (zEquals) {
                            resetSubtitleTrack(obj);
                        } else {
                            resetSubtitleTrack(obj);
                        }
                        synchronized (AUTO_ACTIVE) {
                            AUTO_ACTIVE.remove(obj);
                            synchronized (MANUAL_ACTIVE) {
                                MANUAL_ACTIVE.remove(obj);
                                putStringPref(obj, lastStatusKey(workInfoMakeWorkInfo), "scan_error:" + workInfoMakeWorkInfo.episode);
                                putStringPref(obj, lastDiagnosticsKey(workInfoMakeWorkInfo), string);
                                synchronized (LAST_HANDLED) {
                                    LAST_HANDLED.remove(obj);
                                    setSubtitleSyncEnabled(obj, false);
                                    logError("Episode matching failed for " + workInfoMakeWorkInfo.key + " episode " + workInfoMakeWorkInfo.episode, th);
                                }
                            }
                        }
                    }
                }
            }
            StringBuilder sbAppend2 = new StringBuilder().append(th.getClass().getSimpleName());
            if (th.getMessage() == null) {
                str = BuildConfig.FLAVOR;
            } else {
                str = ": " + th.getMessage();
            }
            string = sbAppend2.append(str).toString();
            synchronized (AUTO_ACTIVE) {
                zEquals = Boolean.TRUE.equals(AUTO_ACTIVE.get(obj));
                synchronized (MANUAL_ACTIVE) {
                    boolean zEquals8 = Boolean.TRUE.equals(MANUAL_ACTIVE.get(obj));
                    if (zEquals || zEquals8) {
                        resetSubtitleTrack(obj);
                    }
                    synchronized (AUTO_ACTIVE) {
                        AUTO_ACTIVE.remove(obj);
                        synchronized (MANUAL_ACTIVE) {
                            MANUAL_ACTIVE.remove(obj);
                            putStringPref(obj, lastStatusKey(workInfoMakeWorkInfo), "scan_error:" + workInfoMakeWorkInfo.episode);
                            putStringPref(obj, lastDiagnosticsKey(workInfoMakeWorkInfo), string);
                            synchronized (LAST_HANDLED) {
                                LAST_HANDLED.remove(obj);
                                setSubtitleSyncEnabled(obj, false);
                                logError("Episode matching failed for " + workInfoMakeWorkInfo.key + " episode " + workInfoMakeWorkInfo.episode, th);
                            }
                        }
                    }
                }
            }
        }
    }

    private static boolean clearStaleEpisodeState(Object obj, WorkInfo workInfo) {
        String stringPref = getStringPref(obj, lastStatusKey(workInfo), BuildConfig.FLAVOR);
        String strStatusEpisode = statusEpisode(stringPref);
        String stringPref2 = getStringPref(obj, lastEpisodeKey(workInfo), BuildConfig.FLAVOR);
        boolean z = strStatusEpisode.length() > 0 && !strStatusEpisode.equals(workInfo.episode);
        boolean z2 = stringPref2.length() > 0 && !stringPref2.equals(workInfo.episode);
        if (!z && !z2) {
            return false;
        }
        removePref(obj, lastStatusKey(workInfo));
        removePref(obj, lastDiagnosticsKey(workInfo));
        removePref(obj, lastIndexCountKey(workInfo));
        removePref(obj, lastFileKey(workInfo));
        removePref(obj, lastEpisodeKey(workInfo));
        logInfo("Cleared stale subtitle diagnostics for " + workInfo.key + "; previousStatus=" + stringPref + "; previousAppliedEpisode=" + stringPref2 + "; currentEpisode=" + workInfo.episode);
        return true;
    }

    private static String statusEpisode(String str) {
        int iLastIndexOf;
        String strCanonicalNumber;
        return (str == null || (iLastIndexOf = str.lastIndexOf(58)) < 0 || iLastIndexOf == str.length() + (-1) || (strCanonicalNumber = canonicalNumber(str.substring(iLastIndexOf + 1))) == null) ? BuildConfig.FLAVOR : strCanonicalNumber;
    }

    private static boolean importSubtitle(Object obj, Object obj2) {
        try {
            Object objInvoke = Class.forName("com.shabakaty.downloader.SubtitleImportFile").getMethod("a", Class.forName("android.content.Context"), Class.forName("android.net.Uri")).invoke(null, obj, obj2);
            if (objInvoke == null) {
                return false;
            }
            Class<?> cls = Class.forName("com.shabakaty.cinemana.player.VideoPlayerActivity");
            Class<?> cls2 = Class.forName("com.shabakaty.downloader.cu");
            cls2.getMethod("a", Object.class).invoke(cls2.getConstructor(cls).newInstance(obj), objInvoke);
            return true;
        } catch (Throwable th) {
            logError("Subtitle import failed", th);
            return false;
        }
    }

    private static void resetAutomaticSubtitle(Object obj) {
        synchronized (AUTO_ACTIVE) {
            if (Boolean.TRUE.equals(AUTO_ACTIVE.get(obj))) {
                resetSubtitleTrack(obj);
            }
        }
    }

    private static void resetSubtitleTrack(Object obj) {
        try {
            Object playerViewModel = getPlayerViewModel(obj);
            if (playerViewModel == null) {
                return;
            }
            Object objCurrentModelFromViewModel = currentModelFromViewModel(playerViewModel);
            if (objCurrentModelFromViewModel != null) {
                removeImportedSubtitle(objCurrentModelFromViewModel);
            }
            Object objField = field(playerViewModel, "j");
            String strString = string(call(field(playerViewModel, "f"), "a", NO_TYPES, new Object[0]));
            Object objCall = call(call(objField, "e", NO_TYPES, new Object[0]), "a", NO_TYPES, new Object[0]);
            Class[] clsArr = {String.class};
            if (strString.length() == 0) {
                strString = "ar";
            }
            call(objCall, "g", clsArr, strString);
            call(objField, "j", new Class[]{Class.forName("com.shabakaty.downloader.ep0$e")}, objCall);
            Object objField2 = field(playerViewModel, "k");
            Object objCall2 = call(call(objField2, "Y", NO_TYPES, new Object[0]), "a", NO_TYPES, new Object[0]);
            call(objCall2, "c", new Class[]{List.class}, call(playerViewModel, "r", NO_TYPES, new Object[0]));
            call(objField2, "o", new Class[]{List.class, Boolean.TYPE}, Collections.singletonList(call(objCall2, "a", NO_TYPES, new Object[0])), Boolean.FALSE);
            try {
                Class.forName("com.shabakaty.cinemana.features.SubtitleCompat131").getMethod("cleanupOldImportsExcept", Object.class, String.class).invoke(null, obj, null);
            } catch (Throwable th) {
            }
            logInfo("Restored player's preferred subtitle track");
        } catch (Throwable th2) {
            logError("Could not restore preferred subtitle track", th2);
        }
    }

    private static void removeImportedSubtitle(Object obj) {
        try {
            Object objField = field(obj, "subtitles");
            if (objField instanceof List) {
                List list = (List) objField;
                try {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        String strString = string(field(next, "name"));
                        String strString2 = string(field(next, "type"));
                        if ("file".equalsIgnoreCase(strString) || "file".equalsIgnoreCase(strString2)) {
                            it.remove();
                        }
                    }
                } catch (Throwable th) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list) {
                        String strString3 = string(field(obj2, "name"));
                        String strString4 = string(field(obj2, "type"));
                        if (!"file".equalsIgnoreCase(strString3) && !"file".equalsIgnoreCase(strString4)) {
                            arrayList.add(obj2);
                        }
                    }
                    setField(obj, "subtitles", arrayList);
                }
            }
        } catch (Throwable th2) {
            logError("Could not remove old imported subtitle track", th2);
        }
    }

    private static List<SubtitleFile> filesForTree(Object obj, String str) throws Exception {
        synchronized (FILE_CACHE) {
            List<SubtitleFile> list = FILE_CACHE.get(str);
            if (list != null && !list.isEmpty()) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            Class<?> cls = Class.forName("android.net.Uri");
            Object objInvoke = cls.getMethod("parse", String.class).invoke(null, str);
            Class<?> cls2 = Class.forName("android.provider.DocumentsContract");
            String strString = string(cls2.getMethod("getTreeDocumentId", cls).invoke(null, objInvoke));
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            logInfo("Scanning tree root=" + strString + "; uri=" + str);
            scanDirectory(obj, objInvoke, strString, 0, hashSet, arrayList, cls2, cls, arrayList2);
            int size = arrayList.size();
            String strScanExternalFilesystemFallback = BuildConfig.FLAVOR;
            if (arrayList.isEmpty()) {
                strScanExternalFilesystemFallback = scanExternalFilesystemFallback(strString, arrayList, objInvoke, cls2, cls);
            }
            Collections.sort(arrayList, new Comparator<SubtitleFile>() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.13
                @Override // java.util.Comparator
                public int compare(SubtitleFile subtitleFile, SubtitleFile subtitleFile2) {
                    return subtitleFile.name.compareToIgnoreCase(subtitleFile2.name);
                }
            });
            String strJoinErrors = joinErrors(arrayList2);
            if (strScanExternalFilesystemFallback.length() > 0) {
                if (strJoinErrors.length() > 0) {
                    strJoinErrors = strJoinErrors + " | ";
                }
                strJoinErrors = strJoinErrors + strScanExternalFilesystemFallback;
            } else if (size == 0 && strJoinErrors.length() == 0) {
                strJoinErrors = "SAF query returned zero supported subtitle files; no readable filesystem fallback was available";
            }
            synchronized (SCAN_REPORTS) {
                if (strJoinErrors.length() == 0) {
                    SCAN_REPORTS.remove(str);
                } else {
                    SCAN_REPORTS.put(str, strJoinErrors);
                }
            }
            if (!arrayList.isEmpty()) {
                synchronized (FILE_CACHE) {
                    FILE_CACHE.put(str, arrayList);
                }
            }
            logInfo("Indexed " + arrayList.size() + " supported subtitle files via SAF/filesystem; folders queried=" + hashSet.size());
            return arrayList;
        }
    }

    private static String scanExternalFilesystemFallback(String str, List<SubtitleFile> list, Object obj, Class<?> cls, Class<?> cls2) throws IllegalAccessException, InvocationTargetException {
        List<String> listFilesystemPathsForDocumentId = filesystemPathsForDocumentId(str);
        if (listFilesystemPathsForDocumentId.isEmpty()) {
            return "filesystem fallback unavailable: unsupported document id=" + str;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : listFilesystemPathsForDocumentId) {
            File file = new File(str2);
            if (!file.exists()) {
                arrayList.add(str2 + " (not found)");
            } else if (!file.isDirectory()) {
                arrayList.add(str2 + " (not a directory)");
            } else {
                HashSet hashSet = new HashSet();
                ArrayList arrayList2 = new ArrayList();
                int size = list.size();
                scanFilesystemDirectory(file, file, str, obj, 0, hashSet, list, cls, cls2, arrayList2);
                int size2 = list.size() - size;
                logInfo("Filesystem fallback path=" + str2 + "; indexed=" + size2);
                if (size2 > 0) {
                    return "SAF indexed 0; filesystem fallback indexed=" + size2 + "; path=" + str2;
                }
                arrayList.add(str2 + " (0 supported files" + (arrayList2.isEmpty() ? BuildConfig.FLAVOR : "; " + joinErrors(arrayList2)) + ")");
            }
        }
        StringBuilder sb = new StringBuilder("SAF indexed 0; filesystem fallback found 0 files");
        int iMin = Math.min(arrayList.size(), 2);
        for (int i = 0; i < iMin; i++) {
            sb.append("; ").append((String) arrayList.get(i));
        }
        if (arrayList.size() > iMin) {
            sb.append("; ...");
        }
        return sb.toString();
    }

    private static List<String> filesystemPathsForDocumentId(String str) {
        int iIndexOf;
        ArrayList arrayList = new ArrayList();
        if (str == null || (iIndexOf = str.indexOf(58)) <= 0) {
            return arrayList;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strReplace = str.substring(iIndexOf + 1).replace('\\', '/');
        while (strReplace.startsWith("/")) {
            strReplace = strReplace.substring(1);
        }
        if (!"primary".equalsIgnoreCase(strSubstring)) {
            addUniquePath(arrayList, "/storage/" + strSubstring + "/" + strReplace);
            addUniquePath(arrayList, "/mnt/media_rw/" + strSubstring + "/" + strReplace);
        } else {
            addUniquePath(arrayList, "/storage/emulated/0/" + strReplace);
            addUniquePath(arrayList, "/sdcard/" + strReplace);
            addUniquePath(arrayList, "/storage/self/primary/" + strReplace);
        }
        return arrayList;
    }

    private static void addUniquePath(List<String> list, String str) {
        if (str == null || str.length() <= 0 || list.contains(str)) {
            return;
        }
        list.add(str);
    }

    private static void scanFilesystemDirectory(File file, File file2, String str, Object obj, int i, Set<String> set, List<SubtitleFile> list, Class<?> cls, Class<?> cls2, List<String> list2) throws IllegalAccessException, InvocationTargetException {
        int i2;
        int i3;
        File[] fileArr;
        String str2;
        String str3;
        int i4 = i;
        String str4 = "/";
        String str5 = BuildConfig.FLAVOR;
        if (file == null || i4 > 4) {
            return;
        }
        try {
            String canonicalPath = file.getCanonicalPath();
            if (set.add(canonicalPath)) {
                if (!file.isDirectory()) {
                    if (i4 == 0) {
                        list2.add("not a directory: " + canonicalPath);
                        return;
                    }
                    return;
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    list2.add("listFiles returned null: " + canonicalPath + "; readable=" + file.canRead());
                    return;
                }
                if (i4 == 0 && fileArrListFiles.length == 0) {
                    list2.add("root directory returned 0 filesystem entries; readable=" + file.canRead());
                }
                Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.shabakaty.cinemana.features.SequentialSubtitleManager.14
                    @Override // java.util.Comparator
                    public int compare(File file3, File file4) {
                        return file3.getName().compareToIgnoreCase(file4.getName());
                    }
                });
                int length = fileArrListFiles.length;
                int i5 = 0;
                while (i5 < length) {
                    File file3 = fileArrListFiles[i5];
                    if (file3.isDirectory()) {
                        int i6 = i4 + 1;
                        i2 = i5;
                        i3 = length;
                        fileArr = fileArrListFiles;
                        str2 = str4;
                        scanFilesystemDirectory(file3, file2, str, obj, i6, set, list, cls, cls2, list2);
                    } else {
                        i2 = i5;
                        i3 = length;
                        fileArr = fileArrListFiles;
                        str2 = str4;
                        String strExtensionOf = extensionOf(file3.getName());
                        if (strExtensionOf != null) {
                            Object obj2 = null;
                            Object objInvoke = cls2.getMethod("fromFile", File.class).invoke(null, file3);
                            try {
                                String canonicalPath2 = file2.getCanonicalPath();
                                String canonicalPath3 = file3.getCanonicalPath();
                                String strSubstring = canonicalPath3.startsWith(canonicalPath2) ? canonicalPath3.substring(canonicalPath2.length()) : file3.getName();
                                while (strSubstring.startsWith(File.separator)) {
                                    strSubstring = strSubstring.substring(1);
                                }
                                String strReplace = strSubstring.replace(File.separatorChar, '/');
                                if (strReplace.length() > 0) {
                                    str3 = str + (str.endsWith(str2) ? BuildConfig.FLAVOR : str2) + strReplace;
                                } else {
                                    str3 = str;
                                }
                                try {
                                    obj2 = objInvoke;
                                    objInvoke = cls.getMethod("buildDocumentUriUsingTree", cls2, String.class).invoke(null, obj, str3);
                                } catch (Throwable th) {
                                    list2.add("could not rebuild document URI; using filesystem URI");
                                }
                            } catch (Throwable th2) {
                            }
                            list.add(new SubtitleFile(file3.getName(), strExtensionOf, objInvoke, obj2));
                        }
                    }
                    i5 = i2 + 1;
                    str4 = str2;
                    length = i3;
                    fileArrListFiles = fileArr;
                    i4 = i;
                }
            }
        } catch (Throwable th3) {
            StringBuilder sbAppend = new StringBuilder().append(th3.getClass().getSimpleName());
            if (th3.getMessage() != null) {
                str5 = ": " + th3.getMessage();
            }
            list2.add("filesystem scan: " + sbAppend.append(str5).toString());
            logError("Filesystem subtitle scan failed at " + file, th3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0348  */
    /* JADX WARN: Code duplicated, block: B:120:0x034b A[Catch: all -> 0x03b2, TryCatch #9 {all -> 0x03b2, blocks: (B:117:0x0331, B:121:0x0362, B:120:0x034b), top: B:150:0x0331 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x03aa A[Catch: all -> 0x02b4, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x02b4, blocks: (B:123:0x03aa, B:86:0x02a9), top: B:153:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:179:? A[RETURN, SYNTHETIC] */
    private static void scanDirectory(Object obj, Object obj2, String str, int i, Set<String> set, List<SubtitleFile> list, Class<?> cls, Class<?> cls2, List<String> list2) {
        String str2;
        int i2;
        Object obj3;
        Object obj4;
        String str3;
        String str4;
        String str5 = "getString";
        String str6 = "close";
        if (str == null || i > 4) {
            return;
        }
        try {
            if (!set.add(str)) {
                return;
            }
            try {
                try {
                    try {
                        Object objInvoke = cls.getMethod("buildChildDocumentsUriUsingTree", cls2, String.class).invoke(null, obj2, str);
                        Class<?>[] clsArr = NO_TYPES;
                        str2 = BuildConfig.FLAVOR;
                        try {
                            Object objCall = call(obj, "getContentResolver", clsArr, new Object[0]);
                            String[] strArr = {"document_id", "display_name", "mime_type"};
                            Class[] clsArr2 = {cls2, String[].class, String.class, String[].class, String.class};
                            try {
                                Object[] objArr = new Object[5];
                                objArr[0] = objInvoke;
                                objArr[1] = strArr;
                                try {
                                    objArr[2] = null;
                                    objArr[3] = null;
                                    objArr[4] = null;
                                    Object objCall2 = call(objCall, "query", clsArr2, objArr);
                                    try {
                                        if (objCall2 == null) {
                                            String str7 = "null cursor at depth=" + i + "; parent=" + str;
                                            list2.add(str7);
                                            logInfo("Folder query returned " + str7);
                                            if (objCall2 != null) {
                                                try {
                                                    call(objCall2, "close", NO_TYPES, new Object[0]);
                                                    return;
                                                } catch (Throwable th) {
                                                    return;
                                                }
                                            }
                                            return;
                                        }
                                        try {
                                            int iNumber = number(call(objCall2, "getColumnIndex", new Class[]{String.class}, "document_id"), -1);
                                            int iNumber2 = number(call(objCall2, "getColumnIndex", new Class[]{String.class}, "display_name"), -1);
                                            int iNumber3 = number(call(objCall2, "getColumnIndex", new Class[]{String.class}, "mime_type"), -1);
                                            try {
                                                if (iNumber >= 0 && iNumber2 >= 0) {
                                                    int i3 = 0;
                                                    while (Boolean.TRUE.equals(call(objCall2, "moveToNext", NO_TYPES, new Object[0]))) {
                                                        int i4 = i3 + 1;
                                                        try {
                                                            String strString = string(call(objCall2, str5, new Class[]{Integer.TYPE}, Integer.valueOf(iNumber)));
                                                            String strString2 = string(call(objCall2, str5, new Class[]{Integer.TYPE}, Integer.valueOf(iNumber2)));
                                                            String strString3 = iNumber3 >= 0 ? string(call(objCall2, str5, new Class[]{Integer.TYPE}, Integer.valueOf(iNumber3))) : str2;
                                                            if (strString.length() == 0) {
                                                                str4 = str6;
                                                            } else if (strString2.length() == 0) {
                                                                str4 = str6;
                                                            } else {
                                                                boolean zEqualsIgnoreCase = "vnd.android.document/directory".equalsIgnoreCase(strString3);
                                                                String strExtensionOf = extensionOf(strString2);
                                                                if (!zEqualsIgnoreCase) {
                                                                    try {
                                                                        if (strString3.length() != 0 || strExtensionOf != null || i >= 4) {
                                                                            if (strExtensionOf == null) {
                                                                                str4 = str6;
                                                                            } else {
                                                                                Method method = cls.getMethod("buildDocumentUriUsingTree", cls2, String.class);
                                                                                Object[] objArr2 = new Object[2];
                                                                                objArr2[0] = obj2;
                                                                                objArr2[1] = strString;
                                                                                list.add(new SubtitleFile(strString2, strExtensionOf, method.invoke(null, objArr2)));
                                                                                str4 = str6;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        str6 = str6;
                                                                        obj4 = objCall2;
                                                                        i2 = 0;
                                                                        StringBuilder sbAppend = new StringBuilder().append(th.getClass().getSimpleName());
                                                                        if (th.getMessage() == null) {
                                                                            str3 = str2;
                                                                        } else {
                                                                            str3 = ": " + th.getMessage();
                                                                        }
                                                                        list2.add("depth=" + i + "; " + sbAppend.append(str3).toString());
                                                                        logError("Failed while reading selected subtitle folder at depth=" + i + "; parent=" + str, th);
                                                                        if (obj4 != null) {
                                                                            call(obj4, str6, NO_TYPES, new Object[i2]);
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                }
                                                                if (i < 4) {
                                                                    i2 = 0;
                                                                    str4 = str6;
                                                                    try {
                                                                        scanDirectory(obj, obj2, strString, i + 1, set, list, cls, cls2, list2);
                                                                    } catch (Throwable th3) {
                                                                        th = th3;
                                                                        obj4 = objCall2;
                                                                        str6 = str4;
                                                                        StringBuilder sbAppend2 = new StringBuilder().append(th.getClass().getSimpleName());
                                                                        if (th.getMessage() == null) {
                                                                            str3 = str2;
                                                                        } else {
                                                                            str3 = ": " + th.getMessage();
                                                                        }
                                                                        list2.add("depth=" + i + "; " + sbAppend2.append(str3).toString());
                                                                        logError("Failed while reading selected subtitle folder at depth=" + i + "; parent=" + str, th);
                                                                        if (obj4 != null) {
                                                                            call(obj4, str6, NO_TYPES, new Object[i2]);
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                } else {
                                                                    str4 = str6;
                                                                }
                                                            }
                                                            str5 = str5;
                                                            i3 = i4;
                                                            iNumber2 = iNumber2;
                                                            str6 = str4;
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            str4 = str6;
                                                            i2 = 0;
                                                            obj4 = objCall2;
                                                            str6 = str4;
                                                            StringBuilder sbAppend3 = new StringBuilder().append(th.getClass().getSimpleName());
                                                            if (th.getMessage() == null) {
                                                                str3 = str2;
                                                            } else {
                                                                str3 = ": " + th.getMessage();
                                                            }
                                                            list2.add("depth=" + i + "; " + sbAppend3.append(str3).toString());
                                                            logError("Failed while reading selected subtitle folder at depth=" + i + "; parent=" + str, th);
                                                            if (obj4 != null) {
                                                                call(obj4, str6, NO_TYPES, new Object[i2]);
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                    }
                                                    str4 = str6;
                                                    i2 = 0;
                                                    if (i == 0 && i3 == 0) {
                                                        logInfo("SAF root child query returned 0 rows for documentId=" + str);
                                                    }
                                                    if (objCall2 != null) {
                                                        call(objCall2, str4, NO_TYPES, new Object[0]);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                i2 = 0;
                                                try {
                                                    String str8 = "missing document columns at depth=" + i + "; idIndex=" + iNumber + "; nameIndex=" + iNumber2;
                                                    list2.add(str8);
                                                    logInfo("Folder cursor " + str8);
                                                    if (objCall2 != null) {
                                                        try {
                                                            call(objCall2, "close", NO_TYPES, new Object[i2]);
                                                            return;
                                                        } catch (Throwable th5) {
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                }
                                                StringBuilder sbAppend4 = new StringBuilder().append(th.getClass().getSimpleName());
                                                if (th.getMessage() == null) {
                                                    str3 = str2;
                                                } else {
                                                    str3 = ": " + th.getMessage();
                                                }
                                                list2.add("depth=" + i + "; " + sbAppend4.append(str3).toString());
                                                logError("Failed while reading selected subtitle folder at depth=" + i + "; parent=" + str, th);
                                                if (obj4 != null) {
                                                    call(obj4, str6, NO_TYPES, new Object[i2]);
                                                    return;
                                                }
                                                return;
                                            } catch (Throwable th7) {
                                                if (obj4 == null) {
                                                    throw th7;
                                                }
                                                try {
                                                    call(obj4, str6, NO_TYPES, new Object[i2]);
                                                    throw th7;
                                                } catch (Throwable th8) {
                                                    throw th7;
                                                }
                                            }
                                        } catch (Throwable th9) {
                                            th = th9;
                                            str6 = str6;
                                            i2 = 0;
                                        }
                                        obj4 = objCall2;
                                    } catch (Throwable th10) {
                                        th = th10;
                                    }
                                } catch (Throwable th11) {
                                    th = th11;
                                    obj3 = null;
                                    i2 = 0;
                                    obj4 = obj3;
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                i2 = 0;
                                obj3 = null;
                                obj4 = obj3;
                            }
                        } catch (Throwable th13) {
                            th = th13;
                        }
                    } catch (Throwable th14) {
                        th = th14;
                        obj3 = null;
                        str2 = BuildConfig.FLAVOR;
                    }
                } catch (Throwable th15) {
                    th = th15;
                    str2 = BuildConfig.FLAVOR;
                }
            } catch (Throwable th16) {
                th = th16;
                str2 = BuildConfig.FLAVOR;
            }
        } catch (Throwable th17) {
        }
    }

    private static String scanReport(String str) {
        String str2;
        synchronized (SCAN_REPORTS) {
            str2 = SCAN_REPORTS.get(str);
            if (str2 == null) {
                str2 = BuildConfig.FLAVOR;
            }
        }
        return str2;
    }

    private static String joinErrors(List<String> list) {
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(list.size(), 3);
        for (int i = 0; i < iMin; i++) {
            if (i > 0) {
                sb.append(" | ");
            }
            String str = list.get(i);
            if (str != null) {
                sb.append(str.replace('\n', ' ').replace('\r', ' '));
            }
        }
        if (list.size() > iMin) {
            sb.append(" | ...");
        }
        return sb.toString();
    }

    private static String sampleNames(List<SubtitleFile> list, int i) {
        if (list == null || list.isEmpty()) {
            return "<none>";
        }
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(list.size(), i);
        for (int i2 = 0; i2 < iMin; i2++) {
            if (i2 > 0) {
                sb.append(" | ");
            }
            sb.append(list.get(i2).name);
        }
        if (list.size() > iMin) {
            sb.append(" | ...");
        }
        return sb.toString();
    }

    private static SubtitleFile bestMatch(List<SubtitleFile> list, String str, String str2) {
        int i;
        SubtitleFile subtitleFile = null;
        if (list == null || list.isEmpty() || str == null) {
            return null;
        }
        int i2 = CellBase.GROUP_ID_SYSTEM_MESSAGE;
        for (SubtitleFile subtitleFile2 : list) {
            String strSubstring = subtitleFile2.name;
            int iLastIndexOf = strSubstring.lastIndexOf(46);
            int i3 = 0;
            if (iLastIndexOf > 0) {
                strSubstring = strSubstring.substring(0, iLastIndexOf);
            }
            Matcher matcher = NUMBER_PATTERN.matcher(strSubstring);
            ArrayList arrayList = new ArrayList();
            while (matcher.find()) {
                arrayList.add(canonicalNumber(matcher.group()));
            }
            int iMax = CellBase.GROUP_ID_SYSTEM_MESSAGE;
            while (i3 < arrayList.size()) {
                if (str.equals(arrayList.get(i3))) {
                    if (arrayList.size() == 1) {
                        i = 60;
                    } else if (i3 == arrayList.size() - 1) {
                        i = 75;
                    } else {
                        i = (i3 == arrayList.size() + (-2) && isResolution((String) arrayList.get(arrayList.size() - 1))) ? 55 : 20;
                    }
                    iMax = Math.max(iMax, i);
                }
                i3++;
            }
            if (iMax != Integer.MIN_VALUE) {
                if (hasEpisodeMarker(strSubstring, str)) {
                    iMax += R.styleable.AppCompatTheme_windowFixedHeightMajor;
                }
                int iSeasonMatch = iMax + seasonMatch(strSubstring, str2, str) + extensionPreference(subtitleFile2.extension);
                if (iSeasonMatch > i2) {
                    subtitleFile = subtitleFile2;
                    i2 = iSeasonMatch;
                }
            }
        }
        return subtitleFile;
    }

    private static boolean hasEpisodeMarker(String str, String str2) {
        Matcher matcher = EP_MARKER.matcher(str);
        while (matcher.find()) {
            if (str2.equals(canonicalNumber(matcher.group(1)))) {
                return true;
            }
        }
        return Pattern.compile("(?iu)(?:^|[^\\p{L}])s0*[0-9٠-٩۰-۹]{1,3}[ ._-]*e0*" + Pattern.quote(str2) + "(?:[^0-9٠-٩۰-۹]|$)").matcher(str).find();
    }

    private static int seasonMatch(String str, String str2, String str3) {
        if (str2 == null || str2.length() == 0) {
            return 0;
        }
        Matcher matcher = Pattern.compile("(?iu)(?:^|[^\\p{L}])s0*([0-9٠-٩۰-۹]{1,3})[ ._-]*e0*" + Pattern.quote(str3) + "(?:[^0-9٠-٩۰-۹]|$)").matcher(str);
        if (matcher.find()) {
            return str2.equals(canonicalNumber(matcher.group(1))) ? 45 : -90;
        }
        return 0;
    }

    private static boolean isResolution(String str) {
        return "360".equals(str) || "480".equals(str) || "540".equals(str) || "720".equals(str) || "1080".equals(str) || "1440".equals(str) || "2160".equals(str) || "4320".equals(str);
    }

    private static int extensionPreference(String str) {
        if ("ass".equals(str)) {
            return 4;
        }
        if (DLNAService.DEFAULT_SUBTITLE_TYPE.equals(str)) {
            return 3;
        }
        if ("ssa".equals(str)) {
            return 2;
        }
        return "vtt".equals(str) ? 1 : 0;
    }

    private static String extensionOf(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0 || iLastIndexOf == str.length() - 1) {
            return null;
        }
        String lowerCase = str.substring(iLastIndexOf + 1).toLowerCase(Locale.ROOT);
        if (DLNAService.DEFAULT_SUBTITLE_TYPE.equals(lowerCase) || "ass".equals(lowerCase) || "ssa".equals(lowerCase) || "vtt".equals(lowerCase)) {
            return lowerCase;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WorkInfo makeWorkInfo(Object obj) {
        if (obj == null) {
            return null;
        }
        String string = readString(obj, "kind");
        String strFirstNonEmpty = firstNonEmpty(readString(obj, "episodeNummer"), extractEpisodeFromDescription(readString(obj, "episodeDesc")));
        String strExtractEpisodeNumber = extractEpisodeNumber(strFirstNonEmpty);
        if (strExtractEpisodeNumber == null) {
            return null;
        }
        String string2 = readString(obj, "rootSeries");
        String strFirstNonEmpty2 = firstNonEmpty(readString(obj, "customEnTitle"), readString(obj, "enTitle"), readString(obj, "customArTitle"), readString(obj, "arTitle"), string2, "العمل الحالي");
        String str = (string2.length() <= 0 || "0".equals(string2) || "null".equalsIgnoreCase(string2)) ? "title_" + normalizeKey(seriesLikeTitle(strFirstNonEmpty2)) : "id_" + normalizeKey(string2);
        if (str.length() < 6) {
            str = "title_" + normalizeKey(seriesLikeTitle(strFirstNonEmpty2));
        }
        String str2 = str;
        String strCanonicalNumber = canonicalNumber(readString(obj, "season"));
        if (strCanonicalNumber == null) {
            strCanonicalNumber = BuildConfig.FLAVOR;
        }
        return new WorkInfo(str2, strFirstNonEmpty2, string, strExtractEpisodeNumber, strFirstNonEmpty, strCanonicalNumber);
    }

    private static String extractEpisodeFromDescription(String str) {
        if (str == null || str.length() == 0) {
            return BuildConfig.FLAVOR;
        }
        Matcher matcher = EP_MARKER.matcher(str);
        return matcher.find() ? matcher.group(1) : BuildConfig.FLAVOR;
    }

    private static String extractEpisodeNumber(String str) {
        if (str == null || str.trim().length() == 0) {
            return null;
        }
        Matcher matcher = NUMBER_PATTERN.matcher(str);
        ArrayList<String> arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(canonicalNumber(matcher.group()));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        for (String str2 : arrayList) {
            if (str2 != null) {
                str2.length();
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) != null && ((String) arrayList.get(size)).length() > 0) {
                return (String) arrayList.get(size);
            }
        }
        return null;
    }

    private static String canonicalNumber(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            int iDigit = Character.digit(str.charAt(i2), 10);
            if (iDigit >= 0) {
                sb.append((char) (iDigit + 48));
            }
        }
        while (i < sb.length() - 1 && sb.charAt(i) == '0') {
            i++;
        }
        if (sb.length() == 0) {
            return null;
        }
        return sb.substring(i);
    }

    private static String seriesLikeTitle(String str) {
        return str == null ? BuildConfig.FLAVOR : str.replaceAll("(?iu)(?:episode|episodes|ep|الحلقة|حلقة)\\s*[._ -]*[0-9٠-٩۰-۹]+", " ").replaceAll("(?iu)\\bs[0-9٠-٩۰-۹]{1,3}[ ._-]*e[0-9٠-٩۰-۹]{1,4}\\b", " ").replaceAll("[0-9٠-٩۰-۹]+", " ").replaceAll("[\\p{Punct}\\p{Z}]+", " ").trim();
    }

    private static String normalizeKey(String str) {
        return str == null ? BuildConfig.FLAVOR : str.toLowerCase(Locale.ROOT).replaceAll("[^\\p{L}\\p{N}]", BuildConfig.FLAVOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getCurrentModel(Object obj) {
        try {
            Object playerViewModel = getPlayerViewModel(obj);
            if (playerViewModel == null) {
                return null;
            }
            return currentModelFromViewModel(playerViewModel);
        } catch (Throwable th) {
            logError("Could not read current video model", th);
            return null;
        }
    }

    private static Object getPlayerViewModel(Object obj) throws Exception {
        Method methodFindNoArgMethod = findNoArgMethod(obj.getClass(), "F");
        if (methodFindNoArgMethod == null) {
            return null;
        }
        return methodFindNoArgMethod.invoke(obj, new Object[0]);
    }

    private static Object currentModelFromViewModel(Object obj) throws Exception {
        return call(field(obj, "z"), "getValue", NO_TYPES, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String treeKey(WorkInfo workInfo) {
        return "tree:" + workInfo.key;
    }

    private static String enabledKey(WorkInfo workInfo) {
        return "enabled:" + workInfo.key;
    }

    private static String lastFileKey(WorkInfo workInfo) {
        return "last_file:" + workInfo.key;
    }

    private static String lastEpisodeKey(WorkInfo workInfo) {
        return "last_episode:" + workInfo.key;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String lastStatusKey(WorkInfo workInfo) {
        return "last_status:" + workInfo.key;
    }

    private static String lastDiagnosticsKey(WorkInfo workInfo) {
        return "last_diagnostics:" + workInfo.key;
    }

    private static String lastIndexCountKey(WorkInfo workInfo) {
        return "last_index_count:" + workInfo.key;
    }

    private static String displayFolderName(Object obj, String str) {
        int i;
        try {
            Class<?> cls = Class.forName("android.net.Uri");
            String strString = string(Class.forName("android.provider.DocumentsContract").getMethod("getTreeDocumentId", cls).invoke(null, cls.getMethod("parse", String.class).invoke(null, str)));
            int iLastIndexOf = strString.lastIndexOf(47);
            if (iLastIndexOf >= 0) {
                strString = strString.substring(iLastIndexOf + 1);
            }
            int iLastIndexOf2 = strString.lastIndexOf(58);
            if (iLastIndexOf2 >= 0 && iLastIndexOf2 < strString.length() - 1) {
                strString = strString.substring(iLastIndexOf2 + 1);
            }
            return strString.length() == 0 ? str : strString;
        } catch (Throwable th) {
            int iLastIndexOf3 = str.lastIndexOf(47);
            return (iLastIndexOf3 < 0 || (i = iLastIndexOf3 + 1) >= str.length()) ? str : str.substring(i);
        }
    }

    private static void showMessage(Object obj, String str, String str2) {
        try {
            Object objNewBuilder = newBuilder(obj);
            setBuilderText(objNewBuilder, "setTitle", str);
            setBuilderText(objNewBuilder, "setMessage", str2);
            call(objNewBuilder, "setPositiveButton", new Class[]{CharSequence.class, Class.forName("android.content.DialogInterface$OnClickListener")}, "OK", null);
            call(objNewBuilder, "show", NO_TYPES, new Object[0]);
        } catch (Throwable th) {
            showToast(obj, str2);
        }
    }

    private static Object newBuilder(Object obj) throws Exception {
        return Class.forName("android.app.AlertDialog$Builder").getConstructor(Class.forName("android.content.Context")).newInstance(obj);
    }

    private static void setBuilderText(Object obj, String str, String str2) throws Exception {
        call(obj, str, new Class[]{CharSequence.class}, str2);
    }

    private static void showToast(Object obj, String str) {
        try {
            call(Class.forName("android.widget.Toast").getMethod("makeText", Class.forName("android.content.Context"), CharSequence.class, Integer.TYPE).invoke(null, obj, str, 0), "show", NO_TYPES, new Object[0]);
        } catch (Throwable th) {
            logError("Toast failed: " + str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getStringPref(Object obj, String str, String str2) {
        try {
            Object objCall = call(prefs(obj), "getString", new Class[]{String.class, String.class}, str, str2);
            return objCall == null ? str2 : String.valueOf(objCall);
        } catch (Throwable th) {
            return str2;
        }
    }

    private static boolean getBooleanPref(Object obj, String str, boolean z) {
        try {
            return Boolean.TRUE.equals(call(prefs(obj), "getBoolean", new Class[]{String.class, Boolean.TYPE}, str, Boolean.valueOf(z)));
        } catch (Throwable th) {
            return z;
        }
    }

    private static void putStringPref(Object obj, String str, String str2) {
        try {
            Object objCall = call(prefs(obj), "edit", NO_TYPES, new Object[0]);
            call(objCall, "putString", new Class[]{String.class, String.class}, str, str2);
            call(objCall, "apply", NO_TYPES, new Object[0]);
        } catch (Throwable th) {
            logError("Could not save preference " + str, th);
        }
    }

    private static void putBooleanPref(Object obj, String str, boolean z) {
        try {
            Object objCall = call(prefs(obj), "edit", NO_TYPES, new Object[0]);
            call(objCall, "putBoolean", new Class[]{String.class, Boolean.TYPE}, str, Boolean.valueOf(z));
            call(objCall, "apply", NO_TYPES, new Object[0]);
        } catch (Throwable th) {
            logError("Could not save preference " + str, th);
        }
    }

    private static void removePref(Object obj, String str) {
        try {
            Object objCall = call(prefs(obj), "edit", NO_TYPES, new Object[0]);
            call(objCall, "remove", new Class[]{String.class}, str);
            call(objCall, "apply", NO_TYPES, new Object[0]);
        } catch (Throwable th) {
            logError("Could not remove preference " + str, th);
        }
    }

    private static Object prefs(Object obj) throws Exception {
        return call(obj, "getSharedPreferences", new Class[]{String.class, Integer.TYPE}, PREFS, 0);
    }

    private static boolean isArabic() {
        try {
            return Locale.getDefault().getLanguage().startsWith("ar");
        } catch (Throwable th) {
            return true;
        }
    }

    private static String emptyDash(String str) {
        return (str == null || str.length() == 0) ? "—" : str;
    }

    private static String firstNonEmpty(String... strArr) {
        for (String str : strArr) {
            if (str != null && str.trim().length() > 0 && !"null".equalsIgnoreCase(str)) {
                return str.trim();
            }
        }
        return BuildConfig.FLAVOR;
    }

    private static String string(Object obj) {
        return obj == null ? BuildConfig.FLAVOR : String.valueOf(obj);
    }

    private static int number(Object obj, int i) {
        return obj instanceof Number ? ((Number) obj).intValue() : i;
    }

    private static String readString(Object obj, String str) {
        try {
            return string(field(obj, str)).trim();
        } catch (Throwable th) {
            return BuildConfig.FLAVOR;
        }
    }

    private static Object field(Object obj, String str) throws Exception {
        if (obj == null) {
            return null;
        }
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField.get(obj);
            } catch (NoSuchFieldException e) {
            }
        }
        throw new NoSuchFieldException(str);
    }

    private static void setField(Object obj, String str, Object obj2) throws Exception {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                declaredField.set(obj, obj2);
                return;
            } catch (NoSuchFieldException e) {
            }
        }
        throw new NoSuchFieldException(str);
    }

    private static Method findNoArgMethod(Class<?> cls, String str) {
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object call(Object obj, String str, Class<?>[] clsArr, Object... objArr) throws Exception {
        if (obj == null) {
            throw new NullPointerException("target for " + str);
        }
        Method methodFindPublicMethod = findPublicMethod(obj.getClass(), str, clsArr);
        if (!methodFindPublicMethod.isAccessible()) {
            methodFindPublicMethod.setAccessible(true);
        }
        return methodFindPublicMethod.invoke(obj, objArr);
    }

    private static Method findPublicMethod(Class<?> cls, String str, Class<?>[] clsArr) throws NoSuchMethodException {
        for (Class<?> cls2 : cls.getInterfaces()) {
            try {
                return cls2.getMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                try {
                    return findPublicMethod(cls2, str, clsArr);
                } catch (NoSuchMethodException e2) {
                }
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            try {
                return superclass.getMethod(str, clsArr);
            } catch (NoSuchMethodException e3) {
                try {
                    return findPublicMethod(superclass, str, clsArr);
                } catch (NoSuchMethodException e4) {
                }
            }
        }
        return cls.getMethod(str, clsArr);
    }

    private static void logInfo(String str) {
        try {
            Class.forName("android.util.Log").getMethod("i", String.class, String.class).invoke(null, TAG, str);
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logError(String str, Throwable th) {
        try {
            Class.forName("android.util.Log").getMethod("e", String.class, String.class, Throwable.class).invoke(null, TAG, str, th);
        } catch (Throwable th2) {
        }
    }

    private static final class WorkInfo {
        final String episode;
        final String episodeRaw;
        final String key;
        final String kind;
        final String season;
        final String title;

        WorkInfo(String str, String str2, String str3, String str4, String str5, String str6) {
            this.key = str;
            this.title = str2;
            this.kind = str3;
            this.episode = str4;
            this.episodeRaw = str5;
            this.season = str6;
        }
    }

    private static final class SubtitleFile {
        final Object alternateUri;
        final String extension;
        final String name;
        final Object uri;

        SubtitleFile(String str, String str2, Object obj) {
            this(str, str2, obj, null);
        }

        SubtitleFile(String str, String str2, Object obj, Object obj2) {
            this.name = str;
            this.extension = str2;
            this.uri = obj;
            this.alternateUri = obj2;
        }
    }
}
