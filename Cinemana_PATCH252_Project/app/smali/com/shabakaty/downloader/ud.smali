.class public final Lcom/shabakaty/downloader/ud;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/shabakaty/downloader/oo2;


# instance fields
.field public final a:Landroid/media/MediaCodec;

.field public final b:Lcom/shabakaty/downloader/yd;

.field public final c:Lcom/shabakaty/downloader/xd;

.field public final d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/shabakaty/downloader/ud$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    .line 3
    new-instance p6, Lcom/shabakaty/downloader/yd;

    invoke-direct {p6, p2}, Lcom/shabakaty/downloader/yd;-><init>(Landroid/os/HandlerThread;)V

    iput-object p6, p0, Lcom/shabakaty/downloader/ud;->b:Lcom/shabakaty/downloader/yd;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/xd;

    invoke-direct {p2, p1, p3, p4}, Lcom/shabakaty/downloader/xd;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Z)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ud;->c:Lcom/shabakaty/downloader/xd;

    .line 5
    iput-boolean p5, p0, Lcom/shabakaty/downloader/ud;->d:Z

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/shabakaty/downloader/ud;->f:I

    return-void
.end method

.method public static p(Lcom/shabakaty/downloader/ud;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->b:Lcom/shabakaty/downloader/yd;

    iget-object v1, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->c:Landroid/os/Handler;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v2, Landroid/os/Handler;

    iget-object v4, v0, Lcom/shabakaty/downloader/yd;->b:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/yd;->c:Landroid/os/Handler;

    const-string v0, "configureCodec"

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/md;->g()V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/ud;->c:Lcom/shabakaty/downloader/xd;

    .line 11
    iget-boolean p2, p1, Lcom/shabakaty/downloader/xd;->g:Z

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/xd;->b:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance p2, Lcom/shabakaty/downloader/wd;

    iget-object p3, p1, Lcom/shabakaty/downloader/xd;->b:Landroid/os/HandlerThread;

    .line 14
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/wd;-><init>(Lcom/shabakaty/downloader/xd;Landroid/os/Looper;)V

    iput-object p2, p1, Lcom/shabakaty/downloader/xd;->c:Landroid/os/Handler;

    .line 15
    iput-boolean v3, p1, Lcom/shabakaty/downloader/xd;->g:Z

    :cond_1
    const-string p1, "startCodec"

    .line 16
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->a(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 18
    invoke-static {}, Lcom/shabakaty/downloader/md;->g()V

    .line 19
    iput v3, p0, Lcom/shabakaty/downloader/ud;->f:I

    return-void
.end method

.method public static q(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/ud;->f:I

    if-ne v1, v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ud;->c:Lcom/shabakaty/downloader/xd;

    .line 3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/xd;->g:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xd;->d()V

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/xd;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/shabakaty/downloader/xd;->g:Z

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ud;->b:Lcom/shabakaty/downloader/yd;

    .line 8
    iget-object v2, v1, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iput-boolean v0, v1, Lcom/shabakaty/downloader/yd;->l:Z

    .line 10
    iget-object v3, v1, Lcom/shabakaty/downloader/yd;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yd;->a()V

    .line 12
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 13
    iput v1, p0, Lcom/shabakaty/downloader/ud;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ud;->e:Z

    if-nez v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 16
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ud;->e:Z

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 17
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ud;->e:Z

    if-nez v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 19
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ud;->e:Z

    .line 20
    :cond_3
    throw v1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->b:Lcom/shabakaty/downloader/yd;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/yd;->h:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ud;->r()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public f()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->b:Lcom/shabakaty/downloader/yd;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yd;->b()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_2

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->m:Ljava/lang/IllegalStateException;

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_3

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/yd;->d:Lcom/shabakaty/downloader/j22;

    .line 8
    iget v2, v0, Lcom/shabakaty/downloader/j22;->c:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/j22;->b()I

    move-result v3

    :goto_1
    monitor-exit v1

    :goto_2
    return v3

    .line 10
    :cond_3
    iput-object v4, v0, Lcom/shabakaty/downloader/yd;->j:Landroid/media/MediaCodec$CodecException;

    .line 11
    throw v2

    .line 12
    :cond_4
    iput-object v4, v0, Lcom/shabakaty/downloader/yd;->m:Ljava/lang/IllegalStateException;

    .line 13
    throw v2

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->c:Lcom/shabakaty/downloader/xd;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xd;->d()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->b:Lcom/shabakaty/downloader/yd;

    iget-object v1, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/shabakaty/downloader/rr;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/rr;-><init>(Landroid/media/MediaCodec;)V

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-wide v3, v0, Lcom/shabakaty/downloader/yd;->k:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/shabakaty/downloader/yd;->k:J

    .line 6
    iget-object v3, v0, Lcom/shabakaty/downloader/yd;->c:Landroid/os/Handler;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    new-instance v4, Lcom/shabakaty/downloader/or;

    invoke-direct {v4, v0, v2}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/yd;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(IILcom/shabakaty/downloader/ug0;JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->c:Lcom/shabakaty/downloader/xd;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xd;->f()V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/xd;->e()Lcom/shabakaty/downloader/xd$a;

    move-result-object v1

    .line 4
    iput p1, v1, Lcom/shabakaty/downloader/xd$a;->a:I

    .line 5
    iput p2, v1, Lcom/shabakaty/downloader/xd$a;->b:I

    const/4 p1, 0x0

    .line 6
    iput p1, v1, Lcom/shabakaty/downloader/xd$a;->c:I

    .line 7
    iput-wide p4, v1, Lcom/shabakaty/downloader/xd$a;->e:J

    .line 8
    iput p6, v1, Lcom/shabakaty/downloader/xd$a;->f:I

    .line 9
    iget-object p1, v1, Lcom/shabakaty/downloader/xd$a;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 10
    iget p2, p3, Lcom/shabakaty/downloader/ug0;->f:I

    iput p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 11
    iget-object p2, p3, Lcom/shabakaty/downloader/ug0;->d:[I

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 12
    invoke-static {p2, p4}, Lcom/shabakaty/downloader/xd;->c([I[I)[I

    move-result-object p2

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 13
    iget-object p2, p3, Lcom/shabakaty/downloader/ug0;->e:[I

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 14
    invoke-static {p2, p4}, Lcom/shabakaty/downloader/xd;->c([I[I)[I

    move-result-object p2

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 15
    iget-object p2, p3, Lcom/shabakaty/downloader/ug0;->b:[B

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/xd;->b([B[B)[B

    move-result-object p2

    .line 16
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 18
    iget-object p2, p3, Lcom/shabakaty/downloader/ug0;->a:[B

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/xd;->b([B[B)[B

    move-result-object p2

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 21
    iget p2, p3, Lcom/shabakaty/downloader/ug0;->c:I

    iput p2, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 22
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 p4, 0x18

    if-lt p2, p4, :cond_0

    .line 23
    new-instance p2, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget p4, p3, Lcom/shabakaty/downloader/ug0;->g:I

    iget p3, p3, Lcom/shabakaty/downloader/ug0;->h:I

    invoke-direct {p2, p4, p3}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 25
    :cond_0
    iget-object p1, v0, Lcom/shabakaty/downloader/xd;->c:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public h(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->b:Lcom/shabakaty/downloader/yd;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/yd;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yd;->b()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_2

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->m:Ljava/lang/IllegalStateException;

    const/4 v4, 0x0

    if-nez v2, :cond_6

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_5

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->e:Lcom/shabakaty/downloader/j22;

    .line 8
    iget v4, v2, Lcom/shabakaty/downloader/j22;->c:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 9
    monitor-exit v1

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/j22;->b()I

    move-result v3

    if-ltz v3, :cond_3

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/yd;->h:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/yd;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    .line 13
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_1

    :cond_3
    const/4 p1, -0x2

    if-ne v3, p1, :cond_4

    .line 14
    iget-object p1, v0, Lcom/shabakaty/downloader/yd;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, v0, Lcom/shabakaty/downloader/yd;->h:Landroid/media/MediaFormat;

    .line 15
    :cond_4
    :goto_1
    monitor-exit v1

    :goto_2
    return v3

    .line 16
    :cond_5
    iput-object v4, v0, Lcom/shabakaty/downloader/yd;->j:Landroid/media/MediaCodec$CodecException;

    .line 17
    throw v2

    .line 18
    :cond_6
    iput-object v4, v0, Lcom/shabakaty/downloader/yd;->m:Ljava/lang/IllegalStateException;

    .line 19
    throw v2

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Lcom/shabakaty/downloader/oo2$c;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ud;->r()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    new-instance v1, Lcom/shabakaty/downloader/td;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/td;-><init>(Lcom/shabakaty/downloader/ud;Lcom/shabakaty/downloader/oo2$c;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public j(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ud;->r()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public l(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ud;->r()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public n(IIIJI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->c:Lcom/shabakaty/downloader/xd;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xd;->f()V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/xd;->e()Lcom/shabakaty/downloader/xd$a;

    move-result-object v1

    .line 4
    iput p1, v1, Lcom/shabakaty/downloader/xd$a;->a:I

    .line 5
    iput p2, v1, Lcom/shabakaty/downloader/xd$a;->b:I

    .line 6
    iput p3, v1, Lcom/shabakaty/downloader/xd$a;->c:I

    .line 7
    iput-wide p4, v1, Lcom/shabakaty/downloader/xd$a;->e:J

    .line 8
    iput p6, v1, Lcom/shabakaty/downloader/xd$a;->f:I

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/xd;->c:Landroid/os/Handler;

    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public o(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ud;->d:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ud;->c:Lcom/shabakaty/downloader/xd;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xd;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
