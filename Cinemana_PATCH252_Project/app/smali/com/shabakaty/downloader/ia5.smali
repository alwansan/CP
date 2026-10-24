.class public abstract Lcom/shabakaty/downloader/ia5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ba5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ba5;Lcom/shabakaty/downloader/zz6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ia5;->r:Lcom/shabakaty/downloader/ba5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ia5;->r:Lcom/shabakaty/downloader/ba5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ia5;->r:Lcom/shabakaty/downloader/ba5;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ia5;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ia5;->r:Lcom/shabakaty/downloader/ba5;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ia5;->r:Lcom/shabakaty/downloader/ba5;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 14
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/shabakaty/downloader/ma5;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 15
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/shabakaty/downloader/ma5;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/ia5;->r:Lcom/shabakaty/downloader/ba5;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ia5;->r:Lcom/shabakaty/downloader/ba5;

    .line 20
    iget-object v1, v1, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 21
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    throw v0
.end method
