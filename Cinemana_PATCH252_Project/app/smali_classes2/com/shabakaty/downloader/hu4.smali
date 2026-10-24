.class public final Lcom/shabakaty/downloader/hu4;
.super Ljava/lang/Object;
.source "TypeUtils.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st4;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    return-object v0
.end method

.method public static final b(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/qw4;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/eu4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z

    move-result p0

    return p0
.end method

.method public static final c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ts4;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/ts4;",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    instance-of v2, v0, Lcom/shabakaty/downloader/h30;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/h30;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/shabakaty/downloader/h30;->B()Ljava/util/List;

    move-result-object v0

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/m50;->C0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    .line 4
    instance-of v2, p0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    .line 5
    :cond_3
    check-cast p0, Lcom/shabakaty/downloader/p02;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/p02;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/q02;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/q02;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lcom/shabakaty/downloader/q02;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/o02;

    .line 6
    iget v5, v2, Lcom/shabakaty/downloader/o02;->a:I

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/o02;->b:Ljava/lang/Object;

    .line 8
    check-cast v2, Lcom/shabakaty/downloader/qt4;

    if-nez v0, :cond_5

    move-object v5, v3

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kt4;

    :goto_2
    if-eqz v5, :cond_6

    if-eqz p2, :cond_6

    .line 10
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_8

    .line 11
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 12
    :cond_7
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    const-string v5, "argument.type"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Lcom/shabakaty/downloader/hu4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ts4;Ljava/util/Set;)Z

    move-result v2

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_4

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public static final d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st4;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object p2

    :goto_0
    if-ne p2, p1, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    :cond_1
    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    return-object v0
.end method

.method public static final e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/kt4;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 5
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    const-string v1, "upperBound"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/hu4;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/h30;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/shabakaty/downloader/h30;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/shabakaty/downloader/h30;->B()Ljava/util/List;

    move-result-object v0

    .line 8
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qt4;

    if-nez v0, :cond_4

    move-object v3, v2

    goto :goto_4

    .line 9
    :cond_4
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kt4;

    :goto_4
    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 10
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_8

    .line 11
    invoke-interface {v5}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_6

    .line 12
    :cond_6
    invoke-interface {v5}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/shabakaty/downloader/m50;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v5}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_6

    .line 13
    :cond_7
    invoke-interface {v5}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    const-string v5, "argument.type"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1, p2, p3}, Lcom/shabakaty/downloader/hu4;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;Ljava/util/Set;Ljava/util/Set;)V

    :cond_8
    :goto_6
    move v3, v4

    goto :goto_3

    :cond_9
    :goto_7
    return-void
.end method

.method public static final f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p0

    const-string v0, "constructor.builtIns"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final g(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qe2;
    .locals 7

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "upperBounds"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/shabakaty/downloader/qe2;

    .line 4
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v4

    instance-of v5, v4, Lcom/shabakaty/downloader/q20;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/shabakaty/downloader/q20;

    :cond_1
    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v3}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    if-eq v5, v6, :cond_3

    invoke-interface {v3}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v3

    sget-object v5, Lcom/shabakaty/downloader/w20;->v:Lcom/shabakaty/downloader/w20;

    if-eq v3, v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_0
    if-eqz v4, :cond_0

    move-object v3, v2

    .line 6
    :cond_4
    check-cast v3, Lcom/shabakaty/downloader/qe2;

    if-nez v3, :cond_5

    .line 7
    invoke-interface {p0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "upperBounds.first()"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lcom/shabakaty/downloader/qe2;

    :cond_5
    return-object v3
.end method

.method public static final h(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/ts4;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kt4;",
            "Lcom/shabakaty/downloader/ts4;",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeParameter.upperBounds"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/qe2;

    const-string v4, "upperBound"

    .line 4
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-static {v1, v4, p2}, Lcom/shabakaty/downloader/hu4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ts4;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return v2
.end method

.method public static final i(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->i(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    return p0
.end method

.method public static final j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/eu4;->k(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    const-string v0, "makeNullable(this)"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qw4;->Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/wt4;Ljava/util/Map;Lcom/shabakaty/downloader/xz4;Ljava/util/Set;)Lcom/shabakaty/downloader/qe2;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/wt4;",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/ts4;",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;",
            "Lcom/shabakaty/downloader/xz4;",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;)",
            "Lcom/shabakaty/downloader/qe2;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lcom/shabakaty/downloader/fe1;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "constructor.parameters"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xa

    if-eqz v3, :cond_a

    .line 3
    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/fe1;

    .line 4
    iget-object v10, v3, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-virtual {v10}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    invoke-interface {v11}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    invoke-interface {v11}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v11

    if-nez v11, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {v10}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    invoke-interface {v11}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v9}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 9
    check-cast v13, Lcom/shabakaty/downloader/kt4;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result v15

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/qt4;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-nez v15, :cond_2

    if-eqz v14, :cond_2

    .line 12
    invoke-interface {v14}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    new-instance v14, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v14, v13}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    .line 14
    :goto_2
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v10, v12, v5, v4}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object v10

    .line 16
    :cond_4
    :goto_3
    iget-object v3, v3, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 17
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    invoke-interface {v11}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    invoke-interface {v11}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v11

    if-nez v11, :cond_5

    goto :goto_7

    .line 18
    :cond_5
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    invoke-interface {v11}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v11, v9}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 21
    check-cast v11, Lcom/shabakaty/downloader/kt4;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v12

    invoke-interface {v11}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result v13

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/qt4;

    if-eqz v1, :cond_6

    .line 23
    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_7

    if-eqz v12, :cond_7

    .line 24
    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_6

    .line 25
    :cond_7
    new-instance v12, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v12, v11}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    .line 26
    :goto_6
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_8
    invoke-static {v3, v6, v5, v4}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object v3

    .line 28
    :cond_9
    :goto_7
    invoke-static {v10, v3}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    goto/16 :goto_c

    .line 29
    :cond_a
    instance-of v3, v2, Lcom/shabakaty/downloader/b74;

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/b74;

    .line 30
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v10

    invoke-interface {v10}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v10

    invoke-interface {v10}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v10

    if-nez v10, :cond_b

    goto :goto_b

    .line 31
    :cond_b
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v10

    invoke-interface {v10}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 34
    check-cast v10, Lcom/shabakaty/downloader/kt4;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result v12

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/qt4;

    if-eqz v1, :cond_c

    .line 36
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_9
    if-nez v12, :cond_d

    if-eqz v11, :cond_d

    .line 37
    invoke-interface {v11}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_a

    .line 38
    :cond_d
    new-instance v11, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v11, v10}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    .line 39
    :goto_a
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 40
    :cond_e
    invoke-static {v3, v6, v5, v4}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    goto :goto_c

    :cond_f
    :goto_b
    move-object v0, v3

    .line 41
    :goto_c
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/vd5;->o(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 42
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/wt4;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v1, "replaceArgumentsByParame\u2026ubstitute(it, variance) }"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_10
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0
.end method

.method public static final m(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/fe1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "constructor.parameters"

    if-eqz v0, :cond_6

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/fe1;

    .line 4
    iget-object v5, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 9
    check-cast v8, Lcom/shabakaty/downloader/kt4;

    .line 10
    new-instance v9, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v9, v8}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v5, v7, v2, v1}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object v5

    .line 12
    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 17
    check-cast v6, Lcom/shabakaty/downloader/kt4;

    .line 18
    new-instance v7, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v0, v4, v2, v1}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 20
    :cond_5
    :goto_3
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    goto :goto_5

    .line 21
    :cond_6
    instance-of v0, p0, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    invoke-interface {v5}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    invoke-interface {v5}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 23
    :cond_7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    invoke-interface {v5}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 26
    check-cast v5, Lcom/shabakaty/downloader/kt4;

    .line 27
    new-instance v6, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v6, v5}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_8
    invoke-static {v0, v4, v2, v1}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 29
    :cond_9
    :goto_5
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/vd5;->o(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    return-object p0

    .line 30
    :cond_a
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0
.end method
