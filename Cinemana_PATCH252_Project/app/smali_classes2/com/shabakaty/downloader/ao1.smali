.class public final Lcom/shabakaty/downloader/ao1;
.super Lcom/shabakaty/downloader/u64;
.source "FunctionInvokeDescriptor.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/ao1;Lcom/shabakaty/downloader/tq$a;Z)V
    .locals 8

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v4, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 2
    sget-object v5, Lcom/shabakaty/downloader/b83;->g:Lcom/shabakaty/downloader/hw2;

    .line 3
    sget-object v7, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/u64;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yn1;->C:Z

    .line 6
    iput-boolean p4, p0, Lcom/shabakaty/downloader/yn1;->L:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yn1;->M:Z

    return-void
.end method

.method public static final h1(Lcom/shabakaty/downloader/un1;Z)Lcom/shabakaty/downloader/ao1;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "functionClass"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/un1;->B:Ljava/util/List;

    .line 2
    new-instance v14, Lcom/shabakaty/downloader/ao1;

    const/4 v2, 0x0

    sget-object v3, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    move/from16 v4, p1

    .line 3
    invoke-direct {v14, v0, v2, v3, v4}, Lcom/shabakaty/downloader/ao1;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/ao1;Lcom/shabakaty/downloader/tq$a;Z)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/p;->R0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    .line 5
    sget-object v15, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    move-object v5, v4

    check-cast v5, Lcom/shabakaty/downloader/kt4;

    .line 9
    invoke-interface {v5}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    :goto_2
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->C0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    .line 12
    new-instance v13, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    check-cast v2, Lcom/shabakaty/downloader/p02;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/p02;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Lcom/shabakaty/downloader/o02;

    .line 15
    iget v5, v2, Lcom/shabakaty/downloader/o02;->a:I

    .line 16
    iget-object v2, v2, Lcom/shabakaty/downloader/o02;->b:Ljava/lang/Object;

    .line 17
    check-cast v2, Lcom/shabakaty/downloader/kt4;

    .line 18
    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "typeParameter.name.asString()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "T"

    .line 19
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "instance"

    goto :goto_4

    :cond_3
    const-string v4, "E"

    .line 20
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "receiver"

    goto :goto_4

    .line 21
    :cond_4
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :goto_4
    new-instance v12, Lcom/shabakaty/downloader/tz4;

    const/4 v4, 0x0

    .line 23
    sget-object v6, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 24
    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    .line 25
    invoke-interface {v2}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v8

    const-string v2, "typeParameter.defaultType"

    invoke-static {v8, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    .line 26
    sget-object v18, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v2, v12

    move-object v3, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object/from16 p0, v15

    move-object v15, v13

    move-object/from16 v13, v18

    .line 27
    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    move-object/from16 v2, v19

    .line 28
    invoke-interface {v15, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v13, v15

    move-object/from16 v15, p0

    goto :goto_3

    :cond_5
    move-object/from16 p0, v15

    move-object v15, v13

    .line 29
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/kt4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v7

    .line 30
    sget-object v8, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    .line 31
    sget-object v9, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    const/4 v3, 0x0

    move-object v2, v14

    move-object v4, v0

    move-object/from16 v5, p0

    move-object v6, v15

    .line 32
    invoke-virtual/range {v2 .. v9}, Lcom/shabakaty/downloader/u64;->f1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/u64;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, v14, Lcom/shabakaty/downloader/yn1;->N:Z

    return-object v14
.end method


# virtual methods
.method public T0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/yn1;
    .locals 0

    const-string p4, "newOwner"

    invoke-static {p1, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "kind"

    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "annotations"

    invoke-static {p5, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p4, Lcom/shabakaty/downloader/ao1;

    check-cast p2, Lcom/shabakaty/downloader/ao1;

    .line 2
    iget-boolean p5, p0, Lcom/shabakaty/downloader/yn1;->L:Z

    .line 3
    invoke-direct {p4, p1, p2, p3, p5}, Lcom/shabakaty/downloader/ao1;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/ao1;Lcom/shabakaty/downloader/tq$a;Z)V

    return-object p4
.end method

.method public U0(Lcom/shabakaty/downloader/yn1$c;)Lcom/shabakaty/downloader/xn1;
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/yn1;->U0(Lcom/shabakaty/downloader/yn1$c;)Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ao1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v0

    const-string v1, "substituted.valueParameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-string v3, "it.type"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sz4;

    .line 5
    invoke-interface {v2}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/nh3;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    return-object p1

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 9
    check-cast v6, Lcom/shabakaty/downloader/sz4;

    .line 10
    invoke-interface {v6}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/shabakaty/downloader/nh3;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 11
    :cond_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v0, v3

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v3

    const-string v6, "valueParameters"

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Lcom/shabakaty/downloader/sz4;

    .line 16
    invoke-interface {v3}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    const-string v8, "it.name"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v3}, Lcom/shabakaty/downloader/sz4;->j()I

    move-result v8

    sub-int v9, v8, v0

    if-ltz v9, :cond_7

    .line 18
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/hw2;

    if-eqz v9, :cond_7

    move-object v7, v9

    .line 19
    :cond_7
    invoke-interface {v3, p1, v7, v8}, Lcom/shabakaty/downloader/sz4;->P0(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/hw2;I)Lcom/shabakaty/downloader/sz4;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_8
    sget-object v0, Lcom/shabakaty/downloader/wt4;->b:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yn1;->X0(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/yn1$c;

    move-result-object v0

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    .line 22
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hw2;

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_a

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v4, 0x0

    .line 23
    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/yn1$c;->u:Ljava/lang/Boolean;

    .line 24
    iput-object v6, v0, Lcom/shabakaty/downloader/yn1$c;->g:Ljava/util/List;

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u64;->e1()Lcom/shabakaty/downloader/t64;

    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/shabakaty/downloader/yn1$c;->e:Lcom/shabakaty/downloader/xn1;

    .line 27
    invoke-super {p1, v0}, Lcom/shabakaty/downloader/yn1;->U0(Lcom/shabakaty/downloader/yn1$c;)Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object p1
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
