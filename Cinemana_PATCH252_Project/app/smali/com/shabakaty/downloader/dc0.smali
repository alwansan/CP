.class public Lcom/shabakaty/downloader/dc0;
.super Ljava/lang/Object;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/pi2;

.field public final synthetic s:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/shabakaty/downloader/pi2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dc0;->s:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iput-object p2, p0, Lcom/shabakaty/downloader/dc0;->r:Lcom/shabakaty/downloader/pi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dc0;->s:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/dc0;->s:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-boolean v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->x:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dc0;->s:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v1}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/dc0;->s:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->y:Lcom/shabakaty/downloader/g24;

    iget-object v2, p0, Lcom/shabakaty/downloader/dc0;->r:Lcom/shabakaty/downloader/pi2;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/g24;->l(Lcom/shabakaty/downloader/pi2;)Z

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
