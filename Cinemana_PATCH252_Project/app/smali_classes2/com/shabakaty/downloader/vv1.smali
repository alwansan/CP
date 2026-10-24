.class public final Lcom/shabakaty/downloader/vv1;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1;

.field public final synthetic f:I

.field public final synthetic g:Lcom/shabakaty/downloader/s41;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILcom/shabakaty/downloader/s41;)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/vv1;->e:Lcom/shabakaty/downloader/qv1;

    iput p6, p0, Lcom/shabakaty/downloader/vv1;->f:I

    iput-object p7, p0, Lcom/shabakaty/downloader/vv1;->g:Lcom/shabakaty/downloader/s41;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vv1;->e:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->C:Lcom/shabakaty/downloader/zj3;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/vv1;->f:I

    iget-object v2, p0, Lcom/shabakaty/downloader/vv1;->g:Lcom/shabakaty/downloader/s41;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/zj3;->c(ILcom/shabakaty/downloader/s41;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/vv1;->e:Lcom/shabakaty/downloader/qv1;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vv1;->e:Lcom/shabakaty/downloader/qv1;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/qv1;->S:Ljava/util/Set;

    .line 7
    iget v2, p0, Lcom/shabakaty/downloader/vv1;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
