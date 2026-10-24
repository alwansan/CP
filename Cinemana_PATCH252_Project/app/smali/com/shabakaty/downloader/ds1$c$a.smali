.class public Lcom/shabakaty/downloader/ds1$c$a;
.super Ljava/lang/Object;
.source "HandlerScheduledExecutorService.java"

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds1$c;-><init>(Landroid/os/Handler;JLjava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ar$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroid/os/Handler;

.field public final synthetic s:Ljava/util/concurrent/Callable;

.field public final synthetic t:Lcom/shabakaty/downloader/ds1$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds1$c;Landroid/os/Handler;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ds1$c$a;->t:Lcom/shabakaty/downloader/ds1$c;

    iput-object p2, p0, Lcom/shabakaty/downloader/ds1$c$a;->r:Landroid/os/Handler;

    iput-object p3, p0, Lcom/shabakaty/downloader/ds1$c$a;->s:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ds1$c$a$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ds1$c$a$a;-><init>(Lcom/shabakaty/downloader/ds1$c$a;)V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/ar$a;->c:Lcom/shabakaty/downloader/ns3;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/w0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ds1$c$a;->t:Lcom/shabakaty/downloader/ds1$c;

    iget-object v0, v0, Lcom/shabakaty/downloader/ds1$c;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HandlerScheduledFuture-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shabakaty/downloader/ds1$c$a;->s:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
