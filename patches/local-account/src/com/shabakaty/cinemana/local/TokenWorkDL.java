package com.shabakaty.cinemana.local;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

/** Bounded, non-I/O enqueue on the existing reconciler scheduler, not a new worker. */
public final class TokenWorkDL {
    public static final int CAP=128;
    private static final Set<String> PENDING=new HashSet<>();
    private TokenWorkDL() {}
    public static boolean offer(Executor executor,String path,Runnable action) {
        if (executor==null || path==null || path.isEmpty() || action==null) return false;
        synchronized(PENDING) {
            if(PENDING.contains(path)) return true;
            if(PENDING.size()>=CAP) return false;
            PENDING.add(path);
        }
        try {
            executor.execute(() -> {
                // Remove at start, NOT at completion: a new event during execution
                // must be allowed to queue a trailing pass.
                synchronized(PENDING) { PENDING.remove(path); }
                action.run();
            });
            return true;
        } catch(RuntimeException ex) {
            synchronized(PENDING) { PENDING.remove(path); }
            return false;
        }
    }
}
