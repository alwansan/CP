package com.shabakaty.cinemana.ca1;

import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.security.MessageDigest;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class Lease115 {
    static final ConcurrentHashMap<String, Object> owners = new ConcurrentHashMap<>();
    static final ThreadLocal<Lease> current = new ThreadLocal<>();

    public static final class Lease implements AutoCloseable {
        final String attempt = UUID.randomUUID().toString();
        boolean closed;
        final RandomAccessFile file;
        final String key;
        final FileLock lock;
        final Object owner;
        String requestEpoch;

        Lease(String str, Object obj, RandomAccessFile randomAccessFile, FileLock fileLock) {
            this.key = str;
            this.owner = obj;
            this.file = randomAccessFile;
            this.lock = fileLock;
        }

        @Override // java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            Lease lease;
            if (!this.closed) {
                this.closed = true;
                try {
                    this.lock.release();
                    try {
                        this.file.close();
                        Lease115.owners.remove(this.key, this.owner);
                        if (Lease115.current.get() == this) {
                            Lease115.current.remove();
                        }
                    } catch (Throwable th) {
                        Lease115.owners.remove(this.key, this.owner);
                        if (Lease115.current.get() != this) {
                            throw th;
                        }
                        Lease115.current.remove();
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        this.file.close();
                        if (lease != this) {
                            throw th2;
                        }
                        throw th2;
                    } finally {
                        Lease115.owners.remove(this.key, this.owner);
                        if (Lease115.current.get() == this) {
                            Lease115.current.remove();
                        }
                    }
                }
            }
        }
    }

    static String key(File file) throws IOException {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            return new File(file.getCanonicalFile().getParentFile(), name.substring(0, iLastIndexOf) + ".mkv").getCanonicalPath();
        }
        throw new IOException("invalid mux source name");
    }

    static String digest(String str) throws Exception {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"));
        StringBuilder sb = new StringBuilder();
        for (byte b : bArrDigest) {
            sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & FileDownloadStatus.error)));
        }
        return sb.toString();
    }

    static Lease acquire(File file, String str) throws Exception {
        Object obj = new Object();
        RandomAccessFile randomAccessFile = null;
        if (owners.putIfAbsent(str, obj) != null) {
            return null;
        }
        try {
            if (!file.isDirectory() && !file.mkdirs()) {
                throw new IOException("cannot create mux lock directory");
            }
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(new File(file, digest(str) + ".lock"), "rw");
            try {
                FileLock fileLockTryLock = randomAccessFile2.getChannel().tryLock();
                if (fileLockTryLock != null) {
                    return new Lease(str, obj, randomAccessFile2, fileLockTryLock);
                }
                try {
                    randomAccessFile2.close();
                    return null;
                } finally {
                    owners.remove(str, obj);
                }
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } finally {
                        owners.remove(str, obj);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    static File stage(Lease lease, File file) throws Exception {
        if (lease == null || lease.closed || !lease.lock.isValid()) {
            throw new IOException("mux has no valid lease");
        }
        File canonicalFile = file.getCanonicalFile();
        File file2 = new File(lease.key);
        if (!canonicalFile.equals(file2) && !canonicalFile.equals(new File(file2.getParentFile(), "(No Sub) " + file2.getName()))) {
            throw new IOException("foreign mux target");
        }
        String str = canonicalFile.getName() + ".cnm115-";
        File[] fileArrListFiles = canonicalFile.getParentFile().listFiles();
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                String name = file3.getName();
                if (name.startsWith(str) && name.endsWith(".part")) {
                    String strSubstring = name.substring(str.length(), name.length() - 5);
                    try {
                        if (UUID.fromString(strSubstring).toString().equals(strSubstring) && !strSubstring.equals(lease.attempt) && file3.isFile() && file3.getCanonicalFile().equals(file3.getAbsoluteFile())) {
                            file3.delete();
                        }
                    } catch (IllegalArgumentException e) {
                    }
                }
            }
        }
        return new File(canonicalFile.getParentFile(), str + lease.attempt + ".part");
    }

    public static File stage(File file) throws Exception {
        return stage(current.get(), file);
    }

    public static void export(Object obj, File file, List<?> list, File file2, Object obj2) throws Exception {
        Lease leaseAcquire = acquire(new File((File) Restart108.call(obj, "getFilesDir", new Object[0]), "cnm_mux_locks115"), key(file));
        if (leaseAcquire == null) {
            Restart108.trace("MUX115_DEFER_BUSY target=" + file.getName());
            return;
        }
        try {
            leaseAcquire.requestEpoch = Fresh121.epoch(obj, Restart108.str(obj2, "id"));
            current.set(leaseAcquire);
            Restart108.trace("MUX115_ACQUIRED target=" + file.getName());
            if (!file.isFile()) {
                Restart108.trace("MUX115_SOURCE_GONE target=" + file.getName());
                try {
                    leaseAcquire.close();
                    return;
                } finally {
                    Restart108.trace("MUX115_RELEASED target=" + file.getName());
                }
            }
            List<File> listVerified = Inputs114.verified(obj, file);
            if (listVerified == null) {
                try {
                    leaseAcquire.close();
                } finally {
                    Restart108.trace("MUX115_RELEASED target=" + file.getName());
                }
            } else {
                Restart108.call(Class.forName("com.shabakaty.cinemana.features.MkvExporter"), "exportLocked", obj, file, listVerified, file2, obj2);
                try {
                    leaseAcquire.close();
                } finally {
                    Restart108.trace("MUX115_RELEASED target=" + file.getName());
                }
            }
        } catch (Throwable th) {
            try {
                leaseAcquire.close();
                throw th;
            } finally {
                Restart108.trace("MUX115_RELEASED target=" + file.getName());
            }
        }
    }
}
