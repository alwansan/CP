.class public final Lcom/shabakaty/downloader/r82;
.super Ljava/lang/Object;
.source "JavaTypeResolver.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/bg2;

.field public final b:Lcom/shabakaty/downloader/nt4;

.field public final c:Lcom/shabakaty/downloader/ot4;

.field public final d:Lcom/shabakaty/downloader/ym3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/nt4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/r82;->b:Lcom/shabakaty/downloader/nt4;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ot4;

    const/4 p2, 0x0

    .line 5
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ot4;-><init>(Lcom/shabakaty/downloader/ym3;)V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/r82;->c:Lcom/shabakaty/downloader/ot4;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/ym3;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ym3;-><init>(Lcom/shabakaty/downloader/ot4;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/r82;->d:Lcom/shabakaty/downloader/ym3;

    return-void
.end method

.method public static final d(Lcom/shabakaty/downloader/y62;)Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/y62;->s()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unresolved java class "

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/y62;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    sget-object v2, Lcom/shabakaty/downloader/du4;->r:Lcom/shabakaty/downloader/du4;

    sget-object v3, Lcom/shabakaty/downloader/l82;->t:Lcom/shabakaty/downloader/l82;

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez v0, :cond_0

    new-instance v8, Lcom/shabakaty/downloader/tf2;

    iget-object v9, v6, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    move-object/from16 v10, p1

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/shabakaty/downloader/tf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;ZI)V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    invoke-interface/range {p3 .. p3}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v8

    :goto_0
    move-object v9, v8

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->d()Lcom/shabakaty/downloader/x62;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/r82;->b(Lcom/shabakaty/downloader/y62;)Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    :goto_1
    move-object v8, v5

    goto/16 :goto_a

    .line 3
    :cond_1
    instance-of v13, v8, Lcom/shabakaty/downloader/q62;

    if-eqz v13, :cond_11

    .line 4
    move-object v13, v8

    check-cast v13, Lcom/shabakaty/downloader/q62;

    invoke-interface {v13}, Lcom/shabakaty/downloader/q62;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 5
    iget-boolean v8, v7, Lcom/shabakaty/downloader/i82;->c:Z

    if-eqz v8, :cond_3

    .line 6
    sget-object v8, Lcom/shabakaty/downloader/s82;->a:Lcom/shabakaty/downloader/fi1;

    .line 7
    invoke-static {v14, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8
    iget-object v5, v6, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 10
    iget-object v5, v5, Lcom/shabakaty/downloader/y72;->p:Lcom/shabakaty/downloader/jq3;

    .line 11
    iget-object v8, v5, Lcom/shabakaty/downloader/jq3;->c:Lcom/shabakaty/downloader/jq3$a;

    sget-object v14, Lcom/shabakaty/downloader/jq3;->e:[Lcom/shabakaty/downloader/jd2;

    aget-object v14, v14, v4

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "property"

    .line 12
    invoke-static {v14, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v14}, Lcom/shabakaty/downloader/zb2;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/vd5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v8}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    .line 15
    iget-object v14, v5, Lcom/shabakaty/downloader/jq3;->b:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v14}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/mr2;

    .line 16
    sget-object v15, Lcom/shabakaty/downloader/mz2;->y:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v14, v8, v15}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v14

    instance-of v15, v14, Lcom/shabakaty/downloader/q20;

    if-eqz v15, :cond_2

    check-cast v14, Lcom/shabakaty/downloader/q20;

    goto :goto_2

    :cond_2
    move-object v14, v11

    :goto_2
    if-nez v14, :cond_d

    .line 17
    iget-object v5, v5, Lcom/shabakaty/downloader/jq3;->a:Lcom/shabakaty/downloader/b03;

    new-instance v14, Lcom/shabakaty/downloader/v20;

    sget-object v15, Lcom/shabakaty/downloader/tb4;->f:Lcom/shabakaty/downloader/fi1;

    invoke-direct {v14, v15, v8}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v14, v8}, Lcom/shabakaty/downloader/b03;->a(Lcom/shabakaty/downloader/v20;Ljava/util/List;)Lcom/shabakaty/downloader/q20;

    move-result-object v14

    goto/16 :goto_9

    .line 18
    :cond_3
    sget-object v8, Lcom/shabakaty/downloader/f82;->a:Lcom/shabakaty/downloader/f82;

    .line 19
    iget-object v15, v6, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 20
    iget-object v15, v15, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 21
    iget-object v15, v15, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 22
    invoke-interface {v15}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v15

    invoke-static {v8, v14, v15, v11, v5}, Lcom/shabakaty/downloader/f82;->d(Lcom/shabakaty/downloader/f82;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/zd2;Ljava/lang/Integer;I)Lcom/shabakaty/downloader/q20;

    move-result-object v14

    if-nez v14, :cond_4

    move-object v14, v11

    goto/16 :goto_9

    .line 23
    :cond_4
    invoke-virtual {v8, v14}, Lcom/shabakaty/downloader/f82;->c(Lcom/shabakaty/downloader/q20;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 24
    iget-object v5, v7, Lcom/shabakaty/downloader/i82;->b:Lcom/shabakaty/downloader/l82;

    if-eq v5, v3, :cond_c

    .line 25
    iget-object v5, v7, Lcom/shabakaty/downloader/i82;->a:Lcom/shabakaty/downloader/du4;

    if-eq v5, v2, :cond_c

    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->J()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/g82;

    .line 27
    instance-of v15, v5, Lcom/shabakaty/downloader/y82;

    if-eqz v15, :cond_5

    check-cast v5, Lcom/shabakaty/downloader/y82;

    goto :goto_3

    :cond_5
    move-object v5, v11

    :goto_3
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v5}, Lcom/shabakaty/downloader/y82;->F()Lcom/shabakaty/downloader/g82;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Lcom/shabakaty/downloader/y82;->O()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_8

    goto :goto_6

    .line 28
    :cond_8
    invoke-static {v14}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v5

    .line 29
    sget-object v15, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    .line 30
    sget-object v15, Lcom/shabakaty/downloader/e82;->l:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/fi1;

    if-eqz v5, :cond_b

    .line 31
    invoke-static {v14}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v5

    const-string v15, "descriptor.builtIns.getB\u2026Name(oppositeClassFqName)"

    invoke-static {v5, v15}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {v5}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    invoke-interface {v5}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v5

    const-string v15, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {v5, v15}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kt4;

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v5}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    const-string v15, "JavaToKotlinClassMapper.\u2026.variance ?: return false"

    invoke-static {v5, v15}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v5, v1, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_d

    goto :goto_8

    .line 33
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_c
    :goto_8
    invoke-virtual {v8, v14}, Lcom/shabakaty/downloader/f82;->a(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/q20;

    move-result-object v14

    :cond_d
    :goto_9
    if-nez v14, :cond_e

    .line 35
    iget-object v5, v6, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 36
    iget-object v5, v5, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 37
    iget-object v5, v5, Lcom/shabakaty/downloader/y72;->k:Lcom/shabakaty/downloader/ku2;

    .line 38
    invoke-interface {v5, v13}, Lcom/shabakaty/downloader/ku2;->a(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;

    move-result-object v14

    :cond_e
    if-nez v14, :cond_f

    .line 39
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/r82;->b(Lcom/shabakaty/downloader/y62;)Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    goto/16 :goto_1

    :cond_f
    invoke-interface {v14}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    goto/16 :goto_1

    :cond_10
    const-string v0, "Class type should have a FQ name: "

    .line 40
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 41
    :cond_11
    instance-of v5, v8, Lcom/shabakaty/downloader/m82;

    if-eqz v5, :cond_27

    .line 42
    iget-object v5, v6, Lcom/shabakaty/downloader/r82;->b:Lcom/shabakaty/downloader/nt4;

    check-cast v8, Lcom/shabakaty/downloader/m82;

    invoke-interface {v5, v8}, Lcom/shabakaty/downloader/nt4;->a(Lcom/shabakaty/downloader/m82;)Lcom/shabakaty/downloader/kt4;

    move-result-object v5

    if-nez v5, :cond_12

    move-object v8, v11

    goto :goto_a

    :cond_12
    invoke-interface {v5}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    goto/16 :goto_1

    :goto_a
    if-nez v8, :cond_13

    return-object v11

    .line 43
    :cond_13
    iget-object v5, v7, Lcom/shabakaty/downloader/i82;->b:Lcom/shabakaty/downloader/l82;

    if-ne v5, v3, :cond_14

    const/4 v13, 0x0

    goto :goto_c

    .line 44
    :cond_14
    iget-boolean v3, v7, Lcom/shabakaty/downloader/i82;->c:Z

    if-nez v3, :cond_15

    .line 45
    iget-object v3, v7, Lcom/shabakaty/downloader/i82;->a:Lcom/shabakaty/downloader/du4;

    if-eq v3, v2, :cond_15

    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    :goto_b
    move v13, v2

    :goto_c
    if-nez v0, :cond_16

    move-object v2, v11

    goto :goto_d

    .line 46
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    :goto_d
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->A()Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz v13, :cond_17

    .line 47
    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0

    .line 48
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->A()Z

    move-result v0

    const-string v2, "constructor.parameters"

    if-nez v0, :cond_19

    .line 49
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v8}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v12

    if-eqz v0, :cond_18

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    goto :goto_f

    :cond_19
    :goto_e
    const/4 v0, 0x1

    .line 50
    :goto_f
    invoke-interface {v8}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    if-eqz v0, :cond_1d

    .line 51
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 53
    move-object v15, v0

    check-cast v15, Lcom/shabakaty/downloader/kt4;

    .line 54
    iget-object v0, v7, Lcom/shabakaty/downloader/i82;->d:Ljava/util/Set;

    .line 55
    invoke-static {v15, v11, v0}, Lcom/shabakaty/downloader/hu4;->h(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/ts4;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 56
    invoke-static {v15, v7}, Lcom/shabakaty/downloader/s82;->a(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    move-object/from16 p3, v14

    goto :goto_12

    .line 57
    :cond_1a
    new-instance v5, Lcom/shabakaty/downloader/yg2;

    iget-object v0, v6, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 58
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 59
    iget-object v4, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 60
    new-instance v3, Lcom/shabakaty/downloader/q82;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v11, v3

    move-object/from16 v3, p1

    move-object v10, v4

    move-object/from16 v4, p2

    move-object/from16 p3, v14

    move-object v14, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/q82;-><init>(Lcom/shabakaty/downloader/r82;Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/y62;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/ts4;)V

    invoke-direct {v14, v10, v11}, Lcom/shabakaty/downloader/yg2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    .line 61
    iget-object v0, v6, Lcom/shabakaty/downloader/r82;->d:Lcom/shabakaty/downloader/ym3;

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->A()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object v1, v7

    goto :goto_11

    :cond_1b
    sget-object v1, Lcom/shabakaty/downloader/l82;->r:Lcom/shabakaty/downloader/l82;

    invoke-virtual {v7, v1}, Lcom/shabakaty/downloader/i82;->b(Lcom/shabakaty/downloader/l82;)Lcom/shabakaty/downloader/i82;

    move-result-object v1

    .line 63
    :goto_11
    invoke-virtual {v0, v15, v1, v14}, Lcom/shabakaty/downloader/ym3;->g(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    :goto_12
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    move-object/from16 v14, p3

    const/4 v11, 0x0

    goto :goto_10

    :cond_1c
    move-object v11, v12

    goto/16 :goto_1c

    .line 64
    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->J()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_1f

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 67
    check-cast v2, Lcom/shabakaty/downloader/kt4;

    .line 68
    new-instance v3, Lcom/shabakaty/downloader/st4;

    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1e
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1b

    .line 69
    :cond_1f
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/y62;->J()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->C0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    check-cast v0, Lcom/shabakaty/downloader/p02;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/p02;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/q02;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/q02;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v2}, Lcom/shabakaty/downloader/q02;->next()Ljava/lang/Object;

    move-result-object v2

    .line 72
    check-cast v2, Lcom/shabakaty/downloader/o02;

    .line 73
    iget v7, v2, Lcom/shabakaty/downloader/o02;->a:I

    .line 74
    iget-object v2, v2, Lcom/shabakaty/downloader/o02;->b:Ljava/lang/Object;

    .line 75
    check-cast v2, Lcom/shabakaty/downloader/g82;

    .line 76
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 77
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/kt4;

    .line 78
    sget-object v10, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v11, 0x3

    const/4 v14, 0x0

    invoke-static {v10, v4, v14, v11}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v15

    const-string v14, "parameter"

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v14, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    instance-of v12, v2, Lcom/shabakaty/downloader/y82;

    if-eqz v12, :cond_25

    .line 80
    check-cast v2, Lcom/shabakaty/downloader/y82;

    invoke-interface {v2}, Lcom/shabakaty/downloader/y82;->F()Lcom/shabakaty/downloader/g82;

    move-result-object v12

    .line 81
    invoke-interface {v2}, Lcom/shabakaty/downloader/y82;->O()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v2, v1

    goto :goto_15

    :cond_20
    sget-object v2, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    :goto_15
    if-eqz v12, :cond_24

    .line 82
    invoke-interface {v7}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v4

    if-ne v4, v14, :cond_21

    goto :goto_16

    .line 83
    :cond_21
    invoke-interface {v7}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v4

    if-eq v2, v4, :cond_22

    const/4 v4, 0x1

    goto :goto_17

    :cond_22
    :goto_16
    const/4 v4, 0x0

    :goto_17
    if-eqz v4, :cond_23

    goto :goto_18

    :cond_23
    const/4 v4, 0x0

    const/4 v14, 0x0

    .line 84
    invoke-static {v10, v14, v4, v11}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v10

    invoke-virtual {v6, v12, v10}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v10

    .line 85
    invoke-static {v10, v2, v7}, Lcom/shabakaty/downloader/hu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v2

    goto :goto_19

    :cond_24
    :goto_18
    const/4 v4, 0x0

    const/4 v14, 0x0

    .line 86
    invoke-static {v7, v15}, Lcom/shabakaty/downloader/s82;->a(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qt4;

    move-result-object v2

    :goto_19
    const/4 v7, 0x0

    goto :goto_1a

    :cond_25
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 87
    new-instance v10, Lcom/shabakaty/downloader/st4;

    invoke-virtual {v6, v2, v15}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    invoke-direct {v10, v14, v2}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    move-object v2, v10

    .line 88
    :goto_1a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_14

    .line 89
    :cond_26
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_1b
    move-object v11, v0

    :goto_1c
    const/4 v0, 0x0

    const/16 v14, 0x10

    move-object v10, v8

    move v12, v13

    move-object v13, v0

    .line 90
    invoke-static/range {v9 .. v14}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0

    .line 91
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown classifier kind: "

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/shabakaty/downloader/y62;)Lcom/shabakaty/downloader/ts4;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/y62;->B()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->d:Lcom/shabakaty/downloader/bs0;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->l:Lcom/shabakaty/downloader/b03;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/b03;->a(Lcom/shabakaty/downloader/v20;Ljava/util/List;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    const-string v0, "c.components.deserialize\u2026istOf(0)).typeConstructor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/o62;Lcom/shabakaty/downloader/i82;Z)Lcom/shabakaty/downloader/qe2;
    .locals 8

    sget-object v0, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    const-string v2, "arrayType"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attr"

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/o62;->p()Lcom/shabakaty/downloader/g82;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lcom/shabakaty/downloader/t72;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/t72;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lcom/shabakaty/downloader/t72;->b()Lcom/shabakaty/downloader/sf3;

    move-result-object v3

    .line 3
    :goto_1
    new-instance v5, Lcom/shabakaty/downloader/tf2;

    iget-object v6, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    const/4 v7, 0x1

    invoke-direct {v5, v6, p1, v7}, Lcom/shabakaty/downloader/tf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;Z)V

    if-eqz v3, :cond_4

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/zd2;->s(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    const-string p3, "c.module.builtIns.getPri\u2026KotlinType(primitiveType)"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget p3, Lcom/shabakaty/downloader/d9;->a:I

    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/shabakaty/downloader/m50;->l0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    const-string v0, "annotations"

    .line 9
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p3, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/e9;

    invoke-direct {v0, p3}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    move-object p3, v0

    .line 11
    :goto_2
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    .line 12
    iget-boolean p2, p2, Lcom/shabakaty/downloader/i82;->c:Z

    if-eqz p2, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    :goto_3
    return-object p1

    .line 14
    :cond_4
    sget-object p1, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    .line 15
    iget-boolean v3, p2, Lcom/shabakaty/downloader/i82;->c:Z

    const/4 v6, 0x2

    .line 16
    invoke-static {p1, v3, v4, v6}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object p1

    .line 17
    invoke-virtual {p0, v2, p1}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    .line 18
    iget-boolean p2, p2, Lcom/shabakaty/downloader/i82;->c:Z

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v1

    .line 19
    :goto_4
    iget-object p2, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 20
    iget-object p2, p2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 21
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 22
    invoke-interface {p2}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v5}, Lcom/shabakaty/downloader/zd2;->i(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1

    .line 23
    :cond_6
    iget-object p2, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 24
    iget-object p2, p2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 25
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 26
    invoke-interface {p2}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v5}, Lcom/shabakaty/downloader/zd2;->i(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    .line 27
    iget-object p3, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 28
    iget-object p3, p3, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 29
    iget-object p3, p3, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 30
    invoke-interface {p3}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p3

    invoke-virtual {p3, v0, p1, v5}, Lcom/shabakaty/downloader/zd2;->i(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    .line 31
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;
    .locals 3

    const-string v0, "attr"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/t72;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/t72;

    invoke-interface {p1}, Lcom/shabakaty/downloader/t72;->b()Lcom/shabakaty/downloader/sf3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 6
    invoke-interface {p2}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/zd2;->u(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->y()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    :goto_0
    const-string p2, "{\n                val pr\u2026ns.unitType\n            }"

    .line 11
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/y62;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/shabakaty/downloader/y62;

    .line 13
    iget-boolean v0, p2, Lcom/shabakaty/downloader/i82;->c:Z

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p2, Lcom/shabakaty/downloader/i82;->a:Lcom/shabakaty/downloader/du4;

    .line 15
    sget-object v2, Lcom/shabakaty/downloader/du4;->r:Lcom/shabakaty/downloader/du4;

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    .line 16
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/y62;->A()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 17
    invoke-virtual {p0, p1, p2, v2}, Lcom/shabakaty/downloader/r82;->a(Lcom/shabakaty/downloader/y62;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/shabakaty/downloader/r82;->d(Lcom/shabakaty/downloader/y62;)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    :cond_3
    move-object p1, p2

    goto/16 :goto_1

    .line 18
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/l82;->t:Lcom/shabakaty/downloader/l82;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/i82;->b(Lcom/shabakaty/downloader/l82;)Lcom/shabakaty/downloader/i82;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/shabakaty/downloader/r82;->a(Lcom/shabakaty/downloader/y62;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    if-nez v1, :cond_5

    .line 19
    invoke-static {p1}, Lcom/shabakaty/downloader/r82;->d(Lcom/shabakaty/downloader/y62;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_5
    sget-object v2, Lcom/shabakaty/downloader/l82;->s:Lcom/shabakaty/downloader/l82;

    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/i82;->b(Lcom/shabakaty/downloader/l82;)Lcom/shabakaty/downloader/i82;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/shabakaty/downloader/r82;->a(Lcom/shabakaty/downloader/y62;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    if-nez p2, :cond_6

    .line 21
    invoke-static {p1}, Lcom/shabakaty/downloader/r82;->d(Lcom/shabakaty/downloader/y62;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 22
    new-instance p1, Lcom/shabakaty/downloader/an3;

    invoke-direct {p1, v1, p2}, Lcom/shabakaty/downloader/an3;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    goto :goto_1

    .line 24
    :cond_8
    instance-of v0, p1, Lcom/shabakaty/downloader/o62;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/shabakaty/downloader/o62;

    .line 25
    invoke-virtual {p0, p1, p2, v1}, Lcom/shabakaty/downloader/r82;->c(Lcom/shabakaty/downloader/o62;Lcom/shabakaty/downloader/i82;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    goto :goto_1

    .line 26
    :cond_9
    instance-of v0, p1, Lcom/shabakaty/downloader/y82;

    const-string v1, "c.module.builtIns.defaultBound"

    if-eqz v0, :cond_b

    check-cast p1, Lcom/shabakaty/downloader/y82;

    invoke-interface {p1}, Lcom/shabakaty/downloader/y82;->F()Lcom/shabakaty/downloader/g82;

    move-result-object p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 29
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->n()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    goto :goto_1

    :cond_b
    if-nez p1, :cond_c

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/r82;->a:Lcom/shabakaty/downloader/bg2;

    .line 31
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 32
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 33
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->n()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    .line 34
    :cond_c
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported type: "

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
