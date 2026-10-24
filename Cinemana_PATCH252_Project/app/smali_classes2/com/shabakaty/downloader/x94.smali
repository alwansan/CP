.class public final Lcom/shabakaty/downloader/x94;
.super Ljava/lang/Object;
.source "specialBuiltinMembers.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/tq;)Ljava/lang/String;
    .locals 4

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lcom/shabakaty/downloader/yh3;

    if-eqz v0, :cond_4

    const-string v0, "<this>"

    .line 4
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v2, Lcom/shabakaty/downloader/c30;->r:Lcom/shabakaty/downloader/c30;

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/vo;->b:Ljava/util/Map;

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/hw2;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 10
    :cond_4
    instance-of v0, p0, Lcom/shabakaty/downloader/t64;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/shabakaty/downloader/so;->m:Lcom/shabakaty/downloader/so;

    check-cast p0, Lcom/shabakaty/downloader/t64;

    const-string v0, "functionDescriptor"

    .line 11
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/z94;->j:Ljava/util/Map;

    .line 13
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->e(Lcom/shabakaty/downloader/rq;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    move-object p0, v1

    goto :goto_1

    :cond_5
    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/hw2;

    :goto_1
    if-nez p0, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_2
    return-object v1
.end method

.method public static final b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/shabakaty/downloader/tq;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z94;->a:Lcom/shabakaty/downloader/z94$a;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/z94;->k:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/vo;->e:Ljava/util/Set;

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    instance-of v0, p0, Lcom/shabakaty/downloader/yh3;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/shabakaty/downloader/vh3;

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/x94$a;->r:Lcom/shabakaty/downloader/x94$a;

    invoke-static {p0, v3, v0, v2}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_2
    instance-of v0, p0, Lcom/shabakaty/downloader/t64;

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/x94$b;->r:Lcom/shabakaty/downloader/x94$b;

    invoke-static {p0, v3, v0, v2}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final c(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/shabakaty/downloader/tq;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/to;->b(Lcom/shabakaty/downloader/hw2;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/x94$c;->r:Lcom/shabakaty/downloader/x94$c;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static final d(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/rq;)Z
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialCallableDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q20;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    const-string v0, "specialCallableDescripto\u2026ssDescriptor).defaultType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->l(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/q20;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 3
    instance-of v1, p0, Lcom/shabakaty/downloader/t62;

    if-nez v1, :cond_e

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/c21;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/c21;-><init>(I)V

    .line 6
    sget-object v4, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    .line 7
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 8
    new-instance v6, Lcom/shabakaty/downloader/jh4;

    invoke-direct {v6, v1, v2}, Lcom/shabakaty/downloader/jh4;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/jh4;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    .line 10
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_b

    .line 11
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/jh4;

    .line 12
    iget-object v8, v6, Lcom/shabakaty/downloader/jh4;->a:Lcom/shabakaty/downloader/qe2;

    .line 13
    invoke-virtual {v8}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v9

    .line 14
    invoke-virtual {v3, v9, v1}, Lcom/shabakaty/downloader/c21;->b(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ts4;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 15
    invoke-virtual {v8}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v2

    .line 16
    iget-object v5, v6, Lcom/shabakaty/downloader/jh4;->b:Lcom/shabakaty/downloader/jh4;

    :goto_1
    if-eqz v5, :cond_8

    .line 17
    iget-object v6, v5, Lcom/shabakaty/downloader/jh4;->a:Lcom/shabakaty/downloader/qe2;

    .line 18
    invoke-virtual {v6}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v9

    .line 19
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_3

    .line 20
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/qt4;

    .line 21
    invoke-interface {v10}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v10

    if-eq v10, v4, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_2

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_5

    .line 22
    sget-object v9, Lcom/shabakaty/downloader/ws4;->b:Lcom/shabakaty/downloader/ws4$a;

    invoke-virtual {v9, v6}, Lcom/shabakaty/downloader/ws4$a;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/tt4;

    move-result-object v9

    .line 23
    invoke-static {v9, v0, v7}, Lcom/shabakaty/downloader/fw;->c(Lcom/shabakaty/downloader/tt4;ZI)Lcom/shabakaty/downloader/tt4;

    move-result-object v9

    .line 24
    new-instance v10, Lcom/shabakaty/downloader/wt4;

    invoke-direct {v10, v9}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 25
    invoke-virtual {v10, v8, v4}, Lcom/shabakaty/downloader/wt4;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    const-string v9, "TypeConstructorSubstitut\u2026uted, Variance.INVARIANT)"

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v8}, Lcom/shabakaty/downloader/cw;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;

    move-result-object v8

    .line 27
    iget-object v8, v8, Lcom/shabakaty/downloader/rc;->b:Ljava/lang/Object;

    .line 28
    check-cast v8, Lcom/shabakaty/downloader/qe2;

    goto :goto_5

    .line 29
    :cond_5
    sget-object v9, Lcom/shabakaty/downloader/ws4;->b:Lcom/shabakaty/downloader/ws4$a;

    invoke-virtual {v9, v6}, Lcom/shabakaty/downloader/ws4$a;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/tt4;

    move-result-object v9

    .line 30
    new-instance v10, Lcom/shabakaty/downloader/wt4;

    invoke-direct {v10, v9}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 31
    invoke-virtual {v10, v8, v4}, Lcom/shabakaty/downloader/wt4;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    const-string v9, "{\n                    Ty\u2026ARIANT)\n                }"

    .line 32
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    if-nez v2, :cond_7

    .line 33
    invoke-virtual {v6}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v2, 0x1

    .line 34
    :goto_7
    iget-object v5, v5, Lcom/shabakaty/downloader/jh4;->b:Lcom/shabakaty/downloader/jh4;

    goto :goto_1

    .line 35
    :cond_8
    invoke-virtual {v8}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    .line 36
    invoke-virtual {v3, v4, v1}, Lcom/shabakaty/downloader/c21;->b(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ts4;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 37
    invoke-static {v8, v2}, Lcom/shabakaty/downloader/eu4;->k(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    goto :goto_9

    .line 38
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Type constructors should be equals!\nsubstitutedSuperType: "

    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 39
    invoke-static {v4}, Lcom/shabakaty/downloader/iz4;->a(Lcom/shabakaty/downloader/ts4;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \n\nsupertype: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {v1}, Lcom/shabakaty/downloader/iz4;->a(Lcom/shabakaty/downloader/ts4;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3, v4, v1}, Lcom/shabakaty/downloader/c21;->b(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ts4;)Z

    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 45
    :cond_a
    invoke-interface {v9}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/qe2;

    .line 46
    new-instance v9, Lcom/shabakaty/downloader/jh4;

    const-string v10, "immediateSupertype"

    invoke-static {v8, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v8, v6}, Lcom/shabakaty/downloader/jh4;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/jh4;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    :goto_9
    if-eqz v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    if-eqz v0, :cond_e

    .line 47
    invoke-static {p0}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result p0

    xor-int/2addr p0, v7

    return p0

    .line 48
    :cond_d
    invoke-static {v0}, Lcom/shabakaty/downloader/rs4;->a(I)V

    throw v2

    .line 49
    :cond_e
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->l(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/q20;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    return v0
.end method
