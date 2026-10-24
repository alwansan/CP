.class public Lcom/shabakaty/downloader/tn0$c;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/shabakaty/downloader/tn0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tn0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tn0$c;->b:Lcom/shabakaty/downloader/tn0;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Z)V
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/tn0$d;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/hj2;->a()J

    move-result-wide v1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v7

    move v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/tn0$d;-><init>(JZJLjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tn0$d;

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tn0$c;->b:Lcom/shabakaty/downloader/tn0;

    iget-object v3, v2, Lcom/shabakaty/downloader/tn0;->k:Lcom/shabakaty/downloader/ap2;

    iget-object v2, v2, Lcom/shabakaty/downloader/tn0;->l:Ljava/util/UUID;

    iget-object v4, v0, Lcom/shabakaty/downloader/tn0$d;->c:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/h71$a;

    check-cast v3, Lcom/shabakaty/downloader/mw1;

    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/mw1;->a(Ljava/util/UUID;Lcom/shabakaty/downloader/h71$a;)[B

    move-result-object v1

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/tn0$c;->b:Lcom/shabakaty/downloader/tn0;

    iget-object v3, v2, Lcom/shabakaty/downloader/tn0;->k:Lcom/shabakaty/downloader/ap2;

    iget-object v2, v2, Lcom/shabakaty/downloader/tn0;->l:Ljava/util/UUID;

    iget-object v4, v0, Lcom/shabakaty/downloader/tn0$d;->c:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/h71$d;

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/mw1;

    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/mw1;->c(Ljava/util/UUID;Lcom/shabakaty/downloader/h71$d;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/shabakaty/downloader/bp2; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v1

    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    .line 7
    invoke-static {v2, v3, v1}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 8
    :goto_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/tn0$d;

    .line 9
    iget-boolean v4, v3, Lcom/shabakaty/downloader/tn0$d;->b:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 10
    :cond_2
    iget v4, v3, Lcom/shabakaty/downloader/tn0$d;->d:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/shabakaty/downloader/tn0$d;->d:I

    .line 11
    iget-object v6, p0, Lcom/shabakaty/downloader/tn0$c;->b:Lcom/shabakaty/downloader/tn0;

    .line 12
    iget-object v6, v6, Lcom/shabakaty/downloader/tn0;->j:Lcom/shabakaty/downloader/gj2;

    .line 13
    check-cast v6, Lcom/shabakaty/downloader/po0;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v6

    if-le v4, v6, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    new-instance v4, Lcom/shabakaty/downloader/hj2;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    goto :goto_2

    .line 19
    :cond_4
    new-instance v4, Lcom/shabakaty/downloader/tn0$f;

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/shabakaty/downloader/tn0$f;-><init>(Ljava/lang/Throwable;)V

    .line 20
    :goto_2
    iget-object v6, p0, Lcom/shabakaty/downloader/tn0$c;->b:Lcom/shabakaty/downloader/tn0;

    .line 21
    iget-object v6, v6, Lcom/shabakaty/downloader/tn0;->j:Lcom/shabakaty/downloader/gj2;

    .line 22
    iget v3, v3, Lcom/shabakaty/downloader/tn0$d;->d:I

    check-cast v6, Lcom/shabakaty/downloader/po0;

    .line 23
    instance-of v6, v4, Lcom/shabakaty/downloader/pa3;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v6, :cond_6

    instance-of v6, v4, Ljava/io/FileNotFoundException;

    if-nez v6, :cond_6

    instance-of v6, v4, Lcom/shabakaty/downloader/fw1$a;

    if-nez v6, :cond_6

    instance-of v4, v4, Lcom/shabakaty/downloader/ij2$h;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x1388

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    goto :goto_4

    :cond_6
    :goto_3
    move-wide v3, v7

    :goto_4
    cmp-long v6, v3, v7

    if-nez v6, :cond_7

    goto :goto_1

    .line 25
    :cond_7
    monitor-enter p0

    .line 26
    :try_start_1
    iget-boolean v6, p0, Lcom/shabakaty/downloader/tn0$c;->a:Z

    if-nez v6, :cond_8

    .line 27
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 28
    monitor-exit p0

    goto :goto_5

    .line 29
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_5
    if-eqz v1, :cond_9

    return-void

    :cond_9
    move-object v1, v2

    .line 30
    :goto_6
    iget-object v2, p0, Lcom/shabakaty/downloader/tn0$c;->b:Lcom/shabakaty/downloader/tn0;

    .line 31
    iget-object v2, v2, Lcom/shabakaty/downloader/tn0;->j:Lcom/shabakaty/downloader/gj2;

    .line 32
    iget-wide v3, v0, Lcom/shabakaty/downloader/tn0$d;->a:J

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-enter p0

    .line 34
    :try_start_2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/tn0$c;->a:Z

    if-nez v2, :cond_a

    .line 35
    iget-object v2, p0, Lcom/shabakaty/downloader/tn0$c;->b:Lcom/shabakaty/downloader/tn0;

    iget-object v2, v2, Lcom/shabakaty/downloader/tn0;->m:Lcom/shabakaty/downloader/tn0$e;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/shabakaty/downloader/tn0$d;->c:Ljava/lang/Object;

    .line 36
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 38
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 39
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
