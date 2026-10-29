package com.shabakaty.cinemana.ca1;

import com.liulishuo.filedownloader.services.FileDownloadBroadcastHandler;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
public final class Network120 {
    public static ThreadPoolExecutor create(int i, String str) {
        try {
            ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) Continue106.call(Class.forName("com.liulishuo.filedownloader.util.FileDownloadExecutors"), "newDefaultThreadPool", Integer.valueOf(i), str);
            ThreadFactory threadFactory = threadPoolExecutor.getThreadFactory();
            threadPoolExecutor.shutdown();
            return new PriorityPool(i, threadFactory);
        } catch (Exception e) {
            throw new IllegalStateException("native network pool", e);
        }
    }

    static final class Rank {
        final int priority;
        final long sequence;

        Rank(Runnable runnable, long j) {
            this.priority = Network120.priority(runnable);
            this.sequence = j;
        }
    }

    static int priority(Runnable runnable) {
        try {
            String lowerCase = String.valueOf(Continue106.call(Continue106.get(runnable, FileDownloadBroadcastHandler.KEY_MODEL), "getPath", new Object[0])).toLowerCase(Locale.ROOT);
            return (lowerCase.endsWith(".srt") || lowerCase.endsWith(".ass") || lowerCase.endsWith(".ssa") || lowerCase.endsWith(".vtt")) ? 0 : 1;
        } catch (Exception e) {
            return 1;
        }
    }

    static final class Ordering implements Comparator<Runnable> {
        final Map<Runnable, Rank> ranks = Collections.synchronizedMap(new WeakHashMap());
        final AtomicLong seq = new AtomicLong();

        Ordering() {
        }

        void admit(Runnable runnable) {
            this.ranks.put(runnable, new Rank(runnable, this.seq.getAndIncrement()));
        }

        @Override // java.util.Comparator
        public int compare(Runnable runnable, Runnable runnable2) {
            Rank rank = this.ranks.get(runnable);
            Rank rank2 = this.ranks.get(runnable2);
            if (rank == null || rank2 == null) {
                return 0;
            }
            int iCompare = Integer.compare(rank.priority, rank2.priority);
            return iCompare != 0 ? iCompare : Long.compare(rank.sequence, rank2.sequence);
        }
    }

    static final class PriorityPool extends ThreadPoolExecutor {
        final Ordering order;

        PriorityPool(int i, ThreadFactory threadFactory) {
            this(i, threadFactory, new Ordering());
        }

        PriorityPool(int i, ThreadFactory threadFactory, Ordering ordering) {
            super(i, i, 15L, TimeUnit.SECONDS, new PriorityBlockingQueue(16, ordering), threadFactory);
            this.order = ordering;
            allowCoreThreadTimeOut(true);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.order.admit(runnable);
            try {
                super.execute(runnable);
            } catch (RuntimeException e) {
                this.order.ranks.remove(runnable);
                throw e;
            }
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        protected void afterExecute(Runnable runnable, Throwable th) {
            this.order.ranks.remove(runnable);
            super.afterExecute(runnable, th);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public boolean remove(Runnable runnable) {
            boolean zRemove = super.remove(runnable);
            if (zRemove) {
                this.order.ranks.remove(runnable);
            }
            return zRemove;
        }
    }
}
