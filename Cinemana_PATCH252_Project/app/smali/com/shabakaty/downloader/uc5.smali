.class public final Lcom/shabakaty/downloader/uc5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/ua5;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/downloader/qc5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qc5;Lcom/shabakaty/downloader/zz6;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/uc5;->a:I

    const/4 p2, 0x1

    if-eq p3, p2, :cond_0

    const/4 p2, 0x0

    .line 1
    iput p2, p0, Lcom/shabakaty/downloader/uc5;->a:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_0
    iput p2, p0, Lcom/shabakaty/downloader/uc5;->a:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/uc5;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 5
    iget-boolean v4, v0, Lcom/shabakaty/downloader/qc5;->l:Z

    if-nez v4, :cond_1

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gb0;->o1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 9
    iput-boolean v1, p2, Lcom/shabakaty/downloader/qc5;->l:Z

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/j;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 16
    iput-boolean v3, v0, Lcom/shabakaty/downloader/qc5;->l:Z

    .line 17
    iget-object v1, v0, Lcom/shabakaty/downloader/qc5;->b:Lcom/shabakaty/downloader/ka5;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ka5;->a(IZ)V

    .line 18
    iput-object v2, v0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    .line 19
    iput-object v2, v0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 22
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 23
    iget-object p2, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 24
    iget-object p2, p2, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 25
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    throw p1

    .line 27
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    :try_start_2
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 31
    iget-boolean v4, v0, Lcom/shabakaty/downloader/qc5;->l:Z

    if-eqz v4, :cond_2

    .line 32
    iput-boolean v3, v0, Lcom/shabakaty/downloader/qc5;->l:Z

    .line 33
    iget-object v1, v0, Lcom/shabakaty/downloader/qc5;->b:Lcom/shabakaty/downloader/ka5;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ka5;->a(IZ)V

    .line 34
    iput-object v2, v0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    .line 35
    iput-object v2, v0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 37
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 38
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    .line 39
    :cond_2
    :try_start_3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/qc5;->l:Z

    .line 40
    iget-object p2, v0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    .line 41
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/j;->onConnectionSuspended(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 43
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 44
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    .line 45
    iget-object p2, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 46
    iget-object p2, p2, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 47
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/uc5;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 5
    iput-object p1, v0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/qc5;->h(Lcom/shabakaty/downloader/qc5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw p1

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 18
    iput-object p1, v0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    .line 19
    invoke-static {v0}, Lcom/shabakaty/downloader/qc5;->h(Lcom/shabakaty/downloader/qc5;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 22
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 24
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/uc5;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/qc5;->i:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 6
    iput-object p1, v0, Lcom/shabakaty/downloader/qc5;->i:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    sget-object v0, Lcom/shabakaty/downloader/gb0;->v:Lcom/shabakaty/downloader/gb0;

    .line 9
    iput-object v0, p1, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/qc5;->h(Lcom/shabakaty/downloader/qc5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    throw p1

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 20
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 21
    :try_start_1
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    sget-object v0, Lcom/shabakaty/downloader/gb0;->v:Lcom/shabakaty/downloader/gb0;

    .line 22
    iput-object v0, p1, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    .line 23
    invoke-static {p1}, Lcom/shabakaty/downloader/qc5;->h(Lcom/shabakaty/downloader/qc5;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    iget-object p1, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 25
    iget-object p1, p1, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/uc5;->b:Lcom/shabakaty/downloader/qc5;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
