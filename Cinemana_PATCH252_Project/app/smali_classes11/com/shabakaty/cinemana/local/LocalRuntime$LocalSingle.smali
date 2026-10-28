.class final Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;
.super Lcom/shabakaty/downloader/f74;
.source "LocalRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocalSingle"
.end annotation


# instance fields
.field final call:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;->call:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 3

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;-><init>()V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;Lcom/shabakaty/downloader/y74;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
