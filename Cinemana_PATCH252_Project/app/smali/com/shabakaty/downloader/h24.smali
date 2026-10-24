.class public final Lcom/shabakaty/downloader/h24;
.super Lcom/shabakaty/downloader/zh1;
.source "SettableImageProxy.java"


# instance fields
.field public final t:Lcom/shabakaty/downloader/xy1;

.field public final u:I

.field public final v:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fz1;Lcom/shabakaty/downloader/xy1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/zh1;-><init>(Lcom/shabakaty/downloader/fz1;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/zh1;->r:Lcom/shabakaty/downloader/fz1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->n()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/h24;->u:I

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object p1, p0, Lcom/shabakaty/downloader/zh1;->r:Lcom/shabakaty/downloader/fz1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->h()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/h24;->v:I

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/h24;->t:Lcom/shabakaty/downloader/xy1;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 10
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized L0(Landroid/graphics/Rect;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iget p1, p0, Lcom/shabakaty/downloader/h24;->u:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    .line 4
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :try_start_3
    iget v1, p0, Lcom/shabakaty/downloader/h24;->v:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public N0()Lcom/shabakaty/downloader/xy1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h24;->t:Lcom/shabakaty/downloader/xy1;

    return-object v0
.end method

.method public declared-synchronized h()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/h24;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/h24;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
