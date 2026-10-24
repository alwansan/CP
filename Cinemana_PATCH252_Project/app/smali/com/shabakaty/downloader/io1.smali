.class public Lcom/shabakaty/downloader/io1;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/shabakaty/downloader/pi2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/pi2<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "TV;>;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/io1$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/io1$a;-><init>(Lcom/shabakaty/downloader/io1;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pi2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pi2<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/io1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/pi2<",
            "TV;>;)",
            "Lcom/shabakaty/downloader/io1<",
            "TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/io1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/io1;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/io1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/io1;-><init>(Lcom/shabakaty/downloader/pi2;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method b(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io1;->s:Lcom/shabakaty/downloader/ar$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/shabakaty/downloader/od;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/io1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/od<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/shabakaty/downloader/io1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ky;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/ky;-><init>(Lcom/shabakaty/downloader/od;Lcom/shabakaty/downloader/pi2;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
