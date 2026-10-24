.class public Lcom/shabakaty/downloader/zc5;
.super Lcom/shabakaty/downloader/dc5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final w:Lcom/shabakaty/downloader/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dd<",
            "Lcom/shabakaty/downloader/j9<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final x:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nh2;Lcom/google/android/gms/common/api/internal/c;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/downloader/pq1;->d:Lcom/shabakaty/downloader/pq1;

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/dc5;-><init>(Lcom/shabakaty/downloader/nh2;Lcom/shabakaty/downloader/pq1;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/dd;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dd;-><init>(I)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/zc5;->w:Lcom/shabakaty/downloader/dd;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/zc5;->x:Lcom/google/android/gms/common/api/internal/c;

    const-string p2, "ConnectionlessLifecycleHelper"

    .line 7
    invoke-interface {p1, p2, p0}, Lcom/shabakaty/downloader/nh2;->r(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zc5;->w:Lcom/shabakaty/downloader/dd;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zc5;->x:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c;->b(Lcom/shabakaty/downloader/zc5;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/dc5;->s:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zc5;->w:Lcom/shabakaty/downloader/dd;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/zc5;->x:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c;->b(Lcom/shabakaty/downloader/zc5;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/dc5;->s:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zc5;->x:Lcom/google/android/gms/common/api/internal/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/internal/c;->F:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/c;->y:Lcom/shabakaty/downloader/zc5;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/c;->y:Lcom/shabakaty/downloader/zc5;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 7
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zc5;->x:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final k(Lcom/shabakaty/downloader/gb0;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zc5;->x:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/c;->e(Lcom/shabakaty/downloader/gb0;I)V

    return-void
.end method
