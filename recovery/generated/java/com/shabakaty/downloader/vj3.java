package com.shabakaty.downloader;

import io.reactivex.subjects.PublishSubject;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: PublishSubject.java */
/* JADX INFO: loaded from: classes2.dex */
public final class vj3<T> extends ze4<T> {
    public static final a[] t = new a[0];
    public static final a[] u = new a[0];
    public final AtomicReference<PublishSubject.PublishDisposable<T>[]> r = new AtomicReference<>(u);
    public Throwable s;

    /* JADX INFO: compiled from: PublishSubject.java */
    public static final class a<T> extends AtomicBoolean implements mu0 {
        public final q53<? super T> r;
        public final vj3<T> s;

        public a(q53<? super T> q53Var, vj3<T> vj3Var) {
            this.r = q53Var;
            this.s = vj3Var;
        }

        @Override // com.shabakaty.downloader.mu0
        public void h() {
            if (compareAndSet(false, true)) {
                this.s.m(this);
            }
        }

        @Override // com.shabakaty.downloader.mu0
        public boolean n() {
            return get();
        }
    }

    @Override // com.shabakaty.downloader.q53
    public void a() {
        PublishSubject.PublishDisposable<T>[] publishDisposableArr = this.r.get();
        PublishSubject.PublishDisposable<T>[] publishDisposableArr2 = t;
        if (publishDisposableArr == publishDisposableArr2) {
            return;
        }
        for (a aVar : this.r.getAndSet(publishDisposableArr2)) {
            if (!aVar.get()) {
                aVar.r.a();
            }
        }
    }

    @Override // com.shabakaty.downloader.q53
    public void b(Throwable th) {
        Objects.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        PublishSubject.PublishDisposable<T>[] publishDisposableArr = this.r.get();
        PublishSubject.PublishDisposable<T>[] publishDisposableArr2 = t;
        if (publishDisposableArr == publishDisposableArr2) {
            xv3.b(th);
            return;
        }
        this.s = th;
        for (a aVar : this.r.getAndSet(publishDisposableArr2)) {
            if (aVar.get()) {
                xv3.b(th);
            } else {
                aVar.r.b(th);
            }
        }
    }

    @Override // com.shabakaty.downloader.q53
    public void c(mu0 mu0Var) {
        if (this.r.get() == t) {
            mu0Var.h();
        }
    }

    @Override // com.shabakaty.downloader.q53
    public void e(T t2) {
        Objects.requireNonNull(t2, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a aVar : this.r.get()) {
            if (!aVar.get()) {
                aVar.r.e(t2);
            }
        }
    }

    @Override // com.shabakaty.downloader.t43
    public void j(q53<? super T> q53Var) {
        boolean z;
        PublishSubject.PublishDisposable<T> aVar = new a<>(q53Var, this);
        q53Var.c(aVar);
        while (true) {
            PublishSubject.PublishDisposable<T>[] publishDisposableArr = (a[]) this.r.get();
            z = false;
            if (publishDisposableArr == t) {
                break;
            }
            int length = publishDisposableArr.length;
            PublishSubject.PublishDisposable<T>[] publishDisposableArr2 = new a[length + 1];
            System.arraycopy(publishDisposableArr, 0, publishDisposableArr2, 0, length);
            publishDisposableArr2[length] = aVar;
            if (this.r.compareAndSet(publishDisposableArr, publishDisposableArr2)) {
                z = true;
                break;
            }
        }
        if (z) {
            if (aVar.get()) {
                m(aVar);
            }
        } else {
            Throwable th = this.s;
            if (th != null) {
                q53Var.b(th);
            } else {
                q53Var.a();
            }
        }
    }

    public void m(a<T> aVar) {
        PublishSubject.PublishDisposable<T>[] publishDisposableArr;
        a[] aVarArr;
        do {
            publishDisposableArr = (a[]) this.r.get();
            if (publishDisposableArr == t || publishDisposableArr == u) {
                return;
            }
            int length = publishDisposableArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (publishDisposableArr[i] == aVar) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                aVarArr = u;
            } else {
                a[] aVarArr2 = new a[length - 1];
                System.arraycopy(publishDisposableArr, 0, aVarArr2, 0, i);
                System.arraycopy(publishDisposableArr, i + 1, aVarArr2, i, (length - i) - 1);
                aVarArr = aVarArr2;
            }
        } while (!this.r.compareAndSet(publishDisposableArr, aVarArr));
    }
}
