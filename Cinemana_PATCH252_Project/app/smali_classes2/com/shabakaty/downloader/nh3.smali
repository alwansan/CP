.class public Lcom/shabakaty/downloader/nh3;
.super Ljava/lang/Object;
.source "progressionUtil.kt"


# direct methods
.method public static synthetic A(Lcom/shabakaty/downloader/qw4;ZI)Lcom/shabakaty/downloader/qw4;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/nh3;->z(Lcom/shabakaty/downloader/qw4;Z)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    return-object p0
.end method

.method public static final B(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    instance-of v0, p0, Lcom/shabakaty/downloader/g32;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/g32;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Lcom/shabakaty/downloader/qe2;

    .line 6
    invoke-static {v5}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v4

    invoke-static {v4, v3, v6}, Lcom/shabakaty/downloader/nh3;->A(Lcom/shabakaty/downloader/qw4;ZI)Lcom/shabakaty/downloader/qw4;

    move-result-object v5

    const/4 v4, 0x1

    .line 7
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    move-object v2, v1

    goto :goto_3

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/shabakaty/downloader/g32;->a:Lcom/shabakaty/downloader/qe2;

    if-nez p0, :cond_5

    move-object p0, v1

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    invoke-static {p0, v3, v6}, Lcom/shabakaty/downloader/nh3;->A(Lcom/shabakaty/downloader/qw4;ZI)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    .line 10
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/g32;

    .line 14
    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/g32;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object p0, v2, Lcom/shabakaty/downloader/g32;->a:Lcom/shabakaty/downloader/qe2;

    :goto_3
    if-nez v2, :cond_7

    return-object v1

    .line 16
    :cond_7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/g32;->g()Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static final C(Lcom/shabakaty/downloader/b74;Z)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/rp0;->u:Lcom/shabakaty/downloader/rp0$a;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/rp0$a;->a(Lcom/shabakaty/downloader/qw4;Z)Lcom/shabakaty/downloader/rp0;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->B(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static final D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/xb2<",
            "TT;>;",
            "Lcom/shabakaty/downloader/jt4;",
            "Lcom/shabakaty/downloader/ht4<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/bp;",
            "Lcom/shabakaty/downloader/jn1<",
            "-",
            "Lcom/shabakaty/downloader/qe2;",
            "-TT;-",
            "Lcom/shabakaty/downloader/jt4;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "kotlinType"

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "factory"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mode"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeMappingConfiguration"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "writeGenericType"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {v3, v0}, Lcom/shabakaty/downloader/ht4;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    if-nez v5, :cond_22

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/nh3;->w(Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    sget-object v5, Lcom/shabakaty/downloader/ti4;->a:Lcom/shabakaty/downloader/vv2;

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/nh3;->w(Lcom/shabakaty/downloader/qe2;)Z

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v6

    .line 6
    invoke-interface/range {p0 .. p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v7

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/nh3;->q(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/nh3;->s(Lcom/shabakaty/downloader/qe2;)Ljava/util/List;

    move-result-object v5

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v5, v10}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 11
    check-cast v10, Lcom/shabakaty/downloader/qt4;

    .line 12
    invoke-interface {v10}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    sget v5, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v10, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 14
    sget-object v5, Lcom/shabakaty/downloader/ti4;->a:Lcom/shabakaty/downloader/vv2;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/vv2;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    const-string v5, "FAKE_CONTINUATION_CLASS_DESCRIPTOR.typeConstructor"

    invoke-static {v11, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/nh3;->r(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/hu4;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x10

    .line 16
    invoke-static/range {v10 .. v15}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object v5

    .line 17
    invoke-static {v9, v5}, Lcom/shabakaty/downloader/m50;->o0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    .line 18
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object v11

    const-string v5, "suspendFunType.builtIns.nullableAnyType"

    invoke-static {v11, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 19
    invoke-static/range {v6 .. v12}, Lcom/shabakaty/downloader/nh3;->i(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/qe2;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v5

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 21
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 22
    :cond_1
    sget-object v5, Lcom/shabakaty/downloader/q64;->a:Lcom/shabakaty/downloader/q64;

    .line 23
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/e30$a;->r0(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v6

    .line 24
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/e30$a;->J(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/us4;)Z

    move-result v7

    const-string v8, "["

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v7, :cond_2

    goto/16 :goto_5

    .line 25
    :cond_2
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/e30$a;->t(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/us4;)Lcom/shabakaty/downloader/sf3;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 26
    invoke-interface {v1, v7}, Lcom/shabakaty/downloader/xb2;->a(Lcom/shabakaty/downloader/sf3;)Ljava/lang/Object;

    move-result-object v6

    .line 27
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/e30$a;->X(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/te2;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 28
    sget-object v7, Lcom/shabakaty/downloader/ta2;->o:Lcom/shabakaty/downloader/fi1;

    const-string v9, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {v5, v0, v7}, Lcom/shabakaty/downloader/e30$a;->B(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/fi1;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    const-string v7, "possiblyPrimitiveType"

    .line 30
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    .line 31
    invoke-interface {v1, v6}, Lcom/shabakaty/downloader/xb2;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_5

    :cond_5
    move-object v9, v6

    goto/16 :goto_5

    .line 32
    :cond_6
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/e30$a;->s(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/us4;)Lcom/shabakaty/downloader/sf3;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 33
    sget-object v5, Lcom/shabakaty/downloader/sb2;->F:Ljava/util/Map;

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/sb2;

    if-eqz v5, :cond_7

    .line 34
    invoke-virtual {v5}, Lcom/shabakaty/downloader/sb2;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/xb2;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :cond_7
    const/4 v0, 0x4

    .line 35
    invoke-static {v0}, Lcom/shabakaty/downloader/sb2;->f(I)V

    throw v9

    .line 36
    :cond_8
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/e30$a;->d0(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/us4;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 37
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/e30$a;->q(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/us4;)Lcom/shabakaty/downloader/gi1;

    move-result-object v5

    .line 38
    sget-object v6, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/e82;->g(Lcom/shabakaty/downloader/gi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 39
    iget-boolean v6, v2, Lcom/shabakaty/downloader/jt4;->g:Z

    if-nez v6, :cond_c

    .line 40
    sget-object v6, Lcom/shabakaty/downloader/e82;->m:Ljava/util/List;

    .line 41
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    .line 42
    :cond_9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/e82$a;

    .line 43
    iget-object v7, v7, Lcom/shabakaty/downloader/e82$a;->a:Lcom/shabakaty/downloader/v20;

    .line 44
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_c

    goto :goto_5

    .line 45
    :cond_c
    invoke-static {v5}, Lcom/shabakaty/downloader/kb2;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/kb2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/kb2;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byClassId(classId).internalName"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/xb2;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    :cond_d
    :goto_5
    if-nez v9, :cond_20

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    .line 47
    instance-of v6, v5, Lcom/shabakaty/downloader/g32;

    if-eqz v6, :cond_f

    .line 48
    check-cast v5, Lcom/shabakaty/downloader/g32;

    .line 49
    iget-object v0, v5, Lcom/shabakaty/downloader/g32;->a:Lcom/shabakaty/downloader/qe2;

    if-nez v0, :cond_e

    .line 50
    iget-object v0, v5, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 51
    invoke-interface {v3, v0}, Lcom/shabakaty/downloader/ht4;->d(Ljava/util/Collection;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 52
    :cond_e
    invoke-static {v0}, Lcom/shabakaty/downloader/hu4;->m(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 53
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 54
    :cond_f
    invoke-interface {v5}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 55
    invoke-static {v5}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v2, "error/NonExistentClass"

    .line 56
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/xb2;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    check-cast v5, Lcom/shabakaty/downloader/q20;

    invoke-interface {v3, v0, v5}, Lcom/shabakaty/downloader/ht4;->f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/q20;)V

    return-object v1

    .line 58
    :cond_10
    instance-of v6, v5, Lcom/shabakaty/downloader/q20;

    if-eqz v6, :cond_17

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/zd2;->A(Lcom/shabakaty/downloader/qe2;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_16

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qt4;

    .line 61
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    const-string v6, "memberProjection.type"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    if-ne v6, v7, :cond_11

    const-string v0, "java/lang/Object"

    .line 63
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/xb2;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 64
    :cond_11
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v0

    const-string v6, "memberProjection.projectionKind"

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-boolean v6, v2, Lcom/shabakaty/downloader/jt4;->c:Z

    if-eqz v6, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_14

    if-eq v0, v10, :cond_13

    .line 66
    iget-object v0, v2, Lcom/shabakaty/downloader/jt4;->f:Lcom/shabakaty/downloader/jt4;

    if-nez v0, :cond_15

    goto :goto_6

    .line 67
    :cond_13
    iget-object v0, v2, Lcom/shabakaty/downloader/jt4;->h:Lcom/shabakaty/downloader/jt4;

    if-nez v0, :cond_15

    goto :goto_6

    .line 68
    :cond_14
    iget-object v0, v2, Lcom/shabakaty/downloader/jt4;->i:Lcom/shabakaty/downloader/jt4;

    if-nez v0, :cond_15

    :goto_6
    move-object v0, v2

    .line 69
    :cond_15
    invoke-static {v5, v1, v0, v3, v4}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    :goto_7
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/xb2;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/xb2;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-eqz v6, :cond_1c

    .line 72
    invoke-static {v5}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 73
    iget-boolean v6, v2, Lcom/shabakaty/downloader/jt4;->b:Z

    if-nez v6, :cond_18

    .line 74
    sget-object v6, Lcom/shabakaty/downloader/q64;->a:Lcom/shabakaty/downloader/q64;

    .line 75
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {v6, v0, v7}, Lcom/shabakaty/downloader/he0;->e(Lcom/shabakaty/downloader/xt4;Lcom/shabakaty/downloader/te2;Ljava/util/HashSet;)Lcom/shabakaty/downloader/te2;

    move-result-object v6

    .line 76
    check-cast v6, Lcom/shabakaty/downloader/qe2;

    if-eqz v6, :cond_18

    .line 77
    new-instance v0, Lcom/shabakaty/downloader/jt4;

    .line 78
    iget-boolean v8, v2, Lcom/shabakaty/downloader/jt4;->a:Z

    iget-boolean v10, v2, Lcom/shabakaty/downloader/jt4;->c:Z

    iget-boolean v11, v2, Lcom/shabakaty/downloader/jt4;->d:Z

    iget-boolean v12, v2, Lcom/shabakaty/downloader/jt4;->e:Z

    .line 79
    iget-object v13, v2, Lcom/shabakaty/downloader/jt4;->f:Lcom/shabakaty/downloader/jt4;

    iget-boolean v14, v2, Lcom/shabakaty/downloader/jt4;->g:Z

    iget-object v15, v2, Lcom/shabakaty/downloader/jt4;->h:Lcom/shabakaty/downloader/jt4;

    iget-object v2, v2, Lcom/shabakaty/downloader/jt4;->i:Lcom/shabakaty/downloader/jt4;

    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x200

    move-object v7, v0

    move-object/from16 v16, v2

    .line 80
    invoke-direct/range {v7 .. v18}, Lcom/shabakaty/downloader/jt4;-><init>(ZZZZZLcom/shabakaty/downloader/jt4;ZLcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/jt4;ZI)V

    .line 81
    invoke-static {v6, v1, v0, v3, v4}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 82
    :cond_18
    iget-boolean v6, v2, Lcom/shabakaty/downloader/jt4;->c:Z

    if-eqz v6, :cond_19

    .line 83
    move-object v6, v5

    check-cast v6, Lcom/shabakaty/downloader/q20;

    invoke-static {v6}, Lcom/shabakaty/downloader/zd2;->F(Lcom/shabakaty/downloader/q20;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 84
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/xb2;->f()Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    .line 85
    :cond_19
    check-cast v5, Lcom/shabakaty/downloader/q20;

    invoke-interface {v5}, Lcom/shabakaty/downloader/q20;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v6

    const-string v7, "descriptor.original"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Lcom/shabakaty/downloader/ht4;->a(Lcom/shabakaty/downloader/q20;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 86
    invoke-interface {v5}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/w20;->u:Lcom/shabakaty/downloader/w20;

    if-ne v6, v7, :cond_1a

    .line 87
    invoke-interface {v5}, Lcom/shabakaty/downloader/q20;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/q20;

    .line 88
    :cond_1a
    invoke-interface {v5}, Lcom/shabakaty/downloader/q20;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v5

    const-string v6, "enumClassIfEnumEntry.original"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/nh3;->g(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/ht4;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/xb2;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_1b
    move-object v1, v6

    .line 89
    :goto_8
    invoke-interface {v4, v0, v1, v2}, Lcom/shabakaty/downloader/jn1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 90
    :cond_1c
    instance-of v6, v5, Lcom/shabakaty/downloader/kt4;

    if-eqz v6, :cond_1d

    .line 91
    check-cast v5, Lcom/shabakaty/downloader/kt4;

    invoke-static {v5}, Lcom/shabakaty/downloader/hu4;->g(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 92
    sget-object v4, Lcom/shabakaty/downloader/eo1;->b:Lcom/shabakaty/downloader/jn1;

    .line 93
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1d
    instance-of v6, v5, Lcom/shabakaty/downloader/hs4;

    if-eqz v6, :cond_1e

    .line 95
    iget-boolean v6, v2, Lcom/shabakaty/downloader/jt4;->j:Z

    if-eqz v6, :cond_1e

    .line 96
    check-cast v5, Lcom/shabakaty/downloader/hs4;

    invoke-interface {v5}, Lcom/shabakaty/downloader/hs4;->d0()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unknown type "

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "no descriptor for type constructor of "

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_20
    iget-boolean v3, v2, Lcom/shabakaty/downloader/jt4;->a:Z

    if-eqz v3, :cond_21

    .line 100
    invoke-interface {v1, v9}, Lcom/shabakaty/downloader/xb2;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 101
    :cond_21
    invoke-interface {v4, v0, v9, v2}, Lcom/shabakaty/downloader/jn1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 102
    :cond_22
    :try_start_0
    invoke-static {v5, v1, v2, v3, v4}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method public static final E(II)I
    .locals 0

    .line 1
    rem-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static final F(Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ll2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/hw2;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nl2$a;->a:Lcom/shabakaty/downloader/nl2$a;

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/ll2;->h()Lcom/shabakaty/downloader/xj2;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/nl2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/shabakaty/downloader/xj2;->c()Lcom/shabakaty/downloader/he3;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/he3;->t:Lcom/shabakaty/downloader/he3;

    :goto_0
    move-object v3, v0

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/xj2;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gi1;->b()Ljava/lang/String;

    move-result-object v4

    const-string p1, "getFqName(scopeOwner).asString()"

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/shabakaty/downloader/ny3;->s:Lcom/shabakaty/downloader/ny3;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v6

    const-string p1, "name.asString()"

    invoke-static {v6, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/nl2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/he3;Ljava/lang/String;Lcom/shabakaty/downloader/ny3;Ljava/lang/String;)V

    return-void
.end method

.method public static final G(Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ll2;Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/hw2;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v3

    const-string p2, "scopeOwner.fqName.asString()"

    invoke-static {v3, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v5

    const-string p2, "name.asString()"

    invoke-static {v5, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/nl2$a;->a:Lcom/shabakaty/downloader/nl2$a;

    if-ne p0, p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/ll2;->h()Lcom/shabakaty/downloader/xj2;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/nl2;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/shabakaty/downloader/xj2;->c()Lcom/shabakaty/downloader/he3;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/shabakaty/downloader/he3;->t:Lcom/shabakaty/downloader/he3;

    :goto_0
    move-object v2, p2

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/xj2;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shabakaty/downloader/ny3;->r:Lcom/shabakaty/downloader/ny3;

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/shabakaty/downloader/nl2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/he3;Ljava/lang/String;Lcom/shabakaty/downloader/ny3;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static final H(Lcom/shabakaty/downloader/qe2;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/q20;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/downloader/tb4;->e:Lcom/shabakaty/downloader/fi1;

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->x(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static final I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationsOwner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tf2;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/tf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;Z)V

    return-object v0
.end method

.method public static J(Ljava/util/List;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/qm0;Ljava/util/List;)Lcom/shabakaty/downloader/wt4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/tt4;",
            "Lcom/shabakaty/downloader/qm0;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;)",
            "Lcom/shabakaty/downloader/wt4;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/shabakaty/downloader/nh3;->K(Ljava/util/List;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/qm0;Ljava/util/List;[Z)Lcom/shabakaty/downloader/wt4;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Substitution failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const/4 p0, 0x3

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->a(I)V

    throw v0
.end method

.method public static K(Ljava/util/List;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/qm0;Ljava/util/List;[Z)Lcom/shabakaty/downloader/wt4;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/tt4;",
            "Lcom/shabakaty/downloader/qm0;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;[Z)",
            "Lcom/shabakaty/downloader/wt4;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    if-eqz v1, :cond_6

    .line 1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/shabakaty/downloader/kt4;

    .line 4
    invoke-interface {v15}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v4

    invoke-interface {v15}, Lcom/shabakaty/downloader/kt4;->L()Z

    move-result v5

    invoke-interface {v15}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v6

    invoke-interface {v15}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    add-int/lit8 v16, v8, 0x1

    sget-object v9, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    invoke-interface {v15}, Lcom/shabakaty/downloader/kt4;->q0()Lcom/shabakaty/downloader/md4;

    move-result-object v10

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v10}, Lcom/shabakaty/downloader/lt4;->X0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/hw2;ILcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/md4;)Lcom/shabakaty/downloader/lt4;

    move-result-object v3

    .line 5
    invoke-interface {v15}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    new-instance v5, Lcom/shabakaty/downloader/st4;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/n1;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v8, v16

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/vs4;

    invoke-direct {v1, v11, v14}, Lcom/shabakaty/downloader/vs4;-><init>(Ljava/util/Map;Z)V

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/wt4;->f(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/ut4;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/ut4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 11
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/wt4;->f(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object v0

    .line 12
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/kt4;

    .line 13
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/lt4;

    .line 14
    invoke-interface {v4}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/qe2;

    .line 15
    invoke-virtual {v6}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v8

    invoke-interface {v8}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v8

    .line 16
    instance-of v9, v8, Lcom/shabakaty/downloader/kt4;

    if-eqz v9, :cond_1

    check-cast v8, Lcom/shabakaty/downloader/kt4;

    const-string v9, "typeParameter"

    .line 17
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v8, v2, v2}, Lcom/shabakaty/downloader/hu4;->h(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/ts4;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    goto :goto_3

    :cond_1
    move-object v8, v0

    .line 19
    :goto_3
    sget-object v9, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v8, v6, v9}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    if-nez v8, :cond_2

    return-object v2

    :cond_2
    if-eq v8, v6, :cond_3

    if-eqz p4, :cond_3

    .line 20
    aput-boolean v7, p4, v14

    .line 21
    :cond_3
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/lt4;->V0(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v5}, Lcom/shabakaty/downloader/lt4;->W0()V

    .line 23
    iput-boolean v7, v5, Lcom/shabakaty/downloader/lt4;->D:Z

    goto :goto_1

    :cond_5
    return-object v3

    :cond_6
    const/16 v0, 0x8

    .line 24
    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->a(I)V

    throw v2

    :cond_7
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->a(I)V

    throw v2

    :cond_8
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->a(I)V

    throw v2

    :cond_9
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->a(I)V

    throw v2
.end method

.method public static final L(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/d;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public static final M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
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
    invoke-interface {p2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->f(Lcom/shabakaty/downloader/me0;)V

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/my3;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/my3;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    .line 5
    invoke-static {v0, v0, p1}, Lcom/shabakaty/downloader/md0;->Q(Lcom/shabakaty/downloader/my3;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    sget v1, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object v1, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yd0;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yd0;

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/nv4;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/nv4;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    .line 8
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    :try_start_0
    invoke-static {v0, v0, p1}, Lcom/shabakaty/downloader/md0;->Q(Lcom/shabakaty/downloader/my3;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    throw p1

    .line 11
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/cu0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/cu0;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u;->n0()V

    const/4 p0, 0x4

    .line 13
    invoke-static {p1, v0, v0, v1, p0}, Lcom/shabakaty/downloader/z02;->A(Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/tm1;I)V

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cu0;->s0()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic a(I)V
    .locals 7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "typeParameters"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "result"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "newContainingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "originalSubstitution"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "substituteTypeParameters"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    if-eq p0, v0, :cond_3

    aput-object v5, v3, v2

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rd0;

    sget-object v1, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/h92;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/h92;-><init>(Lcom/shabakaty/downloader/e92;)V

    .line 3
    invoke-interface {p0, v2}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/rd0;-><init>(Lcom/shabakaty/downloader/me0;)V

    return-object v0
.end method

.method public static final c()Lcom/shabakaty/downloader/se0;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rd0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/md0;->a(Lcom/shabakaty/downloader/e92;I)Lcom/shabakaty/downloader/x70;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/l92;

    .line 4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/me0$b$a;->d(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rd0;-><init>(Lcom/shabakaty/downloader/me0;)V

    return-object v0
.end method

.method public static final d(Lcom/shabakaty/downloader/wk4;Lcom/shabakaty/downloader/gl4;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/il4;->j:Lcom/shabakaty/downloader/il4$b;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/il4;->i:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/gl4;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%-22s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p0, p0, Lcom/shabakaty/downloader/wk4;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lcom/shabakaty/downloader/se0;Ljava/util/concurrent/CancellationException;I)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/se0;->B()Lcom/shabakaty/downloader/me0;

    move-result-object p2

    sget-object v0, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/e92;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final f(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;
    .locals 3

    const-string v0, "first"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/b90;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/d9;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/b90;-><init>([Lcom/shabakaty/downloader/d9;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final g(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/ht4;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            "Lcom/shabakaty/downloader/ht4<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ht4;->c(Lcom/shabakaty/downloader/q20;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/ca4;->a:Lcom/shabakaty/downloader/ca4;

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v2, v1, Lcom/shabakaty/downloader/hw2;->s:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/ca4;->d:Lcom/shabakaty/downloader/hw2;

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hw2;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "safeIdentifier(klass.name).identifier"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    instance-of v2, v0, Lcom/shabakaty/downloader/k93;

    if-eqz v2, :cond_2

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/k93;

    invoke-interface {v0}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fqName.asString()"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x2f

    invoke-static {p0, v0, v4, v2, v3}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 10
    :cond_2
    instance-of v2, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/q20;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 11
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/ht4;->e(Lcom/shabakaty/downloader/q20;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    .line 12
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/nh3;->g(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/ht4;)Ljava/lang/String;

    move-result-object p0

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-object v0
.end method

.method public static final h(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/my3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/my3;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    invoke-static {v0, v0, p0}, Lcom/shabakaty/downloader/md0;->Q(Lcom/shabakaty/downloader/my3;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/qe2;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/b74;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zd2;",
            "Lcom/shabakaty/downloader/d9;",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;",
            "Lcom/shabakaty/downloader/qe2;",
            "Z)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "builtIns"

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "annotations"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "parameterTypes"

    invoke-static {v2, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "returnType"

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    add-int/2addr v8, v11

    add-int/2addr v8, v10

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p2, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/shabakaty/downloader/hu4;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v11

    :goto_1
    invoke-static {v7, v11}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v9, 0x1

    if-ltz v9, :cond_6

    .line 5
    check-cast v12, Lcom/shabakaty/downloader/qe2;

    if-nez v3, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/hw2;

    .line 7
    iget-boolean v14, v9, Lcom/shabakaty/downloader/hw2;->s:Z

    if-nez v14, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_5

    .line 8
    new-instance v14, Lcom/shabakaty/downloader/go;

    .line 9
    sget-object v15, Lcom/shabakaty/downloader/tb4$a;->r:Lcom/shabakaty/downloader/fi1;

    const-string v16, "name"

    .line 10
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v10

    new-instance v8, Lcom/shabakaty/downloader/ge4;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v9

    const-string v2, "name.asString()"

    invoke-static {v9, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/shabakaty/downloader/ge4;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/x93;

    invoke-direct {v2, v10, v8}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-static {v2}, Lcom/shabakaty/downloader/kf5;->j(Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v2

    .line 13
    invoke-direct {v14, v0, v15, v2}, Lcom/shabakaty/downloader/go;-><init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/fi1;Ljava/util/Map;)V

    .line 14
    sget v2, Lcom/shabakaty/downloader/d9;->a:I

    invoke-interface {v12}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/shabakaty/downloader/m50;->m0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 15
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v2, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_5

    :cond_4
    new-instance v8, Lcom/shabakaty/downloader/e9;

    invoke-direct {v8, v2}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    move-object v2, v8

    .line 17
    :goto_5
    invoke-static {v12, v2}, Lcom/shabakaty/downloader/hu4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qe2;

    move-result-object v12

    .line 18
    :cond_5
    invoke-static {v12}, Lcom/shabakaty/downloader/hu4;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    move v9, v13

    const/4 v10, 0x1

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    const/4 v0, 0x0

    throw v0

    .line 20
    :cond_7
    invoke-static/range {p5 .. p5}, Lcom/shabakaty/downloader/hu4;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 22
    :goto_6
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_9

    .line 23
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zd2;->x(I)Lcom/shabakaty/downloader/q20;

    move-result-object v2

    goto :goto_7

    .line 24
    :cond_9
    sget-object v3, Lcom/shabakaty/downloader/tb4;->a:Lcom/shabakaty/downloader/hw2;

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Function"

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zd2;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/q20;

    move-result-object v2

    :goto_7
    const-string v3, "if (isSuspendFunction) b\u2026tFunction(parameterCount)"

    .line 27
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    const-string v3, "<this>"

    .line 28
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v3, Lcom/shabakaty/downloader/tb4$a;->q:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_8

    .line 30
    :cond_a
    sget v4, Lcom/shabakaty/downloader/d9;->a:I

    new-instance v4, Lcom/shabakaty/downloader/go;

    sget-object v5, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    invoke-direct {v4, v0, v3, v5}, Lcom/shabakaty/downloader/go;-><init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/fi1;Ljava/util/Map;)V

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/m50;->m0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    move-object v1, v0

    goto :goto_8

    :cond_b
    new-instance v1, Lcom/shabakaty/downloader/e9;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    .line 33
    :cond_c
    :goto_8
    invoke-static {v1, v2, v7}, Lcom/shabakaty/downloader/se2;->e(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/q20;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method

.method public static final j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/hw2;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->r:Lcom/shabakaty/downloader/fi1;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/m50;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/shabakaty/downloader/ge4;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/shabakaty/downloader/ge4;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 4
    check-cast p0, Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object p0, v0

    :goto_2
    if-nez p0, :cond_4

    return-object v0

    .line 6
    :cond_4
    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    return-object p0
.end method

.method public static final k(J)Ljava/lang/String;
    .locals 12

    const v0, -0x3b9328e0

    int-to-long v0, v0

    const-string v2, " s "

    const v3, 0x3b9aca00

    const v4, 0x1dcd6500

    cmp-long v5, p0, v0

    if-gtz v5, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v4, v4

    sub-long/2addr p0, v4

    int-to-long v3, v3

    div-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const v0, -0xf404c

    int-to-long v0, v0

    const-string v5, " ms"

    const v6, 0xf4240

    const v7, 0x7a120

    cmp-long v8, p0, v0

    if-gtz v8, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v7

    sub-long/2addr p0, v1

    int-to-long v1, v6

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    const-string v8, " \u00b5s"

    const/16 v9, 0x3e8

    const/16 v10, 0x1f4

    cmp-long v11, p0, v0

    if-gtz v11, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v10

    sub-long/2addr p0, v1

    int-to-long v1, v9

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const v0, 0xf404c

    int-to-long v0, v0

    cmp-long v11, p0, v0

    if-gez v11, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v10

    add-long/2addr p0, v1

    int-to-long v1, v9

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const v0, 0x3b9328e0

    int-to-long v0, v0

    cmp-long v8, p0, v0

    if-gez v8, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v7

    add-long/2addr p0, v1

    int-to-long v1, v6

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v4, v4

    add-long/2addr p0, v4

    int-to-long v3, v3

    div-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 7
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%6s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/shabakaty/downloader/pp1$d<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/pp1$d<",
            "TM;>;",
            "Lcom/shabakaty/downloader/pp1$f<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$d;->l(Lcom/shabakaty/downloader/pp1$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final m(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/shabakaty/downloader/pp1$d<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/pp1$d<",
            "TM;>;",
            "Lcom/shabakaty/downloader/pp1$f<",
            "TM;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$d;->p(Lcom/shabakaty/downloader/pp1$f;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    iget-object v1, p1, Lcom/shabakaty/downloader/pp1$f;->d:Lcom/shabakaty/downloader/pp1$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/pp1$e;->u:Z

    const-string v3, "getRepeatedField() can only be called on repeated fields."

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ua1;->f(Lcom/shabakaty/downloader/ua1$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pp1$d;->p(Lcom/shabakaty/downloader/pp1$f;)V

    .line 7
    iget-object p0, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    iget-object v0, p1, Lcom/shabakaty/downloader/pp1$f;->d:Lcom/shabakaty/downloader/pp1$e;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-boolean v1, v0, Lcom/shabakaty/downloader/pp1$e;->u:Z

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ua1;->f(Lcom/shabakaty/downloader/ua1$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/pp1$f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final n(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/vn1;
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/q20;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/zd2;->O(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/vn1;->t:Lcom/shabakaty/downloader/vn1$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->h()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortName().asString()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi1;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    const-string v3, "toSafe().parent()"

    invoke-static {p0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v2, p0}, Lcom/shabakaty/downloader/vn1$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/vn1$a$a;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/vn1$a$a;->a:Lcom/shabakaty/downloader/vn1;

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static final o(Lcom/shabakaty/downloader/mc2;)Lcom/shabakaty/downloader/gc2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/mc2;",
            ")",
            "Lcom/shabakaty/downloader/gc2<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/gc2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/gc2;

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/shabakaty/downloader/pd2;

    const-string v1, "Cannot calculate JVM erasure for type: "

    if-eqz v0, :cond_8

    .line 3
    check-cast p0, Lcom/shabakaty/downloader/pd2;

    invoke-interface {p0}, Lcom/shabakaty/downloader/pd2;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/shabakaty/downloader/ld2;

    .line 5
    check-cast v4, Lcom/shabakaty/downloader/od2;

    .line 6
    iget-object v4, v4, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    .line 7
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v4

    instance-of v5, v4, Lcom/shabakaty/downloader/q20;

    if-eqz v5, :cond_2

    move-object v3, v4

    check-cast v3, Lcom/shabakaty/downloader/q20;

    :cond_2
    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    if-eq v4, v5, :cond_3

    invoke-interface {v3}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/w20;->v:Lcom/shabakaty/downloader/w20;

    if-eq v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    move-object v3, v2

    .line 9
    :cond_4
    check-cast v3, Lcom/shabakaty/downloader/ld2;

    if-nez v3, :cond_5

    .line 10
    invoke-static {p0}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/shabakaty/downloader/ld2;

    :cond_5
    if-nez v3, :cond_6

    .line 11
    const-class p0, Ljava/lang/Object;

    invoke-static {p0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object p0

    goto :goto_1

    .line 12
    :cond_6
    invoke-interface {v3}, Lcom/shabakaty/downloader/ld2;->d()Lcom/shabakaty/downloader/mc2;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->o(Lcom/shabakaty/downloader/mc2;)Lcom/shabakaty/downloader/gc2;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_7
    new-instance p0, Lcom/shabakaty/downloader/me2;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_8
    new-instance v0, Lcom/shabakaty/downloader/me2;

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final p(III)I
    .locals 1

    if-lez p2, :cond_1

    if-lt p0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/nh3;->E(II)I

    move-result v0

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/nh3;->E(II)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/nh3;->E(II)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_1
    if-gez p2, :cond_3

    if-gt p0, p1, :cond_2

    goto :goto_0

    :cond_2
    neg-int p2, p2

    .line 2
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/nh3;->E(II)I

    move-result p0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/nh3;->E(II)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/nh3;->E(II)I

    move-result p0

    add-int/2addr p1, p0

    :goto_0
    return p1

    .line 3
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final q(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->u(Lcom/shabakaty/downloader/qe2;)Z

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/tb4$a;->q:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/qt4;

    invoke-interface {p0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final r(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->u(Lcom/shabakaty/downloader/qe2;)Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/m50;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/qt4;

    invoke-interface {p0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    const-string v0, "arguments.last().type"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final s(Lcom/shabakaty/downloader/qe2;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->u(Lcom/shabakaty/downloader/qe2;)Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->u(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->q:Lcom/shabakaty/downloader/fi1;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v2, 0x1

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v3

    .line 7
    invoke-interface {v1, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Lcom/shabakaty/downloader/se0;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/se0;->B()Lcom/shabakaty/downloader/me0;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/e92;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final u(Lcom/shabakaty/downloader/qe2;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->n(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/vn1;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/vn1;->u:Lcom/shabakaty/downloader/vn1;

    if-eq p0, v0, :cond_2

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/vn1;->v:Lcom/shabakaty/downloader/vn1;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-ne p0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_2
    return v1
.end method

.method public static final v(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intellij.openapi.progress.ProcessCanceledException"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public static final w(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->n(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/vn1;

    move-result-object p0

    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/vn1;->v:Lcom/shabakaty/downloader/vn1;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final x(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    instance-of v0, p0, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/kt4;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/hu4;->g(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->H(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    return p0
.end method

.method public static y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    :cond_0
    const/4 p5, 0x2

    and-int/2addr p4, p5

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/ne0;->a(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p0

    .line 3
    invoke-static {p2}, Lcom/shabakaty/downloader/su;->m(I)V

    if-ne p2, p5, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/rg2;

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/downloader/rg2;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;)V

    goto :goto_1

    .line 5
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/qb4;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/qb4;-><init>(Lcom/shabakaty/downloader/me0;Z)V

    .line 6
    :goto_1
    invoke-virtual {p1, p2, p1, p3}, Lcom/shabakaty/downloader/u;->r0(ILjava/lang/Object;Lcom/shabakaty/downloader/hn1;)V

    return-object p1
.end method

.method public static final z(Lcom/shabakaty/downloader/qw4;Z)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/rp0;->u:Lcom/shabakaty/downloader/rp0$a;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/rp0$a;->a(Lcom/shabakaty/downloader/qw4;Z)Lcom/shabakaty/downloader/rp0;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->B(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qw4;->X0(Z)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    :cond_0
    return-object p1
.end method
