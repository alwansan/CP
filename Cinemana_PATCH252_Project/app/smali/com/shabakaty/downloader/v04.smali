.class public final Lcom/shabakaty/downloader/v04;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SequentialDisposable.java"

# interfaces
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/mu0;",
        ">;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/mu0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/pu0;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mu0;

    invoke-static {v0}, Lcom/shabakaty/downloader/pu0;->j(Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    return v0
.end method
