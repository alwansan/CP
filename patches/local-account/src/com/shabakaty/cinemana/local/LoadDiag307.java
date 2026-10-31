package com.shabakaty.cinemana.local;

import android.content.Context;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/**
 * PATCH307: low-rate, read-only per-process baseline/stress telemetry.
 * No network, filenames, title/episode names, content, task identifiers or file-tree scans.
 * No work on the UI thread beyond a one-time scheduler startup, tiny screen state updates
 * and a two-second main-looper heartbeat. Sampling and append happen off-main.
 */
public final class LoadDiag307 {
    private static final String TAG = "CinemanaLoadTrace";
    private static final long LIMIT = 512L * 1024L;
    private static final int MAX_DOWNLOAD_READ = 32768;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final AtomicBoolean PENDING = new AtomicBoolean();
    private static final Object LOCK = new Object();
    private static volatile boolean started;
    private static volatile String screen = "startup";
    private static volatile boolean foreground;
    private static volatile boolean downloadsTab;
    private static volatile long postedAt;
    private static long lastStallLog;
    private static long lastWall, lastCpu, lastRchar, lastWchar, lastRead, lastWrite;
    private static long lastUidRx=-1, lastUidTx=-1;
    private static long lastDownloadsBytes = -1, lastMkvBytes = -1, lastUiBytes = -1;
    private static Context context;
    private static ScheduledExecutorService worker;
    private static String process = "unknown";
    private static final int pid = android.os.Process.myPid();

    private LoadDiag307() {}

    public static void start(Context input) {
        if (input == null || started) return;
        synchronized (LOCK) {
            if (started) return;
            try {
                context = input.getApplicationContext();
                worker = Executors.newSingleThreadScheduledExecutor(r -> {
                    Thread t = new Thread(r, "cinemana-load-diag307");
                    t.setDaemon(true);
                    t.setPriority(Thread.MIN_PRIORITY);
                    return t;
                });
                started = true;
                worker.execute(() -> {
                    process = processLabel();
                    eventNow("process_start");
                    sample();
                });
                worker.scheduleWithFixedDelay(LoadDiag307::sample, 15, 15, TimeUnit.SECONDS);
                worker.scheduleWithFixedDelay(LoadDiag307::probeMain, 2, 2, TimeUnit.SECONDS);
            } catch (Throwable error) {
                Log.w(TAG, "start_failed type=" + error.getClass().getSimpleName());
            }
        }
    }

    /** Only fixed, non-sensitive event identifiers from the application. */
    public static void note(String event) {
        if (!started || event == null || worker == null) return;
        if (!("app_create_finished".equals(event) || "downloads_tab_enter".equals(event) ||
              "downloads_tab_exit".equals(event))) return;
        try { worker.execute(() -> eventNow(event)); } catch (Throwable ignored) {}
    }

    /** O(1) marker only: never appends a log or reads files on the UI thread. */
    public static void screen(String marker) {
        if (!started || marker == null) return;
        switch (marker) {
            case "home_visible": screen = "home"; foreground = true; break;
            case "detail_visible": screen = "details"; foreground = true; break;
            case "search_visible": screen = "search"; foreground = true; break;
            case "categories_view_created": screen = "categories"; foreground = true; break;
            case "profile_visible": screen = "profile"; foreground = true; break;
            case "franchises_view_created": screen = "franchises"; foreground = true; break;
            case "downloads_visible":
                screen = "downloads"; foreground = true; downloadsTab = true;
                note("downloads_tab_enter"); break;
            case "downloads_hidden":
                downloadsTab = false; screen = "transition";
                note("downloads_tab_exit"); break;
            case "activity_pause": foreground = false; break;
            case "activity_resume": foreground = true; break;
            default: break;
        }
    }

    private static String processLabel() {
        try (FileInputStream in = new FileInputStream("/proc/self/cmdline")) {
            byte[] data = new byte[96];
            int n = in.read(data);
            String s = n < 1 ? "" : new String(data, 0, n, StandardCharsets.UTF_8);
            if (s.contains(":filedownloader")) return "filedownloader";
            if (s.startsWith("com.cinemana.pro")) return "main";
        } catch (Throwable ignored) {}
        return "other";
    }

    private static Map<String, Long> readProc(String path) {
        Map<String, Long> values = new HashMap<>();
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(new FileInputStream(path), StandardCharsets.US_ASCII))) {
            String line;
            int lines = 0;
            while (lines++ < 120 && (line = reader.readLine()) != null) {
                int colon = line.indexOf(':');
                if (colon < 1) continue;
                String key = line.substring(0, colon);
                if (!(key.equals("VmRSS") || key.equals("VmHWM") ||
                    key.equals("Threads") || key.equals("voluntary_ctxt_switches") ||
                    key.equals("nonvoluntary_ctxt_switches") ||
                    key.equals("rchar") || key.equals("wchar") ||
                    key.equals("read_bytes") || key.equals("write_bytes") ||
                    key.equals("syscr") || key.equals("syscw"))) continue;
                String text = line.substring(colon + 1).trim();
                int end = 0;
                while (end < text.length() && Character.isDigit(text.charAt(end))) end++;
                if (end != 0) values.put(key, Long.parseLong(text.substring(0, end)));
            }
        } catch (Throwable ignored) {}
        return values;
    }

    private static long value(Map<String, Long> values, String key) {
        Long v = values.get(key);
        return v == null ? -1 : v;
    }

    private static long delta(long current, long previous) {
        return current < 0 || previous < 0 ? -1 : Math.max(0, current - previous);
    }

    /** Bounded incremental read of existing download diagnostic text; counts known events only. */
    private static int[] readDownloadSignals(File file, long oldLength, long newLength) {
        int[] counts = new int[8]; // sampled bytes, skipped bytes, progress, starts, completes, scans, saves, mkv
        if (oldLength < 0 || newLength <= 0) return counts;
        long from = newLength < oldLength ? 0 : oldLength;
        long available = Math.max(0, newLength - from);
        long take = Math.min(MAX_DOWNLOAD_READ, available);
        counts[0] = (int) take;
        counts[1] = (int) Math.min(Integer.MAX_VALUE, available - take);
        if (take == 0) return counts;
        try (RandomAccessFile input = new RandomAccessFile(file, "r")) {
            input.seek(from);
            byte[] buffer = new byte[(int) take];
            input.readFully(buffer);
            String lines = new String(buffer, StandardCharsets.UTF_8);
            for (String line : lines.split("\n")) {
                if (line.contains("STATE=DOWNLOAD_PROGRESS")) counts[2]++;
                if (line.contains("STATE=DOWNLOAD_STARTED")) counts[3]++;
                if (line.contains("STATE=DOWNLOAD_COMPLETED")) counts[4]++;
                if (line.contains("RECOVERY119 SCAN_BEGIN")) counts[5]++;
                if (line.contains("PORTABLE123 SAVED")) counts[6]++;
                if (line.contains("MKV_UI_QUEUED")) counts[7]++;
            }
        } catch (Throwable ignored) {}
        return counts;
    }

    private static long uidNetworkBytes(boolean incoming) {
        try {
            int uid=android.os.Process.myUid();
            return incoming ? android.net.TrafficStats.getUidRxBytes(uid)
                            : android.net.TrafficStats.getUidTxBytes(uid);
        } catch (Throwable ignored) { return -1; }
    }

    private static void sample() {
        try {
            long now = SystemClock.elapsedRealtime(), cpu = android.os.Process.getElapsedCpuTime();
            Map<String, Long> status = readProc("/proc/self/status");
            Map<String, Long> io = readProc("/proc/self/io");
            long rchar = value(io, "rchar"), wchar = value(io, "wchar");
            long read = value(io, "read_bytes"), write = value(io, "write_bytes");
            long uidRx=uidNetworkBytes(true), uidTx=uidNetworkBytes(false);
            File folder = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log");
            File downloadLog = new File(folder, "downloads.log");
            long dl = downloadLog.isFile() ? downloadLog.length() : -1;
            long mkv = new File(folder, ".mkv_export.log").length();
            long ui = new File(folder, "ui95.log").length();
            int[] counts = readDownloadSignals(downloadLog, lastDownloadsBytes, dl);
            JSONObject o = base("load_sample");
            o.put("wall_delta_ms", lastWall == 0 ? 0 : Math.max(0, now-lastWall));
            o.put("process_cpu_delta_ms", lastWall == 0 ? 0 : Math.max(0, cpu-lastCpu));
            o.put("vm_rss_kb", value(status, "VmRSS"));
            o.put("vm_hwm_kb", value(status, "VmHWM"));
            o.put("threads", value(status, "Threads"));
            o.put("voluntary_switches", value(status, "voluntary_ctxt_switches"));
            o.put("involuntary_switches", value(status, "nonvoluntary_ctxt_switches"));
            o.put("java_heap_used_kb", (Runtime.getRuntime().totalMemory()-Runtime.getRuntime().freeMemory())/1024);
            o.put("java_heap_max_kb", Runtime.getRuntime().maxMemory()/1024);
            o.put("native_heap_kb", Debug.getNativeHeapAllocatedSize()/1024);
            o.put("io_rchar_delta", delta(rchar,lastRchar));
            o.put("io_wchar_delta", delta(wchar,lastWchar));
            o.put("io_read_bytes_delta", delta(read,lastRead));
            o.put("io_write_bytes_delta", delta(write,lastWrite));
            o.put("io_syscr", value(io,"syscr"));
            o.put("io_syscw", value(io,"syscw"));
            o.put("proc_io_accessible", !io.isEmpty());
            o.put("uid_network_rx_delta", delta(uidRx,lastUidRx));
            o.put("uid_network_tx_delta", delta(uidTx,lastUidTx));
            o.put("network_scope", "app_uid_all_processes");
            JSONObject threadCpu=ThreadCpuDiag308.sample();
            if(threadCpu!=null) o.put("thread_cpu",threadCpu);
            o.put("download_log_delta", delta(dl,lastDownloadsBytes));
            o.put("mkv_log_delta", delta(mkv,lastMkvBytes));
            o.put("local_log_delta", delta(ui,lastUiBytes));
            o.put("download_log_sampled", counts[0]);
            o.put("download_log_skipped", counts[1]);
            o.put("download_progress", counts[2]);
            o.put("download_started", counts[3]);
            o.put("download_completed", counts[4]);
            o.put("queue_scans", counts[5]);
            o.put("portable_saves", counts[6]);
            o.put("mkv_enqueued", counts[7]);
            // DELTAS from previous sample, never titles, task IDs, or raw file lines.
            append(o.toString());
            lastWall=now; lastCpu=cpu;
            lastRchar=rchar; lastWchar=wchar; lastRead=read; lastWrite=write;
            lastUidRx=uidRx; lastUidTx=uidTx;
            lastDownloadsBytes=dl; lastMkvBytes=mkv; lastUiBytes=ui;
        } catch (Throwable error) {
            Log.w(TAG, "sample_failed type="+error.getClass().getSimpleName());
        }
    }

    /** One probe at a time. Capture bounded code-only stacks only if >1.5s blocked. */
    private static void probeMain() {
        try {
            if (!PENDING.compareAndSet(false, true)) {
                long now = SystemClock.elapsedRealtime();
                if (now-postedAt < 1500 || now-lastStallLog < 5000) return;
                lastStallLog=now;
                StackTraceElement[] frames = MAIN.getLooper().getThread().getStackTrace();
                JSONObject o = base("main_blocked");
                o.put("wait_ms",Math.max(0,now-postedAt));
                o.put("thread_state",MAIN.getLooper().getThread().getState().name());
                org.json.JSONArray code = new org.json.JSONArray();
                for(StackTraceElement f : frames) {
                    if (f.getClassName().startsWith("com.shabakaty.") && code.length()<3)
                        code.put(f.getClassName()+"#"+f.getMethodName());
                }
                o.put("app_sites", code);
                append(o.toString());
                return;
            }
            postedAt=SystemClock.elapsedRealtime();
            if (!MAIN.post(() -> PENDING.set(false))) PENDING.set(false);
        } catch (Throwable ignored) {}
    }

    private static JSONObject base(String event) throws Exception {
        JSONObject o = new JSONObject();
        o.put("schema",1);o.put("build","PATCH308");
        o.put("event",event);o.put("utc_ms",System.currentTimeMillis());
        o.put("pid",pid);o.put("process",process);
        o.put("screen",screen);o.put("foreground",foreground);o.put("downloads_tab",downloadsTab);
        return o;
    }

    private static void eventNow(String event) {
        try { append(base(event).toString()); }
        catch (Throwable ignored) {}
    }

    private static void append(String entry) {
        try {
            File shared = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log");
            File dir = ((shared.isDirectory() || shared.mkdirs()) && shared.canWrite())
                ? shared : new File(context.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) return;
            String filename = "load_diagnostics." + process + ".jsonl";
            File target = new File(dir, filename);
            if (target.length() >= LIMIT) {
                File previous = new File(dir, "load_diagnostics." + process + ".previous.jsonl");
                if (previous.exists()) previous.delete();
                if (!target.renameTo(previous)) target.delete();
            }
            try (FileOutputStream out = new FileOutputStream(target, true)) {
                out.write((entry+"\n").getBytes(StandardCharsets.UTF_8));
            }
            Log.i(TAG,entry);
        } catch (Throwable error) {
            Log.w(TAG, "write_failed type="+error.getClass().getSimpleName());
            Log.i(TAG,entry);
        }
    }
}
