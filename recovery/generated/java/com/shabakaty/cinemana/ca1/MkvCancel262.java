package com.shabakaty.cinemana.ca1;

import android.content.Context;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class MkvCancel262 {
    private static final ConcurrentHashMap<String, Process> processes = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Thread> workers = new ConcurrentHashMap<>();
    private static final ThreadLocal<Object[]> current = new ThreadLocal<>();

    private MkvCancel262() {
    }

    private static void addMkvPaths(Collection<String> collection, String str) {
        File file = new File(str);
        collection.add(str);
        collection.add(str + ".bak");
        File parentFile = file.getParentFile();
        File[] fileArrListFiles = parentFile == null ? null : parentFile.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    if (file2.getName().startsWith(file.getName() + ".cnm115-") && file2.getName().endsWith(".part")) {
                        collection.add(file2.getPath());
                    }
                }
            }
        }
    }

    public static void augmentPaths(Collection<String> collection) {
        for (String str : new ArrayList(collection)) {
            if (str != null && !str.isEmpty()) {
                if (str.toLowerCase(Locale.ROOT).endsWith(".mp4")) {
                    collection.add(str + ".temp");
                    addMkvPaths(collection, str.substring(0, str.length() + (-4)) + ".mkv");
                    File file = new File(str);
                    addMkvPaths(collection, new File(file.getParentFile(), "(No Sub) " + file.getName().substring(0, file.getName().length() - 4) + ".mkv").getPath());
                } else if (str.toLowerCase(Locale.ROOT).endsWith(".mkv")) {
                    addMkvPaths(collection, str);
                }
            }
        }
    }

    public static boolean blocked(Object obj, Object obj2) {
        if ((obj instanceof Context) && obj2 != null) {
            try {
                return ((Context) obj).getSharedPreferences("ca1_delete_intent", 0).getBoolean(id(obj2), false);
            } catch (Exception unused) {
            }
        }
        return true;
    }

    public static void check(Object obj, Object obj2) throws Exception {
        if (blocked(obj, obj2)) {
            throw new IOException("MKV task cancelled by user");
        }
        Fresh121.validate(obj, obj2);
        current.set(new Object[]{obj, obj2});
        workers.put(id(obj2), Thread.currentThread());
    }

    public static void checkCurrent() throws Exception {
        Object[] objArr = current.get();
        if (objArr == null) {
            throw new IOException("Missing MKV request ownership");
        }
        check(objArr[0], objArr[1]);
    }

    public static void clearCurrent() {
        Object[] objArr = current.get();
        if (objArr != null) {
            try {
                workers.remove(id(objArr[1]), Thread.currentThread());
            } catch (Exception unused) {
            }
        }
        current.remove();
    }

    static String id(Object obj) throws Exception {
        return Restart108.str(obj, "id");
    }

    public static void prepareDelete(Context context, Object obj) throws Exception {
        boolean zContains;
        String strId = id(obj);
        if (strId.isEmpty()) {
            throw new IOException("Missing deletion identity");
        }
        Object obj2 = Restart108.get(DownloadStore263.combined(context, strId), "cinemanaDownloadItem");
        if (obj2 == null) {
            throw new IOException("Download item disappeared before cancellation");
        }
        int iNumber = (int) Restart108.number(obj2, "downloadTaskId");
        if (!context.getSharedPreferences("ca1_delete_intent", 0).edit().putBoolean(strId, true).commit()) {
            throw new IOException("Unable to persist delete intent");
        }
        Fresh121.deleted(context, strId);
        if (iNumber != 0 && Restart108.active(iNumber)) {
            Restart108.call(Restart108.call(Class.forName("com.liulishuo.filedownloader.FileDownloader"), "getImpl", new Object[0]), "pause", Integer.valueOf(iNumber));
        }
        Class<?> cls = Class.forName("com.shabakaty.cinemana.features.MkvExporter");
        Object obj3 = Restart108.get(cls, "JOB_LOCK");
        Set set = (Set) Restart108.get(cls, "ACTIVE_JOB_KEYS");
        Object obj4 = Restart108.get(cls, "JOB_EXECUTOR");
        String str = "item:" + strId;
        synchronized (obj3) {
            if (obj4 instanceof ThreadPoolExecutor) {
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) obj4;
                for (Runnable runnable : new ArrayList(threadPoolExecutor.getQueue())) {
                    String strValueOf = BuildConfig.FLAVOR;
                    try {
                        try {
                            strValueOf = String.valueOf(Restart108.get(runnable, "val$jobKey"));
                        } catch (Exception unused) {
                            strValueOf = String.valueOf(Restart108.get(runnable, PListParser.TAG_KEY));
                        }
                    } catch (Exception unused2) {
                    }
                    if (str.equals(strValueOf) && threadPoolExecutor.remove(runnable)) {
                        set.remove(str);
                    }
                }
            }
        }
        long jNanoTime = System.nanoTime() + TimeUnit.SECONDS.toNanos(15L);
        while (true) {
            Process process = processes.get(strId);
            if (process != null) {
                process.destroy();
            }
            synchronized (obj3) {
                zContains = set.contains(str);
            }
            boolean z = iNumber != 0 && Restart108.active(iNumber);
            Thread thread = workers.get(strId);
            boolean z2 = thread != null && thread.isAlive();
            if (!zContains && !z && !z2) {
                Restart108.call(Class.forName("com.shabakaty.cinemana.features.MkvStateStore"), "setBusy", context, obj2, Boolean.FALSE, "CANCELLED");
                return;
            } else {
                if (System.nanoTime() >= jNanoTime) {
                    throw new IOException("MKV cancellation is pending; media retained for a safe retry");
                }
                Thread.sleep(50L);
            }
        }
    }

    public static void register(Process process) throws Exception {
        Object[] objArr = current.get();
        if (objArr == null) {
            process.destroy();
            throw new IOException("Missing MKV process ownership");
        }
        String strId = id(objArr[1]);
        processes.put(strId, process);
        try {
            checkCurrent();
        } catch (Exception e) {
            process.destroy();
            processes.remove(strId, process);
            throw e;
        }
    }

    public static void unregister(Process process) {
        for (Map.Entry<String, Process> entry : processes.entrySet()) {
            if (entry.getValue() == process) {
                processes.remove(entry.getKey(), process);
            }
        }
    }
}
