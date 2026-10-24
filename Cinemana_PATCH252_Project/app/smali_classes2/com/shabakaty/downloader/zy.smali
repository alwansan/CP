.class public synthetic Lcom/shabakaty/downloader/zy;
.super Ljava/lang/Object;
.source "Channels.common.kt"


# direct methods
.method public static final a([BI[BII)Z
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p1

    .line 1
    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/shabakaty/downloader/te1;ILcom/shabakaty/downloader/co;ILjava/lang/Object;)Lcom/shabakaty/downloader/te1;
    .locals 6

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    and-int/lit8 p4, p3, 0x1

    const/4 v0, -0x2

    if-eqz p4, :cond_0

    const/4 p1, -0x2

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p3, p2

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const/4 p4, -0x1

    const/4 v1, 0x1

    if-gez p1, :cond_3

    if-eq p1, v0, :cond_3

    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_9

    if-ne p1, p4, :cond_5

    if-ne p3, p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    if-eqz v1, :cond_8

    if-ne p1, p4, :cond_6

    .line 2
    sget-object p3, Lcom/shabakaty/downloader/co;->s:Lcom/shabakaty/downloader/co;

    const/4 p1, 0x0

    move-object v4, p3

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    move v3, p1

    move-object v4, p3

    .line 3
    :goto_4
    instance-of p1, p0, Lcom/shabakaty/downloader/go1;

    if-eqz p1, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/go1;

    const/4 v1, 0x0

    const/4 p0, 0x1

    const/4 v5, 0x0

    move v2, v3

    move-object v3, v4

    move v4, p0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/go1$a;->a(Lcom/shabakaty/downloader/go1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;ILjava/lang/Object;)Lcom/shabakaty/downloader/te1;

    move-result-object p0

    goto :goto_5

    .line 4
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/vy;

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/vy;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;I)V

    move-object p0, p1

    :goto_5
    return-object p0

    .line 5
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string p0, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "

    .line 6
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final c(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/ff1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ff1;

    iget v1, v0, Lcom/shabakaty/downloader/ff1;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ff1;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ff1;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/ff1;-><init>(Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ff1;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 2
    iget v2, v0, Lcom/shabakaty/downloader/ff1;->v:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/ff1;->w:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/lo3;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p1

    goto :goto_2

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/lo3;

    invoke-direct {p2}, Lcom/shabakaty/downloader/lo3;-><init>()V

    iput-object v3, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 6
    :try_start_1
    new-instance v2, Lcom/shabakaty/downloader/ef1;

    invoke-direct {v2, p1, p2}, Lcom/shabakaty/downloader/ef1;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/lo3;)V

    iput-object p2, v0, Lcom/shabakaty/downloader/ff1;->w:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ff1;->v:I

    invoke-interface {p0, v2, v0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    goto :goto_6

    :cond_3
    :goto_1
    move-object v1, v3

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object p0, p2

    .line 7
    :goto_2
    iget-object p0, p0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    .line 8
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    if-nez p0, :cond_7

    .line 9
    iget-object p0, v0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/e92;

    if-eqz p0, :cond_6

    .line 11
    invoke-interface {p0}, Lcom/shabakaty/downloader/e92;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    invoke-interface {p0}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 13
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_7

    :goto_6
    return-object v1

    .line 14
    :cond_7
    throw v1
.end method

.method public static final d(JJJ)V
    .locals 5

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v2, v0, p4

    if-ltz v2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TT;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/shabakaty/downloader/if1;->a:I

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/hf1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/hf1;-><init>(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/zy;->j(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)Lcom/shabakaty/downloader/te1;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 3
    invoke-static {p0, p1, v1, v0, v1}, Lcom/shabakaty/downloader/zy;->b(Lcom/shabakaty/downloader/te1;ILcom/shabakaty/downloader/co;ILjava/lang/Object;)Lcom/shabakaty/downloader/te1;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/zz2;->r:Lcom/shabakaty/downloader/zz2;

    invoke-interface {p0, p1, p2}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object p0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    return-object p0
.end method

.method public static final f(Lcom/shabakaty/downloader/te1;)Lcom/shabakaty/downloader/te1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ze1;->a:Lcom/shabakaty/downloader/tm1;

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/gc4;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ze1;->a:Lcom/shabakaty/downloader/tm1;

    sget-object v1, Lcom/shabakaty/downloader/ze1;->b:Lcom/shabakaty/downloader/hn1;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/ze1;->a(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/te1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final g(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TT;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/kf1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/kf1;

    iget v1, v0, Lcom/shabakaty/downloader/kf1;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/kf1;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/kf1;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/kf1;-><init>(Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/kf1;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 2
    iget v2, v0, Lcom/shabakaty/downloader/kf1;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/kf1;->y:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/jf1;

    iget-object p1, v0, Lcom/shabakaty/downloader/kf1;->x:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/lo3;

    iget-object v0, v0, Lcom/shabakaty/downloader/kf1;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/hn1;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v4

    goto :goto_1

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/lo3;

    invoke-direct {p2}, Lcom/shabakaty/downloader/lo3;-><init>()V

    sget-object v2, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    iput-object v2, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/jf1;

    invoke-direct {v2, p1, p2}, Lcom/shabakaty/downloader/jf1;-><init>(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/lo3;)V

    .line 7
    :try_start_1
    iput-object p1, v0, Lcom/shabakaty/downloader/kf1;->w:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/kf1;->x:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/kf1;->y:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/kf1;->v:I

    invoke-interface {p0, v2, v0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lcom/shabakaty/downloader/e; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, p0

    move-object p0, v2

    .line 8
    :goto_1
    iget-object v1, v0, Lcom/shabakaty/downloader/e;->r:Lcom/shabakaty/downloader/ue1;

    if-ne v1, p0, :cond_5

    :cond_3
    move-object v0, p1

    move-object p1, p2

    .line 9
    :goto_2
    iget-object v1, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    sget-object p0, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    if-eq v1, p0, :cond_4

    :goto_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected at least one element matching the predicate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_5
    throw v0
.end method

.method public static final h(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/se0;)Lcom/shabakaty/downloader/e92;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/se0;",
            ")",
            "Lcom/shabakaty/downloader/e92;"
        }
    .end annotation

    .line 1
    new-instance v3, Lcom/shabakaty/downloader/ye1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/ye1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p0

    return-object p0
.end method

.method public static final i(B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/gp;->a:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    and-int/lit8 p0, p0, 0xf

    .line 2
    aget-char p0, v1, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    .line 3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static final j(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)Lcom/shabakaty/downloader/te1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/jn1<",
            "-",
            "Lcom/shabakaty/downloader/ue1<",
            "-TR;>;-TT;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shabakaty/downloader/te1<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/shabakaty/downloader/if1;->a:I

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/wy;-><init>(Lcom/shabakaty/downloader/jn1;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;I)V

    return-object v0
.end method
