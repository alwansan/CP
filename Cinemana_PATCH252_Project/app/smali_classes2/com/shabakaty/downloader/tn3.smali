.class public final Lcom/shabakaty/downloader/tn3;
.super Lcom/shabakaty/downloader/qv1$c;
.source "RealConnection.kt"

# interfaces
.implements Lcom/shabakaty/downloader/eb0;


# instance fields
.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Lcom/shabakaty/downloader/is1;

.field public e:Lcom/shabakaty/downloader/mj3;

.field public f:Lcom/shabakaty/downloader/qv1;

.field public g:Lcom/shabakaty/downloader/eo;

.field public h:Lcom/shabakaty/downloader/do;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/shabakaty/downloader/pn3;",
            ">;>;"
        }
    .end annotation
.end field

.field public p:J

.field public final q:Lcom/shabakaty/downloader/ju3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/un3;Lcom/shabakaty/downloader/ju3;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qv1$c;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/tn3;->n:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->o:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    iput-wide p1, p0, Lcom/shabakaty/downloader/tn3;->p:J

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/mj3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized b(Lcom/shabakaty/downloader/qv1;Lcom/shabakaty/downloader/q24;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, Lcom/shabakaty/downloader/q24;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/shabakaty/downloader/q24;->b:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 2
    :goto_0
    iput p1, p0, Lcom/shabakaty/downloader/tn3;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lcom/shabakaty/downloader/zv1;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s41;->w:Lcom/shabakaty/downloader/s41;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/zv1;->c(Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    return-void
.end method

.method public final d(IIIIZLcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v10, "proxy"

    const-string v11, "inetSocketAddress"

    const-string v0, "call"

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;

    const/4 v12, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_13

    .line 2
    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/p4;->c:Ljava/util/List;

    .line 5
    new-instance v13, Lcom/shabakaty/downloader/s66;

    invoke-direct {v13, v0}, Lcom/shabakaty/downloader/s66;-><init>(Ljava/util/List;)V

    .line 6
    iget-object v1, v7, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 8
    iget-object v2, v1, Lcom/shabakaty/downloader/p4;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_3

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/ib0;->f:Lcom/shabakaty/downloader/ib0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 16
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lc3;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/lu3;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    .line 18
    invoke-static {v3, v0, v4}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/lu3;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 20
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/lu3;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lu3;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 21
    :cond_3
    iget-object v0, v1, Lcom/shabakaty/downloader/p4;->b:Ljava/util/List;

    .line 22
    sget-object v1, Lcom/shabakaty/downloader/mj3;->w:Lcom/shabakaty/downloader/mj3;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_1
    const/4 v14, 0x0

    move-object v15, v14

    .line 23
    :goto_2
    :try_start_0
    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ju3;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/tn3;->g(IIILcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V

    .line 25
    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_4

    :goto_3
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_7

    :cond_5
    move/from16 v1, p1

    move/from16 v2, p2

    .line 26
    :try_start_1
    invoke-virtual {v7, v1, v2, v8, v9}, Lcom/shabakaty/downloader/tn3;->f(IILcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move/from16 v3, p4

    .line 27
    :try_start_2
    invoke-virtual {v7, v13, v3, v8, v9}, Lcom/shabakaty/downloader/tn3;->h(Lcom/shabakaty/downloader/s66;ILcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V

    .line 28
    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 29
    iget-object v4, v0, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 31
    invoke-static {v4, v11}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    :goto_5
    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ju3;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    if-eqz v0, :cond_6

    goto :goto_6

    .line 33
    :cond_6
    new-instance v0, Lcom/shabakaty/downloader/lu3;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lu3;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 34
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/shabakaty/downloader/tn3;->p:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_7
    move/from16 v3, p4

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_3

    .line 35
    :goto_8
    iget-object v4, v7, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/shabakaty/downloader/ry4;->e(Ljava/net/Socket;)V

    .line 36
    :cond_8
    iget-object v4, v7, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/shabakaty/downloader/ry4;->e(Ljava/net/Socket;)V

    .line 37
    :cond_9
    iput-object v14, v7, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    .line 38
    iput-object v14, v7, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    .line 39
    iput-object v14, v7, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    .line 40
    iput-object v14, v7, Lcom/shabakaty/downloader/tn3;->h:Lcom/shabakaty/downloader/do;

    .line 41
    iput-object v14, v7, Lcom/shabakaty/downloader/tn3;->d:Lcom/shabakaty/downloader/is1;

    .line 42
    iput-object v14, v7, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;

    .line 43
    iput-object v14, v7, Lcom/shabakaty/downloader/tn3;->f:Lcom/shabakaty/downloader/qv1;

    .line 44
    iput v12, v7, Lcom/shabakaty/downloader/tn3;->n:I

    .line 45
    iget-object v4, v7, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 46
    iget-object v5, v4, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 47
    iget-object v4, v4, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 48
    invoke-static {v5, v11}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v15, :cond_a

    .line 49
    new-instance v15, Lcom/shabakaty/downloader/lu3;

    invoke-direct {v15, v0}, Lcom/shabakaty/downloader/lu3;-><init>(Ljava/io/IOException;)V

    goto :goto_9

    .line 50
    :cond_a
    iget-object v4, v15, Lcom/shabakaty/downloader/lu3;->s:Ljava/io/IOException;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 51
    iput-object v0, v15, Lcom/shabakaty/downloader/lu3;->r:Ljava/io/IOException;

    :goto_9
    if-eqz p5, :cond_11

    .line 52
    iput-boolean v12, v13, Lcom/shabakaty/downloader/s66;->c:Z

    .line 53
    iget-boolean v4, v13, Lcom/shabakaty/downloader/s66;->b:Z

    if-nez v4, :cond_b

    goto :goto_a

    .line 54
    :cond_b
    instance-of v4, v0, Ljava/net/ProtocolException;

    if-eqz v4, :cond_c

    goto :goto_a

    .line 55
    :cond_c
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_d

    goto :goto_a

    .line 56
    :cond_d
    instance-of v4, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_e

    goto :goto_a

    .line 57
    :cond_e
    instance-of v4, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v4, :cond_f

    goto :goto_a

    .line 58
    :cond_f
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_11

    goto/16 :goto_2

    .line 59
    :cond_11
    throw v15

    .line 60
    :cond_12
    new-instance v0, Lcom/shabakaty/downloader/lu3;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lu3;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 61
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/ju3;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 2
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p2, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/p4;->k:Ljava/net/ProxySelector;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qw1;->j()Ljava/net/URI;

    move-result-object v0

    .line 7
    iget-object v2, p2, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 8
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/a63;->U:Lcom/shabakaty/downloader/ku3;

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p3, p1, Lcom/shabakaty/downloader/ku3;->a:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final f(IILcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 4
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/shabakaty/downloader/qn3;->a:[I

    invoke-virtual {v2}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 5
    :goto_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/p4;->e:Ljavax/net/SocketFactory;

    .line 7
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    :goto_1
    iput-object v0, p0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 11
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "call"

    .line 12
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "inetSocketAddress"

    invoke-static {v2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "proxy"

    invoke-static {v1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    :try_start_0
    sget-object p2, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 15
    sget-object p2, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 16
    iget-object p3, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 17
    iget-object p3, p3, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 18
    invoke-virtual {p2, v0, p3, p1}, Lcom/shabakaty/downloader/lc3;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->P(Ljava/net/Socket;)Lcom/shabakaty/downloader/r94;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    .line 20
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->M(Ljava/net/Socket;)Lcom/shabakaty/downloader/l84;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->h:Lcom/shabakaty/downloader/do;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 22
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 23
    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 24
    iget-object p4, p4, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 25
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    throw p2
.end method

.method public final g(IIILcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v2}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 3
    iget-object v3, v3, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 5
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/vr3$a;->j(Lcom/shabakaty/downloader/qw1;)Lcom/shabakaty/downloader/vr3$a;

    const-string v3, "CONNECT"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 8
    iget-object v3, v3, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 9
    iget-object v3, v3, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    const/4 v5, 0x1

    .line 10
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/ry4;->w(Lcom/shabakaty/downloader/qw1;Z)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Host"

    invoke-virtual {v2, v6, v3}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    const-string v3, "Proxy-Connection"

    const-string v6, "Keep-Alive"

    .line 11
    invoke-virtual {v2, v3, v6}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    const-string v3, "User-Agent"

    const-string v6, "okhttp/4.9.2"

    .line 12
    invoke-virtual {v2, v3, v6}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v2

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v3}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    .line 15
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 16
    sget-object v6, Lcom/shabakaty/downloader/mj3;->t:Lcom/shabakaty/downloader/mj3;

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    const/16 v6, 0x197

    .line 17
    iput v6, v3, Lcom/shabakaty/downloader/ws3$a;->c:I

    const-string v6, "Preemptive Authenticate"

    .line 18
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    .line 19
    sget-object v6, Lcom/shabakaty/downloader/ry4;->c:Lcom/shabakaty/downloader/ys3;

    .line 20
    iput-object v6, v3, Lcom/shabakaty/downloader/ws3$a;->g:Lcom/shabakaty/downloader/ys3;

    const-wide/16 v6, -0x1

    .line 21
    iput-wide v6, v3, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 22
    iput-wide v6, v3, Lcom/shabakaty/downloader/ws3$a;->l:J

    const-string v6, "Proxy-Authenticate"

    const-string v7, "OkHttp-Preemptive"

    .line 23
    invoke-virtual {v3, v6, v7}, Lcom/shabakaty/downloader/ws3$a;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    .line 24
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v3

    .line 25
    iget-object v6, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 26
    iget-object v7, v6, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 27
    iget-object v7, v7, Lcom/shabakaty/downloader/p4;->i:Lcom/shabakaty/downloader/if;

    .line 28
    invoke-interface {v7, v6, v3}, Lcom/shabakaty/downloader/if;->authenticate(Lcom/shabakaty/downloader/ju3;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/vr3;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    .line 29
    :cond_0
    iget-object v3, v2, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x15

    if-ge v6, v7, :cond_8

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 30
    invoke-virtual {v0, v7, v1, v8, v9}, Lcom/shabakaty/downloader/tn3;->f(IILcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V

    .line 31
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CONNECT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/ry4;->w(Lcom/shabakaty/downloader/qw1;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HTTP/1.1"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 32
    :goto_1
    iget-object v10, v0, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    invoke-static {v10}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 33
    iget-object v11, v0, Lcom/shabakaty/downloader/tn3;->h:Lcom/shabakaty/downloader/do;

    invoke-static {v11}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 34
    new-instance v12, Lcom/shabakaty/downloader/ov1;

    invoke-direct {v12, v4, v0, v10, v11}, Lcom/shabakaty/downloader/ov1;-><init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/tn3;Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/do;)V

    .line 35
    invoke-interface {v10}, Lcom/shabakaty/downloader/r94;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v4

    int-to-long v13, v1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v13, v14, v15}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    .line 36
    invoke-interface {v11}, Lcom/shabakaty/downloader/l84;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v4

    move/from16 v13, p3

    int-to-long v7, v13

    invoke-virtual {v4, v7, v8, v15}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    .line 37
    iget-object v4, v2, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 38
    invoke-virtual {v12, v4, v5}, Lcom/shabakaty/downloader/ov1;->k(Lcom/shabakaty/downloader/ts1;Ljava/lang/String;)V

    .line 39
    iget-object v4, v12, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    invoke-interface {v4}, Lcom/shabakaty/downloader/do;->flush()V

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v12, v4}, Lcom/shabakaty/downloader/ov1;->f(Z)Lcom/shabakaty/downloader/ws3$a;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 42
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/shabakaty/downloader/ry4;->k(Lcom/shabakaty/downloader/ws3;)J

    move-result-wide v7

    const-wide/16 v16, -0x1

    cmp-long v4, v7, v16

    if-nez v4, :cond_1

    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {v12, v7, v8}, Lcom/shabakaty/downloader/ov1;->j(J)Lcom/shabakaty/downloader/r94;

    move-result-object v4

    const v7, 0x7fffffff

    .line 45
    invoke-static {v4, v7, v15}, Lcom/shabakaty/downloader/ry4;->u(Lcom/shabakaty/downloader/r94;ILjava/util/concurrent/TimeUnit;)Z

    .line 46
    check-cast v4, Lcom/shabakaty/downloader/ov1$d;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ov1$d;->close()V

    .line 47
    :goto_2
    iget v4, v2, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v7, 0xc8

    if-eq v4, v7, :cond_5

    const/16 v7, 0x197

    if-ne v4, v7, :cond_4

    .line 48
    iget-object v4, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 49
    iget-object v7, v4, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 50
    iget-object v7, v7, Lcom/shabakaty/downloader/p4;->i:Lcom/shabakaty/downloader/if;

    .line 51
    invoke-interface {v7, v4, v2}, Lcom/shabakaty/downloader/if;->authenticate(Lcom/shabakaty/downloader/ju3;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/vr3;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v7, 0x2

    const-string v8, "Connection"

    const/4 v10, 0x0

    .line 52
    invoke-static {v2, v8, v10, v7}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "close"

    const/4 v8, 0x1

    invoke-static {v7, v2, v8}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    goto/16 :goto_1

    .line 53
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    iget v2, v2, Lcom/shabakaty/downloader/ws3;->v:I

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_5
    invoke-interface {v10}, Lcom/shabakaty/downloader/eo;->i()Lcom/shabakaty/downloader/zn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/zn;->W()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Lcom/shabakaty/downloader/do;->i()Lcom/shabakaty/downloader/zn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/zn;->W()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    .line 58
    iget-object v4, v0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/shabakaty/downloader/ry4;->e(Ljava/net/Socket;)V

    :cond_6
    const/4 v4, 0x0

    .line 59
    iput-object v4, v0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    .line 60
    iput-object v4, v0, Lcom/shabakaty/downloader/tn3;->h:Lcom/shabakaty/downloader/do;

    .line 61
    iput-object v4, v0, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    .line 62
    iget-object v5, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 63
    iget-object v7, v5, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 64
    iget-object v5, v5, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    const-string v8, "inetSocketAddress"

    .line 65
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "proxy"

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 66
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    return-void
.end method

.method public final h(Lcom/shabakaty/downloader/s66;ILcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V
    .locals 11

    .line 1
    sget-object p3, Lcom/shabakaty/downloader/mj3;->v:Lcom/shabakaty/downloader/mj3;

    sget-object p4, Lcom/shabakaty/downloader/mj3;->w:Lcom/shabakaty/downloader/mj3;

    sget-object v0, Lcom/shabakaty/downloader/mj3;->t:Lcom/shabakaty/downloader/mj3;

    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/p4;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_1

    .line 4
    iget-object p1, v1, Lcom/shabakaty/downloader/p4;->b:Ljava/util/List;

    .line 5
    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;

    .line 8
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/tn3;->n(I)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    .line 13
    iget-object v5, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 14
    iget-object v6, v5, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 15
    iget v5, v5, Lcom/shabakaty/downloader/qw1;->f:I

    const/4 v7, 0x1

    .line 16
    invoke-virtual {v2, v4, v6, v5, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_f

    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/s66;->a(Ljavax/net/ssl/SSLSocket;)Lcom/shabakaty/downloader/ib0;

    move-result-object p1

    .line 18
    iget-boolean v4, p1, Lcom/shabakaty/downloader/ib0;->b:Z

    if-eqz v4, :cond_2

    .line 19
    sget-object v4, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 20
    sget-object v4, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 21
    iget-object v5, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 22
    iget-object v5, v5, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 23
    iget-object v6, v1, Lcom/shabakaty/downloader/p4;->b:Ljava/util/List;

    .line 24
    invoke-virtual {v4, v2, v5, v6}, Lcom/shabakaty/downloader/lc3;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    :cond_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 26
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    const-string v5, "sslSocketSession"

    .line 27
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/shabakaty/downloader/is1;->a(Ljavax/net/ssl/SSLSession;)Lcom/shabakaty/downloader/is1;

    move-result-object v5

    .line 28
    iget-object v6, v1, Lcom/shabakaty/downloader/p4;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 29
    invoke-static {v6}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 30
    iget-object v8, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 31
    iget-object v8, v8, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 32
    invoke-interface {v6, v8, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 33
    invoke-virtual {v5}, Lcom/shabakaty/downloader/is1;->c()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v7

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 36
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\n              |Hostname "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object p4, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 38
    iget-object p4, p4, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not verified:\n              |    certificate: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object p4, Lcom/shabakaty/downloader/ey;->d:Lcom/shabakaty/downloader/ey$a;

    invoke-virtual {p4, p1}, Lcom/shabakaty/downloader/ey$a;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n              |    DN: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p4

    const-string v0, "cert.subjectDN"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n              |    subjectAltNames: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object p4, Lcom/shabakaty/downloader/x53;->a:Lcom/shabakaty/downloader/x53;

    const/4 v0, 0x7

    .line 43
    invoke-virtual {p4, p1, v0}, Lcom/shabakaty/downloader/x53;->b(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    .line 44
    invoke-virtual {p4, p1, v1}, Lcom/shabakaty/downloader/x53;->b(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1, v3, v7}, Lcom/shabakaty/downloader/je4;->x(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_4
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hostname "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object p3, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 53
    iget-object p3, p3, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified (no certificates)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_5
    iget-object v4, v1, Lcom/shabakaty/downloader/p4;->h:Lcom/shabakaty/downloader/ey;

    .line 57
    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 58
    new-instance v6, Lcom/shabakaty/downloader/is1;

    .line 59
    iget-object v7, v5, Lcom/shabakaty/downloader/is1;->b:Lcom/shabakaty/downloader/yn4;

    .line 60
    iget-object v8, v5, Lcom/shabakaty/downloader/is1;->c:Lcom/shabakaty/downloader/a20;

    .line 61
    iget-object v9, v5, Lcom/shabakaty/downloader/is1;->d:Ljava/util/List;

    .line 62
    new-instance v10, Lcom/shabakaty/downloader/rn3;

    invoke-direct {v10, v4, v5, v1}, Lcom/shabakaty/downloader/rn3;-><init>(Lcom/shabakaty/downloader/ey;Lcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/p4;)V

    .line 63
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/shabakaty/downloader/is1;-><init>(Lcom/shabakaty/downloader/yn4;Lcom/shabakaty/downloader/a20;Ljava/util/List;Lcom/shabakaty/downloader/rm1;)V

    iput-object v6, p0, Lcom/shabakaty/downloader/tn3;->d:Lcom/shabakaty/downloader/is1;

    .line 64
    iget-object v1, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 65
    iget-object v1, v1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 66
    new-instance v5, Lcom/shabakaty/downloader/sn3;

    invoke-direct {v5, p0}, Lcom/shabakaty/downloader/sn3;-><init>(Lcom/shabakaty/downloader/tn3;)V

    invoke-virtual {v4, v1, v5}, Lcom/shabakaty/downloader/ey;->a(Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)V

    .line 67
    iget-boolean p1, p1, Lcom/shabakaty/downloader/ib0;->b:Z

    if-eqz p1, :cond_6

    .line 68
    sget-object p1, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 69
    sget-object p1, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 70
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/lc3;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v3

    .line 71
    :cond_6
    iput-object v2, p0, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    .line 72
    invoke-static {v2}, Lcom/shabakaty/downloader/md0;->P(Ljava/net/Socket;)Lcom/shabakaty/downloader/r94;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    .line 73
    invoke-static {v2}, Lcom/shabakaty/downloader/md0;->M(Ljava/net/Socket;)Lcom/shabakaty/downloader/l84;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->h:Lcom/shabakaty/downloader/do;

    if-eqz v3, :cond_d

    .line 74
    sget-object p1, Lcom/shabakaty/downloader/mj3;->s:Lcom/shabakaty/downloader/mj3;

    const-string v1, "http/1.0"

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p4, p1

    goto :goto_0

    :cond_7
    const-string p1, "http/1.1"

    .line 75
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "h2_prior_knowledge"

    .line 76
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    const-string p1, "h2"

    .line 77
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move-object p4, p3

    goto :goto_0

    .line 78
    :cond_a
    sget-object p4, Lcom/shabakaty/downloader/mj3;->u:Lcom/shabakaty/downloader/mj3;

    const-string p1, "spdy/3.1"

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    .line 79
    :cond_b
    sget-object p4, Lcom/shabakaty/downloader/mj3;->x:Lcom/shabakaty/downloader/mj3;

    const-string p1, "quic"

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_0
    move-object v0, p4

    goto :goto_1

    .line 80
    :cond_c
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected protocol: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_d
    :goto_1
    iput-object v0, p0, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    sget-object p1, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 83
    sget-object p1, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 84
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/lc3;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 85
    iget-object p1, p0, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;

    if-ne p1, p3, :cond_e

    .line 86
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/tn3;->n(I)V

    :cond_e
    return-void

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_2

    .line 87
    :cond_f
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v3, :cond_10

    .line 88
    sget-object p2, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 89
    sget-object p2, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 90
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/lc3;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_10
    if-eqz v3, :cond_11

    .line 91
    invoke-static {v3}, Lcom/shabakaty/downloader/ry4;->e(Ljava/net/Socket;)V

    :cond_11
    throw p1
.end method

.method public final i(Lcom/shabakaty/downloader/p4;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/p4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ju3;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/tn3;->n:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/shabakaty/downloader/tn3;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/p4;->a(Lcom/shabakaty/downloader/p4;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 12
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->f:Lcom/shabakaty/downloader/qv1;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_f

    .line 14
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ju3;

    .line 16
    iget-object v3, v0, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 17
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_6

    .line 18
    iget-object v3, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 19
    iget-object v3, v3, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 20
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 21
    iget-object v3, v3, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 22
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_8

    goto/16 :goto_7

    .line 23
    :cond_8
    iget-object p2, p1, Lcom/shabakaty/downloader/p4;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/x53;->a:Lcom/shabakaty/downloader/x53;

    if-eq p2, v0, :cond_9

    return v2

    .line 25
    :cond_9
    iget-object p2, p1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 26
    sget-object v3, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 27
    iget-object v3, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 28
    iget-object v3, v3, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 29
    iget-object v3, v3, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 30
    iget v4, p2, Lcom/shabakaty/downloader/qw1;->f:I

    iget v5, v3, Lcom/shabakaty/downloader/qw1;->f:I

    if-eq v4, v5, :cond_a

    goto :goto_5

    .line 31
    :cond_a
    iget-object v4, p2, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    iget-object v3, v3, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 32
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 33
    :cond_b
    iget-boolean v3, p0, Lcom/shabakaty/downloader/tn3;->j:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/shabakaty/downloader/tn3;->d:Lcom/shabakaty/downloader/is1;

    if-eqz v3, :cond_d

    .line 34
    invoke-virtual {v3}, Lcom/shabakaty/downloader/is1;->c()Ljava/util/List;

    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_c

    .line 36
    iget-object p2, p2, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 37
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 38
    invoke-virtual {v0, p2, v3}, Lcom/shabakaty/downloader/x53;->d(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p2, 0x1

    goto :goto_3

    :cond_c
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_d

    :goto_4
    const/4 p2, 0x1

    goto :goto_6

    :cond_d
    :goto_5
    const/4 p2, 0x0

    :goto_6
    if-nez p2, :cond_e

    return v2

    .line 39
    :cond_e
    :try_start_0
    iget-object p2, p1, Lcom/shabakaty/downloader/p4;->h:Lcom/shabakaty/downloader/ey;

    .line 40
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 42
    iget-object p1, p1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->d:Lcom/shabakaty/downloader/is1;

    .line 44
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/is1;->c()Ljava/util/List;

    move-result-object v0

    const-string v3, "hostname"

    .line 45
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "peerCertificates"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lcom/shabakaty/downloader/fy;

    invoke-direct {v3, p2, v0, p1}, Lcom/shabakaty/downloader/fy;-><init>(Lcom/shabakaty/downloader/ey;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v3}, Lcom/shabakaty/downloader/ey;->a(Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_f
    :goto_7
    return v2
.end method

.method public final j(Z)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/tn3;->f:Lcom/shabakaty/downloader/qv1;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget-boolean p1, v2, Lcom/shabakaty/downloader/qv1;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 10
    :cond_1
    :try_start_1
    iget-wide v3, v2, Lcom/shabakaty/downloader/qv1;->G:J

    iget-wide v7, v2, Lcom/shabakaty/downloader/qv1;->F:J

    cmp-long p1, v3, v7

    if-gez p1, :cond_2

    iget-wide v3, v2, Lcom/shabakaty/downloader/qv1;->I:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 11
    :cond_2
    monitor-exit v2

    const/4 v5, 0x1

    :goto_0
    return v5

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 12
    :cond_3
    monitor-enter p0

    :try_start_2
    iget-wide v7, p0, Lcom/shabakaty/downloader/tn3;->p:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long v2, v0, v7

    if-ltz v2, :cond_4

    if-eqz p1, :cond_4

    const-string p1, "$this$isHealthy"

    .line 13
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 15
    :try_start_4
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 16
    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->W()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    xor-int/2addr v0, v6

    .line 17
    :try_start_5
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    const/4 v5, 0x1

    :catch_1
    :goto_1
    return v5

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    .line 18
    monitor-exit p0

    throw p1

    :cond_5
    :goto_2
    return v5
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->f:Lcom/shabakaty/downloader/qv1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/vn3;)Lcom/shabakaty/downloader/f61;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tn3;->h:Lcom/shabakaty/downloader/do;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/tn3;->f:Lcom/shabakaty/downloader/qv1;

    if-eqz v3, :cond_0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/xv1;

    invoke-direct {v0, p1, p0, p2, v3}, Lcom/shabakaty/downloader/xv1;-><init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/tn3;Lcom/shabakaty/downloader/vn3;Lcom/shabakaty/downloader/qv1;)V

    goto :goto_0

    .line 6
    :cond_0
    iget v3, p2, Lcom/shabakaty/downloader/vn3;->h:I

    .line 7
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 8
    invoke-interface {v1}, Lcom/shabakaty/downloader/r94;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    .line 9
    iget v3, p2, Lcom/shabakaty/downloader/vn3;->h:I

    int-to-long v3, v3

    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    .line 11
    invoke-interface {v2}, Lcom/shabakaty/downloader/l84;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    .line 12
    iget p2, p2, Lcom/shabakaty/downloader/vn3;->i:I

    int-to-long v3, p2

    .line 13
    invoke-virtual {v0, v3, v4, v5}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/ov1;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/shabakaty/downloader/ov1;-><init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/tn3;Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/do;)V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized m()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/tn3;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->g:Lcom/shabakaty/downloader/eo;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tn3;->h:Lcom/shabakaty/downloader/do;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/qv1$b;

    sget-object v5, Lcom/shabakaty/downloader/il4;->h:Lcom/shabakaty/downloader/il4;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lcom/shabakaty/downloader/qv1$b;-><init>(ZLcom/shabakaty/downloader/il4;)V

    .line 6
    iget-object v7, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 7
    iget-object v7, v7, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 8
    iget-object v7, v7, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 9
    iget-object v7, v7, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    const-string v8, "peerName"

    .line 10
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v0, v4, Lcom/shabakaty/downloader/qv1$b;->a:Ljava/net/Socket;

    .line 12
    iget-boolean v0, v4, Lcom/shabakaty/downloader/qv1$b;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/shabakaty/downloader/ry4;->g:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MockWebServer "

    .line 13
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_0
    iput-object v0, v4, Lcom/shabakaty/downloader/qv1$b;->b:Ljava/lang/String;

    .line 15
    iput-object v1, v4, Lcom/shabakaty/downloader/qv1$b;->c:Lcom/shabakaty/downloader/eo;

    .line 16
    iput-object v2, v4, Lcom/shabakaty/downloader/qv1$b;->d:Lcom/shabakaty/downloader/do;

    .line 17
    iput-object p0, v4, Lcom/shabakaty/downloader/qv1$b;->e:Lcom/shabakaty/downloader/qv1$c;

    .line 18
    iput p1, v4, Lcom/shabakaty/downloader/qv1$b;->g:I

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/qv1;

    invoke-direct {p1, v4}, Lcom/shabakaty/downloader/qv1;-><init>(Lcom/shabakaty/downloader/qv1$b;)V

    .line 20
    iput-object p1, p0, Lcom/shabakaty/downloader/tn3;->f:Lcom/shabakaty/downloader/qv1;

    .line 21
    sget-object v0, Lcom/shabakaty/downloader/qv1;->U:Lcom/shabakaty/downloader/qv1;

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/qv1;->T:Lcom/shabakaty/downloader/q24;

    .line 23
    iget v1, v0, Lcom/shabakaty/downloader/q24;->a:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/q24;->b:[I

    aget v0, v0, v2

    goto :goto_1

    :cond_1
    const v0, 0x7fffffff

    .line 24
    :goto_1
    iput v0, p0, Lcom/shabakaty/downloader/tn3;->n:I

    .line 25
    iget-object v0, p1, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/aw1;->t:Z

    if-nez v1, :cond_b

    .line 28
    iget-boolean v1, v0, Lcom/shabakaty/downloader/aw1;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_2

    .line 29
    :cond_2
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/aw1;->x:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> CONNECTION "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/shabakaty/downloader/pv1;->a:Lcom/shabakaty/downloader/fp;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/fp;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/ry4;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 31
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/downloader/aw1;->v:Lcom/shabakaty/downloader/do;

    sget-object v4, Lcom/shabakaty/downloader/pv1;->a:Lcom/shabakaty/downloader/fp;

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/do;->j0(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/do;

    .line 32
    iget-object v1, v0, Lcom/shabakaty/downloader/aw1;->v:Lcom/shabakaty/downloader/do;

    invoke-interface {v1}, Lcom/shabakaty/downloader/do;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    monitor-exit v0

    .line 34
    :goto_2
    iget-object v0, p1, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    iget-object v1, p1, Lcom/shabakaty/downloader/qv1;->J:Lcom/shabakaty/downloader/q24;

    .line 35
    monitor-enter v0

    :try_start_2
    const-string v4, "settings"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-boolean v4, v0, Lcom/shabakaty/downloader/aw1;->t:Z

    if-nez v4, :cond_a

    .line 37
    iget v4, v1, Lcom/shabakaty/downloader/q24;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    .line 38
    invoke-virtual {v0, v3, v4, v2, v3}, Lcom/shabakaty/downloader/aw1;->c(IIII)V

    const/16 v4, 0xa

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_8

    shl-int v8, v6, v7

    .line 39
    iget v9, v1, Lcom/shabakaty/downloader/q24;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_5

    goto :goto_6

    :cond_5
    if-eq v7, v2, :cond_7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_6

    move v8, v7

    goto :goto_5

    :cond_6
    const/4 v8, 0x4

    goto :goto_5

    :cond_7
    const/4 v8, 0x3

    .line 40
    :goto_5
    iget-object v9, v0, Lcom/shabakaty/downloader/aw1;->v:Lcom/shabakaty/downloader/do;

    invoke-interface {v9, v8}, Lcom/shabakaty/downloader/do;->N(I)Lcom/shabakaty/downloader/do;

    .line 41
    iget-object v8, v0, Lcom/shabakaty/downloader/aw1;->v:Lcom/shabakaty/downloader/do;

    .line 42
    iget-object v9, v1, Lcom/shabakaty/downloader/q24;->b:[I

    aget v9, v9, v7

    .line 43
    invoke-interface {v8, v9}, Lcom/shabakaty/downloader/do;->R(I)Lcom/shabakaty/downloader/do;

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 44
    :cond_8
    iget-object v1, v0, Lcom/shabakaty/downloader/aw1;->v:Lcom/shabakaty/downloader/do;

    invoke-interface {v1}, Lcom/shabakaty/downloader/do;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    monitor-exit v0

    .line 46
    iget-object v0, p1, Lcom/shabakaty/downloader/qv1;->J:Lcom/shabakaty/downloader/q24;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q24;->a()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_9

    .line 47
    iget-object v2, p1, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/shabakaty/downloader/aw1;->j(IJ)V

    .line 48
    :cond_9
    invoke-virtual {v5}, Lcom/shabakaty/downloader/il4;->f()Lcom/shabakaty/downloader/gl4;

    move-result-object v0

    iget-object v5, p1, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/shabakaty/downloader/qv1;->R:Lcom/shabakaty/downloader/qv1$d;

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 49
    new-instance p1, Lcom/shabakaty/downloader/fl4;

    move-object v1, p1

    move-object v3, v5

    move v4, v6

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/fl4;-><init>(Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v0, p1, v7, v8}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void

    .line 50
    :cond_a
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 51
    :cond_b
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 8
    iget v1, v1, Lcom/shabakaty/downloader/qw1;->f:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 14
    iget-object v1, v1, Lcom/shabakaty/downloader/ju3;->c:Ljava/net/InetSocketAddress;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->d:Lcom/shabakaty/downloader/is1;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/is1;->c:Lcom/shabakaty/downloader/a20;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/tn3;->e:Lcom/shabakaty/downloader/mj3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
