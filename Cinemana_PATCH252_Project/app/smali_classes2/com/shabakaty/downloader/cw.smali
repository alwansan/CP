.class public final Lcom/shabakaty/downloader/cw;
.super Ljava/lang/Object;
.source "CapturedTypeApproximation.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            ")",
            "Lcom/shabakaty/downloader/rc<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->k(Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/cw;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/cw;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/rc;

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/rc;->a:Ljava/lang/Object;

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/qe2;

    invoke-static {v3}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v3

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/rc;->a:Ljava/lang/Object;

    .line 8
    check-cast v4, Lcom/shabakaty/downloader/qe2;

    invoke-static {v4}, Lcom/shabakaty/downloader/rm3;->A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v3

    .line 10
    invoke-static {v3, p0}, Lcom/shabakaty/downloader/vd5;->o(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object v3

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/rc;->b:Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/qe2;

    invoke-static {v0}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/rc;->b:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/shabakaty/downloader/qe2;

    invoke-static {v1}, Lcom/shabakaty/downloader/rm3;->A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/vd5;->o(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    .line 17
    invoke-direct {v2, v3, p0}, Lcom/shabakaty/downloader/rc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/shabakaty/downloader/fw;->b(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    const-string v3, "type.builtIns.nothingType"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 20
    check-cast v1, Lcom/shabakaty/downloader/dw;

    invoke-interface {v1}, Lcom/shabakaty/downloader/dw;->b()Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    const-string v2, "typeProjection.type"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/eu4;->l(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    const-string v2, "makeNullableIfNeeded(this, type.isMarkedNullable)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eq v6, v5, :cond_2

    if-ne v6, v4, :cond_1

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/rc;

    invoke-static {p0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/zd2;->p()Lcom/shabakaty/downloader/b74;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result p0

    invoke-static {v4, p0}, Lcom/shabakaty/downloader/eu4;->l(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/rc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v1, "Only nontrivial projections should have been captured, not: "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 28
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/rc;

    invoke-static {p0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object p0

    const-string v2, "type.builtIns.nullableAnyType"

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/rc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v2, v6, :cond_4

    goto/16 :goto_7

    .line 30
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v1

    const-string v8, "typeConstructor.parameters"

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/m50;->D0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/x93;

    .line 33
    iget-object v8, v7, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 34
    check-cast v8, Lcom/shabakaty/downloader/qt4;

    .line 35
    iget-object v7, v7, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 36
    check-cast v7, Lcom/shabakaty/downloader/kt4;

    const-string v9, "typeParameter"

    .line 37
    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {v7}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v9

    sget-object v10, Lcom/shabakaty/downloader/wt4;->b:Lcom/shabakaty/downloader/wt4;

    const/4 v10, 0x0

    if-eqz v9, :cond_b

    if-eqz v8, :cond_a

    .line 39
    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v9, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    goto :goto_2

    .line 40
    :cond_5
    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/wt4;->b(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/xz4;

    move-result-object v9

    .line 41
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_8

    if-eq v9, v5, :cond_7

    if-ne v9, v4, :cond_6

    .line 42
    new-instance v9, Lcom/shabakaty/downloader/ms4;

    invoke-static {v7}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shabakaty/downloader/zd2;->p()Lcom/shabakaty/downloader/b74;

    move-result-object v10

    const-string v11, "typeParameter.builtIns.nothingType"

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, v10, v11}, Lcom/shabakaty/downloader/ms4;-><init>(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0

    .line 43
    :cond_7
    new-instance v9, Lcom/shabakaty/downloader/ms4;

    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object v11

    const-string v12, "typeParameter.builtIns.nullableAnyType"

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, v10, v11}, Lcom/shabakaty/downloader/ms4;-><init>(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_3

    .line 44
    :cond_8
    new-instance v9, Lcom/shabakaty/downloader/ms4;

    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, v10, v11}, Lcom/shabakaty/downloader/ms4;-><init>(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V

    .line 45
    :goto_3
    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 46
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 48
    :cond_9
    iget-object v7, v9, Lcom/shabakaty/downloader/ms4;->b:Lcom/shabakaty/downloader/qe2;

    .line 49
    invoke-static {v7}, Lcom/shabakaty/downloader/cw;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;

    move-result-object v7

    .line 50
    iget-object v8, v7, Lcom/shabakaty/downloader/rc;->a:Ljava/lang/Object;

    .line 51
    check-cast v8, Lcom/shabakaty/downloader/qe2;

    .line 52
    iget-object v7, v7, Lcom/shabakaty/downloader/rc;->b:Ljava/lang/Object;

    .line 53
    check-cast v7, Lcom/shabakaty/downloader/qe2;

    .line 54
    iget-object v10, v9, Lcom/shabakaty/downloader/ms4;->c:Lcom/shabakaty/downloader/qe2;

    .line 55
    invoke-static {v10}, Lcom/shabakaty/downloader/cw;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;

    move-result-object v10

    .line 56
    iget-object v11, v10, Lcom/shabakaty/downloader/rc;->a:Ljava/lang/Object;

    .line 57
    check-cast v11, Lcom/shabakaty/downloader/qe2;

    .line 58
    iget-object v10, v10, Lcom/shabakaty/downloader/rc;->b:Ljava/lang/Object;

    .line 59
    check-cast v10, Lcom/shabakaty/downloader/qe2;

    .line 60
    new-instance v12, Lcom/shabakaty/downloader/ms4;

    .line 61
    iget-object v13, v9, Lcom/shabakaty/downloader/ms4;->a:Lcom/shabakaty/downloader/kt4;

    .line 62
    invoke-direct {v12, v13, v7, v11}, Lcom/shabakaty/downloader/ms4;-><init>(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V

    .line 63
    new-instance v7, Lcom/shabakaty/downloader/ms4;

    .line 64
    iget-object v9, v9, Lcom/shabakaty/downloader/ms4;->a:Lcom/shabakaty/downloader/kt4;

    .line 65
    invoke-direct {v7, v9, v8, v10}, Lcom/shabakaty/downloader/ms4;-><init>(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V

    .line 66
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    const/16 p0, 0x24

    .line 68
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v10

    :cond_b
    const/16 p0, 0x23

    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v10

    .line 69
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    .line 70
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ms4;

    .line 71
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v4, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    iget-object v7, v1, Lcom/shabakaty/downloader/ms4;->b:Lcom/shabakaty/downloader/qe2;

    iget-object v1, v1, Lcom/shabakaty/downloader/ms4;->c:Lcom/shabakaty/downloader/qe2;

    check-cast v4, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v4, v7, v1}, Lcom/shabakaty/downloader/fz2;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v5, 0x0

    .line 73
    :goto_5
    new-instance v0, Lcom/shabakaty/downloader/rc;

    if-eqz v5, :cond_10

    .line 74
    invoke-static {p0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->p()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    invoke-static {p0, v2}, Lcom/shabakaty/downloader/cw;->b(Lcom/shabakaty/downloader/qe2;Ljava/util/List;)Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    .line 75
    :goto_6
    invoke-static {p0, v6}, Lcom/shabakaty/downloader/cw;->b(Lcom/shabakaty/downloader/qe2;Ljava/util/List;)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    .line 76
    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/rc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 77
    :cond_11
    :goto_7
    new-instance v0, Lcom/shabakaty/downloader/rc;

    invoke-direct {v0, p0, p0}, Lcom/shabakaty/downloader/rc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b(Lcom/shabakaty/downloader/qe2;Ljava/util/List;)Lcom/shabakaty/downloader/qe2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ms4;",
            ">;)",
            "Lcom/shabakaty/downloader/qe2;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/ms4;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    sget-object v3, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v4, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    iget-object v5, v1, Lcom/shabakaty/downloader/ms4;->b:Lcom/shabakaty/downloader/qe2;

    iget-object v6, v1, Lcom/shabakaty/downloader/ms4;->c:Lcom/shabakaty/downloader/qe2;

    check-cast v4, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/fz2;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/ms4;->b:Lcom/shabakaty/downloader/qe2;

    .line 8
    iget-object v5, v1, Lcom/shabakaty/downloader/ms4;->c:Lcom/shabakaty/downloader/qe2;

    .line 9
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 10
    iget-object v4, v1, Lcom/shabakaty/downloader/ms4;->a:Lcom/shabakaty/downloader/kt4;

    .line 11
    invoke-interface {v4}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    iget-object v4, v1, Lcom/shabakaty/downloader/ms4;->b:Lcom/shabakaty/downloader/qe2;

    .line 13
    invoke-static {v4}, Lcom/shabakaty/downloader/zd2;->H(Lcom/shabakaty/downloader/qe2;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    iget-object v4, v1, Lcom/shabakaty/downloader/ms4;->a:Lcom/shabakaty/downloader/kt4;

    .line 15
    invoke-interface {v4}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v4

    if-eq v4, v5, :cond_2

    .line 16
    new-instance v4, Lcom/shabakaty/downloader/st4;

    .line 17
    iget-object v5, v1, Lcom/shabakaty/downloader/ms4;->a:Lcom/shabakaty/downloader/kt4;

    .line 18
    invoke-interface {v5}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    if-ne v2, v5, :cond_1

    move-object v2, v3

    .line 19
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/downloader/ms4;->c:Lcom/shabakaty/downloader/qe2;

    .line 20
    invoke-direct {v4, v2, v1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_3

    .line 21
    :cond_2
    iget-object v4, v1, Lcom/shabakaty/downloader/ms4;->c:Lcom/shabakaty/downloader/qe2;

    .line 22
    invoke-static {v4}, Lcom/shabakaty/downloader/zd2;->I(Lcom/shabakaty/downloader/qe2;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/shabakaty/downloader/st4;

    .line 23
    iget-object v2, v1, Lcom/shabakaty/downloader/ms4;->a:Lcom/shabakaty/downloader/kt4;

    .line 24
    invoke-interface {v2}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v2

    if-ne v5, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 25
    :goto_1
    iget-object v1, v1, Lcom/shabakaty/downloader/ms4;->b:Lcom/shabakaty/downloader/qe2;

    .line 26
    invoke-direct {v4, v3, v1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_3

    .line 27
    :cond_4
    new-instance v4, Lcom/shabakaty/downloader/st4;

    .line 28
    iget-object v5, v1, Lcom/shabakaty/downloader/ms4;->a:Lcom/shabakaty/downloader/kt4;

    .line 29
    invoke-interface {v5}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    if-ne v2, v5, :cond_5

    move-object v2, v3

    .line 30
    :cond_5
    iget-object v1, v1, Lcom/shabakaty/downloader/ms4;->c:Lcom/shabakaty/downloader/qe2;

    .line 31
    invoke-direct {v4, v2, v1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_3

    .line 32
    :cond_6
    :goto_2
    new-instance v4, Lcom/shabakaty/downloader/st4;

    .line 33
    iget-object v1, v1, Lcom/shabakaty/downloader/ms4;->b:Lcom/shabakaty/downloader/qe2;

    .line 34
    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    .line 35
    :goto_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const/4 p1, 0x6

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, p1}, Lcom/shabakaty/downloader/rm3;->p(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/d9;Ljava/util/List;I)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    return-object p0
.end method
