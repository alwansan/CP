package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import androidx.recyclerview.widget.RecyclerView;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class Remote98 {
    static final ThreadPoolExecutor network = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Remote98$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Remote98.lambda$static$0(runnable);
        }
    }, new ThreadPoolExecutor.AbortPolicy());

    static void put(Object obj, String str, Object obj2) throws Exception {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    static void event(Object obj, String str, String str2) {
        try {
            Native98.event((Context) R94.get(obj, "c"), str, str2);
        } catch (Exception e) {
        }
    }

    static String agent(Object obj) {
        try {
            String str = R94.str(R94.get(R94.get(R94.call(R94.get(obj, "view"), "getViewModel", new Object[0]), "h"), "a"), "c");
            if (!str.isEmpty()) {
                return str;
            }
        } catch (Exception e) {
        }
        return System.getProperty("http.agent", "Cinemana");
    }

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "CA1-preview-network98");
        thread.setDaemon(true);
        return thread;
    }

    public static Bitmap frame(Object obj, final String str, final long j) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        Future futureSubmit = null;
        try {
            final String strAgent = agent(obj);
            futureSubmit = network.submit(new Callable() { // from class: com.shabakaty.cinemana.ca1.Remote98$$ExternalSyntheticLambda2
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return Remote98.lambda$frame$1(strAgent, str, j, atomicBoolean);
                }
            });
            Bitmap bitmap = (Bitmap) futureSubmit.get(4L, TimeUnit.SECONDS);
            if (bitmap != null) {
                return bitmap;
            }
        } catch (Throwable th) {
            atomicBoolean.set(true);
            if (futureSubmit != null) {
                futureSubmit.cancel(true);
            }
            event(obj, "preview_remote_reader", th.getClass().getSimpleName());
        }
        return ffmpeg(obj, str, j);
    }

    static /* synthetic */ Bitmap lambda$frame$1(String str, String str2, long j, AtomicBoolean atomicBoolean) throws Exception {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", str);
            mediaMetadataRetriever.setDataSource(str2, map);
            Bitmap scaledFrameAtTime = Build.VERSION.SDK_INT >= 27 ? mediaMetadataRetriever.getScaledFrameAtTime((j / 1000) * 1000000, 3, 240, 135) : mediaMetadataRetriever.getFrameAtTime((j / 1000) * 1000000, 3);
            if (atomicBoolean.get() && scaledFrameAtTime != null) {
                scaledFrameAtTime.recycle();
                scaledFrameAtTime = null;
            }
            return scaledFrameAtTime;
        } finally {
            try {
                mediaMetadataRetriever.release();
            } catch (Exception e) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x01eb A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:91:0x01f5 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:93:0x01fa A[DONT_GENERATE, PHI: r5
      0x01fa: PHI (r5v3 java.io.File) = (r5v2 java.io.File), (r5v8 java.io.File) binds: [B:92:0x01f8, B:64:0x01c1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    static Bitmap ffmpeg(Object obj, String str, long j) {
        File fileCreateTempFile;
        final Process processStart;
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        String str2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            Context context = (Context) R94.get(obj, "c");
            File file = new File(context.getApplicationInfo().nativeLibraryDir, "libffmpeg.so");
            try {
                try {
                    if (!file.canExecute()) {
                        try {
                            put(obj, "frameProcess", null);
                        } catch (Exception e) {
                        }
                        return null;
                    }
                    fileCreateTempFile = File.createTempFile("ca1_preview98_", ".jpg", context.getCacheDir());
                    try {
                        processStart = new ProcessBuilder((List<String>) Arrays.asList(file.getPath(), "-nostdin", "-loglevel", "error", "-y", "-rw_timeout", "5000000", "-user_agent", agent(obj), "-ss", String.format(Locale.ROOT, "%.0f", Double.valueOf(j / 1000.0d)), "-i", str, "-frames:v", "1", "-vf", "scale=240:135:force_original_aspect_ratio=decrease", "-f", "image2", fileCreateTempFile.getPath())).redirectErrorStream(true).start();
                        try {
                            put(obj, "frameProcess", processStart);
                            scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
                            try {
                                scheduledExecutorServiceNewSingleThreadScheduledExecutor.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Remote98$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        processStart.destroy();
                                    }
                                }, 10L, TimeUnit.SECONDS);
                                InputStream inputStream = processStart.getInputStream();
                                try {
                                    byte[] bArr = new byte[RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE];
                                    while (true) {
                                        int i = inputStream.read(bArr);
                                        if (i == -1) {
                                            break;
                                        }
                                        if (byteArrayOutputStream.size() < 8192) {
                                            byteArrayOutputStream.write(bArr, 0, Math.min(i, RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST - byteArrayOutputStream.size()));
                                        }
                                        th = th;
                                        event(obj, "preview_remote_failed", th.getClass().getSimpleName());
                                        return null;
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    int iWaitFor = processStart.waitFor();
                                    if (iWaitFor == 0) {
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(fileCreateTempFile.getPath());
                                        if (processStart != null) {
                                            processStart.destroy();
                                        }
                                        try {
                                            put(obj, "frameProcess", null);
                                        } catch (Exception e2) {
                                        }
                                        if (scheduledExecutorServiceNewSingleThreadScheduledExecutor != 0) {
                                            scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdownNow();
                                        }
                                        if (fileCreateTempFile != null) {
                                            fileCreateTempFile.delete();
                                        }
                                        return bitmapDecodeFile;
                                    }
                                    String string = byteArrayOutputStream.toString("UTF-8");
                                    if (string.contains("403")) {
                                        str2 = "HTTP403";
                                    } else if (string.contains("404")) {
                                        str2 = "HTTP404";
                                    } else if (string.contains("Protocol not found")) {
                                        str2 = "protocol";
                                    } else if (string.toLowerCase(Locale.ROOT).contains("tls") || string.toLowerCase(Locale.ROOT).contains("ssl")) {
                                        str2 = "TLS";
                                    } else {
                                        str2 = string.toLowerCase(Locale.ROOT).contains("timed out") ? "timeout" : "decode_or_network";
                                    }
                                    event(obj, "preview_remote_failed", "exit=" + iWaitFor + " reason=" + str2);
                                    if (processStart != null) {
                                        processStart.destroy();
                                    }
                                    try {
                                        put(obj, "frameProcess", null);
                                    } catch (Exception e3) {
                                    }
                                    if (scheduledExecutorServiceNewSingleThreadScheduledExecutor != 0) {
                                        scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdownNow();
                                    }
                                    if (fileCreateTempFile != null) {
                                    }
                                    return null;
                                } catch (Throwable th) {
                                    if (inputStream == null) {
                                        throw th;
                                    }
                                    try {
                                        inputStream.close();
                                        throw th;
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                        throw th;
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                event(obj, "preview_remote_failed", th.getClass().getSimpleName());
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            scheduledExecutorServiceNewSingleThreadScheduledExecutor = 0;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        processStart = null;
                        scheduledExecutorServiceNewSingleThreadScheduledExecutor = processStart;
                    }
                } catch (Exception e4) {
                }
                event(obj, "preview_remote_failed", th.getClass().getSimpleName());
                return null;
            } finally {
                if (processStart != null) {
                    processStart.destroy();
                }
                try {
                    put(obj, "frameProcess", null);
                } catch (Exception e5) {
                }
                if (scheduledExecutorServiceNewSingleThreadScheduledExecutor != 0) {
                    scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdownNow();
                }
                if (fileCreateTempFile != null) {
                    fileCreateTempFile.delete();
                }
            }
        } catch (Throwable th6) {
            th = th6;
            fileCreateTempFile = null;
            processStart = null;
        }
        scheduledExecutorServiceNewSingleThreadScheduledExecutor = processStart;
    }
}
