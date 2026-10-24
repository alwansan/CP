.class public final Lcom/shabakaty/downloader/j82;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j82$a;,
        Lcom/shabakaty/downloader/j82$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/z72;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z72;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/j82;->a:Lcom/shabakaty/downloader/z72;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/tm1;ILcom/shabakaty/downloader/ss4;ZZ)Lcom/shabakaty/downloader/j82$b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/b74;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/o82;",
            ">;I",
            "Lcom/shabakaty/downloader/ss4;",
            "ZZ)",
            "Lcom/shabakaty/downloader/j82$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    .line 1
    invoke-static/range {p4 .. p4}, Lcom/shabakaty/downloader/z02;->z(Lcom/shabakaty/downloader/ss4;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    const/4 v8, 0x0

    if-nez v4, :cond_2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Lcom/shabakaty/downloader/j82$b;

    invoke-direct {v1, v8, v6, v5}, Lcom/shabakaty/downloader/j82$b;-><init>(Lcom/shabakaty/downloader/b74;IZ)V

    return-object v1

    .line 3
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v4

    if-nez v4, :cond_3

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/j82$b;

    invoke-direct {v1, v8, v6, v5}, Lcom/shabakaty/downloader/j82$b;-><init>(Lcom/shabakaty/downloader/b74;IZ)V

    return-object v1

    .line 5
    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/o82;

    .line 6
    sget-object v10, Lcom/shabakaty/downloader/at4;->a:Lcom/shabakaty/downloader/e9;

    .line 7
    invoke-static/range {p4 .. p4}, Lcom/shabakaty/downloader/z02;->z(Lcom/shabakaty/downloader/ss4;)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    instance-of v10, v4, Lcom/shabakaty/downloader/q20;

    if-nez v10, :cond_5

    goto/16 :goto_2

    .line 9
    :cond_5
    iget-object v10, v9, Lcom/shabakaty/downloader/o82;->b:Lcom/shabakaty/downloader/uv2;

    .line 10
    sget-object v11, Lcom/shabakaty/downloader/uv2;->r:Lcom/shabakaty/downloader/uv2;

    const-string v12, "descriptor.builtIns.getB\u2026Name(oppositeClassFqName)"

    const-string v13, " collection"

    const-string v14, " is not a "

    const-string v15, "Given class "

    if-ne v10, v11, :cond_7

    sget-object v10, Lcom/shabakaty/downloader/ss4;->r:Lcom/shabakaty/downloader/ss4;

    if-ne v2, v10, :cond_7

    move-object v10, v4

    check-cast v10, Lcom/shabakaty/downloader/q20;

    .line 11
    sget-object v11, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-static {v10}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v11

    .line 12
    sget-object v5, Lcom/shabakaty/downloader/e82;->k:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 13
    invoke-static {v10}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v4

    .line 14
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/fi1;

    if-eqz v4, :cond_6

    .line 15
    invoke-static {v10}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mutable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_7
    iget-object v5, v9, Lcom/shabakaty/downloader/o82;->b:Lcom/shabakaty/downloader/uv2;

    .line 18
    sget-object v10, Lcom/shabakaty/downloader/uv2;->s:Lcom/shabakaty/downloader/uv2;

    if-ne v5, v10, :cond_9

    sget-object v5, Lcom/shabakaty/downloader/ss4;->s:Lcom/shabakaty/downloader/ss4;

    if-ne v2, v5, :cond_9

    check-cast v4, Lcom/shabakaty/downloader/q20;

    .line 19
    sget-object v5, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-static {v4}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v5

    .line 20
    sget-object v10, Lcom/shabakaty/downloader/e82;->l:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 21
    invoke-static {v4}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v5

    .line 22
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/fi1;

    if-eqz v5, :cond_8

    .line 23
    invoke-static {v4}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 24
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "read-only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    move-object v4, v8

    .line 25
    :goto_3
    invoke-static/range {p4 .. p4}, Lcom/shabakaty/downloader/z02;->z(Lcom/shabakaty/downloader/ss4;)Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_a

    goto :goto_5

    .line 26
    :cond_a
    iget-object v2, v9, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    if-nez v2, :cond_b

    const/4 v2, -0x1

    goto :goto_4

    .line 27
    :cond_b
    sget-object v10, Lcom/shabakaty/downloader/at4$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v10, v2

    :goto_4
    if-eq v2, v6, :cond_d

    if-eq v2, v5, :cond_c

    :goto_5
    move-object v2, v8

    goto :goto_6

    .line 28
    :cond_c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    .line 29
    :cond_d
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    if-nez v4, :cond_e

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v10

    goto :goto_7

    :cond_e
    invoke-interface {v4}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v10

    :goto_7
    const-string v11, "enhancedClassifier?.typeConstructor ?: constructor"

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v11, p3, 0x1

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v12

    invoke-interface {v10}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v13

    const-string v14, "typeConstructor.parameters"

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 33
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v12, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v13, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 36
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/kt4;

    check-cast v12, Lcom/shabakaty/downloader/qt4;

    if-nez v7, :cond_f

    .line 37
    new-instance v6, Lcom/shabakaty/downloader/j82$a;

    move/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v6, v8, v7}, Lcom/shabakaty/downloader/j82$a;-><init>(Lcom/shabakaty/downloader/qe2;I)V

    goto :goto_9

    :cond_f
    move/from16 v16, v7

    .line 38
    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v6

    invoke-virtual {v0, v6, v1, v11, v3}, Lcom/shabakaty/downloader/j82;->b(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/tm1;IZ)Lcom/shabakaty/downloader/j82$a;

    move-result-object v6

    goto :goto_9

    .line 39
    :cond_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/o82;

    .line 40
    iget-object v6, v6, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    .line 41
    sget-object v7, Lcom/shabakaty/downloader/u13;->r:Lcom/shabakaty/downloader/u13;

    if-ne v6, v7, :cond_11

    .line 42
    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v6

    .line 43
    new-instance v7, Lcom/shabakaty/downloader/j82$a;

    .line 44
    invoke-static {v6}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v8

    .line 45
    invoke-static {v6}, Lcom/shabakaty/downloader/rm3;->A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 46
    invoke-static {v8, v1}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v1

    .line 47
    invoke-direct {v7, v1, v6}, Lcom/shabakaty/downloader/j82$a;-><init>(Lcom/shabakaty/downloader/qe2;I)V

    move-object v6, v7

    goto :goto_9

    :cond_11
    const/4 v6, 0x1

    .line 48
    new-instance v1, Lcom/shabakaty/downloader/j82$a;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v6}, Lcom/shabakaty/downloader/j82$a;-><init>(Lcom/shabakaty/downloader/qe2;I)V

    move-object v6, v1

    .line 49
    :goto_9
    iget v1, v6, Lcom/shabakaty/downloader/j82$a;->b:I

    add-int/2addr v11, v1

    .line 50
    iget-object v1, v6, Lcom/shabakaty/downloader/j82$a;->a:Lcom/shabakaty/downloader/qe2;

    const-string v6, "arg.projectionKind"

    if-eqz v1, :cond_12

    .line 51
    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v13}, Lcom/shabakaty/downloader/hu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v7

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    .line 52
    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    const-string v7, "arg.type"

    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v13}, Lcom/shabakaty/downloader/hu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v7

    goto :goto_a

    :cond_13
    if-eqz v4, :cond_14

    .line 53
    invoke-static {v13}, Lcom/shabakaty/downloader/eu4;->n(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v7

    goto :goto_a

    :cond_14
    const/4 v7, 0x0

    .line 54
    :goto_a
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move/from16 v7, v16

    const/16 v6, 0xa

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_15
    sub-int v11, v11, p3

    if-nez v4, :cond_1a

    if-nez v2, :cond_1a

    .line 55
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_c

    .line 56
    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qt4;

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_17

    const/4 v1, 0x0

    goto :goto_d

    :cond_19
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_1a

    .line 57
    new-instance v1, Lcom/shabakaty/downloader/j82$b;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v7, v11, v3}, Lcom/shabakaty/downloader/j82$b;-><init>(Lcom/shabakaty/downloader/b74;IZ)V

    return-object v1

    :cond_1a
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/shabakaty/downloader/d9;

    .line 58
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v6

    aput-object v6, v1, v3

    .line 59
    sget-object v6, Lcom/shabakaty/downloader/at4;->b:Lcom/shabakaty/downloader/e9;

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_e

    :cond_1b
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_1c

    goto :goto_f

    :cond_1c
    move-object v6, v7

    :goto_f
    const/4 v4, 0x1

    aput-object v6, v1, v4

    .line 60
    sget-object v4, Lcom/shabakaty/downloader/at4;->a:Lcom/shabakaty/downloader/e9;

    if-eqz v2, :cond_1d

    const/4 v6, 0x1

    goto :goto_10

    :cond_1d
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_1e

    move-object v8, v4

    goto :goto_11

    :cond_1e
    move-object v8, v7

    :goto_11
    const/4 v4, 0x2

    aput-object v8, v1, v4

    .line 61
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->r([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 62
    move-object v4, v1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_26

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1f

    .line 63
    new-instance v4, Lcom/shabakaty/downloader/b90;

    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/b90;-><init>(Ljava/util/List;)V

    move-object v1, v4

    goto :goto_12

    .line 64
    :cond_1f
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/d9;

    .line 65
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v4

    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 67
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 68
    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v5, v12}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qt4;

    check-cast v4, Lcom/shabakaty/downloader/qt4;

    if-nez v4, :cond_20

    goto :goto_14

    :cond_20
    move-object v5, v4

    .line 71
    :goto_14
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_21
    if-nez v2, :cond_22

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v4

    goto :goto_15

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_15
    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 p1, v1

    move-object/from16 p2, v10

    move-object/from16 p3, v8

    move/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    .line 73
    invoke-static/range {p1 .. p6}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 74
    iget-boolean v4, v9, Lcom/shabakaty/downloader/o82;->c:Z

    if-eqz v4, :cond_24

    .line 75
    iget-object v4, v0, Lcom/shabakaty/downloader/j82;->a:Lcom/shabakaty/downloader/z72;

    invoke-interface {v4}, Lcom/shabakaty/downloader/z72;->a()Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    .line 76
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/nh3;->C(Lcom/shabakaty/downloader/b74;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    goto :goto_16

    :cond_23
    const/4 v4, 0x1

    .line 77
    new-instance v5, Lcom/shabakaty/downloader/f03;

    invoke-direct {v5, v1}, Lcom/shabakaty/downloader/f03;-><init>(Lcom/shabakaty/downloader/b74;)V

    move-object v1, v5

    goto :goto_16

    :cond_24
    const/4 v4, 0x1

    :goto_16
    if-eqz v2, :cond_25

    .line 78
    iget-boolean v2, v9, Lcom/shabakaty/downloader/o82;->d:Z

    if-eqz v2, :cond_25

    const/4 v5, 0x1

    goto :goto_17

    :cond_25
    const/4 v5, 0x0

    .line 79
    :goto_17
    new-instance v2, Lcom/shabakaty/downloader/j82$b;

    invoke-direct {v2, v1, v11, v5}, Lcom/shabakaty/downloader/j82$b;-><init>(Lcom/shabakaty/downloader/b74;IZ)V

    return-object v2

    .line 80
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "At least one Annotations object expected"

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/tm1;IZ)Lcom/shabakaty/downloader/j82$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qw4;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/o82;",
            ">;IZ)",
            "Lcom/shabakaty/downloader/j82$a;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/shabakaty/downloader/j82$a;

    const/4 p2, 0x1

    invoke-direct {p1, v1, p2}, Lcom/shabakaty/downloader/j82$a;-><init>(Lcom/shabakaty/downloader/qe2;I)V

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_b

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/zm3;

    .line 4
    move-object v9, p1

    check-cast v9, Lcom/shabakaty/downloader/fe1;

    .line 5
    iget-object v3, v9, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 6
    sget-object v6, Lcom/shabakaty/downloader/ss4;->r:Lcom/shabakaty/downloader/ss4;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v7, v0

    move v8, p4

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/j82;->a(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/tm1;ILcom/shabakaty/downloader/ss4;ZZ)Lcom/shabakaty/downloader/j82$b;

    move-result-object v10

    .line 8
    iget-object v3, v9, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 9
    sget-object v6, Lcom/shabakaty/downloader/ss4;->s:Lcom/shabakaty/downloader/ss4;

    .line 10
    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/j82;->a(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/tm1;ILcom/shabakaty/downloader/ss4;ZZ)Lcom/shabakaty/downloader/j82$b;

    move-result-object p2

    .line 11
    iget-object p3, v10, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    if-nez p3, :cond_1

    iget-object p4, p2, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    if-nez p4, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget-boolean p4, v10, Lcom/shabakaty/downloader/j82$b;->c:Z

    if-nez p4, :cond_8

    iget-boolean p4, p2, Lcom/shabakaty/downloader/j82$b;->c:Z

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/an3;

    if-nez p3, :cond_3

    .line 14
    iget-object p3, v9, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 15
    :cond_3
    iget-object p1, p2, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    if-nez p1, :cond_4

    .line 16
    iget-object p1, v9, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 17
    :cond_4
    invoke-direct {v1, p3, p1}, Lcom/shabakaty/downloader/an3;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    .line 18
    iget-object p3, v9, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 19
    :cond_6
    iget-object p1, p2, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    if-nez p1, :cond_7

    .line 20
    iget-object p1, v9, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 21
    :cond_7
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v1

    goto :goto_2

    .line 22
    :cond_8
    :goto_0
    iget-object p2, p2, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    if-nez p2, :cond_9

    .line 23
    invoke-static {p3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    if-nez p3, :cond_a

    move-object p3, p2

    .line 24
    :cond_a
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object p3

    .line 25
    :goto_1
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object v1

    .line 26
    :goto_2
    new-instance p1, Lcom/shabakaty/downloader/j82$a;

    .line 27
    iget p2, v10, Lcom/shabakaty/downloader/j82$b;->b:I

    .line 28
    invoke-direct {p1, v1, p2}, Lcom/shabakaty/downloader/j82$a;-><init>(Lcom/shabakaty/downloader/qe2;I)V

    goto :goto_4

    .line 29
    :cond_b
    instance-of v0, p1, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_d

    .line 30
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/b74;

    .line 31
    sget-object v5, Lcom/shabakaty/downloader/ss4;->t:Lcom/shabakaty/downloader/ss4;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v7, p4

    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/j82;->a(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/tm1;ILcom/shabakaty/downloader/ss4;ZZ)Lcom/shabakaty/downloader/j82$b;

    move-result-object p2

    .line 33
    new-instance p3, Lcom/shabakaty/downloader/j82$a;

    .line 34
    iget-boolean p4, p2, Lcom/shabakaty/downloader/j82$b;->c:Z

    if-eqz p4, :cond_c

    .line 35
    iget-object p4, p2, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    .line 36
    invoke-static {p1, p4}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    goto :goto_3

    .line 37
    :cond_c
    iget-object p1, p2, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    .line 38
    :goto_3
    iget p2, p2, Lcom/shabakaty/downloader/j82$b;->b:I

    .line 39
    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/j82$a;-><init>(Lcom/shabakaty/downloader/qe2;I)V

    move-object p1, p3

    :goto_4
    return-object p1

    :cond_d
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1
.end method
