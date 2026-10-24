.class public final Lcom/shabakaty/downloader/kt3;
.super Ljava/lang/Object;
.source "ResumeSingleObserver.java"

# interfaces
.implements Lcom/shabakaty/downloader/y74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/y74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/mu0;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/y74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/y74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/mu0;",
            ">;",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kt3;->r:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/kt3;->s:Lcom/shabakaty/downloader/y74;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kt3;->s:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kt3;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kt3;->s:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
