.class public Lcom/shabakaty/downloader/ky$a;
.super Ljava/lang/Object;
.source "ChainingListenableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ky;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/pi2;

.field public final synthetic s:Lcom/shabakaty/downloader/ky;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ky;Lcom/shabakaty/downloader/pi2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ky$a;->s:Lcom/shabakaty/downloader/ky;

    iput-object p2, p0, Lcom/shabakaty/downloader/ky$a;->r:Lcom/shabakaty/downloader/pi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ky$a;->s:Lcom/shabakaty/downloader/ky;

    iget-object v2, p0, Lcom/shabakaty/downloader/ky$a;->r:Lcom/shabakaty/downloader/pi2;

    invoke-static {v2}, Lcom/shabakaty/downloader/ko1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/io1;->s:Lcom/shabakaty/downloader/ar$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ky$a;->s:Lcom/shabakaty/downloader/ky;

    iput-object v0, v1, Lcom/shabakaty/downloader/ky;->x:Lcom/shabakaty/downloader/pi2;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ky$a;->s:Lcom/shabakaty/downloader/ky;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/io1;->b(Ljava/lang/Throwable;)Z

    goto :goto_0

    :goto_1
    return-void

    .line 6
    :catch_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ky$a;->s:Lcom/shabakaty/downloader/ky;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ky;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ky$a;->s:Lcom/shabakaty/downloader/ky;

    iput-object v0, v1, Lcom/shabakaty/downloader/ky;->x:Lcom/shabakaty/downloader/pi2;

    return-void

    :goto_2
    iget-object v2, p0, Lcom/shabakaty/downloader/ky$a;->s:Lcom/shabakaty/downloader/ky;

    iput-object v0, v2, Lcom/shabakaty/downloader/ky;->x:Lcom/shabakaty/downloader/pi2;

    .line 8
    throw v1
.end method
