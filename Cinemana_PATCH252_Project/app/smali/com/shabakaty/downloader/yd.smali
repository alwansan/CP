.class public final Lcom/shabakaty/downloader/yd;
.super Landroid/media/MediaCodec$Callback;
.source "AsynchronousMediaCodecCallback.java"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public final d:Lcom/shabakaty/downloader/j22;

.field public final e:Lcom/shabakaty/downloader/j22;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/media/MediaFormat;

.field public i:Landroid/media/MediaFormat;

.field public j:Landroid/media/MediaCodec$CodecException;

.field public k:J

.field public l:Z

.field public m:Ljava/lang/IllegalStateException;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/yd;->b:Landroid/os/HandlerThread;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/j22;

    invoke-direct {p1}, Lcom/shabakaty/downloader/j22;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yd;->d:Lcom/shabakaty/downloader/j22;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/j22;

    invoke-direct {p1}, Lcom/shabakaty/downloader/j22;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yd;->e:Lcom/shabakaty/downloader/j22;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yd;->f:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yd;->g:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/shabakaty/downloader/yd;->i:Landroid/media/MediaFormat;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->d:Lcom/shabakaty/downloader/j22;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/j22;->a:I

    const/4 v2, -0x1

    .line 5
    iput v2, v0, Lcom/shabakaty/downloader/j22;->b:I

    .line 6
    iput v1, v0, Lcom/shabakaty/downloader/j22;->c:I

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->e:Lcom/shabakaty/downloader/j22;

    .line 8
    iput v1, v0, Lcom/shabakaty/downloader/j22;->a:I

    .line 9
    iput v2, v0, Lcom/shabakaty/downloader/j22;->b:I

    .line 10
    iput v1, v0, Lcom/shabakaty/downloader/j22;->c:I

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/shabakaty/downloader/yd;->j:Landroid/media/MediaCodec$CodecException;

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/yd;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/yd;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c(Ljava/lang/IllegalStateException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/shabakaty/downloader/yd;->m:Ljava/lang/IllegalStateException;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iput-object p2, p0, Lcom/shabakaty/downloader/yd;->j:Landroid/media/MediaCodec$CodecException;

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->d:Lcom/shabakaty/downloader/j22;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/j22;->a(I)V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->i:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/yd;->e:Lcom/shabakaty/downloader/j22;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/j22;->a(I)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/yd;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/yd;->i:Landroid/media/MediaFormat;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->e:Lcom/shabakaty/downloader/j22;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/j22;->a(I)V

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/yd;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->e:Lcom/shabakaty/downloader/j22;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/j22;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yd;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/yd;->i:Landroid/media/MediaFormat;

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
