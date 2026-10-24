.class public final Lcom/shabakaty/downloader/ca5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/ij$c;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/ba5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ba5;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ba5;",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ca5;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ca5;->b:Lcom/google/android/gms/common/api/a;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ca5;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/gb0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ca5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ba5;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/ka5;->g:Landroid/os/Looper;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ba5;->e(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 10
    iget-object p1, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 12
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gb0;->o1()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/ca5;->b:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ca5;->c:Z

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/shabakaty/downloader/ba5;->d(Lcom/shabakaty/downloader/gb0;Lcom/google/android/gms/common/api/a;Z)V

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ba5;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ba5;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_4
    iget-object p1, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    throw p1
.end method
