package com.shabakaty.cinemana.local;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * PATCH308: opt-in read-only CPU attribution via this app's own /proc/self/task.
 * Runs only on LoadDiag307's background executor once per 30 seconds.
 * All outputs are numeric and allowlisted generic thread groups, never raw names.
 * Reads at most 256 tasks and under 1 KiB per stat file. No stack tracing.
 */
public final class ThreadCpuDiag308 {
    private static final int MAX_TASKS = 256;
    private static final Map<Integer, Entry> previous = new HashMap<>();
    private static boolean lastSupported;
    private static int elapsedSamples;

    private static final class Entry {
        final long ticks;
        final long started;
        final String type;
        Entry(long ticks, long started, String type) {
            this.ticks = ticks; this.started = started; this.type = type;
        }
    }

    private static final class Sample {
        final int id;
        final long ticks;
        final String type;
        Sample(int id, long ticks, String type) {
            this.id=id; this.ticks=ticks; this.type=type;
        }
    }

    private ThreadCpuDiag308() {}

    private static String group(String raw) {
        // Names are NOT logged. Categorize strictly by known thread prefixes.
        if (raw.equals("main")) return "main";
        if (raw.startsWith("RenderThread") || raw.startsWith("hwuiTask")) return "render";
        if (raw.startsWith("Binder:") || raw.startsWith("binder:")) return "binder";
        if (raw.startsWith("GC") || raw.startsWith("Heap") ||
            raw.startsWith("Finalizer") || raw.startsWith("ReferenceQueue")) return "gc";
        if (raw.startsWith("Jit") || raw.startsWith("Compiler")) return "jit";
        if (raw.startsWith("pool-") || raw.startsWith("Thread-")) return "pool";
        if (raw.startsWith("DefaultDispatch") || raw.startsWith("Rx") ||
            raw.startsWith("Coroutine")) return "async";
        if (raw.startsWith("OkHttp") || raw.startsWith("Fresco") ||
            raw.startsWith("Image") || raw.startsWith("Picasso")) return "image_network";
        if (raw.startsWith("restart") || raw.startsWith("cinemana-") ||
            raw.startsWith("mkv") || raw.startsWith("Mkv")) return "cinemana_worker";
        if (raw.startsWith("Download") || raw.startsWith("FileDownload")) return "download";
        if (raw.startsWith("ExoPlayer") || raw.startsWith("Media") ||
            raw.startsWith("Audio") || raw.startsWith("GLThread")) return "media";
        if (raw.startsWith("Firebase") || raw.startsWith("WorkManager") ||
            raw.startsWith("WM.")) return "sdk_worker";
        return "other";
    }

    private static Entry readStat(int tid) {
        String path = "/proc/self/task/" + tid + "/stat";
        try (BufferedReader input=new BufferedReader(
                new InputStreamReader(new FileInputStream(path),StandardCharsets.US_ASCII))) {
            String line=input.readLine();
            if (line==null || line.length()>1024) return null;
            int left=line.indexOf('('), right=line.lastIndexOf(')');
            if (left<0 || right<=left || right+2>=line.length()) return null;
            // Android names its main thread after the app; TID equals process PID.
            String type=tid==android.os.Process.myPid()?"main":group(line.substring(left+1,right));
            String[] fields=line.substring(right+2).trim().split(" +");
            // fields[0] = /proc stat field #3 (state).
            if (fields.length<20) return null;
            long user=Long.parseLong(fields[11]), system=Long.parseLong(fields[12]);
            long started=Long.parseLong(fields[19]);
            return new Entry(user+system, started, type);
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** Returns null in alternate 15-second windows (no /proc work). */
    public static JSONObject sample() {
        if ((++elapsedSamples & 1)!=0) return null;
        try {
            File folder=new File("/proc/self/task");
            File[] tasks=folder.listFiles();
            JSONObject report=new JSONObject();
            report.put("unit","linux_cpu_ticks");
            report.put("interval","30s_nominal");
            if (tasks==null) {
                report.put("available",false);
                return report;
            }
            Map<Integer,Entry> now=new HashMap<>();
            ArrayList<Sample> changes=new ArrayList<>();
            int visited=0, readable=0, sampled=0;
            for (File file:tasks) {
                if (++visited>MAX_TASKS) break;
                final int tid;
                try { tid=Integer.parseInt(file.getName()); }
                catch (NumberFormatException e) { continue; }
                Entry entry=readStat(tid);
                if (entry==null) continue;
                readable++;
                now.put(tid,entry);
                Entry older=previous.get(tid);
                if (older!=null && older.started==entry.started) {
                    sampled++;
                    changes.add(new Sample(tid,Math.max(0,entry.ticks-older.ticks),entry.type));
                }
            }
            report.put("available",readable>0);
            report.put("tasks_seen",tasks.length);
            report.put("tasks_read",readable);
            report.put("tasks_compared",sampled);
            report.put("tasks_capped",tasks.length>MAX_TASKS);
            changes.sort(Comparator.comparingLong((Sample x)->x.ticks).reversed());
            JSONArray top=new JSONArray();
            long sum=0;
            for(int i=0;i<changes.size();i++) {
                Sample sample=changes.get(i);
                sum+=sample.ticks;
                if(i>=6)continue;
                JSONObject item=new JSONObject();
                item.put("tid",sample.id);
                item.put("group",sample.type);
                item.put("cpu_ticks_delta",sample.ticks);
                top.put(item);
            }
            report.put("total_compared_cpu_ticks_delta",sum);
            report.put("top",top);
            previous.clear();
            previous.putAll(now);
            lastSupported=readable>0;
            return report;
        } catch (Throwable ignored) {
            JSONObject failure=new JSONObject();
            try { failure.put("available",false); }
            catch (Throwable ignoredAgain) {}
            return failure;
        }
    }
}
