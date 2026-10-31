package com.shabakaty.cinemana.local;

import java.util.concurrent.atomic.AtomicInteger;

/** Sample only frequent MKV DAO identity diagnostics. Never omit outcomes or errors. */
public final class MkvLogGate314 {
    private static final AtomicInteger DB_NAME = new AtomicInteger();
    private static final AtomicInteger DB_CLASS = new AtomicInteger();
    private static final AtomicInteger DOWNLOADS_DAO = new AtomicInteger();

    private MkvLogGate314() {}

    public static boolean shouldWrite(String message) {
        if (message == null) return true;
        if (message.startsWith("DB_PROMOTE_DOWNLOADS_DB_NAME=")) return sample(DB_NAME);
        if (message.startsWith("DB_PROMOTE_DOWNLOADS_DB_CLASS=")) return sample(DB_CLASS);
        if (message.startsWith("DB_PROMOTE_DOWNLOADS_DAO=")) return sample(DOWNLOADS_DAO);
        return true;
    }

    private static boolean sample(AtomicInteger counter) {
        int n = counter.incrementAndGet();
        return n == 1 || (n & 127) == 0;
    }
}
