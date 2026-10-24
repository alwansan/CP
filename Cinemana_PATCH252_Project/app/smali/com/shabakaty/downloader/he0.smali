.class public Lcom/shabakaty/downloader/he0;
.super Ljava/lang/Object;
.source "CoordinatesUtils.java"

# interfaces
.implements Lcom/shabakaty/downloader/pr2;


# direct methods
.method public static a(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/py;
    .locals 3

    sget-object p2, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p1, p2

    :cond_1
    const/4 p3, 0x0

    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    if-eqz p0, :cond_4

    const p2, 0x7fffffff

    if-eq p0, p2, :cond_3

    if-ne p0, v2, :cond_2

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/co;->s:Lcom/shabakaty/downloader/co;

    if-ne p1, p2, :cond_2

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/xa0;

    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/xa0;-><init>(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_0

    .line 3
    :cond_2
    new-instance p2, Lcom/shabakaty/downloader/xc;

    invoke-direct {p2, p0, p1, p3}, Lcom/shabakaty/downloader/xc;-><init>(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;)V

    move-object p0, p2

    goto :goto_0

    .line 4
    :cond_3
    new-instance p0, Lcom/shabakaty/downloader/ai2;

    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/ai2;-><init>(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_0

    :cond_4
    if-ne p1, p2, :cond_5

    .line 5
    new-instance p0, Lcom/shabakaty/downloader/qr3;

    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/qr3;-><init>(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_0

    .line 6
    :cond_5
    new-instance p0, Lcom/shabakaty/downloader/xc;

    invoke-direct {p0, v2, p1, p3}, Lcom/shabakaty/downloader/xc;-><init>(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;)V

    goto :goto_0

    :cond_6
    if-ne p1, p2, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    .line 7
    new-instance p0, Lcom/shabakaty/downloader/xa0;

    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/xa0;-><init>(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_0

    .line 8
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_9
    new-instance p0, Lcom/shabakaty/downloader/xc;

    if-ne p1, p2, :cond_a

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/py;->d:Lcom/shabakaty/downloader/py$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget v2, Lcom/shabakaty/downloader/py$a;->a:I

    .line 12
    :cond_a
    invoke-direct {p0, v2, p1, p3}, Lcom/shabakaty/downloader/xc;-><init>(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;)V

    :goto_0
    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/gi1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    const-string p1, "child(Name.identifier(name)).toSafe()"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 2
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final e(Lcom/shabakaty/downloader/xt4;Lcom/shabakaty/downloader/te2;Ljava/util/HashSet;)Lcom/shabakaty/downloader/te2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xt4;",
            "Lcom/shabakaty/downloader/te2;",
            "Ljava/util/HashSet<",
            "Lcom/shabakaty/downloader/us4;",
            ">;)",
            "Lcom/shabakaty/downloader/te2;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/yt4;->U(Lcom/shabakaty/downloader/us4;)Lcom/shabakaty/downloader/mt4;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/xt4;->x(Lcom/shabakaty/downloader/mt4;)Lcom/shabakaty/downloader/te2;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/shabakaty/downloader/he0;->e(Lcom/shabakaty/downloader/xt4;Lcom/shabakaty/downloader/te2;Ljava/util/HashSet;)Lcom/shabakaty/downloader/te2;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->k(Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->Q(Lcom/shabakaty/downloader/te2;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/xt4;->e0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 7
    :cond_4
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/xt4;->m(Lcom/shabakaty/downloader/us4;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/xt4;->h0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v2

    .line 9
    :cond_5
    invoke-static {p0, v0, p2}, Lcom/shabakaty/downloader/he0;->e(Lcom/shabakaty/downloader/xt4;Lcom/shabakaty/downloader/te2;Ljava/util/HashSet;)Lcom/shabakaty/downloader/te2;

    move-result-object p2

    if-nez p2, :cond_6

    return-object v2

    .line 10
    :cond_6
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->k(Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->k(Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 12
    :cond_8
    instance-of v0, p2, Lcom/shabakaty/downloader/d74;

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/d74;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/yt4;->a0(Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 13
    :cond_9
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/xt4;->e0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object p1

    :cond_a
    :goto_1
    return-object p1
.end method

.method public static final f(Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/hn1<",
            "-TR;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/bj;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/bj;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/bj;->r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/he0$a;

    invoke-direct {v0, p2, p0, p1}, Lcom/shabakaty/downloader/he0$a;-><init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/he0$b;

    invoke-direct {v1, p2, v0, p0, p1}, Lcom/shabakaty/downloader/he0$b;-><init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/ae2;->c(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/ae2$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ae2$a;->a()Lcom/shabakaty/downloader/he2;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/shabakaty/downloader/r02;I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r02;->b()Lcom/shabakaty/downloader/n83;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/he0;->n(Lcom/shabakaty/downloader/r02;I)I

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/he0;->o(Lcom/shabakaty/downloader/r02;I)I

    move-result p0

    return p0
.end method

.method public static final j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/shabakaty/downloader/r02;I)I
    .locals 8

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/r02;->s:I

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/r02;->c:I

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/r02;->i:I

    .line 4
    iget v3, p0, Lcom/shabakaty/downloader/r02;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 5
    div-int/lit8 v6, v2, 0x2

    add-int v7, v1, v6

    add-int/2addr v7, v5

    if-ne p1, v4, :cond_0

    return v7

    :cond_0
    add-int v5, v1, v3

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r02;->a()Lcom/shabakaty/downloader/e8;

    move-result-object p0

    sget-object p1, Lcom/shabakaty/downloader/e8;->y:Lcom/shabakaty/downloader/e8;

    if-ne p0, p1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    :cond_2
    return v5
.end method

.method public static final l(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/gv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Lcom/shabakaty/downloader/gv<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/au0;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/gv;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    return-object v0

    .line 3
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/au0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/au0;->o()Lcom/shabakaty/downloader/gv;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->C()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/gv;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    return-object v0
.end method

.method public static final m(Landroid/view/View;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(stringRes)"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static n(Lcom/shabakaty/downloader/r02;I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r02;->b()Lcom/shabakaty/downloader/n83;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/he0;->k(Lcom/shabakaty/downloader/r02;I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lcom/shabakaty/downloader/r02;->c:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r02;->a()Lcom/shabakaty/downloader/e8;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/e8;->y:Lcom/shabakaty/downloader/e8;

    if-ne v0, v1, :cond_2

    mul-int/lit8 p1, p1, 0x3

    .line 5
    :cond_2
    :goto_0
    iget p0, p0, Lcom/shabakaty/downloader/r02;->e:I

    add-int/2addr p1, p0

    return p1
.end method

.method public static o(Lcom/shabakaty/downloader/r02;I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r02;->b()Lcom/shabakaty/downloader/n83;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    if-ne v0, v1, :cond_1

    .line 2
    iget p1, p0, Lcom/shabakaty/downloader/r02;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r02;->a()Lcom/shabakaty/downloader/e8;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/e8;->y:Lcom/shabakaty/downloader/e8;

    if-ne v0, v1, :cond_2

    mul-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/he0;->k(Lcom/shabakaty/downloader/r02;I)I

    move-result p1

    .line 5
    :cond_2
    :goto_0
    iget p0, p0, Lcom/shabakaty/downloader/r02;->f:I

    add-int/2addr p1, p0

    return p1
.end method

.method public static final p(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/xd0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/xd0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object p0, v0, Lcom/shabakaty/downloader/xd0;->t:Lcom/shabakaty/downloader/ud0;

    if-nez p0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xd0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object p0

    sget v1, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object v1, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/yd0;

    if-nez p0, :cond_2

    move-object p0, v0

    goto :goto_1

    :cond_2
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/yd0;->r(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p0

    .line 4
    :goto_1
    iput-object p0, v0, Lcom/shabakaty/downloader/xd0;->t:Lcom/shabakaty/downloader/ud0;

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static final r(Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/f73;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/f73;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/f73;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/f73;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/e73;->b:Landroid/content/SharedPreferences;

    const-string v3, "preference"

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    .line 3
    invoke-interface {v2, p0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    :goto_0
    instance-of v2, p1, Lcom/shabakaty/downloader/dt3$a;

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/qv4;

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/e73;->b:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    return-object v0

    .line 10
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SHA-1"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    new-array p0, v2, [B

    .line 6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    array-length v1, p0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-byte v4, p0, v3

    .line 8
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static final t(Lcom/shabakaty/downloader/ud0;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/au0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v0, 0x40

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public static final u(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 2
    iget-object v4, v0, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 3
    iget v5, v0, Lcom/shabakaty/downloader/pw0;->r:I

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v6, v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v6, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 5
    iget-object v6, v6, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    :goto_0
    const-string v7, "2"

    .line 6
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    .line 7
    iget-object v6, v0, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    const-string v9, " "

    .line 8
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    invoke-static {v6, v9, v8, v8, v10}, Lcom/shabakaty/downloader/re4;->e0(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/m50;->W(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const-string v10, " "

    invoke-static/range {v9 .. v16}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, v0, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    :goto_1
    const-string v9, ""

    if-nez v1, :cond_2

    move-object v10, v9

    goto :goto_2

    .line 10
    :cond_2
    iget-object v10, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 11
    iget-object v10, v10, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    :goto_2
    if-nez v1, :cond_3

    move-object v11, v9

    goto :goto_3

    .line 12
    :cond_3
    iget-object v11, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 13
    iget-object v11, v11, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    .line 14
    :goto_3
    iget-wide v12, v0, Lcom/shabakaty/downloader/pw0;->y:J

    long-to-int v13, v12

    int-to-float v12, v13

    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v12, v13

    div-float/2addr v12, v13

    .line 15
    invoke-static {v12}, Lcom/shabakaty/downloader/d91;->e(F)F

    move-result v12

    float-to-int v12, v12

    if-nez v1, :cond_4

    move-object v13, v9

    goto :goto_4

    .line 16
    :cond_4
    iget-object v13, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 17
    iget-object v13, v13, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    :goto_4
    if-nez v1, :cond_5

    move-object v14, v9

    goto :goto_5

    .line 18
    :cond_5
    iget-object v14, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 19
    iget-object v14, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    :goto_5
    if-nez v1, :cond_6

    move-object v15, v9

    goto :goto_6

    .line 20
    :cond_6
    iget-object v15, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 21
    iget-object v15, v15, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    :goto_6
    if-nez v1, :cond_7

    move-object/from16 v17, v9

    goto :goto_7

    .line 22
    :cond_7
    iget-object v8, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 23
    iget-object v8, v8, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    move-object/from16 v17, v8

    .line 24
    :goto_7
    iget-object v8, v0, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    move-object/from16 v18, v9

    const-string v9, "/downloads/"

    .line 25
    invoke-static {v8, v9, v3, v7}, Lcom/shabakaty/downloader/re4;->h0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    if-nez v1, :cond_8

    move-object/from16 v20, v18

    goto :goto_8

    .line 26
    :cond_8
    iget-object v7, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 27
    iget-object v7, v7, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    move-object/from16 v20, v7

    :goto_8
    if-nez v1, :cond_9

    move-object/from16 v21, v18

    goto :goto_9

    .line 28
    :cond_9
    iget-object v7, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 29
    iget-object v7, v7, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    move-object/from16 v21, v7

    :goto_9
    if-nez v1, :cond_a

    move-object/from16 v22, v18

    goto :goto_a

    .line 30
    :cond_a
    iget-object v7, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 31
    iget-object v7, v7, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    move-object/from16 v22, v7

    :goto_a
    if-nez v1, :cond_b

    move-object/from16 v23, v18

    goto :goto_b

    .line 32
    :cond_b
    iget-object v7, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 33
    iget-object v7, v7, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    move-object/from16 v23, v7

    :goto_b
    if-nez v1, :cond_c

    const/16 v24, 0x0

    goto :goto_c

    .line 34
    :cond_c
    iget-object v7, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 35
    iget v7, v7, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    move/from16 v24, v7

    :goto_c
    if-nez v1, :cond_d

    move-object/from16 v25, v18

    goto :goto_d

    .line 36
    :cond_d
    iget-object v7, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 37
    iget-object v7, v7, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    move-object/from16 v25, v7

    :goto_d
    if-nez v1, :cond_e

    .line 38
    new-instance v7, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    const/4 v8, 0x3

    invoke-direct {v7, v3, v3, v8}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;I)V

    move-object/from16 v26, v7

    goto :goto_e

    .line 39
    :cond_e
    iget-object v3, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 40
    iget-object v3, v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    move-object/from16 v26, v3

    :goto_e
    if-nez v1, :cond_f

    move-object/from16 v28, v18

    goto :goto_f

    .line 41
    :cond_f
    iget-object v3, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 42
    iget-object v3, v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    move-object/from16 v28, v3

    :goto_f
    if-nez v1, :cond_10

    const-string v3, "0"

    goto :goto_10

    .line 43
    :cond_10
    iget-object v3, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 44
    iget-object v3, v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    :goto_10
    move-object/from16 v29, v3

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_11

    .line 45
    :cond_11
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 46
    iget-boolean v1, v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    :goto_11
    const/16 v30, 0x0

    .line 47
    iget-object v0, v0, Lcom/shabakaty/downloader/pw0;->B:Ljava/lang/String;

    const/high16 v27, 0x200000

    move-object v3, v2

    move-object v7, v10

    move-object v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, v17

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move/from16 v24, v1

    move-object/from16 v25, v30

    move-object/from16 v26, v0

    .line 48
    invoke-direct/range {v3 .. v27}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method
