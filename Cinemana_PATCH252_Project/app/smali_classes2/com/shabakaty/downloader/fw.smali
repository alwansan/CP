.class public final Lcom/shabakaty/downloader/fw;
.super Ljava/lang/Object;
.source "CapturedTypeConstructor.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object p1

    invoke-interface {p0}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/st4;

    new-instance v0, Lcom/shabakaty/downloader/yg2;

    sget-object v1, Lcom/shabakaty/downloader/yj2;->e:Lcom/shabakaty/downloader/md4;

    const-string v2, "NO_LOCKS"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/shabakaty/downloader/fw$a;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/fw$a;-><init>(Lcom/shabakaty/downloader/qt4;)V

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yg2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/st4;

    invoke-interface {p0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    :goto_0
    return-object p1

    .line 6
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/st4;

    const-string v0, "typeProjection"

    .line 7
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/zv;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/ew;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ew;-><init>(Lcom/shabakaty/downloader/qt4;)V

    const/4 v2, 0x0

    .line 10
    sget v3, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v3, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 11
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/shabakaty/downloader/zv;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/dw;ZLcom/shabakaty/downloader/d9;)V

    .line 12
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/qe2;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    instance-of p0, p0, Lcom/shabakaty/downloader/dw;

    return p0
.end method

.method public static c(Lcom/shabakaty/downloader/tt4;ZI)Lcom/shabakaty/downloader/tt4;
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    instance-of p2, p0, Lcom/shabakaty/downloader/n02;

    if-eqz p2, :cond_3

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/n02;

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/n02;->b:[Lcom/shabakaty/downloader/kt4;

    .line 4
    iget-object p0, p0, Lcom/shabakaty/downloader/n02;->c:[Lcom/shabakaty/downloader/qt4;

    const-string v0, "<this>"

    .line 5
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p0

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 8
    aget-object v5, p0, v3

    aget-object v3, p2, v3

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/x93;

    invoke-direct {v6, v5, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Lcom/shabakaty/downloader/x93;

    .line 14
    iget-object v3, v1, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 15
    check-cast v3, Lcom/shabakaty/downloader/qt4;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 17
    check-cast v1, Lcom/shabakaty/downloader/kt4;

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/fw;->a(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-array v0, v2, [Lcom/shabakaty/downloader/qt4;

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Lcom/shabakaty/downloader/qt4;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/n02;

    invoke-direct {v0, p2, p0, p1}, Lcom/shabakaty/downloader/n02;-><init>([Lcom/shabakaty/downloader/kt4;[Lcom/shabakaty/downloader/qt4;Z)V

    goto :goto_2

    .line 20
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/gw;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/gw;-><init>(Lcom/shabakaty/downloader/tt4;Z)V

    :goto_2
    return-object v0
.end method
