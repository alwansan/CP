.class public Lcom/shabakaty/downloader/s75;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Lcom/shabakaty/downloader/bl4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/x04;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/s75;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/s75$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/s75$a;-><init>(Lcom/shabakaty/downloader/s75;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/s75;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/x04;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/x04;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/s75;->a:Lcom/shabakaty/downloader/x04;

    return-void
.end method
