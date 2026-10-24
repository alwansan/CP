.class public final Lcom/shabakaty/downloader/pt4;
.super Ljava/lang/Object;
.source "typeParameterUtils.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/h30;I)Lcom/shabakaty/downloader/tk1;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/h30;->B()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/h30;->T()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->t(Lcom/shabakaty/downloader/qm0;)Z

    .line 5
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lcom/shabakaty/downloader/tk1;-><init>(Lcom/shabakaty/downloader/h30;Ljava/util/List;Lcom/shabakaty/downloader/tk1;)V

    return-object v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/tk1;

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v3

    instance-of v4, v3, Lcom/shabakaty/downloader/h30;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, Lcom/shabakaty/downloader/h30;

    :cond_3
    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/pt4;->a(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/h30;I)Lcom/shabakaty/downloader/tk1;

    move-result-object p0

    .line 9
    invoke-direct {v2, p1, p2, p0}, Lcom/shabakaty/downloader/tk1;-><init>(Lcom/shabakaty/downloader/h30;Ljava/util/List;Lcom/shabakaty/downloader/tk1;)V

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final b(Lcom/shabakaty/downloader/h30;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h30;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/h30;->B()Ljava/util/List;

    move-result-object v1

    const-string v2, "declaredTypeParameters"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/h30;->T()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v3

    instance-of v3, v3, Lcom/shabakaty/downloader/rq;

    if-nez v3, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->k(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/l04;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/pt4$a;->r:Lcom/shabakaty/downloader/pt4$a;

    .line 4
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/nk4;

    invoke-direct {v0, v3, v4}, Lcom/shabakaty/downloader/nk4;-><init>(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)V

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/pt4$b;->r:Lcom/shabakaty/downloader/pt4$b;

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/t04;->C(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/pt4$c;->r:Lcom/shabakaty/downloader/pt4$c;

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/t04;->F(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->k(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/l04;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Lcom/shabakaty/downloader/l04;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lcom/shabakaty/downloader/q20;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 11
    :goto_0
    check-cast v4, Lcom/shabakaty/downloader/q20;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_4

    sget-object v5, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 12
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lcom/shabakaty/downloader/h30;->B()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 13
    :cond_5
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Lcom/shabakaty/downloader/kt4;

    const-string v4, "it"

    .line 17
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 18
    new-instance v5, Lcom/shabakaty/downloader/jw;

    invoke-direct {v5, v3, p0, v4}, Lcom/shabakaty/downloader/jw;-><init>(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qm0;I)V

    .line 19
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
