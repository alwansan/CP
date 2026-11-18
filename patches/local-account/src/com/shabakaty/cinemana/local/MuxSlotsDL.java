package com.shabakaty.cinemana.local;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.concurrent.TimeUnit;

/**
 * Three app-wide mux permits, shared by the main and filedownloader processes.
 * All callers still acquire the original per-source Lease115 first.
 * Never delete lock files: replacing their inodes would defeat OS ownership.
 */
public final class MuxSlotsDL {
    public static final int LIMIT = 3;
    private static final long WAIT_NS = TimeUnit.SECONDS.toNanos(120);
    private static final boolean[] RESERVED = new boolean[LIMIT];
    private static final ThreadLocal<Held> CURRENT = new ThreadLocal<>();

    private static final class Held {
        final int index;
        final RandomAccessFile file;
        final FileLock lock;
        Held(int i, RandomAccessFile f, FileLock l) { index=i; file=f; lock=l; }
    }
    private MuxSlotsDL() {}

    public static void acquire(Context context) throws IOException, InterruptedException {
        if (context == null) throw new IOException("missing mux context");
        acquire(new File(context.getFilesDir(), "cnm_mux_slots_dl"));
    }

    // Also used by the isolated ART/JVM probes, always with a synthetic private directory.
    public static void acquire(File dir) throws IOException, InterruptedException {
        if (CURRENT.get()!=null) throw new IOException("nested mux slot acquisition");
        if (!dir.isDirectory() && !dir.mkdirs() && !dir.isDirectory())
            throw new IOException("cannot create mux slot directory");
        long started=System.nanoTime();
        do {
            if (Thread.interrupted()) throw new InterruptedException("mux slot cancelled");
            for (int i=0;i<LIMIT;i++) {
                // POSIX locks may be process-associated: do not even open/close a
                // second fd to an already-owned slot in this JVM.
                synchronized (RESERVED) {
                    if (RESERVED[i]) continue;
                    RESERVED[i]=true;
                }
                RandomAccessFile f=null;
                boolean keep=false;
                try {
                    f=new RandomAccessFile(new File(dir,"slot-"+i+".lock"),"rw");
                    FileLock lock=f.getChannel().tryLock();
                    if (lock!=null) {
                        CURRENT.set(new Held(i,f,lock));
                        keep=true;
                        return;
                    }
                } finally {
                    if (!keep) {
                        try { if (f!=null) f.close(); }
                        finally { clear(i); }
                    }
                }
            }
            // No waiting when any permit is free; bounded polling only under contention.
            Thread.sleep(80);
        } while (System.nanoTime()-started < WAIT_NS);
        throw new IOException("mux slot wait exceeded 120 seconds; recoverable by audit");
    }

    private static void clear(int i) {
        synchronized (RESERVED) { RESERVED[i]=false; }
    }

    public static void release() {
        Held h=CURRENT.get();
        if (h==null) return;
        CURRENT.remove();
        boolean released=false, closed=false;
        try { h.lock.release(); released=true; }
        catch (IOException ex) { System.err.println("CPDL mux slot release failed"); }
        finally {
            try { h.file.close(); closed=true; }
            catch (IOException ex) { System.err.println("CPDL mux slot close failed"); }
            finally {
                // If both operations fail, fail closed until process exit rather than
                // allowing another local worker to use a potentially live lock.
                if (released || closed) clear(h.index);
            }
        }
    }
}
