package com.shabakaty.downloader;

import java.lang.reflect.UndeclaredThrowableException;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: ChainingListenableFuture.java */
/* JADX INFO: loaded from: classes.dex */
public class ky<I, O> extends io1<O> implements Runnable {
    public od<? super I, ? extends O> t;
    public final BlockingQueue<Boolean> u = new LinkedBlockingQueue(1);
    public final CountDownLatch v = new CountDownLatch(1);
    public pi2<? extends I> w;
    public volatile pi2<? extends O> x;

    /* JADX INFO: compiled from: ChainingListenableFuture.java */
    public class a implements Runnable {
        public final /* synthetic */ pi2 r;

        public a(pi2 pi2Var) {
            this.r = pi2Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    ky kyVar = ky.this;
                    Object objB = ko1.b(this.r);
                    ar.a<V> aVar = kyVar.s;
                    if (aVar != 0) {
                        aVar.a((V) objB);
                    }
                } catch (CancellationException unused) {
                    ky.this.cancel(false);
                } catch (ExecutionException e) {
                    ky.this.b(e.getCause());
                }
            } finally {
                ky.this.x = null;
            }
        }
    }

    public ky(od<? super I, ? extends O> odVar, pi2<? extends I> pi2Var) {
        Objects.requireNonNull(odVar);
        this.t = odVar;
        Objects.requireNonNull(pi2Var);
        this.w = pi2Var;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.shabakaty.downloader.io1, java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2 = false;
        if (!this.r.cancel(z)) {
            return false;
        }
        while (true) {
            try {
                this.u.put(Boolean.valueOf(z));
                break;
            } catch (InterruptedException unused) {
                z2 = true;
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        pi2<? extends I> pi2Var = this.w;
        if (pi2Var != null) {
            pi2Var.cancel(z);
        }
        pi2<? extends O> pi2Var2 = this.x;
        if (pi2Var2 != null) {
            pi2Var2.cancel(z);
        }
        return true;
    }

    public final <E> E d(BlockingQueue<E> blockingQueue) {
        E eTake;
        boolean z = false;
        while (true) {
            try {
                eTake = blockingQueue.take();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return eTake;
    }

    @Override // com.shabakaty.downloader.io1, java.util.concurrent.Future
    public O get() throws ExecutionException, InterruptedException {
        if (!isDone()) {
            pi2<? extends I> pi2Var = this.w;
            if (pi2Var != null) {
                pi2Var.get();
            }
            this.v.await();
            pi2<? extends O> pi2Var2 = this.x;
            if (pi2Var2 != null) {
                pi2Var2.get();
            }
        }
        return (O) super.get();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.shabakaty.downloader.od<? super I, ? extends O>, com.shabakaty.downloader.pi2<? extends I>] */
    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        pi2<? extends O> pi2VarApply = this.t.apply(ko1.b(this.w));
                        this.x = pi2VarApply;
                        if (!isCancelled()) {
                            pi2VarApply.f(new a(pi2VarApply), jl3.a());
                        } else {
                            pi2VarApply.cancel(((Boolean) d(this.u)).booleanValue());
                            this.x = null;
                        }
                    } catch (Error e) {
                        ar.a<V> aVar = this.s;
                        if (aVar != 0) {
                            aVar.c(e);
                        }
                    } catch (UndeclaredThrowableException e2) {
                        b(e2.getCause());
                    }
                } finally {
                    this.t = null;
                    this.w = null;
                    this.v.countDown();
                }
            } catch (CancellationException unused) {
                cancel(false);
            } catch (ExecutionException e3) {
                b(e3.getCause());
            }
        } catch (Exception e4) {
            ar.a<V> aVar2 = this.s;
            if (aVar2 != 0) {
                aVar2.c(e4);
            }
        }
    }

    @Override // com.shabakaty.downloader.io1, java.util.concurrent.Future
    public O get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (!isDone()) {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (timeUnit != timeUnit2) {
                j = timeUnit2.convert(j, timeUnit);
                timeUnit = timeUnit2;
            }
            pi2<? extends I> pi2Var = this.w;
            if (pi2Var != null) {
                long jNanoTime = System.nanoTime();
                pi2Var.get(j, timeUnit);
                j -= Math.max(0L, System.nanoTime() - jNanoTime);
            }
            long jNanoTime2 = System.nanoTime();
            if (this.v.await(j, timeUnit)) {
                j -= Math.max(0L, System.nanoTime() - jNanoTime2);
                pi2<? extends O> pi2Var2 = this.x;
                if (pi2Var2 != null) {
                    pi2Var2.get(j, timeUnit);
                }
            } else {
                throw new TimeoutException();
            }
        }
        return (O) super.get(j, timeUnit);
    }
}
