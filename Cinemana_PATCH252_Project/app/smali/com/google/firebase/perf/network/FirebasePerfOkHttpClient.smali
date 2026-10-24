.class public Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;
.super Ljava/lang/Object;
.source "FirebasePerfOkHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/py2;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qw1;->k()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/py2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/py2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/py2;->e(J)Lcom/shabakaty/downloader/py2;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/py2;->i(J)Lcom/shabakaty/downloader/py2;

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/fr2;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/py2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 15
    :cond_3
    iget p0, p0, Lcom/shabakaty/downloader/ws3;->v:I

    .line 16
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/py2;->d(I)Lcom/shabakaty/downloader/py2;

    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/py2;->f(J)Lcom/shabakaty/downloader/py2;

    .line 18
    invoke-virtual {p1, p4, p5}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 19
    invoke-virtual {p1}, Lcom/shabakaty/downloader/py2;->b()Lcom/shabakaty/downloader/oy2;

    return-void
.end method

.method public static enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v3, Lcom/shabakaty/downloader/pn4;

    invoke-direct {v3}, Lcom/shabakaty/downloader/pn4;-><init>()V

    .line 2
    iget-wide v4, v3, Lcom/shabakaty/downloader/pn4;->r:J

    .line 3
    new-instance v6, Lcom/shabakaty/downloader/h22;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/wq4;->J:Lcom/shabakaty/downloader/wq4;

    move-object v0, v6

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/h22;-><init>(Lcom/shabakaty/downloader/wq;Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/pn4;J)V

    .line 6
    invoke-interface {p0, v6}, Lcom/shabakaty/downloader/mq;->l0(Lcom/shabakaty/downloader/wq;)V

    return-void
.end method

.method public static execute(Lcom/shabakaty/downloader/mq;)Lcom/shabakaty/downloader/ws3;
    .locals 12
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wq4;->J:Lcom/shabakaty/downloader/wq4;

    .line 2
    new-instance v7, Lcom/shabakaty/downloader/py2;

    invoke-direct {v7, v0}, Lcom/shabakaty/downloader/py2;-><init>(Lcom/shabakaty/downloader/wq4;)V

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/mq;->execute()Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    move-object v1, v0

    move-object v2, v7

    move-wide v3, v8

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/py2;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    invoke-interface {p0}, Lcom/shabakaty/downloader/mq;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qw1;->k()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/shabakaty/downloader/py2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {v7, p0}, Lcom/shabakaty/downloader/py2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 13
    :cond_1
    invoke-virtual {v7, v8, v9}, Lcom/shabakaty/downloader/py2;->f(J)Lcom/shabakaty/downloader/py2;

    .line 14
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v10

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    .line 15
    invoke-virtual {v7, v1, v2}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 16
    invoke-static {v7}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 17
    throw v0
.end method
