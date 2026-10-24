.class public final Lcom/shabakaty/downloader/wb4;
.super Ljava/lang/Object;
.source "StarProjectionImpl.kt"


# direct methods
.method public static final a(Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/zd2;)Lcom/shabakaty/downloader/qe2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/ts4;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;",
            "Lcom/shabakaty/downloader/zd2;",
            ")",
            "Lcom/shabakaty/downloader/qe2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wb4$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/wb4$a;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/wt4;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    sget-object v0, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/shabakaty/downloader/zd2;->n()Lcom/shabakaty/downloader/b74;

    move-result-object p0

    :cond_0
    const-string p1, "typeParameters: List<Typ\u2026 ?: builtIns.defaultBound"

    .line 4
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qe2;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    const-string v1, "this.containingDeclaration"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/h30;

    const-string v2, "it.typeConstructor"

    const-string v3, "upperBounds"

    const/16 v4, 0xa

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/h30;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.parameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcom/shabakaty/downloader/kt4;

    .line 7
    invoke-interface {v4}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object p0

    .line 10
    invoke-static {v1, v0, p0}, Lcom/shabakaty/downloader/wb4;->a(Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/zd2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    goto :goto_2

    .line 11
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/downloader/xn1;

    if-eqz v1, :cond_3

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/xn1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeParameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 15
    check-cast v4, Lcom/shabakaty/downloader/kt4;

    .line 16
    invoke-interface {v4}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object p0

    .line 19
    invoke-static {v1, v0, p0}, Lcom/shabakaty/downloader/wb4;->a(Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/zd2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    :goto_2
    return-object p0

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported descriptor type to build star projection type based on type parameters of it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
