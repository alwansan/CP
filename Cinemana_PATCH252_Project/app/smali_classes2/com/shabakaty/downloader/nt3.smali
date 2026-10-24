.class public final Lcom/shabakaty/downloader/nt3;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# instance fields
.field public final a:Lcom/shabakaty/downloader/a63;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a63;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nt3;->a:Lcom/shabakaty/downloader/a63;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/e61;)Lcom/shabakaty/downloader/vr3;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object v1, p2, Lcom/shabakaty/downloader/e61;->b:Lcom/shabakaty/downloader/tn3;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    iget v2, p1, Lcom/shabakaty/downloader/ws3;->v:I

    .line 4
    iget-object v3, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x134

    const/16 v6, 0x133

    const/4 v7, 0x1

    if-eq v2, v6, :cond_e

    if-eq v2, v5, :cond_e

    const/16 v8, 0x191

    if-eq v2, v8, :cond_d

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_a

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_7

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/nt3;->a:Lcom/shabakaty/downloader/a63;

    .line 7
    iget-boolean v1, v1, Lcom/shabakaty/downloader/a63;->w:Z

    if-nez v1, :cond_2

    return-object v0

    .line 8
    :cond_2
    iget-object v1, p1, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    if-eqz v1, :cond_3

    .line 9
    iget v1, v1, Lcom/shabakaty/downloader/ws3;->v:I

    if-ne v1, p2, :cond_3

    return-object v0

    .line 10
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/shabakaty/downloader/nt3;->c(Lcom/shabakaty/downloader/ws3;I)I

    move-result p2

    if-lez p2, :cond_4

    return-object v0

    .line 11
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    return-object p1

    .line 12
    :cond_5
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    iget-object p2, v1, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 14
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_6

    .line 15
    iget-object p2, p0, Lcom/shabakaty/downloader/nt3;->a:Lcom/shabakaty/downloader/a63;

    .line 16
    iget-object p2, p2, Lcom/shabakaty/downloader/a63;->F:Lcom/shabakaty/downloader/if;

    .line 17
    invoke-interface {p2, v1, p1}, Lcom/shabakaty/downloader/if;->authenticate(Lcom/shabakaty/downloader/ju3;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    return-object p1

    .line 18
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    iget-object v1, p1, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    if-eqz v1, :cond_8

    .line 20
    iget v1, v1, Lcom/shabakaty/downloader/ws3;->v:I

    if-ne v1, p2, :cond_8

    return-object v0

    :cond_8
    const p2, 0x7fffffff

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nt3;->c(Lcom/shabakaty/downloader/ws3;I)I

    move-result p2

    if-nez p2, :cond_9

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    return-object p1

    :cond_9
    return-object v0

    :cond_a
    if-eqz p2, :cond_c

    .line 23
    iget-object v1, p2, Lcom/shabakaty/downloader/e61;->e:Lcom/shabakaty/downloader/g61;

    .line 24
    iget-object v1, v1, Lcom/shabakaty/downloader/g61;->h:Lcom/shabakaty/downloader/p4;

    .line 25
    iget-object v1, v1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 26
    iget-object v1, v1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 27
    iget-object v2, p2, Lcom/shabakaty/downloader/e61;->b:Lcom/shabakaty/downloader/tn3;

    .line 28
    iget-object v2, v2, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 29
    iget-object v2, v2, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 30
    iget-object v2, v2, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 31
    iget-object v2, v2, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 32
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v7

    if-nez v1, :cond_b

    goto :goto_1

    .line 33
    :cond_b
    iget-object p2, p2, Lcom/shabakaty/downloader/e61;->b:Lcom/shabakaty/downloader/tn3;

    .line 34
    monitor-enter p2

    .line 35
    :try_start_0
    iput-boolean v7, p2, Lcom/shabakaty/downloader/tn3;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p2

    .line 37
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    return-object p1

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p2

    throw p1

    :cond_c
    :goto_1
    return-object v0

    .line 39
    :cond_d
    iget-object p2, p0, Lcom/shabakaty/downloader/nt3;->a:Lcom/shabakaty/downloader/a63;

    .line 40
    iget-object p2, p2, Lcom/shabakaty/downloader/a63;->x:Lcom/shabakaty/downloader/if;

    .line 41
    invoke-interface {p2, v1, p1}, Lcom/shabakaty/downloader/if;->authenticate(Lcom/shabakaty/downloader/ju3;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    return-object p1

    .line 42
    :cond_e
    :pswitch_0
    iget-object p2, p0, Lcom/shabakaty/downloader/nt3;->a:Lcom/shabakaty/downloader/a63;

    .line 43
    iget-boolean p2, p2, Lcom/shabakaty/downloader/a63;->y:Z

    if-nez p2, :cond_f

    goto/16 :goto_4

    :cond_f
    const/4 p2, 0x2

    const-string v1, "Location"

    .line 44
    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 45
    iget-object v1, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 46
    iget-object v1, v1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 47
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/qw1;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/qw1$a;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/shabakaty/downloader/qw1$a;->a()Lcom/shabakaty/downloader/qw1;

    move-result-object p2

    goto :goto_2

    :cond_10
    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_18

    .line 49
    iget-object v1, p2, Lcom/shabakaty/downloader/qw1;->b:Ljava/lang/String;

    .line 50
    iget-object v2, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 51
    iget-object v2, v2, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 52
    iget-object v2, v2, Lcom/shabakaty/downloader/qw1;->b:Ljava/lang/String;

    .line 53
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 54
    iget-object v1, p0, Lcom/shabakaty/downloader/nt3;->a:Lcom/shabakaty/downloader/a63;

    .line 55
    iget-boolean v1, v1, Lcom/shabakaty/downloader/a63;->z:Z

    if-nez v1, :cond_11

    goto :goto_4

    .line 56
    :cond_11
    iget-object v1, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 57
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/vr3$a;-><init>(Lcom/shabakaty/downloader/vr3;)V

    .line 59
    invoke-static {v3}, Lcom/shabakaty/downloader/nw1;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 60
    iget v1, p1, Lcom/shabakaty/downloader/ws3;->v:I

    const-string v8, "PROPFIND"

    .line 61
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    if-eq v1, v5, :cond_12

    if-ne v1, v6, :cond_13

    :cond_12
    const/4 v4, 0x1

    .line 62
    :cond_13
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v7, v8

    if-eqz v7, :cond_14

    if-eq v1, v5, :cond_14

    if-eq v1, v6, :cond_14

    const-string v1, "GET"

    .line 63
    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    goto :goto_3

    :cond_14
    if-eqz v4, :cond_15

    .line 64
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 65
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 66
    :cond_15
    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    :goto_3
    if-nez v4, :cond_16

    const-string v0, "Transfer-Encoding"

    .line 67
    iget-object v1, v2, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    const-string v0, "Content-Length"

    .line 68
    iget-object v1, v2, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    const-string v0, "Content-Type"

    .line 69
    iget-object v1, v2, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 70
    :cond_16
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 71
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 72
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ry4;->a(Lcom/shabakaty/downloader/qw1;Lcom/shabakaty/downloader/qw1;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "Authorization"

    .line 73
    iget-object v0, v2, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 74
    :cond_17
    invoke-virtual {v2, p2}, Lcom/shabakaty/downloader/vr3$a;->j(Lcom/shabakaty/downloader/qw1;)Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    :cond_18
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/io/IOException;Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/vr3;Z)Z
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/nt3;->a:Lcom/shabakaty/downloader/a63;

    .line 2
    iget-boolean p3, p3, Lcom/shabakaty/downloader/a63;->w:Z

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_1

    return v0

    .line 4
    :cond_1
    instance-of p3, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_3

    .line 6
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5

    if-nez p4, :cond_5

    goto :goto_1

    .line 7
    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_7

    return v0

    .line 10
    :cond_7
    iget-object p1, p2, Lcom/shabakaty/downloader/pn3;->w:Lcom/shabakaty/downloader/g61;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    iget p2, p1, Lcom/shabakaty/downloader/g61;->c:I

    if-nez p2, :cond_8

    iget p3, p1, Lcom/shabakaty/downloader/g61;->d:I

    if-nez p3, :cond_8

    iget p3, p1, Lcom/shabakaty/downloader/g61;->e:I

    if-nez p3, :cond_8

    const/4 p1, 0x0

    goto :goto_5

    .line 12
    :cond_8
    iget-object p3, p1, Lcom/shabakaty/downloader/g61;->f:Lcom/shabakaty/downloader/ju3;

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    const/4 p3, 0x0

    if-gt p2, v1, :cond_d

    .line 13
    iget p2, p1, Lcom/shabakaty/downloader/g61;->d:I

    if-gt p2, v1, :cond_d

    iget p2, p1, Lcom/shabakaty/downloader/g61;->e:I

    if-lez p2, :cond_a

    goto :goto_3

    .line 14
    :cond_a
    iget-object p2, p1, Lcom/shabakaty/downloader/g61;->i:Lcom/shabakaty/downloader/pn3;

    .line 15
    iget-object p2, p2, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    if-eqz p2, :cond_d

    .line 16
    monitor-enter p2

    .line 17
    :try_start_0
    iget p4, p2, Lcom/shabakaty/downloader/tn3;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_b

    .line 18
    monitor-exit p2

    goto :goto_3

    .line 19
    :cond_b
    :try_start_1
    iget-object p4, p2, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 20
    iget-object p4, p4, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 21
    iget-object p4, p4, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 22
    iget-object v2, p1, Lcom/shabakaty/downloader/g61;->h:Lcom/shabakaty/downloader/p4;

    .line 23
    iget-object v2, v2, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 24
    invoke-static {p4, v2}, Lcom/shabakaty/downloader/ry4;->a(Lcom/shabakaty/downloader/qw1;Lcom/shabakaty/downloader/qw1;)Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_c

    monitor-exit p2

    goto :goto_3

    .line 25
    :cond_c
    :try_start_2
    iget-object p3, p2, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p2

    throw p1

    :cond_d
    :goto_3
    if-eqz p3, :cond_e

    .line 28
    iput-object p3, p1, Lcom/shabakaty/downloader/g61;->f:Lcom/shabakaty/downloader/ju3;

    goto :goto_4

    .line 29
    :cond_e
    iget-object p2, p1, Lcom/shabakaty/downloader/g61;->a:Lcom/shabakaty/downloader/mu3$a;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/shabakaty/downloader/mu3$a;->a()Z

    move-result p2

    if-ne p2, v1, :cond_f

    goto :goto_4

    .line 30
    :cond_f
    iget-object p1, p1, Lcom/shabakaty/downloader/g61;->b:Lcom/shabakaty/downloader/mu3;

    if-eqz p1, :cond_10

    .line 31
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mu3;->a()Z

    move-result p1

    goto :goto_5

    :cond_10
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-nez p1, :cond_11

    return v0

    :cond_11
    return v1
.end method

.method public final c(Lcom/shabakaty/downloader/ws3;I)I
    .locals 3

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "\\d+"

    .line 2
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    const-string v0, "compile(pattern)"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Integer.valueOf(header)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1

    :cond_1
    return p2
.end method

.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 48

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "chain"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/vn3;

    .line 2
    iget-object v0, v2, Lcom/shabakaty/downloader/vn3;->f:Lcom/shabakaty/downloader/vr3;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/vn3;->b:Lcom/shabakaty/downloader/pn3;

    .line 4
    sget-object v4, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    const/4 v0, 0x1

    .line 5
    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "request"

    .line 6
    invoke-static {v4, v11}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v11, v3, Lcom/shabakaty/downloader/pn3;->z:Lcom/shabakaty/downloader/e61;

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_1c

    .line 8
    monitor-enter v3

    .line 9
    :try_start_0
    iget-boolean v11, v3, Lcom/shabakaty/downloader/pn3;->B:Z

    xor-int/2addr v11, v7

    if-eqz v11, :cond_1b

    .line 10
    iget-boolean v11, v3, Lcom/shabakaty/downloader/pn3;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    xor-int/2addr v11, v7

    if-eqz v11, :cond_1a

    .line 11
    monitor-exit v3

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/g61;

    .line 13
    iget-object v11, v3, Lcom/shabakaty/downloader/pn3;->r:Lcom/shabakaty/downloader/un3;

    .line 14
    iget-object v12, v4, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 15
    iget-boolean v13, v12, Lcom/shabakaty/downloader/qw1;->a:Z

    if-eqz v13, :cond_2

    .line 16
    iget-object v13, v3, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 17
    iget-object v14, v13, Lcom/shabakaty/downloader/a63;->H:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v14, :cond_1

    .line 18
    iget-object v15, v13, Lcom/shabakaty/downloader/a63;->L:Ljavax/net/ssl/HostnameVerifier;

    .line 19
    iget-object v13, v13, Lcom/shabakaty/downloader/a63;->M:Lcom/shabakaty/downloader/ey;

    move-object/from16 v19, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    goto :goto_2

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 21
    :goto_2
    new-instance v15, Lcom/shabakaty/downloader/p4;

    .line 22
    iget-object v13, v12, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 23
    iget v14, v12, Lcom/shabakaty/downloader/qw1;->f:I

    .line 24
    iget-object v12, v3, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 25
    iget-object v5, v12, Lcom/shabakaty/downloader/a63;->C:Lcom/shabakaty/downloader/vu0;

    .line 26
    iget-object v6, v12, Lcom/shabakaty/downloader/a63;->G:Ljavax/net/SocketFactory;

    .line 27
    iget-object v7, v12, Lcom/shabakaty/downloader/a63;->F:Lcom/shabakaty/downloader/if;

    move-object/from16 v25, v8

    .line 28
    iget-object v8, v12, Lcom/shabakaty/downloader/a63;->D:Ljava/net/Proxy;

    move/from16 v26, v10

    .line 29
    iget-object v10, v12, Lcom/shabakaty/downloader/a63;->K:Ljava/util/List;

    .line 30
    iget-object v1, v12, Lcom/shabakaty/downloader/a63;->J:Ljava/util/List;

    .line 31
    iget-object v12, v12, Lcom/shabakaty/downloader/a63;->E:Ljava/net/ProxySelector;

    move-object/from16 v24, v12

    move-object v12, v15

    move-object/from16 v27, v9

    move-object v9, v15

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v1

    .line 32
    invoke-direct/range {v12 .. v24}, Lcom/shabakaty/downloader/p4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/vu0;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/shabakaty/downloader/ey;Lcom/shabakaty/downloader/if;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 33
    iget-object v1, v3, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    .line 34
    invoke-direct {v0, v11, v9, v3, v1}, Lcom/shabakaty/downloader/g61;-><init>(Lcom/shabakaty/downloader/un3;Lcom/shabakaty/downloader/p4;Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/o51;)V

    iput-object v0, v3, Lcom/shabakaty/downloader/pn3;->w:Lcom/shabakaty/downloader/g61;

    goto :goto_3

    :cond_3
    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move/from16 v26, v10

    .line 35
    :goto_3
    :try_start_1
    iget-boolean v0, v3, Lcom/shabakaty/downloader/pn3;->D:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v0, :cond_19

    .line 36
    :try_start_2
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/vn3;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v0
    :try_end_2
    .catch Lcom/shabakaty/downloader/lu3; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v27, :cond_10

    .line 37
    :try_start_3
    iget-object v5, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 38
    iget-object v6, v0, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 39
    iget v8, v0, Lcom/shabakaty/downloader/ws3;->v:I

    .line 40
    iget-object v7, v0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 41
    iget-object v9, v0, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 42
    iget-object v1, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 43
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v1

    .line 44
    iget-object v11, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 45
    iget-object v12, v0, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 46
    iget-object v13, v0, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    .line 47
    iget-wide v14, v0, Lcom/shabakaty/downloader/ws3;->C:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 48
    :try_start_4
    iget-wide v2, v0, Lcom/shabakaty/downloader/ws3;->D:J

    .line 49
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    move-object/from16 v10, v27

    .line 50
    iget-object v4, v10, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    move-wide/from16 v16, v14

    .line 51
    iget-object v14, v10, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 52
    iget v15, v10, Lcom/shabakaty/downloader/ws3;->v:I

    move-object/from16 v19, v0

    .line 53
    iget-object v0, v10, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    move-wide/from16 v22, v2

    .line 54
    iget-object v2, v10, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 55
    iget-object v3, v10, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 56
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v3

    move-object/from16 v18, v13

    .line 57
    iget-object v13, v10, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v24, v12

    .line 58
    iget-object v12, v10, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v43, v11

    .line 59
    iget-object v11, v10, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v44, v6

    move-object/from16 v45, v7

    .line 60
    iget-wide v6, v10, Lcom/shabakaty/downloader/ws3;->C:J

    move/from16 v46, v8

    move-object/from16 v47, v9

    .line 61
    iget-wide v8, v10, Lcom/shabakaty/downloader/ws3;->D:J

    .line 62
    iget-object v10, v10, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    const/16 v34, 0x0

    if-ltz v15, :cond_4

    const/16 v27, 0x1

    goto :goto_4

    :cond_4
    const/16 v27, 0x0

    :goto_4
    if-eqz v27, :cond_f

    if-eqz v4, :cond_e

    if-eqz v14, :cond_d

    if-eqz v0, :cond_c

    .line 63
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v33

    .line 64
    new-instance v3, Lcom/shabakaty/downloader/ws3;

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v14

    move-object/from16 v30, v0

    move/from16 v31, v15

    move-object/from16 v32, v2

    move-object/from16 v35, v13

    move-object/from16 v36, v12

    move-object/from16 v37, v11

    move-wide/from16 v38, v6

    move-wide/from16 v40, v8

    move-object/from16 v42, v10

    invoke-direct/range {v27 .. v42}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    .line 65
    iget-object v0, v3, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_b

    if-ltz v46, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_a

    if-eqz v5, :cond_9

    if-eqz v44, :cond_8

    if-eqz v45, :cond_7

    .line 66
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v10

    .line 67
    new-instance v0, Lcom/shabakaty/downloader/ws3;

    move-object v4, v0

    move-object/from16 v6, v44

    move-object/from16 v7, v45

    move/from16 v8, v46

    move-object/from16 v9, v47

    move-object/from16 v11, v43

    move-object/from16 v12, v24

    move-object/from16 v13, v18

    move-wide/from16 v1, v16

    move-object v14, v3

    move-wide v15, v1

    move-wide/from16 v17, v22

    invoke-direct/range {v4 .. v19}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    goto/16 :goto_8

    .line 68
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v21, v3

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v1, v21

    goto/16 :goto_d

    :cond_10
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :goto_8
    move-object v9, v0

    move-object/from16 v1, v21

    .line 77
    :try_start_5
    iget-object v0, v1, Lcom/shabakaty/downloader/pn3;->z:Lcom/shabakaty/downloader/e61;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v2, p0

    .line 78
    :try_start_6
    invoke-virtual {v2, v9, v0}, Lcom/shabakaty/downloader/nt3;->a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/e61;)Lcom/shabakaty/downloader/vr3;

    move-result-object v3

    if-nez v3, :cond_13

    if-eqz v0, :cond_12

    .line 79
    iget-boolean v0, v0, Lcom/shabakaty/downloader/e61;->a:Z

    if-eqz v0, :cond_12

    .line 80
    iget-boolean v0, v1, Lcom/shabakaty/downloader/pn3;->y:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_11

    .line 81
    iput-boolean v3, v1, Lcom/shabakaty/downloader/pn3;->y:Z

    .line 82
    iget-object v0, v1, Lcom/shabakaty/downloader/pn3;->t:Lcom/shabakaty/downloader/pn3$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    goto :goto_9

    .line 83
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_12
    :goto_9
    const/4 v3, 0x0

    .line 84
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/pn3;->f(Z)V

    return-object v9

    .line 85
    :cond_13
    :try_start_7
    iget-object v0, v9, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_14

    .line 86
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_14
    add-int/lit8 v10, v26, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_15

    const/4 v4, 0x1

    .line 87
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/pn3;->f(Z)V

    move-object v4, v3

    move-object/from16 v8, v25

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto/16 :goto_c

    .line 88
    :cond_15
    :try_start_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v3

    move-object/from16 v10, v27

    move-object/from16 v2, p0

    move-object v3, v0

    .line 89
    nop

    instance-of v0, v3, Lcom/shabakaty/downloader/hb0;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/shabakaty/downloader/nt3;->b(Ljava/io/IOException;Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/vr3;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object/from16 v5, v25

    .line 90
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/m50;->o0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_b

    :cond_17
    move-object/from16 v5, v25

    .line 91
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/ry4;->B(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    throw v3

    :catch_1
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v3

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v2, p0

    move-object v3, v0

    .line 92
    iget-object v0, v3, Lcom/shabakaty/downloader/lu3;->r:Ljava/io/IOException;

    const/4 v6, 0x0

    .line 93
    invoke-virtual {v2, v0, v1, v4, v6}, Lcom/shabakaty/downloader/nt3;->b(Ljava/io/IOException;Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/vr3;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 94
    iget-object v0, v3, Lcom/shabakaty/downloader/lu3;->s:Ljava/io/IOException;

    .line 95
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/m50;->o0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v3, 0x1

    .line 96
    :goto_b
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/pn3;->f(Z)V

    move-object v8, v0

    move-object v9, v10

    move/from16 v10, v26

    const/4 v0, 0x0

    :goto_c
    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v20

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 97
    :cond_18
    :try_start_9
    iget-object v0, v3, Lcom/shabakaty/downloader/lu3;->s:Ljava/io/IOException;

    .line 98
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/ry4;->B(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    throw v0

    :cond_19
    move-object/from16 v2, p0

    move-object v1, v3

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v3

    :goto_d
    const/4 v3, 0x1

    .line 100
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/pn3;->f(Z)V

    throw v0

    :cond_1a
    move-object v2, v1

    move-object v1, v3

    :try_start_a
    const-string v0, "Check failed."

    .line 101
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1b
    move-object v2, v1

    move-object v1, v3

    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 102
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    .line 103
    :goto_e
    monitor-exit v1

    throw v0

    :cond_1c
    move-object v2, v1

    const-string v0, "Check failed."

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
