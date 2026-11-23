package cpdl.artprobe;

import android.app.Activity;
import android.app.Dialog;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.widget.Button;
import dalvik.system.DexClassLoader;
import java.io.*;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicReference;

/** Isolated, offline test of the exact signed release APK's classes.
 * No target app install/start, account, server or download. */
public final class Probe extends Instrumentation {
    public static final class ScreenActivity extends Activity {}
    public static final class Item {
        public final String kind = "series", enTitle = "CP-DL synthetic fixture";
    }
    public static final class Vm {
        public final Cache v = new Cache();
    }
    public static final class Cache {
        public List<Object> a() { return Collections.emptyList(); }
    }
    interface Checked { void run() throws Throwable; }
    @Override public void onCreate(Bundle args) {
        super.onCreate(args);
        start();
    }
    private void main(Checked action) throws Throwable {
        AtomicReference<Throwable> failure = new AtomicReference<>();
        runOnMainSync(() -> {
            try { action.run(); } catch (Throwable t) { failure.set(t); }
        });
        if (failure.get() != null) throw failure.get();
    }
    private static void require(boolean ok, String msg) {
        if (!ok) throw new AssertionError(msg);
    }
    /**
     * R2 separate Java worker loaded from the EXACT signed diagnostic APK.
     * This never observes actual Room rows, accounts, or network transfers.
     */
    private static void verifyCompositeShadowWorker(ClassLoader cl) throws Throwable {
        Class<?> type = Class.forName("com.shabakaty.cinemana.local.RustShadowEventWorker", true, cl);
        require(type.getClassLoader() == cl, "R2 worker class loader");
        Object worker = type.getDeclaredConstructor().newInstance();
        Method audit = type.getMethod("audit", int[].class, String[].class, long[].class, int[].class);
        Method block = type.getMethod("diagnosticBlock", CountDownLatch.class, CountDownLatch.class);
        Method rejectedCount = type.getMethod("rejectedCount");
        Method close = type.getMethod("close");
        int[] ids = new int[500], roles = new int[500];
        String[] external = new String[500];
        long[] gen = new long[500];
        for (int i = 0; i < 300; i++) {
            ids[i] = i + 1;
            external[i] = "synthetic-external-" + ids[i];
            gen[i] = 5;
            roles[i] = 0;
        }
        for (int i = 300; i < 400; i++) {
            ids[i] = i - 299;
            external[i] = "synthetic-external-" + ids[i];
            gen[i] = 5;
            roles[i] = 1;
        }
        for (int i = 400; i < 450; i++) {
            ids[i] = i - 299;
            external[i] = "synthetic-external-" + ids[i];
            gen[i] = 5;
            roles[i] = 0;
        }
        for (int i = 450; i < 500; i++) {
            ids[i] = i - 299;
            external[i] = "synthetic-external-" + ids[i];
            gen[i] = 4;
            roles[i] = 0;
        }
        long expected = (300L << 48) | (100L << 36) | (50L << 24) | (50L << 12);
        try {
            @SuppressWarnings("unchecked")
            Future<Long> first = (Future<Long>) audit.invoke(worker, ids, external, gen, roles);
            require(first.get(20, TimeUnit.SECONDS).longValue() == expected,
                    "R2 composite cross-process counts mismatch");
            @SuppressWarnings("unchecked")
            Future<Long> again = (Future<Long>) audit.invoke(worker, ids, external, gen, roles);
            require(again.get(20, TimeUnit.SECONDS).longValue() == expected,
                    "R2 composite must remain observational and stateless");

            // Invalid URL-looking external ID must not be accepted as a task key.
            @SuppressWarnings("unchecked")
            Future<Long> invalid = (Future<Long>) audit.invoke(
                    worker, new int[]{1}, new String[]{"https://invalid.example/token"},
                    new long[]{5}, new int[]{0});
            try {
                invalid.get(20, TimeUnit.SECONDS);
                throw new AssertionError("R2 URL-looking external ID was accepted");
            } catch (ExecutionException correctlyRejected) {
                require(correctlyRejected.getCause() instanceof IllegalArgumentException,
                        "R2 composite validation must surface an IllegalArgumentException");
            }
            // One worker deliberately blocked, 16 pending requests, 17th rejected.
            CountDownLatch entered = new CountDownLatch(1);
            CountDownLatch release = new CountDownLatch(1);
            Future<?> barrier = (Future<?>) block.invoke(worker, entered, release);
            try {
                require(entered.await(10, TimeUnit.SECONDS), "R2 worker did not block");
                List<Future<?>> pending = new ArrayList<>();
                for (int i = 0; i < 16; i++) {
                    pending.add((Future<?>) audit.invoke(worker, ids, external, gen, roles));
                }
                try {
                    audit.invoke(worker, ids, external, gen, roles);
                    throw new AssertionError("R2 queue overload was silently accepted");
                } catch (InvocationTargetException correctlyRejected) {
                    require(correctlyRejected.getCause() instanceof RejectedExecutionException,
                            "R2 overload must be visible to the caller");
                }
                require(((Number) rejectedCount.invoke(worker)).longValue() == 1,
                        "R2 queue did not count rejected shadow observations");
                // The pending queue must own snapshots; mutating inputs after
                // submit must not change the JNI event batch.
                ids[0] = 0;
                external[0] = "https://invalid.example/modified";
                release.countDown();
                barrier.get(20, TimeUnit.SECONDS);
                for (Future<?> future : pending) {
                    require(((Long) future.get(20, TimeUnit.SECONDS)).longValue() == expected,
                            "R2 queued observation mutated after submit");
                }
            } finally {
                release.countDown();
            }
        } finally {
            close.invoke(worker);
        }
    }

    private static Field field(Class<?> c, String name) throws Exception {
        Field f = c.getDeclaredField(name); f.setAccessible(true); return f;
    }
    private static Method method(Class<?> c, String name) throws Exception {
        Method m = c.getDeclaredMethod(name); m.setAccessible(true); return m;
    }
    private void awaitRefresh(Object screen, Field posted) throws Throwable {
        long until = SystemClock.uptimeMillis() + 5000;
        while (SystemClock.uptimeMillis() < until) {
            final boolean[] pending = new boolean[1];
            main(() -> pending[0] = posted.getBoolean(screen));
            if (!pending[0]) return;
            SystemClock.sleep(100);
        }
        throw new AssertionError("refresh callback did not complete");
    }
    @Override public void onStart() {
        Bundle result = new Bundle();
        try {
            Context ctx = getTargetContext();
            File apk = new File(ctx.getCodeCacheDir(), "candidate.apk");
            if (apk.exists() && !apk.delete()) throw new IOException("stale candidate");
            try (InputStream in = ctx.getAssets().open("candidate.apk");
                 FileOutputStream out = new FileOutputStream(apk)) {
                // Android 14+ requires dynamically loaded DEX files to be read-only.
                require(apk.setReadOnly(), "candidate must be read-only");
                byte[] buf = new byte[65536]; int n;
                while ((n = in.read(buf)) != -1) out.write(buf, 0, n);
            }
            boolean rustAbiTest = false;
            try (InputStream input = ctx.getAssets().open("rust_abi_enabled.txt")) {
                rustAbiTest = input.read() >= 0;
            } catch (FileNotFoundException expected) {
                // Existing CP-DL test does not enable the new JNI check.
            }
            File nativeDir = new File(ctx.getCodeCacheDir(), "rust-native");
            if (rustAbiTest) {
                require(nativeDir.isDirectory() || nativeDir.mkdirs(), "cannot create native dir");
                String entryName = "lib/" + android.os.Build.SUPPORTED_ABIS[0] + "/libcp_rust_core.so";
                try (java.util.zip.ZipFile zip = new java.util.zip.ZipFile(apk)) {
                    java.util.zip.ZipEntry entry = zip.getEntry(entryName);
                    require(entry != null && entry.getSize() > 0, "no native entry in signed candidate: " + entryName);
                    File nativeLibrary = new File(nativeDir, "libcp_rust_core.so");
                    try (InputStream in = zip.getInputStream(entry);
                         FileOutputStream out = new FileOutputStream(nativeLibrary, false)) {
                        byte[] buf = new byte[65536]; int n;
                        while ((n = in.read(buf)) != -1) out.write(buf, 0, n);
                    }
                    require(nativeLibrary.isFile() && nativeLibrary.length() == entry.getSize(),
                            "copied signed candidate library size mismatch");
                }
            }
            ClassLoader cl = new DexClassLoader(apk.getPath(), ctx.getCodeCacheDir().getPath(),
                    rustAbiTest ? nativeDir.getPath() : null, ctx.getClassLoader());
            if (rustAbiTest) {
                Class<?> rustProbe = Class.forName("com.shabakaty.cinemana.local.RustAbiProbe", true, cl);
                require(rustProbe.getClassLoader() == cl, "RustAbiProbe wrong classloader");
                Object version = rustProbe.getMethod("version").invoke(null);
                require(version instanceof Integer && ((Integer) version).intValue() == 1,
                        "Rust JNI ABI version mismatch");
                verifyCompositeShadowWorker(cl);
                // R2 is an observational JNI probe with SYNTHETIC IDs only.
                // It does not consult the user's Room DB or enqueue anything.
                Method shadow = rustProbe.getMethod("shadowAudit", int[].class, int[].class);
                int[] synthetic500 = new int[500];
                for (int i = 0; i < 400; i++) synthetic500[i] = i + 1;
                for (int i = 400; i < 500; i++) synthetic500[i] = i - 399;
                int[] known200 = new int[200];
                for (int i = 0; i < 200; i++) known200[i] = i + 1;
                long expected = (200L << 40) | (200L << 20) | 100L;
                long observed = ((Long) shadow.invoke(null, synthetic500, known200)).longValue();
                require(observed == expected, "R2 shadow 500 selected counts mismatch");
                require(((Long) shadow.invoke(null, synthetic500, known200)).longValue() == expected,
                        "R2 shadow second call must be stateless");
                require(((Long) shadow.invoke(null, new int[0], new int[0])).longValue() == 0,
                        "R2 empty shadow counts mismatch");
                try {
                    shadow.invoke(null, new int[]{0}, new int[0]);
                    throw new AssertionError("R2 invalid synthetic ID was accepted");
                } catch (InvocationTargetException expectedException) {
                    require(expectedException.getCause() instanceof IllegalArgumentException,
                            "R2 invalid ID must fail with IllegalArgumentException");
                }
                try {
                    shadow.invoke(null, new int[1001], new int[0]);
                    throw new AssertionError("R2 oversized synthetic batch was accepted");
                } catch (InvocationTargetException expectedException) {
                    require(expectedException.getCause() instanceof IllegalArgumentException,
                            "R2 oversized batch must be rejected before copying");
                }

            }
            int classes = 0;
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(ctx.getAssets().open("family.txt")))) {
                String name;
                while ((name = reader.readLine()) != null) {
                    Class<?> c = Class.forName(name, false, cl);
                    require(c.getClassLoader() == cl, "wrong class loader: " + name);
                    c.getDeclaredMethods();
                    c.getDeclaredConstructors();
                    classes++;
                }
            }
            require(classes >= 20, "incomplete BatchDownload inventory");
            // Verify the changed backend classes in the exact signed candidate DEX.
            for (String name : new String[]{
                "com.shabakaty.cinemana.features.MkvExporter",
                "com.shabakaty.cinemana.features.MkvReconciler",
                "com.shabakaty.cinemana.features.MkvReconciler$Token",
                "com.shabakaty.cinemana.ca1.Lease115",
                "com.shabakaty.cinemana.local.MuxSlotsDL",
                "com.shabakaty.cinemana.local.TokenWorkDL"
            }) {
                Class<?> checked=Class.forName(name,false,cl);
                require(checked.getClassLoader()==cl,"wrong backend loader "+name);
                checked.getDeclaredMethods(); checked.getDeclaredConstructors();
            }
            Class<?> slots=Class.forName("com.shabakaty.cinemana.local.MuxSlotsDL",true,cl);
            Method take=slots.getMethod("acquire",File.class), give=slots.getMethod("release");
            File slotDir=new File(ctx.getFilesDir(),"synthetic-slots");
            take.invoke(null,slotDir);
            give.invoke(null);
            take.invoke(null,slotDir);
            give.invoke(null);
            Class<?> leases=Class.forName("com.shabakaty.cinemana.ca1.Lease115",true,cl);
            Method claim=leases.getDeclaredMethod("acquire",File.class,String.class);
            claim.setAccessible(true);
            File leaseDir=new File(ctx.getFilesDir(),"synthetic-source-leases");
            Object first=claim.invoke(null,leaseDir,"synthetic.mp4");
            require(first!=null,"initial source lease missing");
            Method closeLease=first.getClass().getDeclaredMethod("close");
            closeLease.setAccessible(true);
            try {
                require(claim.invoke(null,leaseDir,"synthetic.mp4")==null,"duplicate source lease accepted");
                Object second=claim.invoke(null,leaseDir,"different.mp4");
                require(second!=null,"distinct source lease rejected");
                closeLease.invoke(second);
            } finally { closeLease.invoke(first); }
            Object again=claim.invoke(null,leaseDir,"synthetic.mp4");
            require(again!=null,"source lease did not recycle"); closeLease.invoke(again);
            Class<?> c = Class.forName("com.shabakaty.cinemana.ca1.BatchDownload$Screen", true, cl);
            Constructor<?> ctor = c.getDeclaredConstructor(Object.class,Object.class,Object.class,Object.class,Context.class);
            ctor.setAccessible(true);
            Field posted = field(c,"refreshPosted"), busy = field(c,"busy"), closed = field(c,"closed");
            Method show = method(c,"show"), refresh = method(c,"laterRefresh");
            Intent launch = new Intent(ctx, ScreenActivity.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            Activity activity = startActivitySync(launch);
            try {
                for (int attempt = 0; attempt < 2; attempt++) {
                    final Object[] holder = new Object[1];
                    main(() -> {
                        Object s = ctor.newInstance(new Object(),new Vm(),new Object(),new Item(),activity);
                        holder[0] = s;
                        show.invoke(s);
                        Dialog d = (Dialog)field(c,"dialog").get(s);
                        require(d.isShowing(), "batch dialog not visible");
                        for (String name : new String[]{"start","closeButton","allButton","qualityButton","failedButton"}) {
                            Button b = (Button)field(c,name).get(s);
                            require(b != null && b.hasOnClickListeners(), "missing button callback: "+name);
                        }
                    });
                    Object s = holder[0];
                    try {
                        awaitRefresh(s,posted);
                        for (boolean active : new boolean[]{false,true}) {
                            main(() -> {
                                busy.setBoolean(s,active);
                                refresh.invoke(s);
                                require(posted.getBoolean(s),"refresh not scheduled: busy="+active);
                            });
                            awaitRefresh(s,posted);
                        }
                    } finally {
                        main(() -> {
                            busy.setBoolean(s,false);
                            Button close = (Button)field(c,"closeButton").get(s);
                            require(close.performClick(),"close callback missing");
                            require(!((Dialog)field(c,"dialog").get(s)).isShowing(),"dialog did not close");
                        });
                        waitForIdleSync();
                        main(() -> require(closed.getBoolean(s),"screen close lifecycle incomplete"));
                    }
                }
            } finally { main(activity::finish); }
            result.putString("stream","\nCPDL_ART_PASS family="+classes+" opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1\n");
            if (rustAbiTest) {
                result.putString("stream", result.getString("stream") + "CPRUST_R1_JNI_PASS abi=1\n");
                result.putString("stream", result.getString("stream")
                        + "CPRUST_R2_SHADOW_PASS selected=500 new=200 existing=200 duplicates=100 invalid_rejected=1 oversized_rejected=1\n");
                result.putString("stream", result.getString("stream")
                        + "CPRUST_R2_EVENTS_PASS selected=500 first=300 mirrored=100 repeated=50 stale=50 advanced=0 async=1 saturated=1 invalid_rejected=1\n");
            }
            finish(Activity.RESULT_OK,result);
        } catch (Throwable t) {
            StringWriter trace = new StringWriter(); t.printStackTrace(new PrintWriter(trace));
            result.putString("stream","\nCPDL_ART_FAIL\n"+trace+"\n");
            finish(Activity.RESULT_CANCELED,result);
        }
    }
}
