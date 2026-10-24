.class public final Lcom/shabakaty/downloader/d64;
.super Ljava/lang/Object;
.source "signatureEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d64$b;,
        Lcom/shabakaty/downloader/d64$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/w8;

.field public final b:Lcom/shabakaty/downloader/k82;

.field public final c:Lcom/shabakaty/downloader/j82;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w8;Lcom/shabakaty/downloader/k82;Lcom/shabakaty/downloader/j82;)V
    .locals 1

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d64;->a:Lcom/shabakaty/downloader/w8;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/d64;->b:Lcom/shabakaty/downloader/k82;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/d64;->c:Lcom/shabakaty/downloader/j82;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/bg2;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/shabakaty/downloader/tq;",
            ">(",
            "Lcom/shabakaty/downloader/bg2;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "c"

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    move-object v12, v0

    check-cast v12, Lcom/shabakaty/downloader/tq;

    .line 4
    instance-of v0, v12, Lcom/shabakaty/downloader/p62;

    if-nez v0, :cond_0

    goto/16 :goto_24

    .line 5
    :cond_0
    move-object v0, v12

    check-cast v0, Lcom/shabakaty/downloader/p62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/tq$a;->s:Lcom/shabakaty/downloader/tq$a;

    const/4 v13, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/shabakaty/downloader/tq;->a()Lcom/shabakaty/downloader/tq;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v13, :cond_1

    goto/16 :goto_24

    .line 6
    :cond_1
    invoke-static {v12}, Lcom/shabakaty/downloader/rm3;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/g30;

    move-result-object v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-nez v0, :cond_2

    invoke-interface {v12}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    goto/16 :goto_6

    .line 7
    :cond_2
    instance-of v1, v0, Lcom/shabakaty/downloader/uf2;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/shabakaty/downloader/uf2;

    goto :goto_1

    :cond_3
    move-object v0, v14

    :goto_1
    if-nez v0, :cond_4

    move-object v0, v14

    goto :goto_2

    .line 8
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/uf2;->C:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_2
    if-eqz v0, :cond_6

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v12}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    goto :goto_6

    .line 10
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Lcom/shabakaty/downloader/g62;

    .line 13
    new-instance v3, Lcom/shabakaty/downloader/sf2;

    invoke-direct {v3, v8, v2, v13}, Lcom/shabakaty/downloader/sf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 14
    :cond_8
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    invoke-interface {v12}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/m50;->l0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 15
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_6

    :cond_9
    new-instance v1, Lcom/shabakaty/downloader/e9;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 16
    :goto_6
    invoke-static {v8, v0}, Lcom/shabakaty/downloader/od0;->d(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bg2;

    move-result-object v4

    .line 17
    instance-of v0, v12, Lcom/shabakaty/downloader/u72;

    if-eqz v0, :cond_c

    move-object v0, v12

    check-cast v0, Lcom/shabakaty/downloader/u72;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    if-nez v0, :cond_a

    goto :goto_7

    .line 19
    :cond_a
    iget-boolean v1, v0, Lcom/shabakaty/downloader/wh3;->v:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_c

    .line 20
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    move-object v6, v0

    goto :goto_9

    :cond_c
    move-object v6, v12

    .line 21
    :goto_9
    move-object v5, v12

    check-cast v5, Lcom/shabakaty/downloader/p62;

    invoke-interface {v5}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    .line 22
    instance-of v0, v6, Lcom/shabakaty/downloader/xn1;

    if-nez v0, :cond_d

    move-object v0, v14

    goto :goto_a

    :cond_d
    move-object v0, v6

    :goto_a
    check-cast v0, Lcom/shabakaty/downloader/xn1;

    if-nez v0, :cond_e

    move-object v0, v14

    goto :goto_b

    .line 23
    :cond_e
    sget-object v2, Lcom/shabakaty/downloader/m72;->W:Lcom/shabakaty/downloader/rq$a;

    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/rq;->E(Lcom/shabakaty/downloader/rq$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz4;

    .line 24
    :goto_b
    sget-object v2, Lcom/shabakaty/downloader/f64;->r:Lcom/shabakaty/downloader/f64;

    invoke-virtual {v7, v12, v0, v4, v2}, Lcom/shabakaty/downloader/d64;->e(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/sz4;Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d64$b;

    move-result-object v0

    .line 25
    invoke-static {v0, v14, v15, v1}, Lcom/shabakaty/downloader/d64$b;->d(Lcom/shabakaty/downloader/d64$b;Lcom/shabakaty/downloader/zs4;ZI)Lcom/shabakaty/downloader/d64$a;

    move-result-object v0

    move-object v3, v0

    goto :goto_c

    :cond_f
    move-object v3, v14

    .line 26
    :goto_c
    instance-of v0, v12, Lcom/shabakaty/downloader/m72;

    if-eqz v0, :cond_10

    move-object v0, v12

    check-cast v0, Lcom/shabakaty/downloader/m72;

    goto :goto_d

    :cond_10
    move-object v0, v14

    :goto_d
    if-nez v0, :cond_11

    goto :goto_e

    .line 27
    :cond_11
    sget-object v2, Lcom/shabakaty/downloader/c64;->a:Lcom/shabakaty/downloader/c64;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/shabakaty/downloader/q20;

    invoke-static {v0, v15, v15, v1}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v14, v0}, Lcom/shabakaty/downloader/rm3;->s(Lcom/shabakaty/downloader/c64;Lcom/shabakaty/downloader/q20;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/shabakaty/downloader/we3;->d:Ljava/util/Map;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xe3;

    move-object v14, v0

    :goto_e
    if-nez v14, :cond_12

    goto :goto_f

    .line 30
    :cond_12
    iget-object v0, v14, Lcom/shabakaty/downloader/xe3;->b:Ljava/util/List;

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {v5}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    :goto_f
    iget-object v0, v7, Lcom/shabakaty/downloader/d64;->b:Lcom/shabakaty/downloader/k82;

    const-string v1, "javaTypeEnhancementState"

    .line 33
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/k82;->b:Lcom/shabakaty/downloader/tm1;

    .line 35
    sget-object v1, Lcom/shabakaty/downloader/q72;->a:Lcom/shabakaty/downloader/fi1;

    .line 36
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/tr3;->u:Lcom/shabakaty/downloader/tr3;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_14

    .line 37
    iget-object v0, v4, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->t:Lcom/shabakaty/downloader/z72;

    .line 39
    invoke-interface {v0}, Lcom/shabakaty/downloader/z72;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 40
    :cond_14
    instance-of v0, v12, Lcom/shabakaty/downloader/xn1;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/shabakaty/downloader/m72;->X:Lcom/shabakaty/downloader/rq$a;

    invoke-interface {v12, v0}, Lcom/shabakaty/downloader/rq;->E(Lcom/shabakaty/downloader/rq$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_11

    :cond_15
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_12

    :cond_16
    const/4 v0, 0x0

    .line 41
    :goto_12
    invoke-interface {v6}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "annotationOwnerForMember.valueParameters"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v10}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 44
    check-cast v15, Lcom/shabakaty/downloader/sz4;

    .line 45
    new-instance v10, Lcom/shabakaty/downloader/h64;

    invoke-direct {v10, v15}, Lcom/shabakaty/downloader/h64;-><init>(Lcom/shabakaty/downloader/sz4;)V

    invoke-virtual {v7, v12, v15, v4, v10}, Lcom/shabakaty/downloader/d64;->e(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/sz4;Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d64$b;

    move-result-object v10

    if-nez v14, :cond_17

    const/4 v13, 0x0

    goto :goto_14

    .line 46
    :cond_17
    iget-object v13, v14, Lcom/shabakaty/downloader/xe3;->b:Ljava/util/List;

    .line 47
    invoke-interface {v15}, Lcom/shabakaty/downloader/sz4;->j()I

    move-result v15

    invoke-static {v13, v15}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/zs4;

    :goto_14
    invoke-virtual {v10, v13, v0}, Lcom/shabakaty/downloader/d64$b;->c(Lcom/shabakaty/downloader/zs4;Z)Lcom/shabakaty/downloader/d64$a;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0xa

    const/4 v13, 0x1

    goto :goto_13

    :cond_18
    const/4 v10, 0x1

    .line 48
    instance-of v0, v12, Lcom/shabakaty/downloader/yh3;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_15

    :cond_19
    move-object v0, v12

    :goto_15
    check-cast v0, Lcom/shabakaty/downloader/yh3;

    if-nez v0, :cond_1a

    goto :goto_16

    .line 49
    :cond_1a
    invoke-static {v0}, Lcom/shabakaty/downloader/bp;->p(Lcom/shabakaty/downloader/yh3;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_17

    :cond_1b
    :goto_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1c

    .line 50
    sget-object v0, Lcom/shabakaty/downloader/u8;->u:Lcom/shabakaty/downloader/u8;

    goto :goto_18

    .line 51
    :cond_1c
    sget-object v0, Lcom/shabakaty/downloader/u8;->s:Lcom/shabakaty/downloader/u8;

    :goto_18
    move-object v13, v0

    .line 52
    sget-object v15, Lcom/shabakaty/downloader/g64;->r:Lcom/shabakaty/downloader/g64;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v17, v2

    move-object v2, v6

    move-object v7, v3

    move v3, v10

    move-object v10, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/d64;->d(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/h8;ZLcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/u8;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d64$b;

    move-result-object v0

    if-nez v14, :cond_1d

    const/4 v1, 0x0

    goto :goto_19

    .line 53
    :cond_1d
    iget-object v1, v14, Lcom/shabakaty/downloader/xe3;->a:Lcom/shabakaty/downloader/zs4;

    :goto_19
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 54
    invoke-static {v0, v1, v3, v2}, Lcom/shabakaty/downloader/d64$b;->d(Lcom/shabakaty/downloader/d64$b;Lcom/shabakaty/downloader/zs4;ZI)Lcom/shabakaty/downloader/d64$a;

    move-result-object v0

    if-nez v7, :cond_1e

    goto :goto_1a

    .line 55
    :cond_1e
    iget-boolean v1, v7, Lcom/shabakaty/downloader/d64$a;->c:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1f
    :goto_1a
    const/4 v1, 0x0

    :goto_1b
    if-nez v1, :cond_24

    iget-boolean v1, v0, Lcom/shabakaty/downloader/d64$a;->c:Z

    if-nez v1, :cond_24

    .line 56
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_1c

    .line 57
    :cond_20
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/d64$a;

    .line 58
    iget-boolean v2, v2, Lcom/shabakaty/downloader/d64$a;->c:Z

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_1d

    :cond_22
    :goto_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_23

    goto :goto_1e

    :cond_23
    const/4 v1, 0x0

    goto :goto_1f

    :cond_24
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    if-nez v7, :cond_25

    const/4 v4, 0x1

    goto :goto_20

    .line 59
    :cond_25
    iget-boolean v2, v7, Lcom/shabakaty/downloader/d64$a;->b:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    const/4 v2, 0x1

    goto :goto_21

    :cond_26
    :goto_20
    const/4 v2, 0x0

    :goto_21
    if-nez v2, :cond_2b

    .line 60
    iget-boolean v2, v0, Lcom/shabakaty/downloader/d64$a;->b:Z

    if-nez v2, :cond_2b

    .line 61
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_22

    .line 62
    :cond_27
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/d64$a;

    .line 63
    iget-boolean v5, v5, Lcom/shabakaty/downloader/d64$a;->b:Z

    if-eqz v5, :cond_28

    goto :goto_23

    :cond_29
    :goto_22
    const/4 v4, 0x0

    :goto_23
    if-nez v4, :cond_2b

    if-eqz v1, :cond_2a

    goto :goto_25

    :cond_2a
    :goto_24
    const/16 v6, 0xa

    goto :goto_29

    :cond_2b
    :goto_25
    if-eqz v1, :cond_2c

    .line 64
    sget-object v1, Lcom/shabakaty/downloader/mq0;->a:Lcom/shabakaty/downloader/rq$a;

    new-instance v2, Lcom/shabakaty/downloader/yo;

    invoke-direct {v2, v12}, Lcom/shabakaty/downloader/yo;-><init>(Lcom/shabakaty/downloader/qm0;)V

    .line 65
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, v1, v2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_26

    :cond_2c
    const/4 v4, 0x0

    :goto_26
    if-nez v7, :cond_2d

    const/4 v1, 0x0

    goto :goto_27

    .line 66
    :cond_2d
    iget-object v1, v7, Lcom/shabakaty/downloader/d64$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 67
    :goto_27
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v5, v17

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v15, 0x0

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v7, v15, 0x1

    if-ltz v15, :cond_2e

    .line 69
    check-cast v3, Lcom/shabakaty/downloader/d64$a;

    .line 70
    new-instance v12, Lcom/shabakaty/downloader/rz4;

    .line 71
    iget-object v3, v3, Lcom/shabakaty/downloader/d64$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 72
    invoke-interface {v13}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v14}, Lcom/shabakaty/downloader/sz4;->E0()Z

    move-result v14

    .line 73
    invoke-direct {v12, v3, v14}, Lcom/shabakaty/downloader/rz4;-><init>(Lcom/shabakaty/downloader/qe2;Z)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v7

    goto :goto_28

    .line 74
    :cond_2e
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    const/4 v0, 0x0

    throw v0

    .line 75
    :cond_2f
    iget-object v0, v0, Lcom/shabakaty/downloader/d64$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 76
    invoke-interface {v10, v1, v2, v0, v4}, Lcom/shabakaty/downloader/p62;->B0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/x93;)Lcom/shabakaty/downloader/p62;

    move-result-object v12

    .line 77
    :goto_29
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    const/16 v10, 0xa

    goto/16 :goto_0

    :cond_30
    return-object v9
.end method

.method public final b(Lcom/shabakaty/downloader/r8;ZZ)Lcom/shabakaty/downloader/v13;
    .locals 3

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/d64;->c(Lcom/shabakaty/downloader/r8;ZZ)Lcom/shabakaty/downloader/v13;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d64;->a:Lcom/shabakaty/downloader/w8;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/w8;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/r8;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/d64;->a:Lcom/shabakaty/downloader/w8;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/w8;->b(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/tr3;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tr3;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/shabakaty/downloader/d64;->c(Lcom/shabakaty/downloader/r8;ZZ)Lcom/shabakaty/downloader/v13;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tr3;->h()Z

    move-result p1

    const/4 p3, 0x1

    invoke-static {p2, v1, p1, p3}, Lcom/shabakaty/downloader/v13;->a(Lcom/shabakaty/downloader/v13;Lcom/shabakaty/downloader/u13;ZI)Lcom/shabakaty/downloader/v13;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    return-object v0
.end method

.method public final c(Lcom/shabakaty/downloader/r8;ZZ)Lcom/shabakaty/downloader/v13;
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, p1, Lcom/shabakaty/downloader/sf2;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 3
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/sf2;

    .line 4
    iget-boolean v2, v2, Lcom/shabakaty/downloader/sf2;->h:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 5
    :goto_0
    sget-object p3, Lcom/shabakaty/downloader/u13;->r:Lcom/shabakaty/downloader/u13;

    sget-object v2, Lcom/shabakaty/downloader/u13;->t:Lcom/shabakaty/downloader/u13;

    sget-object v5, Lcom/shabakaty/downloader/u13;->s:Lcom/shabakaty/downloader/u13;

    iget-object v6, p0, Lcom/shabakaty/downloader/d64;->b:Lcom/shabakaty/downloader/k82;

    .line 6
    iget-object v6, v6, Lcom/shabakaty/downloader/k82;->b:Lcom/shabakaty/downloader/tm1;

    .line 7
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/tr3;

    .line 8
    invoke-virtual {v6}, Lcom/shabakaty/downloader/tr3;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_2

    .line 9
    :cond_3
    invoke-virtual {v6}, Lcom/shabakaty/downloader/tr3;->h()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    const/4 v3, 0x1

    .line 10
    :cond_5
    sget-object p2, Lcom/shabakaty/downloader/ua2;->d:Ljava/util/List;

    .line 11
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v5, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto/16 :goto_3

    .line 12
    :cond_6
    sget-object p2, Lcom/shabakaty/downloader/ua2;->g:Ljava/util/List;

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v2, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto/16 :goto_3

    .line 14
    :cond_7
    sget-object p2, Lcom/shabakaty/downloader/ua2;->a:Lcom/shabakaty/downloader/fi1;

    .line 15
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v5, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto/16 :goto_3

    .line 16
    :cond_8
    sget-object p2, Lcom/shabakaty/downloader/ua2;->b:Lcom/shabakaty/downloader/fi1;

    .line 17
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, p3, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto/16 :goto_3

    .line 18
    :cond_9
    sget-object p2, Lcom/shabakaty/downloader/ua2;->e:Lcom/shabakaty/downloader/fi1;

    .line 19
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 20
    sget p2, Lcom/shabakaty/downloader/hr0;->a:I

    .line 21
    invoke-interface {p1}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->a0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/qb0;

    .line 22
    instance-of v0, p2, Lcom/shabakaty/downloader/z31;

    if-eqz v0, :cond_a

    check-cast p2, Lcom/shabakaty/downloader/z31;

    goto :goto_1

    :cond_a
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_b

    .line 23
    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v2, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto/16 :goto_3

    .line 24
    :cond_b
    iget-object p2, p2, Lcom/shabakaty/downloader/z31;->c:Lcom/shabakaty/downloader/hw2;

    .line 25
    invoke-virtual {p2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p3, "ALWAYS"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_2

    .line 26
    :cond_c
    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v2, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto :goto_3

    :sswitch_1
    const-string v0, "UNKNOWN"

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_2

    .line 28
    :cond_d
    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, p3, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto :goto_3

    :sswitch_2
    const-string p3, "NEVER"

    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_2

    :sswitch_3
    const-string p3, "MAYBE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_2

    .line 30
    :cond_e
    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v5, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto :goto_3

    .line 31
    :cond_f
    sget-object p2, Lcom/shabakaty/downloader/ua2;->h:Lcom/shabakaty/downloader/fi1;

    .line 32
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 33
    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v5, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto :goto_3

    .line 34
    :cond_10
    sget-object p2, Lcom/shabakaty/downloader/ua2;->i:Lcom/shabakaty/downloader/fi1;

    .line 35
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 36
    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v2, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto :goto_3

    .line 37
    :cond_11
    sget-object p2, Lcom/shabakaty/downloader/ua2;->k:Lcom/shabakaty/downloader/fi1;

    .line 38
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v2, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto :goto_3

    .line 39
    :cond_12
    sget-object p2, Lcom/shabakaty/downloader/ua2;->j:Lcom/shabakaty/downloader/fi1;

    .line 40
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    new-instance p2, Lcom/shabakaty/downloader/v13;

    invoke-direct {p2, v5, v3}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    goto :goto_3

    :cond_13
    :goto_2
    move-object p2, v1

    :goto_3
    if-nez p2, :cond_14

    return-object v1

    .line 41
    :cond_14
    iget-boolean p3, p2, Lcom/shabakaty/downloader/v13;->b:Z

    if-nez p3, :cond_15

    .line 42
    instance-of p3, p1, Lcom/shabakaty/downloader/le3;

    if-eqz p3, :cond_15

    .line 43
    check-cast p1, Lcom/shabakaty/downloader/le3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/le3;->j()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 44
    invoke-static {p2, v1, v4, v4}, Lcom/shabakaty/downloader/v13;->a(Lcom/shabakaty/downloader/v13;Lcom/shabakaty/downloader/u13;ZI)Lcom/shabakaty/downloader/v13;

    move-result-object p2

    :cond_15
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/h8;ZLcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/u8;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d64$b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tq;",
            "Lcom/shabakaty/downloader/h8;",
            "Z",
            "Lcom/shabakaty/downloader/bg2;",
            "Lcom/shabakaty/downloader/u8;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/tq;",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Lcom/shabakaty/downloader/d64$b;"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p6

    .line 1
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/shabakaty/downloader/qe2;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "this.overriddenDescriptors"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/shabakaty/downloader/tq;

    const-string v4, "it"

    .line 6
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qe2;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/od0;->d(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bg2;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc0

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/d64$b;

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v13}, Lcom/shabakaty/downloader/d64$b;-><init>(Lcom/shabakaty/downloader/d64;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/qe2;Ljava/util/Collection;ZLcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/u8;ZZI)V

    return-object v0
.end method

.method public final e(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/sz4;Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d64$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tq;",
            "Lcom/shabakaty/downloader/sz4;",
            "Lcom/shabakaty/downloader/bg2;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/tq;",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Lcom/shabakaty/downloader/d64$b;"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/od0;->d(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bg2;

    move-result-object p3

    :goto_0
    move-object v4, p3

    .line 2
    sget-object v5, Lcom/shabakaty/downloader/u8;->t:Lcom/shabakaty/downloader/u8;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/d64;->d(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/h8;ZLcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/u8;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d64$b;

    move-result-object p1

    return-object p1
.end method
