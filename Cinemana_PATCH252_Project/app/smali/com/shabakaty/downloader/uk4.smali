.class public abstract Lcom/shabakaty/downloader/uk4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/g63;)Lcom/shabakaty/downloader/uk4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/g63;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addOnCanceledListener is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)Lcom/shabakaty/downloader/uk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/p63;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/a73<",
            "-TTResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public d(Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/td0<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "continueWith is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/td0<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "continueWith is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/td0<",
            "TTResult;",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "continueWithTask is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract g()Ljava/lang/Exception;
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public m(Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/kh4<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "onSuccessTask is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/kh4<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onSuccessTask is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
