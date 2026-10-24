.class public final Lcom/shabakaty/downloader/xv1;
.super Ljava/lang/Object;
.source "Http2ExchangeCodec.kt"

# interfaces
.implements Lcom/shabakaty/downloader/f61;


# static fields
.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Lcom/shabakaty/downloader/zv1;

.field public final b:Lcom/shabakaty/downloader/mj3;

.field public volatile c:Z

.field public final d:Lcom/shabakaty/downloader/tn3;

.field public final e:Lcom/shabakaty/downloader/vn3;

.field public final f:Lcom/shabakaty/downloader/qv1;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/xv1;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 3
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/xv1;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/tn3;Lcom/shabakaty/downloader/vn3;Lcom/shabakaty/downloader/qv1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/xv1;->d:Lcom/shabakaty/downloader/tn3;

    iput-object p3, p0, Lcom/shabakaty/downloader/xv1;->e:Lcom/shabakaty/downloader/vn3;

    iput-object p4, p0, Lcom/shabakaty/downloader/xv1;->f:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/a63;->K:Ljava/util/List;

    .line 3
    sget-object p2, Lcom/shabakaty/downloader/mj3;->w:Lcom/shabakaty/downloader/mj3;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/shabakaty/downloader/mj3;->v:Lcom/shabakaty/downloader/mj3;

    .line 5
    :goto_0
    iput-object p2, p0, Lcom/shabakaty/downloader/xv1;->b:Lcom/shabakaty/downloader/mj3;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zv1;->g()Lcom/shabakaty/downloader/l84;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zv1$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zv1$a;->close()V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/vr3;J)Lcom/shabakaty/downloader/l84;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zv1;->g()Lcom/shabakaty/downloader/l84;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/vr3;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, p1, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v5, Lcom/shabakaty/downloader/ps1;

    sget-object v6, Lcom/shabakaty/downloader/ps1;->f:Lcom/shabakaty/downloader/fp;

    .line 6
    iget-object v7, p1, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 7
    invoke-direct {v5, v6, v7}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/ps1;

    sget-object v6, Lcom/shabakaty/downloader/ps1;->g:Lcom/shabakaty/downloader/fp;

    .line 9
    iget-object v7, p1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    const-string v8, "url"

    .line 10
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7}, Lcom/shabakaty/downloader/qw1;->b()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v7}, Lcom/shabakaty/downloader/qw1;->d()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3f

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 14
    :cond_2
    invoke-direct {v5, v6, v8}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    .line 15
    invoke-virtual {p1, v5}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 16
    new-instance v6, Lcom/shabakaty/downloader/ps1;

    sget-object v7, Lcom/shabakaty/downloader/ps1;->i:Lcom/shabakaty/downloader/fp;

    invoke-direct {v6, v7, v5}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    new-instance v5, Lcom/shabakaty/downloader/ps1;

    sget-object v6, Lcom/shabakaty/downloader/ps1;->h:Lcom/shabakaty/downloader/fp;

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/qw1;->b:Ljava/lang/String;

    .line 20
    invoke-direct {v5, v6, p1}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_6

    .line 22
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Locale.US"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v7, Lcom/shabakaty/downloader/xv1;->g:Ljava/util/List;

    .line 24
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 25
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 26
    :cond_4
    new-instance v7, Lcom/shabakaty/downloader/ps1;

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/shabakaty/downloader/ps1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/xv1;->f:Lcom/shabakaty/downloader/qv1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v3, v0, 0x1

    const/4 v10, 0x0

    .line 28
    iget-object v5, p1, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    monitor-enter v5

    .line 29
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget v6, p1, Lcom/shabakaty/downloader/qv1;->w:I

    const v7, 0x3fffffff    # 1.9999999f

    if-le v6, v7, :cond_7

    .line 31
    sget-object v6, Lcom/shabakaty/downloader/s41;->w:Lcom/shabakaty/downloader/s41;

    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/qv1;->e(Lcom/shabakaty/downloader/s41;)V

    .line 32
    :cond_7
    iget-boolean v6, p1, Lcom/shabakaty/downloader/qv1;->x:Z

    if-nez v6, :cond_d

    .line 33
    iget v12, p1, Lcom/shabakaty/downloader/qv1;->w:I

    add-int/lit8 v6, v12, 0x2

    .line 34
    iput v6, p1, Lcom/shabakaty/downloader/qv1;->w:I

    .line 35
    new-instance v13, Lcom/shabakaty/downloader/zv1;

    const/4 v11, 0x0

    move-object v6, v13

    move v7, v12

    move-object v8, p1

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/downloader/zv1;-><init>(ILcom/shabakaty/downloader/qv1;ZZLcom/shabakaty/downloader/ts1;)V

    if-eqz v0, :cond_8

    .line 36
    iget-wide v6, p1, Lcom/shabakaty/downloader/qv1;->N:J

    iget-wide v8, p1, Lcom/shabakaty/downloader/qv1;->O:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_8

    .line 37
    iget-wide v6, v13, Lcom/shabakaty/downloader/zv1;->c:J

    .line 38
    iget-wide v8, v13, Lcom/shabakaty/downloader/zv1;->d:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_9

    :cond_8
    const/4 v1, 0x1

    .line 39
    :cond_9
    invoke-virtual {v13}, Lcom/shabakaty/downloader/zv1;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    iget-object v0, p1, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_a
    :try_start_2
    monitor-exit p1

    .line 42
    iget-object v0, p1, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {v0, v3, v12, v4}, Lcom/shabakaty/downloader/aw1;->e(ZILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    monitor-exit v5

    if-eqz v1, :cond_b

    .line 44
    iget-object p1, p1, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/aw1;->flush()V

    .line 45
    :cond_b
    iput-object v13, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    .line 46
    iget-boolean p1, p0, Lcom/shabakaty/downloader/xv1;->c:Z

    if-nez p1, :cond_c

    .line 47
    iget-object p1, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p1, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    .line 49
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->e:Lcom/shabakaty/downloader/vn3;

    .line 50
    iget v0, v0, Lcom/shabakaty/downloader/vn3;->h:I

    int-to-long v0, v0

    .line 51
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    .line 52
    iget-object p1, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p1, Lcom/shabakaty/downloader/zv1;->j:Lcom/shabakaty/downloader/zv1$c;

    .line 54
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->e:Lcom/shabakaty/downloader/vn3;

    .line 55
    iget v0, v0, Lcom/shabakaty/downloader/vn3;->i:I

    int-to-long v0, v0

    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    return-void

    .line 57
    :cond_c
    iget-object p1, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/shabakaty/downloader/s41;->x:Lcom/shabakaty/downloader/s41;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zv1;->e(Lcom/shabakaty/downloader/s41;)V

    .line 58
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_d
    :try_start_3
    new-instance v0, Lcom/shabakaty/downloader/hb0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hb0;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 60
    :try_start_4
    monitor-exit p1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 61
    monitor-exit v5

    throw p1
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/xv1;->c:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/s41;->x:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zv1;->e(Lcom/shabakaty/downloader/s41;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/ws3;)J
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/jw1;->a(Lcom/shabakaty/downloader/ws3;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/ry4;->k(Lcom/shabakaty/downloader/ws3;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/r94;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/zv1;->g:Lcom/shabakaty/downloader/zv1$b;

    return-object p1
.end method

.method public f(Z)Lcom/shabakaty/downloader/ws3$a;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->a:Lcom/shabakaty/downloader/zv1;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qd;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->k:Lcom/shabakaty/downloader/s41;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zv1;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1$c;->l()V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->e:Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "headersQueue.removeFirst()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/ts1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->b:Lcom/shabakaty/downloader/mj3;

    const-string v2, "headerBlock"

    .line 10
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "protocol"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v4

    :goto_1
    if-ge v6, v3, :cond_3

    .line 13
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":status"

    .line 15
    invoke-static {v8, v10}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/zc4;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/zc4;

    move-result-object v7

    goto :goto_2

    .line 17
    :cond_1
    sget-object v10, Lcom/shabakaty/downloader/xv1;->h:Ljava/util/List;

    .line 18
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "name"

    .line 19
    invoke-static {v8, v10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v9}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_5

    .line 22
    new-instance v1, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    .line 23
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    .line 24
    iget v0, v7, Lcom/shabakaty/downloader/zc4;->b:I

    .line 25
    iput v0, v1, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 26
    iget-object v0, v7, Lcom/shabakaty/downloader/zc4;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    .line 27
    new-instance v0, Lcom/shabakaty/downloader/ts1;

    new-array v3, v5, [Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 29
    invoke-direct {v0, v2, v4}, Lcom/shabakaty/downloader/ts1;-><init>([Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ws3$a;->e(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/ws3$a;

    if-eqz p1, :cond_4

    .line 31
    iget p1, v1, Lcom/shabakaty/downloader/ws3$a;->c:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_3
    return-object v4

    .line 32
    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    :try_start_3
    iget-object p1, v0, Lcom/shabakaty/downloader/zv1;->l:Ljava/io/IOException;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/wd4;

    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->k:Lcom/shabakaty/downloader/s41;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/wd4;-><init>(Lcom/shabakaty/downloader/s41;)V

    :goto_4
    throw p1

    :catchall_0
    move-exception p1

    .line 34
    iget-object v1, v0, Lcom/shabakaty/downloader/zv1;->i:Lcom/shabakaty/downloader/zv1$c;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zv1$c;->l()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public g()Lcom/shabakaty/downloader/tn3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->d:Lcom/shabakaty/downloader/tn3;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xv1;->f:Lcom/shabakaty/downloader/qv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/aw1;->flush()V

    return-void
.end method
