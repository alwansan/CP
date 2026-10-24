.class public Lcom/shabakaty/downloader/rm3;
.super Ljava/lang/Object;
.source "_Ranges.kt"


# direct methods
.method public static final A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/fe1;

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/shabakaty/downloader/b74;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0
.end method

.method public static final B(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/me0;",
            "TV;",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TV;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/cb4;

    invoke-direct {v0, p4, p0}, Lcom/shabakaty/downloader/cb4;-><init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;)V

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/gt4;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p3, Lcom/shabakaty/downloader/hn1;

    invoke-interface {p3, p1, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    .line 4
    sget-object p0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p0, :cond_0

    const-string p0, "frame"

    .line 5
    invoke-static {p4, p0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 6
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    throw p1
.end method

.method public static final a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/fe1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/fe1;

    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;
    .locals 2

    const-string v0, "<this>"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/b74;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is should be simple type: "

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Lcom/shabakaty/downloader/yn3;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yn3<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Channel was consumed, consumer had failed"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3
    :cond_2
    :goto_1
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/yn3;->b(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final d(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final e(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 1
    sget-object p0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/gv;

    invoke-static {p2}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->F()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p2, p0, v1

    if-gez p2, :cond_3

    .line 4
    iget-object p2, v0, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    .line 5
    sget v1, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object v1, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p2

    instance-of v1, p2, Lcom/shabakaty/downloader/tp0;

    if-nez v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lcom/shabakaty/downloader/tp0;

    if-eqz p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object p2, Lcom/shabakaty/downloader/zn0;->a:Lcom/shabakaty/downloader/tp0;

    .line 7
    :goto_0
    invoke-interface {p2, p0, p1, v0}, Lcom/shabakaty/downloader/tp0;->f(JLcom/shabakaty/downloader/fv;)V

    .line 8
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final g(II)Lcom/shabakaty/downloader/l22;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/l22;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/l22;-><init>(III)V

    return-object v0
.end method

.method public static final h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/jw2;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/jw2;->c(I)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/v20;->f(Ljava/lang/String;Z)Lcom/shabakaty/downloader/v20;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/g30;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    instance-of p0, p0, Lcom/shabakaty/downloader/k93;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p0

    instance-of p0, p0, Lcom/shabakaty/downloader/k93;

    if-nez p0, :cond_1

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/rm3;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/g30;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    instance-of p0, v1, Lcom/shabakaty/downloader/g30;

    if-eqz p0, :cond_2

    .line 7
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/g30;

    :cond_2
    :goto_0
    return-object v2
.end method

.method public static final k(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    instance-of p0, p0, Lcom/shabakaty/downloader/fe1;

    return p0
.end method

.method public static final l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/fe1;

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/shabakaty/downloader/b74;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0
.end method

.method public static final m(Lcom/shabakaty/downloader/hw2;Z)Lcom/shabakaty/downloader/hw2;
    .locals 3

    if-eqz p1, :cond_0

    const-string p1, "is"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "set"

    .line 1
    invoke-static {p0, v2, v1, p1, v0}, Lcom/shabakaty/downloader/rm3;->n(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;ZLjava/lang/String;I)Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;ZLjava/lang/String;I)Lcom/shabakaty/downloader/hw2;
    .locals 5

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    iget-boolean p4, p0, Lcom/shabakaty/downloader/hw2;->s:Z

    if-eqz p4, :cond_2

    goto/16 :goto_6

    .line 2
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hw2;->j()Ljava/lang/String;

    move-result-object p4

    const-string v2, "methodName.identifier"

    invoke-static {p4, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p4, p1, v3, v2}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_6

    .line 4
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_4

    goto/16 :goto_6

    .line 5
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-gt v4, v2, :cond_5

    const/16 v4, 0x7b

    if-ge v2, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    goto/16 :goto_6

    :cond_6
    if-eqz p3, :cond_7

    .line 6
    invoke-static {p4, p1}, Lcom/shabakaty/downloader/re4;->a0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    goto/16 :goto_7

    :cond_7
    if-nez p2, :cond_8

    goto/16 :goto_7

    .line 7
    :cond_8
    invoke-static {p4, p1}, Lcom/shabakaty/downloader/re4;->a0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_13

    invoke-static {p0, v3, v1}, Lcom/shabakaty/downloader/vd5;->t(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_5

    .line 9
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "this as java.lang.String).substring(startIndex)"

    if-eq p1, v1, :cond_f

    invoke-static {p0, v1, v1}, Lcom/shabakaty/downloader/vd5;->t(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3

    .line 10
    :cond_b
    new-instance p1, Lcom/shabakaty/downloader/n22;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p1, v3, p3}, Lcom/shabakaty/downloader/n22;-><init>(II)V

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l22;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    move-object p3, p1

    check-cast p3, Lcom/shabakaty/downloader/m22;

    .line 12
    iget-boolean p3, p3, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz p3, :cond_d

    .line 13
    move-object p3, p1

    check-cast p3, Lcom/shabakaty/downloader/k22;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/k22;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    .line 14
    invoke-static {p0, p4, v1}, Lcom/shabakaty/downloader/vd5;->t(Ljava/lang/String;IZ)Z

    move-result p4

    xor-int/2addr p4, v1

    if-eqz p4, :cond_c

    goto :goto_2

    :cond_d
    move-object p3, v0

    :goto_2
    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_e

    .line 15
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 16
    :cond_e
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    .line 17
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string p4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p3}, Lcom/shabakaty/downloader/vd5;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 20
    :cond_f
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_4

    :cond_10
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_11

    goto :goto_5

    .line 21
    :cond_11
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p3, 0x41

    if-gt p3, p1, :cond_12

    const/16 p3, 0x5b

    if-ge p1, p3, :cond_12

    const/4 v3, 0x1

    :cond_12
    if-eqz v3, :cond_13

    .line 22
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    :cond_13
    :goto_5
    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->y(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    :goto_6
    move-object p0, v0

    goto :goto_7

    .line 24
    :cond_14
    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public static final o(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/b74;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;",
            "Lcom/shabakaty/downloader/d9;",
            ")",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newArguments"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnnotations"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v0, p2

    move-object v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/d9;Ljava/util/List;I)Lcom/shabakaty/downloader/qe2;
    .locals 0

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p2

    :cond_1
    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_2

    move-object p3, p1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const-string p4, "newArguments"

    .line 3
    invoke-static {p1, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "newAnnotations"

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "newArgumentsForUpperBound"

    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p4

    if-ne p1, p4, :cond_4

    :cond_3
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p4

    if-ne p2, p4, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    .line 6
    instance-of p4, p0, Lcom/shabakaty/downloader/fe1;

    if-eqz p4, :cond_5

    .line 7
    check-cast p0, Lcom/shabakaty/downloader/fe1;

    .line 8
    iget-object p4, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 9
    invoke-static {p4, p1, p2}, Lcom/shabakaty/downloader/rm3;->o(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 11
    invoke-static {p0, p3, p2}, Lcom/shabakaty/downloader/rm3;->o(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    .line 12
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    goto :goto_1

    .line 13
    :cond_5
    instance-of p3, p0, Lcom/shabakaty/downloader/b74;

    if-eqz p3, :cond_6

    check-cast p0, Lcom/shabakaty/downloader/b74;

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/rm3;->o(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_6
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0
.end method

.method public static synthetic q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p2

    .line 3
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/rm3;->o(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/q20;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const-string v2, "fqName.parent()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/t93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    const-string v4, "fqName.shortName()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, p2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v0

    instance-of v3, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/shabakaty/downloader/rm3;->r(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/q20;

    move-result-object p0

    if-nez p0, :cond_2

    move-object p0, v1

    goto :goto_1

    .line 5
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p0

    :goto_1
    instance-of p1, p0, Lcom/shabakaty/downloader/q20;

    if-eqz p1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/q20;

    :cond_3
    return-object v1

    :cond_4
    return-object v0
.end method

.method public static final s(Lcom/shabakaty/downloader/c64;Lcom/shabakaty/downloader/q20;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmDescriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    const-string v2, "fqNameSafe.toUnsafe()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/e82;->g(Lcom/shabakaty/downloader/gi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/it4;->a:Lcom/shabakaty/downloader/it4;

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/nh3;->g(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/ht4;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/kb2;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/kb2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kb2;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "byClassId(it).internalName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/c64;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Lcom/shabakaty/downloader/l22;I)Lcom/shabakaty/downloader/l22;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "step"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/l22;->r:I

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/l22;->s:I

    .line 5
    iget p0, p0, Lcom/shabakaty/downloader/l22;->t:I

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    .line 6
    :goto_1
    new-instance p0, Lcom/shabakaty/downloader/l22;

    invoke-direct {p0, v0, v1, p1}, Lcom/shabakaty/downloader/l22;-><init>(III)V

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final u(Ljava/lang/String;III)I
    .locals 7

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/rm3;->v(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static final v(Ljava/lang/String;JJJ)J
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/me4;->A(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x27

    const-string v1, "System property \'"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-gtz p1, :cond_0

    cmp-long p1, p5, v2

    if-ltz p1, :cond_0

    move-wide p1, v2

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' should be in range "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", but is \'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has unrecognized value \'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-wide p1
.end method

.method public static final w(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/ek4;->a:I

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic x(Ljava/lang/String;IIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/rm3;->u(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static synthetic y(Ljava/lang/String;JJJILjava/lang/Object;)J
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const-wide/16 p3, 0x1

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const-wide p5, 0x7fffffffffffffffL

    :cond_1
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/rm3;->v(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final z(II)Lcom/shabakaty/downloader/n22;
    .locals 1

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    .line 1
    sget-object p0, Lcom/shabakaty/downloader/n22;->u:Lcom/shabakaty/downloader/n22;

    .line 2
    sget-object p0, Lcom/shabakaty/downloader/n22;->v:Lcom/shabakaty/downloader/n22;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n22;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/n22;-><init>(II)V

    return-object v0
.end method
