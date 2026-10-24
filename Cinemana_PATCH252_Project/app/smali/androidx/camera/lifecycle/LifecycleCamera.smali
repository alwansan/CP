.class final Landroidx/camera/lifecycle/LifecycleCamera;
.super Ljava/lang/Object;
.source "LifecycleCamera.java"

# interfaces
.implements Lcom/shabakaty/downloader/qh2;
.implements Lcom/shabakaty/downloader/ms;


# instance fields
.field public final r:Ljava/lang/Object;

.field public final s:Lcom/shabakaty/downloader/rh2;

.field public final t:Lcom/shabakaty/downloader/ju;

.field public u:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/ju;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->u:Z

    .line 4
    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->s:Lcom/shabakaty/downloader/rh2;

    .line 5
    iput-object p2, p0, Landroidx/camera/lifecycle/LifecycleCamera;->t:Lcom/shabakaty/downloader/ju;

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/e$c;->u:Landroidx/lifecycle/e$c;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ju;->h()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ju;->j()V

    .line 10
    :goto_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    return-void
.end method


# virtual methods
.method public h()Lcom/shabakaty/downloader/rh2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->s:Lcom/shabakaty/downloader/rh2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cx4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->t:Lcom/shabakaty/downloader/ju;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ju;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->u:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->s:Lcom/shabakaty/downloader/rh2;

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCamera;->onStop(Lcom/shabakaty/downloader/rh2;)V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->u:Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->u:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->u:Z

    .line 5
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCamera;->s:Lcom/shabakaty/downloader/rh2;

    invoke-interface {v2}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/e$c;->u:Landroidx/lifecycle/e$c;

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->s:Lcom/shabakaty/downloader/rh2;

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCamera;->onStart(Lcom/shabakaty/downloader/rh2;)V

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy(Lcom/shabakaty/downloader/rh2;)V
    .locals 2
    .annotation runtime Landroidx/lifecycle/h;
        value = .enum Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->t:Lcom/shabakaty/downloader/ju;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ju;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ju;->m(Ljava/util/Collection;)V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart(Lcom/shabakaty/downloader/rh2;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/h;
        value = .enum Landroidx/lifecycle/e$b;->ON_START:Landroidx/lifecycle/e$b;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->u:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->t:Lcom/shabakaty/downloader/ju;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ju;->h()V

    .line 4
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStop(Lcom/shabakaty/downloader/rh2;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/h;
        value = .enum Landroidx/lifecycle/e$b;->ON_STOP:Landroidx/lifecycle/e$b;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->u:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->t:Lcom/shabakaty/downloader/ju;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ju;->j()V

    .line 4
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
