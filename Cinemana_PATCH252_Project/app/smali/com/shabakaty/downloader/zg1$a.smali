.class public final Lcom/shabakaty/downloader/zg1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableTimer.java"

# interfaces
.implements Lcom/shabakaty/downloader/lf4;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zg1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/mu0;",
        ">;",
        "Lcom/shabakaty/downloader/lf4;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile s:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zg1$a;->r:Lcom/shabakaty/downloader/ef4;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/pu0;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    if-eq v1, v2, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/zg1$a;->s:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/zg1$a;->r:Lcom/shabakaty/downloader/ef4;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/zg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/zg1$a;->r:Lcom/shabakaty/downloader/ef4;

    new-instance v1, Lcom/shabakaty/downloader/xt2;

    const-string v2, "Can\'t deliver value due to lack of requests"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/xt2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/zg1$a;->s:Z

    :cond_0
    return-void
.end method
