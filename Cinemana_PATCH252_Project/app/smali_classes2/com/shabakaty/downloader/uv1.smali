.class public final Lcom/shabakaty/downloader/uv1;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1;

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILjava/util/List;)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/uv1;->e:Lcom/shabakaty/downloader/qv1;

    iput p6, p0, Lcom/shabakaty/downloader/uv1;->f:I

    iput-object p7, p0, Lcom/shabakaty/downloader/uv1;->g:Ljava/util/List;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uv1;->e:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->C:Lcom/shabakaty/downloader/zj3;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/uv1;->f:I

    iget-object v2, p0, Lcom/shabakaty/downloader/uv1;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/zj3;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uv1;->e:Lcom/shabakaty/downloader/qv1;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/uv1;->f:I

    sget-object v2, Lcom/shabakaty/downloader/s41;->x:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/aw1;->g(ILcom/shabakaty/downloader/s41;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/uv1;->e:Lcom/shabakaty/downloader/qv1;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/uv1;->e:Lcom/shabakaty/downloader/qv1;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/qv1;->S:Ljava/util/Set;

    .line 10
    iget v2, p0, Lcom/shabakaty/downloader/uv1;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
