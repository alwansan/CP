package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class Delete94 {
    static final String EX = "com.shabakaty.cinemana.features.MkvExporter";
    static volatile boolean busy;
    static boolean recoveryStarted;
    static final ExecutorService worker = Executors.newSingleThreadExecutor();
    static final Handler main = new Handler(Looper.getMainLooper());

    public interface Result {
        void done(int i, List<String> list);
    }

    public static boolean candidate(Object obj) {
        try {
            if (R94.str(obj, "id").isEmpty()) {
                return false;
            }
            String lowerCase = R94.str(obj, FileDownloadModel.PATH).toLowerCase(Locale.ROOT);
            return lowerCase.endsWith(".mkv") || lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mp4.temp");
        } catch (Exception e) {
            return false;
        }
    }

    static final class Snapshot {
        public final String episodeNumber;
        public final String id;
        public final String path;
        public final String title;

        Snapshot(Object obj) {
            this.id = R94.str(obj, "id");
            this.path = R94.str(obj, FileDownloadModel.PATH);
            this.title = R94.str(obj, "title");
            this.episodeNumber = R94.str(obj, "episodeNumber");
        }
    }

    static Object ex(String str, Object... objArr) throws Exception {
        return R94.call(Class.forName(EX), str, objArr);
    }

    static File resolve(String str) throws Exception {
        return (File) ex("resolvePath", str);
    }

    static File safe(String str) throws Exception {
        File fileResolve = resolve(str);
        if (fileResolve == null) {
            throw new IOException(I18n161.t("مسار غير مدعوم"));
        }
        File canonicalFile = new File(Environment.getExternalStorageDirectory(), "Cinemana").getCanonicalFile();
        File canonicalFile2 = fileResolve.getCanonicalFile();
        if (!canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator) || !canonicalFile2.equals(fileResolve.getAbsoluteFile())) {
            throw new IOException(I18n161.t("مسار خارج مجلد التطبيق أو رابط رمزي"));
        }
        if (canonicalFile2.isDirectory()) {
            throw new IOException(I18n161.t("المسار مجلد"));
        }
        return canonicalFile2;
    }

    static /* synthetic */ void lambda$run$2(List list, Context context, final Result result) {
        final DownloadStore263.Errors errors = new DownloadStore263.Errors();
        Object objCall = null;
        Object objEx = null;
        final int i = 0;
        for (Object obj : list) {
            try {
                MkvCancel262.prepareDelete(context, obj);
                if (objCall == null) {
                    objCall = R94.call(context, "h", new Object[0]);
                }
                if (objEx == null) {
                    objEx = ex("getDownloadsDao", context, context);
                }
                delete(context, obj, objCall, objEx);
                DownloadStore263.recordSuccess(errors, obj);
                i++;
            } catch (Throwable th) {
                th = th;
                if (th.getCause() != null) {
                    th = th.getCause();
                }
                errors.add(R94.str(obj, "title") + " • " + R94.str(obj, "episodeNumber") + ": " + th.getMessage());
            }
        }
        busy = false;
        main.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Delete94$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                result.done(i, errors);
            }
        });
    }

    public static synchronized void run(Context context, List<Object> list, final Result result) {
        if (busy) {
            main.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Delete94$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    result.done(0, Collections.singletonList(I18n161.t("هناك عملية حذف أخرى قيد التنفيذ")));
                }
            });
        } else {
            busy = true;
            final Context applicationContext = context.getApplicationContext();
            final ArrayList arrayList = new ArrayList();
            Iterator<Object> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Snapshot(it.next()));
            }
            worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Delete94$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Delete94.lambda$run$2(arrayList, applicationContext, result);
                }
            });
        }
    }

    static void delete(Context context, Object obj, Object obj2, Object obj3) throws Exception {
        Class<?> cls = Class.forName(EX);
        Object obj4 = R94.get(cls, "JOB_LOCK");
        String str = R94.str(obj, "id");
        synchronized (obj4) {
            if (((Set) R94.get(cls, "ACTIVE_JOB_KEYS")).contains("item:" + str)) {
                throw new IOException(I18n161.t("التحويل ما زال يعمل"));
            }
            synchronized (cls) {
                int i = 2;
                Object objEx = ex("readCombinedById", obj2, str);
                if (objEx == null) {
                    throw new IOException(I18n161.t("تغيرت بيانات الحلقة؛ أعد تحديدها"));
                }
                Object obj5 = R94.get(objEx, "cinemanaDownloadItem");
                String str2 = R94.str(obj5, FileDownloadModel.PATH);
                if ((!str2.equals(R94.str(obj, FileDownloadModel.PATH)) && !MkvCancel262.blocked(context, obj)) || !candidate(obj5)) {
                    throw new IOException(I18n161.t("تغير مسار الحلقة أو لم يكتمل التحويل"));
                }
                int iIntValue = ((Number) R94.get(obj5, "downloadTaskId")).intValue();
                Object objEx2 = ex("readDownloadsByTaskId", obj3, Integer.valueOf(iIntValue));
                if (objEx2 != null && !"COMPLETED".equals(R94.str(objEx2, "z")) && !MkvCancel262.blocked(context, obj)) {
                    throw new IOException(I18n161.t("التحميل غير مكتمل"));
                }
                LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
                linkedHashSet.add(str2);
                if (objEx2 != null && !R94.str(objEx2, "x").isEmpty()) {
                    linkedHashSet.add(R94.str(objEx2, "x"));
                }
                List list = (List) R94.get(objEx, "subtitles");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str3 = R94.str(it.next(), "file");
                    if (!str3.isEmpty()) {
                        linkedHashSet.add(str3);
                    }
                }
                MkvCancel262.augmentPaths(linkedHashSet);
                List list2 = (List) R94.call(obj2, "j", new Object[0]);
                HashSet hashSet = new HashSet();
                for (Object obj6 : list2) {
                    if (!str.equals(R94.str(obj6, "id"))) {
                        String str4 = R94.str(obj6, FileDownloadModel.PATH);
                        if (!str4.isEmpty()) {
                            hashSet.add(safe(str4).getPath());
                        }
                        Object[] objArr = new Object[i];
                        objArr[0] = obj2;
                        objArr[1] = R94.str(obj6, "id");
                        Object objEx3 = ex("readCombinedById", objArr);
                        if (objEx3 != null) {
                            Iterator it2 = ((List) R94.get(objEx3, "subtitles")).iterator();
                            while (it2.hasNext()) {
                                String str5 = R94.str(it2.next(), "file");
                                if (!str5.isEmpty()) {
                                    hashSet.add(safe(str5).getPath());
                                }
                            }
                        }
                        i = 2;
                    }
                }
                ArrayList<File> arrayList = new ArrayList();
                for (String str6 : linkedHashSet) {
                    File fileSafe = safe(str6);
                    if (!hashSet.contains(fileSafe.getPath()) && !arrayList.contains(fileSafe)) {
                        arrayList.add(fileSafe);
                    } else if (str6.equals(str2) && hashSet.contains(fileSafe.getPath())) {
                        throw new IOException(I18n161.t("الملف مرتبط بحلقة أخرى"));
                    }
                }
                JSONArray jSONArray = new JSONArray();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    jSONArray.put(((File) it3.next()).getPath());
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("ca1_delete_journal", 0);
                if (!sharedPreferences.edit().putString(str, jSONArray.toString()).commit()) {
                    throw new IOException(I18n161.t("تعذر حفظ عملية الحذف"));
                }
                for (File file : arrayList) {
                    if (file.exists() && !file.delete()) {
                        throw new IOException(I18n161.t("تعذر حذف الملف: ") + file.getName());
                    }
                    if (file.exists()) {
                        throw new IOException(I18n161.t("ما زال الملف موجودًا"));
                    }
                }
                Object objCall = R94.call(Class.forName("com.shabakaty.downloader.vy0"), "c", new Object[0]);
                if (objEx2 != null && !hashSet.contains(safe(R94.str(objEx2, "x")).getPath())) {
                    R94.call(objCall, "j", Integer.valueOf(iIntValue), R94.str(objEx2, "x"));
                }
                for (Object obj7 : list) {
                    int iIntValue2 = ((Number) R94.get(obj7, "downloadTaskId")).intValue();
                    if (!R94.str(obj7, "file").isEmpty() && !hashSet.contains(safe(R94.str(obj7, "file")).getPath())) {
                        R94.call(objCall, "j", Integer.valueOf(iIntValue2), R94.str(obj7, "file"));
                    }
                }
                R94.call(Class.forName("com.shabakaty.cinemana.ca1.Recovery92"), "deleted", str);
                R94.call(R94.make("com.shabakaty.downloader.kw0$l", obj2, str), "call", new Object[0]);
                if (ex("readCombinedById", obj2, str) == null) {
                    releaseAdmission(str);
                    sharedPreferences.edit().remove(str).commit();
                    Log94.event(context, "delete_completed", "id=" + str);
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        emptyParents(((File) it4.next()).getParentFile());
                    }
                } else {
                    throw new IOException(I18n161.t("تعذر حذف بيانات الحلقة"));
                }
            }
        }
        try {
            EpisodeSidecarCleanup.deleted(context, str);
            EpisodeSidecarCleanup.deletedPath(context, Restart108.str(obj, FileDownloadModel.PATH));
        } catch (Throwable th) {
        }
    }

    static void releaseAdmission(String str) throws Exception {
        ((Set) R94.get(Class.forName("com.shabakaty.cinemana.ca1.BatchDownload"), "ADMITTED")).remove(str);
    }

    public static void reenqueue(String str) throws Exception {
        Context context = (Context) R94.get(Class.forName("com.shabakaty.cinemana.ca1.Ui7"), "app");
        if (context == null) {
            return;
        }
        synchronized (R94.get(Class.forName(EX), "JOB_LOCK")) {
            if (context.getSharedPreferences("ca1_delete_journal", 0).contains(str)) {
                throw new IOException(I18n161.t("عملية حذف الحلقة لم تكتمل بعد"));
            }
            context.getSharedPreferences("ca1_delete_intent", 0).edit().remove(str).commit();
        }
    }

    static /* synthetic */ void lambda$recover$3(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("ca1_delete_journal", 0);
            Map<String, ?> all = sharedPreferences.getAll();
            if (all.isEmpty()) {
                return;
            }
            Object objCall = R94.call(context, "h", new Object[0]);
            Object objEx = ex("getDownloadsDao", context, context);
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                try {
                    JSONArray jSONArray = new JSONArray(String.valueOf(entry.getValue()));
                    HashSet hashSet = new HashSet();
                    boolean z = true;
                    for (int i = 0; i < jSONArray.length(); i++) {
                        File fileSafe = safe(jSONArray.getString(i));
                        hashSet.add(fileSafe.getPath());
                        if (fileSafe.exists()) {
                            z = false;
                        }
                    }
                    if (z) {
                        Object objEx2 = ex("readCombinedById", objCall, entry.getKey());
                        if (objEx2 == null) {
                            releaseAdmission(entry.getKey());
                            sharedPreferences.edit().remove(entry.getKey()).commit();
                        } else {
                            Object obj = R94.get(objEx2, "cinemanaDownloadItem");
                            if (hashSet.contains(safe(R94.str(obj, FileDownloadModel.PATH)).getPath())) {
                                Iterator it = ((List) R94.get(objEx2, "subtitles")).iterator();
                                boolean z2 = false;
                                while (it.hasNext()) {
                                    String str = R94.str(it.next(), "file");
                                    if (!str.isEmpty()) {
                                        File fileSafe2 = safe(str);
                                        if (fileSafe2.exists() || !hashSet.contains(fileSafe2.getPath())) {
                                            z2 = true;
                                        }
                                    }
                                }
                                Object objEx3 = ex("readDownloadsByTaskId", objEx, Integer.valueOf(((Number) R94.get(obj, "downloadTaskId")).intValue()));
                                if (objEx3 != null) {
                                    File fileSafe3 = safe(R94.str(objEx3, "x"));
                                    if (fileSafe3.exists() || !hashSet.contains(fileSafe3.getPath())) {
                                        z2 = true;
                                    }
                                }
                                if (!z2) {
                                    delete(context, obj, objCall, objEx);
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
        }
    }

    public static synchronized void recover(Context context) {
        if (!recoveryStarted) {
            recoveryStarted = true;
            final Context applicationContext = context.getApplicationContext();
            main.postDelayed(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Delete94$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Delete94.worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Delete94$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Delete94.lambda$recover$3(context);
                        }
                    });
                }
            }, 3000L);
        }
    }

    static void emptyParents(File file) throws IOException {
        File canonicalFile = new File(Environment.getExternalStorageDirectory(), "Cinemana").getCanonicalFile();
        File file2 = new File(canonicalFile, "work");
        while (file != null && !file.equals(canonicalFile) && !file.equals(file2) && file.getCanonicalPath().startsWith(canonicalFile.getPath() + File.separator)) {
            String[] list = file.list();
            if (list == null || list.length != 0 || !file.delete()) {
                return;
            } else {
                file = file.getParentFile();
            }
        }
    }
}
