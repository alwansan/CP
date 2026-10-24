.class public final Lcom/shabakaty/downloader/ja5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ba5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ba5;Lcom/shabakaty/downloader/zz6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    const-string v0, "null reference"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ba5;->k:Lcom/shabakaty/downloader/mb5;

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ha5;

    iget-object v1, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ha5;-><init>(Lcom/shabakaty/downloader/ba5;)V

    .line 8
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/mb5;->b(Lcom/shabakaty/downloader/db5;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 5
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ba5;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gb0;->W0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ba5;->i()V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ba5;->g()V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 11
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ja5;->a:Lcom/shabakaty/downloader/ba5;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
