.class public Lcom/shabakaty/downloader/x55;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/u55;


# static fields
.field public static final F:Ljava/lang/Object;


# instance fields
.field public A:Ljava/lang/Integer;

.field public B:Ljava/lang/Boolean;

.field public C:J

.field public D:Lcom/shabakaty/downloader/jc3;

.field public E:Ljava/lang/Object;

.field public final r:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/v55;

.field public volatile t:Z

.field public u:Lcom/shabakaty/downloader/u55$a;

.field public v:Lcom/shabakaty/downloader/b01;

.field public w:I

.field public x:Ljava/nio/ByteBuffer;

.field public y:Lcom/shabakaty/downloader/q30;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/v55;Lcom/shabakaty/downloader/b01;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/x55;->t:Z

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->r:Lcom/shabakaty/downloader/u55$a;

    iput-object v1, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/x55;->y:Lcom/shabakaty/downloader/q30;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/x55;->z:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/x55;->A:Ljava/lang/Integer;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/x55;->B:Ljava/lang/Boolean;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/x55;->C:J

    .line 11
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->r:Ljava/util/concurrent/BlockingQueue;

    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/shabakaty/downloader/x55;->w:I

    .line 15
    invoke-virtual {p2}, Lcom/shabakaty/downloader/b01;->d()Lcom/shabakaty/downloader/b01;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;Z)V
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/u55$a;->u:Lcom/shabakaty/downloader/u55$a;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    if-eq v1, v0, :cond_8

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/u55$a;->v:Lcom/shabakaty/downloader/u55$a;

    if-eq v1, v2, :cond_8

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/u55$a;->t:Lcom/shabakaty/downloader/u55$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_5

    const/16 v1, 0x3ee

    if-ne p1, v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 5
    invoke-virtual {p0, p1, p2, v3}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/b01;->i()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v4, :cond_4

    if-nez p3, :cond_1

    .line 8
    :try_start_2
    iget-object v2, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v2, p0, p1, p2}, Lcom/shabakaty/downloader/v55;->onWebsocketCloseInitiated(Lcom/shabakaty/downloader/u55;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/shabakaty/downloader/l32; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_3
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v4, p0, v2}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x55;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/b40;

    invoke-direct {v2}, Lcom/shabakaty/downloader/b40;-><init>()V

    if-nez p2, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    move-object v4, p2

    .line 12
    :goto_1
    iput-object v4, v2, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b40;->f()V

    .line 14
    iput p1, v2, Lcom/shabakaty/downloader/b40;->h:I

    const/16 v4, 0x3f7

    if-ne p1, v4, :cond_3

    const/16 v4, 0x3ed

    .line 15
    iput v4, v2, Lcom/shabakaty/downloader/b40;->h:I

    const-string v4, ""

    .line 16
    iput-object v4, v2, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    .line 17
    :cond_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b40;->f()V

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b40;->d()V

    .line 19
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/x55;->sendFrame(Lcom/shabakaty/downloader/rl1;)V
    :try_end_3
    .catch Lcom/shabakaty/downloader/l32; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 20
    :try_start_4
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v4, p0, v2}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    const-string v2, "generated frame is invalid"

    .line 21
    invoke-virtual {p0, v1, v2, v3}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    .line 22
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_5
    const/4 v1, -0x3

    if-ne p1, v1, :cond_6

    .line 23
    invoke-virtual {p0, v1, p2, v4}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_6
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_7

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_7
    const/4 p1, -0x1

    .line 25
    invoke-virtual {p0, p1, p2, v3}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    .line 26
    :goto_3
    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 29
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(ILjava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/u55$a;->v:Lcom/shabakaty/downloader/u55$a;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v2, Lcom/shabakaty/downloader/u55$a;->t:Lcom/shabakaty/downloader/u55$a;

    if-ne v1, v2, :cond_1

    const/16 v1, 0x3ee

    if-ne p1, v1, :cond_1

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->u:Lcom/shabakaty/downloader/u55$a;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/shabakaty/downloader/v55;->onWebsocketClose(Lcom/shabakaty/downloader/u55;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_3
    iget-object p2, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {p2, p0, p1}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b01;->m()V

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/x55;->y:Lcom/shabakaty/downloader/q30;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->r:Lcom/shabakaty/downloader/u55$a;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->t:Lcom/shabakaty/downloader/u55$a;

    if-ne v0, v1, :cond_d

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x55;->d(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 15
    :try_start_0
    iget v3, p0, Lcom/shabakaty/downloader/x55;->w:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/n32; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/shabakaty/downloader/j02; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x2

    const-string v5, "wrong http function"

    const/16 v6, 0x3ea

    if-ne v3, v4, :cond_5

    .line 16
    :try_start_1
    iget-object v3, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;
    :try_end_1
    .catch Lcom/shabakaty/downloader/n32; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/shabakaty/downloader/j02; {:try_start_1 .. :try_end_1} :catch_2

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :try_start_2
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/b01;->o(Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/ls1;

    move-result-object v3

    .line 19
    instance-of v4, v3, Lcom/shabakaty/downloader/q30;

    if-nez v4, :cond_3

    .line 20
    invoke-virtual {p0, v6, v5, v1}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    goto/16 :goto_3

    .line 21
    :cond_3
    check-cast v3, Lcom/shabakaty/downloader/q30;

    .line 22
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/b01;->b(Lcom/shabakaty/downloader/q30;)I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 23
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/x55;->i(Lcom/shabakaty/downloader/ls1;)V

    goto :goto_1

    :cond_4
    const-string v3, "the handshake did finaly not match"

    .line 24
    invoke-virtual {p0, v6, v3, v1}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V

    goto/16 :goto_3

    :cond_5
    if-ne v3, v2, :cond_a

    .line 25
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    .line 26
    iput v3, v4, Lcom/shabakaty/downloader/b01;->a:I

    .line 27
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/b01;->o(Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/ls1;

    move-result-object v3

    .line 28
    instance-of v4, v3, Lcom/shabakaty/downloader/e14;

    if-nez v4, :cond_6

    .line 29
    invoke-virtual {p0, v6, v5, v1}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    goto/16 :goto_3

    .line 30
    :cond_6
    check-cast v3, Lcom/shabakaty/downloader/e14;

    .line 31
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    iget-object v5, p0, Lcom/shabakaty/downloader/x55;->y:Lcom/shabakaty/downloader/q30;

    invoke-virtual {v4, v5, v3}, Lcom/shabakaty/downloader/b01;->a(Lcom/shabakaty/downloader/q30;Lcom/shabakaty/downloader/e14;)I

    move-result v4
    :try_end_2
    .catch Lcom/shabakaty/downloader/n32; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/shabakaty/downloader/j02; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v4, v2, :cond_7

    .line 32
    :try_start_3
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    iget-object v5, p0, Lcom/shabakaty/downloader/x55;->y:Lcom/shabakaty/downloader/q30;

    invoke-virtual {v4, p0, v5, v3}, Lcom/shabakaty/downloader/v55;->onWebsocketHandshakeReceivedAsClient(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/q30;Lcom/shabakaty/downloader/e14;)V
    :try_end_3
    .catch Lcom/shabakaty/downloader/l32; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 33
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/x55;->i(Lcom/shabakaty/downloader/ls1;)V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception v3

    .line 34
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v4, p0, v3}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    const/4 v4, -0x1

    .line 35
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v1}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    goto :goto_3

    :catch_1
    move-exception v3

    .line 36
    iget v4, v3, Lcom/shabakaty/downloader/l32;->r:I

    .line 37
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v1}, Lcom/shabakaty/downloader/x55;->f(ILjava/lang/String;Z)V

    goto :goto_3

    .line 38
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draft "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " refuses handshake"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p0, v6, v3, v1}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V
    :try_end_4
    .catch Lcom/shabakaty/downloader/n32; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/shabakaty/downloader/j02; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 40
    :try_start_5
    iget v4, v3, Lcom/shabakaty/downloader/l32;->r:I

    .line 41
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v1}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V
    :try_end_5
    .catch Lcom/shabakaty/downloader/j02; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 42
    :goto_2
    iget-object v4, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-nez v4, :cond_9

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 44
    iget v3, v3, Lcom/shabakaty/downloader/j02;->r:I

    if-nez v3, :cond_8

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v3, v0, 0x10

    .line 46
    :cond_8
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 48
    :cond_9
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_a
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_d

    .line 50
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x55;->g()Z

    move-result v0

    if-nez v0, :cond_d

    .line 51
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 52
    sget-object v3, Lcom/shabakaty/downloader/u55$a;->v:Lcom/shabakaty/downloader/u55$a;

    if-ne v0, v3, :cond_b

    const/4 v1, 0x1

    :cond_b
    if-nez v1, :cond_d

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x55;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_5

    .line 55
    :cond_c
    iget-object p1, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 56
    iget-object p1, p0, Lcom/shabakaty/downloader/x55;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x55;->d(Ljava/nio/ByteBuffer;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public final d(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/b01;->n(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rl1;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v1, p0, v0}, Lcom/shabakaty/downloader/b01;->k(Lcom/shabakaty/downloader/x55;Lcom/shabakaty/downloader/rl1;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/l32; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    .line 5
    iget v0, p1, Lcom/shabakaty/downloader/l32;->r:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->r:Lcom/shabakaty/downloader/u55$a;

    const/4 v2, 0x1

    const-string v3, ""

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0, v3, v2}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/x55;->t:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/x55;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/x55;->B:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b01;->i()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v2, :cond_2

    .line 7
    invoke-virtual {p0, v1, v3, v2}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b01;->i()I

    move-result v0

    const/16 v4, 0x3ee

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 9
    iget v0, p0, Lcom/shabakaty/downloader/x55;->w:I

    if-ne v0, v5, :cond_3

    .line 10
    invoke-virtual {p0, v4, v3, v2}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v1, v3, v2}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v4, v3, v2}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public declared-synchronized f(ILjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/x55;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->A:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/x55;->z:Ljava/lang/String;

    .line 5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->B:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/x55;->t:Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/v55;->onWriteDemand(Lcom/shabakaty/downloader/u55;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/v55;->onWebsocketClosing(Lcom/shabakaty/downloader/u55;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_3
    iget-object p2, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {p2, p0, p1}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b01;->m()V

    :cond_1
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/x55;->y:Lcom/shabakaty/downloader/q30;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->u:Lcom/shabakaty/downloader/u55$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->t:Lcom/shabakaty/downloader/u55$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Lcom/shabakaty/downloader/ls1;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u55$a;->t:Lcom/shabakaty/downloader/u55$a;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/v55;->onWebsocketOpen(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/ls1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public j(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    iget v1, p0, Lcom/shabakaty/downloader/x55;->w:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/shabakaty/downloader/b01;->g(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x55;->k(Ljava/util/Collection;)V

    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x55;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rl1;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/b01;->e(Lcom/shabakaty/downloader/rl1;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/x55;->m(Ljava/util/List;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/v61;

    invoke-direct {p1}, Lcom/shabakaty/downloader/v61;-><init>()V

    throw p1
.end method

.method public final l(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x55;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/v55;->onWriteDemand(Lcom/shabakaty/downloader/u55;)V

    return-void
.end method

.method public final m(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/x55;->l(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendFrame(Lcom/shabakaty/downloader/rl1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x55;->k(Ljava/util/Collection;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
