package com.shabakaty.cinemana.ca1;

import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class Speed120 {
    static volatile File config;
    static long lastPoll;
    static int units;
    static final ExecutorService settingsWriter = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Speed120$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Speed120.lambda$static$0(runnable);
        }
    });
    static final Gate gate = new Gate();

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "speed120-settings");
        thread.setDaemon(true);
        return thread;
    }

    static File resolve(Object obj) throws Exception {
        return new File((File) Continue106.call(obj, "getFilesDir", new Object[0]), "download-speed120.cfg");
    }

    static synchronized void attach(Object obj) throws Exception {
        config = resolve(obj);
        lastPoll = 0L;
    }

    static synchronized int poll() {
        int i;
        long jNanoTime = System.nanoTime();
        long j = lastPoll;
        if (j != 0 && jNanoTime - j < 250000000) {
            return units;
        }
        lastPoll = jNanoTime;
        try {
            if (config == null) {
                config = resolve(Continue106.call(Class.forName("com.liulishuo.filedownloader.util.FileDownloadHelper"), "getAppContext", new Object[0]));
            }
            if (config.isFile() && (i = Integer.parseInt(readConfig(config))) >= 0 && i <= 100) {
                units = i;
            }
        } catch (Exception e) {
        }
        return units;
    }

    static String readConfig(File file) throws IOException {
        if (file.length() > 32) {
            throw new IOException("invalid speed configuration length");
        }
        byte[] bArr = new byte[32];
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            int i = fileInputStream.read(bArr);
            String strTrim = i < 0 ? BuildConfig.FLAVOR : new String(bArr, 0, i, "UTF-8").trim();
            fileInputStream.close();
            return strTrim;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static void save(File file, int i) throws IOException {
        if (i < 0 || i > 100) {
            throw new IllegalArgumentException("speed");
        }
        File file2 = new File(file.getPath() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            fileOutputStream.write((i + SSDPPacket.LF).getBytes("UTF-8"));
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (!file2.renameTo(file)) {
                throw new IOException("atomic speed configuration rename failed");
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static final class Request {
        final int id;
        final int size;

        Request(int i, int i2) {
            this.id = i;
            this.size = i2;
        }
    }

    public static InputStream wrap(InputStream inputStream, Object obj, int i) {
        return new Limited(inputStream, obj, i, gate);
    }

    static final class Gate {
        long next;
        final LinkedHashMap<Integer, ArrayDeque<Request>> pending = new LinkedHashMap<>();
        long rate;

        Gate() {
        }

        synchronized void rate(long j) {
            if (this.rate != j) {
                this.rate = j;
                this.next = System.nanoTime();
                notifyAll();
            }
        }

        synchronized int pendingCount() {
            int size;
            Iterator<ArrayDeque<Request>> it = this.pending.values().iterator();
            size = 0;
            while (it.hasNext()) {
                size += it.next().size();
            }
            return size;
        }

        void remove(Request request) {
            ArrayDeque<Request> arrayDeque = this.pending.get(Integer.valueOf(request.id));
            if (arrayDeque != null) {
                arrayDeque.remove(request);
                if (arrayDeque.isEmpty()) {
                    this.pending.remove(Integer.valueOf(request.id));
                }
            }
            notifyAll();
        }

        synchronized long acquire(Limited limited, int i) throws IOException {
            long jNanoTime;
            Map.Entry<Integer, ArrayDeque<Request>> next;
            long j;
            rate(((long) Speed120.poll()) * 100000);
            limited.check();
            Request request = new Request(limited.id, i);
            ArrayDeque<Request> arrayDeque = this.pending.get(Integer.valueOf(request.id));
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque<>();
                this.pending.put(Integer.valueOf(request.id), arrayDeque);
            }
            arrayDeque.add(request);
            while (true) {
                try {
                    limited.check();
                    rate(((long) Speed120.poll()) * 100000);
                    jNanoTime = System.nanoTime();
                    next = this.pending.entrySet().iterator().next();
                    if (next.getValue().peek() == request) {
                        j = this.rate;
                        if (j == 0 || jNanoTime >= this.next) {
                            break;
                        }
                    }
                    try {
                        TimeUnit.NANOSECONDS.timedWait(this, next.getValue().peek() == request ? Math.max(1L, Math.min(50000000L, this.next - jNanoTime)) : 50000000L);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException("download interrupted");
                    }
                } catch (Throwable th) {
                    remove(request);
                    throw th;
                }
            }
            if (j != 0) {
                jNanoTime += (((long) i) * 1000000000) / j;
            }
            this.next = jNanoTime;
            next.getValue().remove();
            this.pending.remove(Integer.valueOf(request.id));
            if (!next.getValue().isEmpty()) {
                this.pending.put(Integer.valueOf(request.id), next.getValue());
            }
            notifyAll();
            remove(request);
            return j;
        }

        synchronized void refund(int i, long j) {
            if (j > 0) {
                if (j == this.rate && i > 0) {
                    this.next = Math.max(System.nanoTime(), this.next - ((((long) i) * 1000000000) / j));
                    notifyAll();
                }
            }
        }
    }

    static final class Limited extends FilterInputStream {
        final Gate arbiter;
        volatile boolean closed;
        final int id;
        final Object owner;
        final Field paused;

        Limited(InputStream inputStream, Object obj, int i, Gate gate) {
            super(inputStream);
            this.owner = obj;
            this.id = i;
            this.arbiter = gate;
            Field declaredField = null;
            if (obj != null) {
                try {
                    declaredField = obj.getClass().getDeclaredField("paused");
                    declaredField.setAccessible(true);
                } catch (Exception e) {
                }
            }
            this.paused = declaredField;
        }

        void check() throws IOException {
            boolean z = this.closed || Thread.currentThread().isInterrupted();
            Field field = this.paused;
            if (field != null) {
                try {
                    z |= field.getBoolean(this.owner);
                } catch (Exception e) {
                }
            }
            if (z) {
                throw new InterruptedIOException("download paused or closed");
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (bArr == null) {
                throw new NullPointerException();
            }
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            if (Speed120.poll() != 0) {
                i2 = Math.min(i2, 16384);
            }
            long jAcquire = this.arbiter.acquire(this, i2);
            try {
                int i3 = this.in.read(bArr, i, i2);
                int iMax = Math.max(0, i3);
                Gate gate = this.arbiter;
                int i4 = i2 - iMax;
                return i3;
            } finally {
                this.arbiter.refund(i2 - 0, jAcquire);
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            byte[] bArr = new byte[1];
            if (read(bArr, 0, 1) < 0) {
                return -1;
            }
            return bArr[0] & FileDownloadStatus.error;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            int i;
            long j2 = 0;
            if (j <= 0) {
                return 0L;
            }
            int iMin = (int) Math.min(16384L, j);
            byte[] bArr = new byte[iMin];
            while (j2 < j && (i = read(bArr, 0, (int) Math.min(iMin, j - j2))) >= 0) {
                j2 += (long) i;
            }
            return j2;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.closed = true;
            synchronized (this.arbiter) {
                this.arbiter.notifyAll();
            }
            super.close();
        }
    }
}
