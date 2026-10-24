.class final Lcom/shabakaty/cinemana/ca1/Speed120$Limited;
.super Ljava/io/FilterInputStream;
.source "Speed120.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Speed120;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Limited"
.end annotation


# instance fields
.field final arbiter:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

.field volatile closed:Z

.field final id:I

.field final owner:Ljava/lang/Object;

.field final paused:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;ILcom/shabakaty/cinemana/ca1/Speed120$Gate;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->owner:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->id:I

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->arbiter:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "paused"

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->paused:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method check()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->closed:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->paused:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->owner:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "download paused or closed"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->closed:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->arbiter:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->arbiter:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Speed120;->poll()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x4000

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->arbiter:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    invoke-virtual {v1, p0, p3}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->acquire(Lcom/shabakaty/cinemana/ca1/Speed120$Limited;I)J

    move-result-wide v1

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->arbiter:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p3, v1, v2}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->refund(IJ)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->arbiter:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3, v1, v2}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->refund(IJ)V

    throw p1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x4000

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_2

    int-to-long v4, v3

    sub-long v6, p1, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->read([BII)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method
