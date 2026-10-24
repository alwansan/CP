.class public final Lcom/shabakaty/downloader/ma5;
.super Lcom/shabakaty/downloader/nc5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/j;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ma5;->a:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ma5;->b:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/nc5;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ka5;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ma5;->a:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ma5;->b:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/nc5;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/ma5;->a:I

    const-string v1, "Unknown message id: "

    const/16 v2, 0x1f

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiClientImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ma5;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ka5;

    invoke-static {p1}, Lcom/shabakaty/downloader/ka5;->n(Lcom/shabakaty/downloader/ka5;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ma5;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ka5;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka5;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka5;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw v0

    .line 11
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GACStateManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 14
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ra5;

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ma5;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/j;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    .line 17
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    .line 19
    iget-object v2, p1, Lcom/shabakaty/downloader/ra5;->a:Lcom/shabakaty/downloader/na5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v1, v2, :cond_5

    .line 20
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    .line 21
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    .line 22
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ra5;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    .line 24
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
