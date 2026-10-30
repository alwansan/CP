package com.shabakaty.cinemana.local;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;
import android.os.SystemClock;
import android.view.FrameMetrics;
import android.view.Window;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * Lightweight, opt-in-by-build UI diagnostics. No title, account, ID, URL, request body,
 * stack trace, gesture coordinate, or screen content is ever included.
 * FrameMetrics callbacks and file IO run off the UI thread.
 */
public final class UiPerfDiag {
    private static final String TAG = "CinemanaUITrace";
    private static final String BUILD = "PATCH283";
    private static final long LOG_LIMIT_BYTES = 1536 * 1024;
    private static final Object LOCK = new Object();
    private static volatile boolean installed;
    private static volatile boolean visible;
    private static Application application;
    private static Activity foreground;
    private static HandlerThread metricsThread;
    private static Handler metricsHandler;
    private static ScheduledExecutorService writer;
    private static Window measuredWindow;
    private static Window.OnFrameMetricsAvailableListener metricsListener;
    private static long session;
    private static long lastCpuMs;
    private static long lastWallMs;
    private static long frames, frameTotalNs, frameMaxNs, missed, overBudget, over32, over50, over100, over200;
    private static long layoutNs, drawNs, syncNs, commandNs;
    private static long homeScrollEvents, homeScrollAbs, horizontalScrollEvents, horizontalScrollAbs;
    private static long verticalScrollEvents, verticalScrollAbs;
    private static long diffCount, diffTotalNs, diffMaxNs, diffSkipped, diffOver16, diffOver32;
    private static long pageEnds, lifecycleEvents;
    private static long posterStarted, posterReady, posterFailed, posterFallback;
    private static String screen = "unknown";
    private static long lastFlushMs;
    private static long lastCaptureMs;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final AtomicBoolean probePending = new AtomicBoolean();
    private static volatile long pendingProbeNs;
    private static long lastStallStackMs;
    // Seven fixed categories; never log stack text or user/content identifiers.
    private static final long[] blockedMainBuckets=new long[7];
    private static long mainProbes, mainOver50, mainOver100, mainOver250, mainMaxNs;
    private static long homeRefreshCount, homeRefreshNs, homeRefreshMaxNs;
    private static long homeSetupCount, homeSetupNs, homeSetupMaxNs;
    private static long homeInflateCount, homeInflateNs, homeInflateMaxNs;
    private static long detailInflateCount, detailInflateNs, detailInflateMaxNs;
    private static long layoutMaxNs, drawMaxNs;
    private static long worstLayoutNs,worstDrawNs,worstSyncNs,worstCommandNs,worstSwapNs;
    private static long layoutOver100,commandOver100,themeApplyCount,themeApplyMaxNs;
    // Home row types are stable numeric layout enums; never record titles or content.
    private static final long[] rowBindCount=new long[5], rowBindMaxNs=new long[5];
    private static final long[] rowCreateCount=new long[5], rowCreateMaxNs=new long[5];

    private static final class Snapshot {
        final String screen;
        final boolean foreground;
        final long timestamp, elapsedMs, durationMs;
        final long[] v;
        Snapshot(String label, long utc, long elapsed, long duration, long[] data) {
            screen=label; foreground=visible; timestamp=utc; elapsedMs=elapsed; durationMs=duration; v=data;
        }
        boolean hasData() {
            if (v[0]>0 || v[13]>0 || v[15]>0 || v[17]>0 ||
                v[19]>0 || v[24]>0 || v[25]>0 || v[26]>0 ||
                v[27]>0 || v[28]>0 || v[29]>0 || v[30]>0 || v[31]>0 || v[36]>0 || v[39]>0 || v[42]>0 || v[45]>0) return true;
            for(int t=0;t<5;t++)if(v[50+4*t]>0 || v[52+4*t]>0)return true;
            if(v[77]>0)return true;
            for(int t=0;t<7;t++)if(v[79+t]>0)return true;
            return false;
        }
    }

    // Called under LOCK. Freeze all counters and screen attribution before navigation.
    private static Snapshot captureLocked(long now) {
        long[] v={frames, frameTotalNs, frameMaxNs, missed, overBudget, over32,
            over50, over100, over200, layoutNs, drawNs, syncNs, commandNs,
            homeScrollEvents, homeScrollAbs, horizontalScrollEvents, horizontalScrollAbs,
            verticalScrollEvents, verticalScrollAbs, diffCount, diffTotalNs, diffMaxNs,
            diffOver16, diffOver32, diffSkipped, pageEnds, lifecycleEvents,
            posterStarted, posterReady, posterFailed, posterFallback,
            mainProbes, mainOver50, mainOver100, mainOver250, mainMaxNs,
            homeRefreshCount, homeRefreshNs, homeRefreshMaxNs,
            homeSetupCount, homeSetupNs, homeSetupMaxNs,
            homeInflateCount, homeInflateNs, homeInflateMaxNs,
            detailInflateCount, detailInflateNs, detailInflateMaxNs,
            layoutMaxNs, drawMaxNs};
        long[] extended=java.util.Arrays.copyOf(v,86);
        for(int t=0;t<7;t++) {
            extended[79+t]=blockedMainBuckets[t];
            blockedMainBuckets[t]=0;
        }
        extended[70]=worstLayoutNs;extended[71]=worstDrawNs;extended[72]=worstSyncNs;
        extended[73]=worstCommandNs;extended[74]=worstSwapNs;
        extended[75]=layoutOver100;extended[76]=commandOver100;
        extended[77]=themeApplyCount;extended[78]=themeApplyMaxNs;
        worstLayoutNs=worstDrawNs=worstSyncNs=worstCommandNs=worstSwapNs=0;
        layoutOver100=commandOver100=themeApplyCount=themeApplyMaxNs=0;
        for(int t=0;t<5;t++) {
            int off=50+4*t;
            extended[off]=rowBindCount[t]; extended[off+1]=rowBindMaxNs[t];
            extended[off+2]=rowCreateCount[t]; extended[off+3]=rowCreateMaxNs[t];
            rowBindCount[t]=rowBindMaxNs[t]=rowCreateCount[t]=rowCreateMaxNs[t]=0;
        }
        Snapshot snap=new Snapshot(screen, System.currentTimeMillis(), now,
            Math.max(1,now-lastCaptureMs),extended);
        lastCaptureMs=now;
        frames=frameTotalNs=frameMaxNs=missed=overBudget=over32=over50=over100=over200=0;
        layoutNs=drawNs=syncNs=commandNs=0;
        homeScrollEvents=homeScrollAbs=horizontalScrollEvents=horizontalScrollAbs=0;
        verticalScrollEvents=verticalScrollAbs=0;
        diffCount=diffTotalNs=diffMaxNs=diffSkipped=diffOver16=diffOver32=0;
        pageEnds=lifecycleEvents=0;
        posterStarted=posterReady=posterFailed=posterFallback=0;
        mainProbes=mainOver50=mainOver100=mainOver250=mainMaxNs=0;
        homeRefreshCount=homeRefreshNs=homeRefreshMaxNs=0;
        homeSetupCount=homeSetupNs=homeSetupMaxNs=0;
        homeInflateCount=homeInflateNs=homeInflateMaxNs=0;
        detailInflateCount=detailInflateNs=detailInflateMaxNs=0;
        layoutMaxNs=drawMaxNs=0;
        return snap;
    }

    /** Executes only on the background writer when an outstanding main-thread probe is late. */
    private static void sampleBlockedMain() {
        long now=SystemClock.elapsedRealtime();
        if (now-lastStallStackMs<500) return;
        lastStallStackMs=now;
        try {
            StackTraceElement[] frames=MAIN.getLooper().getThread().getStackTrace();
            int kind=6;
            for (StackTraceElement frame:frames) {
                String c=frame.getClassName();
                if (c.startsWith("androidx.recyclerview") ||
                    c.startsWith("androidx.constraintlayout") ||
                    c.startsWith("android.view.") || c.startsWith("android.widget.")) {kind=0;break;}
                if (c.startsWith("com.facebook.drawee") ||
                    c.startsWith("com.facebook.imagepipeline") ||
                    c.startsWith("android.graphics.")) {kind=1;break;}
                if (c.contains("ThemeEngine142") || c.contains("ThemeStudio142")) {kind=2;break;}
                if (c.startsWith("java.io.") || c.startsWith("android.database.") ||
                    c.startsWith("libcore.io.") || c.startsWith("org.json.")) {kind=3;break;}
                if (c.startsWith("com.shabakaty.")) {kind=4;break;}
                if (c.startsWith("android.") || c.startsWith("java.")) {kind=5;break;}
            }
            synchronized(LOCK) {blockedMainBuckets[kind]++;}
        } catch(Throwable ignored) {}
    }

    /** 4Hz bounded main-thread heartbeat helps catch intermittent stalls between frames. */
    private static void probeMainThread() {
        if (!visible) return;
        if (!probePending.compareAndSet(false,true)) {
            if (SystemClock.elapsedRealtimeNanos()-pendingProbeNs>=100_000_000L)
                sampleBlockedMain();
            return;
        }
        final long started=SystemClock.elapsedRealtimeNanos();
        pendingProbeNs=started;
        if (!MAIN.post(()->{
            long delay=Math.max(0,SystemClock.elapsedRealtimeNanos()-started);
            synchronized (LOCK) {
                mainProbes++;
                if(delay>mainMaxNs)mainMaxNs=delay;
                if(delay>50_000_000L)mainOver50++;
                if(delay>100_000_000L)mainOver100++;
                if(delay>250_000_000L)mainOver250++;
            }
            probePending.set(false);
        })) probePending.set(false);
    }


    private UiPerfDiag() {}

    public static void install(Activity activity) {
        if (installed || activity == null) return;
        synchronized (LOCK) {
            if (installed) return;
            try {
                application = activity.getApplication();
                metricsThread = new HandlerThread("cinemana-ui-metrics", android.os.Process.THREAD_PRIORITY_BACKGROUND);
                metricsThread.start();
                metricsHandler = new Handler(metricsThread.getLooper());
                session = System.currentTimeMillis();
                writer = Executors.newSingleThreadScheduledExecutor(r -> {
                    Thread t = new Thread(r, "cinemana-ui-log-writer");
                    t.setDaemon(true);
                    t.setPriority(Thread.MIN_PRIORITY);
                    return t;
                });
                application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
                    @Override public void onActivityCreated(Activity a, Bundle b) { mark("activity_create"); }
                    @Override public void onActivityStarted(Activity a) { mark("activity_start"); }
                    @Override public void onActivityResumed(Activity a) { resume(a); }
                    @Override public void onActivityPaused(Activity a) { pause(a); }
                    @Override public void onActivityStopped(Activity a) { mark("activity_stop"); }
                    @Override public void onActivitySaveInstanceState(Activity a, Bundle b) {}
                    @Override public void onActivityDestroyed(Activity a) { mark("activity_destroy"); }
                });
                installed = true;
                lastWallMs = SystemClock.elapsedRealtime();
                lastCaptureMs = lastWallMs;
                lastCpuMs = android.os.Process.getElapsedCpuTime();
                writer.scheduleAtFixedRate(() -> flush(false), 10, 10, TimeUnit.SECONDS);
                writer.scheduleAtFixedRate(UiPerfDiag::probeMainThread, 250, 250, TimeUnit.MILLISECONDS);
                writer.execute(() -> append("{\"schema\":1,\"build\":\""+BUILD+"\",\"event\":\"session_start\",\"session\":"+session+",\"utc_ms\":"+System.currentTimeMillis()+",\"sdk\":"+Build.VERSION.SDK_INT+"}"));
            } catch (Throwable error) {
                Log.w(TAG, "init_failed type=" + error.getClass().getSimpleName());
            }
        }
    }

    private static void resume(Activity activity) {
        if (!installed) return;
        foreground = activity;
        visible = true;
        synchronized (LOCK) {
            screen = activity.getClass().getSimpleName().replaceAll("[^A-Za-z0-9_]", "");
            lifecycleEvents++;
        }
        if (Build.VERSION.SDK_INT >= 24) attachMetrics(activity.getWindow());
        mark("activity_resume");
    }

    private static void pause(Activity activity) {
        if (foreground != activity) return;
        mark("activity_pause");
        if (Build.VERSION.SDK_INT >= 24) detachMetrics();
        visible = false;
        foreground = null;
        // Persist the last foreground interval without waiting for a new active interval.
        if (writer != null) writer.execute(() -> flush(true));
    }

    @android.annotation.TargetApi(24)
    private static void attachMetrics(Window window) {
        if (window == null || metricsHandler == null) return;
        detachMetrics();
        try {
            metricsListener = (win, metrics, dropped) -> {
                if (!visible) return;
                long duration = metrics.getMetric(FrameMetrics.TOTAL_DURATION);
                if (duration <= 0 || duration > TimeUnit.SECONDS.toNanos(5)) return;
                long layout = metrics.getMetric(FrameMetrics.LAYOUT_MEASURE_DURATION);
                long draw = metrics.getMetric(FrameMetrics.DRAW_DURATION);
                long sync = metrics.getMetric(FrameMetrics.SYNC_DURATION);
                long command = metrics.getMetric(FrameMetrics.COMMAND_ISSUE_DURATION);
                long swap = metrics.getMetric(FrameMetrics.SWAP_BUFFERS_DURATION);
                synchronized (LOCK) {
                    frames++;
                    frameTotalNs += duration;
                    if (duration > frameMaxNs) {
                        frameMaxNs=duration;
                        worstLayoutNs=Math.max(0,layout);
                        worstDrawNs=Math.max(0,draw);
                        worstSyncNs=Math.max(0,sync);
                        worstCommandNs=Math.max(0,command);
                        worstSwapNs=Math.max(0,swap);
                    }
                    if(layout>=100_000_000L)layoutOver100++;
                    if(command>=100_000_000L)commandOver100++;
                    missed += Math.max(0, dropped);
                    if (duration > 24_000_000L) overBudget++;
                    if (duration > 32_000_000L) over32++;
                    if (duration > 50_000_000L) over50++;
                    if (duration > 100_000_000L) over100++;
                    if (duration > 200_000_000L) over200++;
                    layoutNs += Math.max(0, layout);
                    drawNs += Math.max(0, draw);
                    syncNs += Math.max(0, sync);
                    commandNs += Math.max(0, command);
                    if (layout > layoutMaxNs) layoutMaxNs = layout;
                    if (draw > drawMaxNs) drawMaxNs = draw;
                }
            };
            measuredWindow = window;
            window.addOnFrameMetricsAvailableListener(metricsListener, metricsHandler);
        } catch (Throwable error) {
            measuredWindow = null;
            metricsListener = null;
            Log.w(TAG, "frame_metrics_unavailable type=" + error.getClass().getSimpleName());
        }
    }

    @android.annotation.TargetApi(24)
    private static void detachMetrics() {
        Window w = measuredWindow;
        Window.OnFrameMetricsAvailableListener l = metricsListener;
        measuredWindow = null;
        metricsListener = null;
        if (w != null && l != null) {
            try { w.removeOnFrameMetricsAvailableListener(l); }
            catch (Throwable ignored) {}
        }
    }

    /** Calls from UI scroll listeners: counters only, no per-scroll strings or file IO. */
    public static void scroll(int area, int delta) {
        if (!installed || !visible || delta == 0) return;
        long magnitude = Math.abs((long) delta);
        synchronized (LOCK) {
            if (area == 1) { homeScrollEvents++; homeScrollAbs += magnitude; }
            else if (area == 2) { horizontalScrollEvents++; horizontalScrollAbs += magnitude; }
            else if (area == 3) { verticalScrollEvents++; verticalScrollAbs += magnitude; }
        }
    }

    public static void mark(String event) {
        if (!installed || event == null) return;
        final Snapshot finished;
        synchronized (LOCK) {
            String next=null;
            if ("home_visible".equals(event) || "home_view_created".equals(event) || "home_inflate_begin".equals(event)) next="home";
            else if ("detail_visible".equals(event) || "detail_view_created".equals(event) || "detail_inflate_begin".equals(event)) next="details";
            else if ("search_visible".equals(event) || "search_view_created".equals(event)) next="search";
            else if ("categories_view_created".equals(event)) next="categories";
            else if ("profile_visible".equals(event) || "profile_view_created".equals(event)) next="profile";
            else if ("franchises_view_created".equals(event)) next="franchises";
            else if ("home_destroy_view".equals(event) || "detail_destroy_view".equals(event)) next="transition";
            if (next!=null && !next.equals(screen)) {
                finished=captureLocked(SystemClock.elapsedRealtime());
                screen=next;
            } else finished=null;
            lifecycleEvents++;
            if ("pagination".equals(event)) pageEnds++;
        }
        if (finished!=null && finished.hasData() && writer!=null)
            writer.execute(()->writeSample(finished,0));
        if (writer!=null &&
            ("home_visible".equals(event) || "detail_visible".equals(event) ||
             "home_view_created".equals(event) || "detail_view_created".equals(event) ||
             "home_inflate_begin".equals(event) || "detail_inflate_begin".equals(event) ||
             "search_visible".equals(event) || "search_view_created".equals(event) ||
             "categories_view_created".equals(event) || "profile_visible".equals(event) ||
             "profile_view_created".equals(event) || "franchises_view_created".equals(event) ||
             "home_destroy_view".equals(event) || "detail_destroy_view".equals(event) ||
             event.startsWith("activity_"))) {
            final long timestamp=System.currentTimeMillis();
            final String safeEvent=event;
            writer.execute(()->append("{\"schema\":1,\"build\":\""+BUILD+"\",\"session\":"+session+
                ",\"utc_ms\":"+timestamp+",\"event\":\""+safeEvent+"\"}"));
        }
    }

    public static long begin() { return installed ? SystemClock.elapsedRealtimeNanos() : 0L; }

    /** Home resume refresh may perform synchronous disk access and full list rebinds. */
    public static void homeRefresh(long started) {
        if (!installed || started <= 0) return;
        long ns = Math.max(0, SystemClock.elapsedRealtimeNanos()-started);
        synchronized (LOCK) {
            homeRefreshCount++; homeRefreshNs += ns;
            if (ns>homeRefreshMaxNs) homeRefreshMaxNs=ns;
        }
    }

    /** Measures home RecyclerView setup separately from resume refresh. */
    public static void homeSetup(long started) {
        if (!installed || started <= 0) return;
        long ns = Math.max(0, SystemClock.elapsedRealtimeNanos()-started);
        synchronized (LOCK) {
            homeSetupCount++; homeSetupNs += ns;
            if (ns>homeSetupMaxNs) homeSetupMaxNs=ns;
        }
    }


    /** Wall time of the fragment's DataBinding inflate, not its first GPU-presented frame. */
    public static void inflate(int area, long startedNanos) {
        if (!installed || startedNanos <= 0) return;
        long ns=Math.max(0,SystemClock.elapsedRealtimeNanos()-startedNanos);
        synchronized (LOCK) {
            if (area == 1) {
                homeInflateCount++; homeInflateNs+=ns;
                if (ns > homeInflateMaxNs) homeInflateMaxNs=ns;
            } else if (area == 2) {
                detailInflateCount++; detailInflateNs+=ns;
                if (ns > detailInflateMaxNs) detailInflateMaxNs=ns;
            }
        }
    }

    /** Measures parent RecyclerView section binding, separate from frame layout/measure. */
    /** Measures ThemeEngine.apply without altering its behavior. */
    public static void themeApply(long startedNanos) {
        if(!installed||startedNanos<=0)return;
        long ns=Math.max(0,SystemClock.elapsedRealtimeNanos()-startedNanos);
        synchronized(LOCK){themeApplyCount++;if(ns>themeApplyMaxNs)themeApplyMaxNs=ns;}
    }

    public static void homeRowBind(int type, long startedNanos) {
        if (!installed || startedNanos<=0 || type<0 || type>=5) return;
        long ns=Math.max(0,SystemClock.elapsedRealtimeNanos()-startedNanos);
        synchronized(LOCK) {
            rowBindCount[type]++;
            if(ns>rowBindMaxNs[type]) rowBindMaxNs[type]=ns;
        }
    }

    /** Measures inflation of one parent home section by its layout enum. */
    public static void homeRowCreate(int type, long startedNanos) {
        if (!installed || startedNanos<=0 || type<0 || type>=5) return;
        long ns=Math.max(0,SystemClock.elapsedRealtimeNanos()-startedNanos);
        synchronized(LOCK) {
            rowCreateCount[type]++;
            if(ns>rowCreateMaxNs[type]) rowCreateMaxNs[type]=ns;
        }
    }

    public static void diff(long startedNanos) {
        if (!installed || startedNanos <= 0) return;
        long ns = Math.max(0L, SystemClock.elapsedRealtimeNanos() - startedNanos);
        synchronized (LOCK) {
            diffCount++;
            diffTotalNs += ns;
            if (ns > diffMaxNs) diffMaxNs = ns;
            if (ns >= 16_000_000L) diffOver16++;
            if (ns >= 32_000_000L) diffOver32++;
        }
    }

    public static void skippedDiff() {
        if (!installed) return;
        synchronized (LOCK) { diffSkipped++; }
    }

    /** Only aggregate counters for detail poster requests; never log image URLs or IDs. */
    public static void poster(int phase) {
        if (!installed) return;
        synchronized (LOCK) {
            if (phase == 1) posterStarted++;
            else if (phase == 2) posterReady++;
            else if (phase == 3) posterFailed++;
            else if (phase == 4) posterFallback++;
        }
    }

    private static void flush(boolean force) {
        if (!installed) return;
        try {
            long now=SystemClock.elapsedRealtime();
            if (!force && now-lastFlushMs<7000) return;
            lastFlushMs=now;
            long cpuNow=android.os.Process.getElapsedCpuTime();
            long cpuDelta=Math.max(0,cpuNow-lastCpuMs);
            lastCpuMs=cpuNow;
            lastWallMs=now;
            final Snapshot snap;
            synchronized(LOCK) { snap=captureLocked(now); }
            if (snap.hasData()) writeSample(snap,cpuDelta);
        } catch(Throwable error) {
            Log.w(TAG,"flush_failed type="+error.getClass().getSimpleName());
        }
    }

    private static void writeSample(Snapshot snap, long cpuDelta) {
        try {
            long[] v=snap.v;
            String snapshot=String.format(Locale.US,
                "{\"schema\":1,\"build\":\"%s\",\"session\":%d,\"utc_ms\":%d,\"elapsed_ms\":%d,\"visible\":%b,\"screen\":\"%s\",\"window_ms\":%d,\"frames\":%d,\"frame_avg_ms\":%.2f,\"frame_max_ms\":%.2f,\"over_24ms\":%d,\"over_32ms\":%d,\"over_50ms\":%d,\"over_100ms\":%d,\"over_200ms\":%d,\"dropped_reported\":%d,\"layout_sum_ms\":%.1f,\"draw_sum_ms\":%.1f,\"sync_sum_ms\":%.1f,\"command_sum_ms\":%.1f,\"scroll_home\":%d,\"scroll_home_px\":%d,\"scroll_horizontal\":%d,\"scroll_horizontal_px\":%d,\"scroll_vertical\":%d,\"scroll_vertical_px\":%d,\"diff_count\":%d,\"diff_avg_ms\":%.2f,\"diff_max_ms\":%.2f,\"diff_over_16\":%d,\"diff_over_32\":%d,\"diff_skipped\":%d,\"pagination\":%d,\"lifecycle\":%d,\"poster_start\":%d,\"poster_success\":%d,\"poster_failed\":%d,\"poster_fallback\":%d,\"main_probes\":%d,\"main_over_50ms\":%d,\"main_over_100ms\":%d,\"main_over_250ms\":%d,\"main_max_ms\":%.2f,\"home_refresh_count\":%d,\"home_refresh_avg_ms\":%.2f,\"home_refresh_max_ms\":%.2f,\"home_setup_count\":%d,\"home_setup_avg_ms\":%.2f,\"home_setup_max_ms\":%.2f,\"home_inflate_count\":%d,\"home_inflate_avg_ms\":%.2f,\"home_inflate_max_ms\":%.2f,\"detail_inflate_count\":%d,\"detail_inflate_avg_ms\":%.2f,\"detail_inflate_max_ms\":%.2f,\"layout_max_ms\":%.2f,\"draw_max_ms\":%.2f,\"process_cpu_ms\":%d,\"java_heap_used_kb\":%d,\"native_heap_used_kb\":%d,\"threads_approx\":%d}",
                BUILD,session,snap.timestamp,snap.elapsedMs,snap.foreground,snap.screen,snap.durationMs,
                v[0],v[0]==0?0.0:v[1]/1e6/v[0],v[2]/1e6,v[4],v[5],v[6],v[7],v[8],v[3],
                v[9]/1e6,v[10]/1e6,v[11]/1e6,v[12]/1e6,
                v[13],v[14],v[15],v[16],v[17],v[18],
                v[19],v[19]==0?0.0:v[20]/1e6/v[19],v[21]/1e6,v[22],v[23],v[24],
                v[25],v[26],v[27],v[28],v[29],v[30],
                v[31],v[32],v[33],v[34],v[35]/1e6,
                v[36],v[36]==0?0.0:v[37]/1e6/v[36],v[38]/1e6,
                v[39],v[39]==0?0.0:v[40]/1e6/v[39],v[41]/1e6,
                v[42],v[42]==0?0.0:v[43]/1e6/v[42],v[44]/1e6,
                v[45],v[45]==0?0.0:v[46]/1e6/v[45],v[47]/1e6,
                v[48]/1e6,v[49]/1e6,cpuDelta,
                (Runtime.getRuntime().totalMemory()-Runtime.getRuntime().freeMemory())/1024,
                Debug.getNativeHeapAllocatedSize()/1024,Thread.activeCount());
            StringBuilder extended=new StringBuilder(snapshot.substring(0,snapshot.length()-1));
            for(int t=0;t<5;t++) {
                int off=50+4*t;
                extended.append(",\"row_").append(t).append("_bind_count\":").append(v[off]);
                extended.append(",\"row_").append(t).append("_bind_max_ms\":").append(String.format(Locale.US,"%.2f",v[off+1]/1e6));
                extended.append(",\"row_").append(t).append("_create_count\":").append(v[off+2]);
                extended.append(",\"row_").append(t).append("_create_max_ms\":").append(String.format(Locale.US,"%.2f",v[off+3]/1e6));
            }
            extended.append(",\"worst_frame_layout_ms\":").append(String.format(Locale.US,"%.2f",v[70]/1e6));
            extended.append(",\"worst_frame_draw_ms\":").append(String.format(Locale.US,"%.2f",v[71]/1e6));
            extended.append(",\"worst_frame_sync_ms\":").append(String.format(Locale.US,"%.2f",v[72]/1e6));
            extended.append(",\"worst_frame_command_ms\":").append(String.format(Locale.US,"%.2f",v[73]/1e6));
            extended.append(",\"worst_frame_swap_ms\":").append(String.format(Locale.US,"%.2f",v[74]/1e6));
            extended.append(",\"layout_over_100ms\":").append(String.format(Locale.US,"%d",v[75]));
            extended.append(",\"command_over_100ms\":").append(String.format(Locale.US,"%d",v[76]));
            extended.append(",\"theme_apply_count\":").append(String.format(Locale.US,"%d",v[77]));
            extended.append(",\"theme_apply_max_ms\":").append(String.format(Locale.US,"%.2f",v[78]/1e6));
            extended.append(",\"main_stack_view\":").append(v[79]);
            extended.append(",\"main_stack_image\":").append(v[80]);
            extended.append(",\"main_stack_theme\":").append(v[81]);
            extended.append(",\"main_stack_io\":").append(v[82]);
            extended.append(",\"main_stack_app\":").append(v[83]);
            extended.append(",\"main_stack_system\":").append(v[84]);
            extended.append(",\"main_stack_unknown\":").append(v[85]);
            append(extended.append('}').toString());
        } catch(Throwable error) {
            Log.w(TAG,"format_failed type="+error.getClass().getSimpleName());
        }
    }

    private static void append(String line) {
        File destination = null;
        try {
            File shared = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log");
            if ((shared.isDirectory() || shared.mkdirs()) && shared.canWrite()) destination = shared;
        } catch (Throwable ignored) {}
        if (destination == null && application != null) {
            destination = new File(application.getFilesDir(), "log");
            destination.mkdirs();
        }
        if (destination == null) return;
        try {
            File log = new File(destination, "ui_performance.jsonl");
            if (log.length() >= LOG_LIMIT_BYTES) {
                File old = new File(destination, "ui_performance.previous.jsonl");
                if (old.exists()) old.delete();
                if (!log.renameTo(old)) log.delete();
            }
            try (FileOutputStream out = new FileOutputStream(log, true)) {
                out.write((line + "\n").getBytes(StandardCharsets.UTF_8));
            }
            // Logcat provides a backup if shared storage is inaccessible; numeric summaries only.
            Log.i(TAG, line);
        } catch (Throwable error) {
            Log.w(TAG, "write_failed type=" + error.getClass().getSimpleName());
            Log.i(TAG, line);
        }
    }
}
