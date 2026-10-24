.class public final Lcom/shabakaty/downloader/j1;
.super Ljava/lang/Object;
.source "AbstractTypeChecker.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/j1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/j1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;Z)Z
    .locals 9

    .line 1
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->o(Lcom/shabakaty/downloader/d74;)Ljava/util/Collection;

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/te2;

    .line 4
    invoke-interface {p0, v6}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    invoke-interface {p0, p3}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    sget-object v3, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_4
    :goto_2
    return v1
.end method

.method public static h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z
    .locals 25

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "state"

    .line 1
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "subType"

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "superType"

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_35

    .line 2
    :cond_0
    iget-object v10, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 3
    invoke-virtual/range {p1 .. p2}, Lcom/shabakaty/downloader/qs4;->e(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/qs4;->d(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v11

    .line 4
    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/qs4;->e(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/qs4;->d(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v12

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    invoke-interface {v10, v11}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v13

    invoke-interface {v10, v12}, Lcom/shabakaty/downloader/yt4;->o0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v14

    .line 6
    iget-object v15, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 7
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->c0(Lcom/shabakaty/downloader/te2;)Z

    move-result v1

    const/16 v16, 0x0

    if-nez v1, :cond_1a

    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->c0(Lcom/shabakaty/downloader/te2;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_e

    .line 8
    :cond_1
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->q0(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->q0(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->N(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/sp0;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v13

    goto :goto_0

    :cond_2
    invoke-interface {v15, v0}, Lcom/shabakaty/downloader/yt4;->n0(Lcom/shabakaty/downloader/sp0;)Lcom/shabakaty/downloader/d74;

    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->N(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/sp0;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v14

    goto :goto_1

    :cond_3
    invoke-interface {v15, v1}, Lcom/shabakaty/downloader/yt4;->n0(Lcom/shabakaty/downloader/sp0;)Lcom/shabakaty/downloader/d74;

    move-result-object v1

    .line 11
    :goto_1
    invoke-interface {v15, v0}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    invoke-interface {v15, v1}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v1

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_8

    .line 14
    iget-boolean v0, v6, Lcom/shabakaty/downloader/qs4;->b:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x1

    .line 15
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_f

    .line 16
    :cond_9
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->R(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->R(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_d

    .line 17
    :cond_a
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->N(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/sp0;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v1, v14

    goto :goto_6

    :cond_b
    invoke-interface {v15, v1}, Lcom/shabakaty/downloader/yt4;->n0(Lcom/shabakaty/downloader/sp0;)Lcom/shabakaty/downloader/d74;

    move-result-object v1

    .line 18
    :goto_6
    invoke-interface {v15, v1}, Lcom/shabakaty/downloader/yt4;->e(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/iw;

    move-result-object v1

    if-nez v1, :cond_c

    move-object/from16 v3, v16

    goto :goto_7

    .line 19
    :cond_c
    invoke-interface {v15, v1}, Lcom/shabakaty/downloader/yt4;->w(Lcom/shabakaty/downloader/iw;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    :goto_7
    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    .line 20
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 21
    invoke-interface {v15, v3, v2}, Lcom/shabakaty/downloader/yt4;->E(Lcom/shabakaty/downloader/te2;Z)Lcom/shabakaty/downloader/te2;

    move-result-object v1

    goto :goto_8

    .line 22
    :cond_d
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v15, v3}, Lcom/shabakaty/downloader/yt4;->d0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v1

    :goto_8
    move-object v3, v1

    .line 23
    :cond_e
    invoke-static {v13, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v1, p1

    move-object v2, v13

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_f

    .line 25
    :cond_f
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    .line 26
    invoke-interface {v15, v0}, Lcom/shabakaty/downloader/yt4;->f0(Lcom/shabakaty/downloader/us4;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 27
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    .line 28
    invoke-interface {v15, v0}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v0

    .line 29
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_9

    .line 30
    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/te2;

    .line 31
    sget-object v0, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v0, 0x1

    .line 32
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_f

    .line 33
    :cond_13
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    .line 34
    instance-of v1, v13, Lcom/shabakaty/downloader/iw;

    if-nez v1, :cond_17

    .line 35
    invoke-interface {v15, v0}, Lcom/shabakaty/downloader/yt4;->f0(Lcom/shabakaty/downloader/us4;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v15, v0}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v0

    .line 36
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_b

    .line 37
    :cond_14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/te2;

    .line 38
    instance-of v1, v1, Lcom/shabakaty/downloader/iw;

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_18

    .line 39
    :cond_17
    sget-object v0, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    .line 40
    iget-object v1, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 41
    invoke-virtual {v0, v1, v14, v13}, Lcom/shabakaty/downloader/j1;->e(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/mt4;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 42
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lcom/shabakaty/downloader/yt4;->z(Lcom/shabakaty/downloader/mt4;Lcom/shabakaty/downloader/us4;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_18
    move-object/from16 v0, v16

    goto :goto_f

    .line 44
    :cond_19
    :goto_d
    iget-boolean v0, v6, Lcom/shabakaty/downloader/qs4;->b:Z

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    .line 46
    :cond_1a
    :goto_e
    iget-boolean v0, v6, Lcom/shabakaty/downloader/qs4;->a:Z

    if-eqz v0, :cond_1b

    .line 47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    .line 48
    :cond_1b
    invoke-interface {v15, v13}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    .line 49
    :cond_1c
    invoke-interface {v15, v13, v9}, Lcom/shabakaty/downloader/yt4;->a(Lcom/shabakaty/downloader/d74;Z)Lcom/shabakaty/downloader/d74;

    move-result-object v0

    .line 50
    invoke-interface {v15, v14, v9}, Lcom/shabakaty/downloader/yt4;->a(Lcom/shabakaty/downloader/d74;Z)Lcom/shabakaty/downloader/d74;

    move-result-object v1

    const-string v2, "a"

    .line 51
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {v15, v0, v1}, Lcom/shabakaty/downloader/f1;->b(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_f
    if-nez v0, :cond_64

    .line 54
    invoke-virtual {v6, v11, v12}, Lcom/shabakaty/downloader/qs4;->a(Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Ljava/lang/Boolean;

    .line 55
    invoke-interface {v10, v11}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v0

    invoke-interface {v10, v12}, Lcom/shabakaty/downloader/yt4;->o0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v1

    .line 56
    iget-object v2, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 57
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v3, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 59
    invoke-interface {v3, v1}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v4

    const-string v5, "current"

    const-string v7, ". Supertypes = "

    const-string v8, "Too many supertypes for type: "

    const/16 v10, 0x3e8

    if-eqz v4, :cond_1d

    goto/16 :goto_16

    .line 60
    :cond_1d
    invoke-interface {v3, v0}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto/16 :goto_16

    .line 61
    :cond_1e
    instance-of v4, v0, Lcom/shabakaty/downloader/iw;

    if-eqz v4, :cond_1f

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/iw;

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/yt4;->b0(Lcom/shabakaty/downloader/iw;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto/16 :goto_16

    .line 62
    :cond_1f
    sget-object v4, Lcom/shabakaty/downloader/qs4$a$b;->a:Lcom/shabakaty/downloader/qs4$a$b;

    invoke-static {v6, v0, v4}, Lcom/shabakaty/downloader/o0;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/qs4$a;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_16

    .line 63
    :cond_20
    invoke-interface {v3, v1}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto/16 :goto_18

    .line 64
    :cond_21
    sget-object v4, Lcom/shabakaty/downloader/qs4$a$d;->a:Lcom/shabakaty/downloader/qs4$a$d;

    invoke-static {v6, v1, v4}, Lcom/shabakaty/downloader/o0;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/qs4$a;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto/16 :goto_18

    .line 65
    :cond_22
    invoke-interface {v3, v0}, Lcom/shabakaty/downloader/yt4;->r0(Lcom/shabakaty/downloader/d74;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_18

    .line 66
    :cond_23
    invoke-interface {v3, v1}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v3

    const-string v4, "end"

    .line 67
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v4, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 69
    invoke-static {v6, v0, v3}, Lcom/shabakaty/downloader/o0;->b(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Z

    move-result v11

    if-eqz v11, :cond_24

    goto/16 :goto_16

    .line 70
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->c()V

    .line 71
    iget-object v11, v6, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    .line 72
    invoke-static {v11}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 73
    iget-object v12, v6, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    .line 74
    invoke-static {v12}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v11, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 76
    :goto_10
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_2f

    .line 77
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v13

    if-gt v13, v10, :cond_2e

    .line 78
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/d74;

    .line 79
    invoke-static {v13, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    goto :goto_10

    .line 80
    :cond_25
    invoke-interface {v4, v13}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-eqz v10, :cond_26

    sget-object v10, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    goto :goto_11

    :cond_26
    sget-object v10, Lcom/shabakaty/downloader/qs4$a$b;->a:Lcom/shabakaty/downloader/qs4$a$b;

    .line 81
    :goto_11
    sget-object v14, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    invoke-static {v10, v14}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_27

    goto :goto_12

    :cond_27
    move-object/from16 v10, v16

    :goto_12
    if-nez v10, :cond_28

    goto :goto_17

    .line 82
    :cond_28
    iget-object v14, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 83
    invoke-interface {v14, v13}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v13

    invoke-interface {v14, v13}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v13

    .line 84
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_13
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/te2;

    .line 85
    invoke-virtual {v10, v6, v14}, Lcom/shabakaty/downloader/qs4$a;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v14

    .line 86
    iget-object v15, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 87
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->X(Lcom/shabakaty/downloader/te2;)Z

    move-result v17

    if-eqz v17, :cond_29

    goto :goto_14

    .line 88
    :cond_29
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v17

    if-eqz v17, :cond_2a

    goto :goto_15

    .line 89
    :cond_2a
    iget-boolean v9, v6, Lcom/shabakaty/downloader/qs4;->b:Z

    if-eqz v9, :cond_2b

    .line 90
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->R(Lcom/shabakaty/downloader/d74;)Z

    move-result v9

    if-eqz v9, :cond_2b

    :goto_14
    const/4 v9, 0x1

    goto :goto_15

    .line 91
    :cond_2b
    invoke-interface {v15, v14}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v9

    invoke-interface {v15, v9, v3}, Lcom/shabakaty/downloader/yt4;->v(Lcom/shabakaty/downloader/us4;Lcom/shabakaty/downloader/us4;)Z

    move-result v9

    :goto_15
    if-eqz v9, :cond_2c

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->b()V

    :goto_16
    const/4 v3, 0x1

    goto :goto_19

    .line 93
    :cond_2c
    invoke-virtual {v11, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    goto :goto_13

    :cond_2d
    :goto_17
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    goto/16 :goto_10

    .line 94
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 95
    invoke-static {v8, v0, v7}, Lcom/shabakaty/downloader/n0;->a(Ljava/lang/String;Lcom/shabakaty/downloader/d74;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v12

    invoke-static/range {v17 .. v24}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->b()V

    :goto_18
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_30

    goto/16 :goto_36

    .line 97
    :cond_30
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v3

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/yt4;->o0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v4

    .line 98
    iget-object v9, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 99
    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/yt4;->i(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-nez v10, :cond_31

    invoke-interface {v9, v4}, Lcom/shabakaty/downloader/yt4;->i(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-nez v10, :cond_31

    goto/16 :goto_1f

    .line 100
    :cond_31
    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/yt4;->i(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v9, v4}, Lcom/shabakaty/downloader/yt4;->i(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 101
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_20

    .line 102
    :cond_32
    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/yt4;->i(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-eqz v10, :cond_33

    const/4 v10, 0x0

    .line 103
    invoke-static {v9, v6, v3, v4, v10}, Lcom/shabakaty/downloader/j1;->a(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;Z)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 104
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_20

    .line 105
    :cond_33
    invoke-interface {v9, v4}, Lcom/shabakaty/downloader/yt4;->i(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 106
    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v10

    .line 107
    instance-of v11, v10, Lcom/shabakaty/downloader/i32;

    if-eqz v11, :cond_39

    .line 108
    invoke-interface {v9, v10}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v10

    .line 109
    instance-of v11, v10, Ljava/util/Collection;

    if-eqz v11, :cond_34

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_34

    goto :goto_1c

    .line 110
    :cond_34
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_35
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/te2;

    .line 111
    invoke-interface {v9, v11}, Lcom/shabakaty/downloader/yt4;->c(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v11

    if-nez v11, :cond_36

    goto :goto_1a

    :cond_36
    invoke-interface {v9, v11}, Lcom/shabakaty/downloader/yt4;->i(Lcom/shabakaty/downloader/d74;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_37

    const/4 v11, 0x1

    goto :goto_1b

    :cond_37
    :goto_1a
    const/4 v11, 0x0

    :goto_1b
    if-eqz v11, :cond_35

    const/4 v10, 0x1

    goto :goto_1d

    :cond_38
    :goto_1c
    const/4 v10, 0x0

    :goto_1d
    if-eqz v10, :cond_39

    const/4 v10, 0x1

    goto :goto_1e

    :cond_39
    const/4 v10, 0x0

    :goto_1e
    if-nez v10, :cond_3a

    const/4 v10, 0x1

    .line 112
    invoke-static {v9, v6, v4, v3, v10}, Lcom/shabakaty/downloader/j1;->a(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;Z)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 113
    :cond_3a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_20

    :cond_3b
    :goto_1f
    move-object/from16 v3, v16

    :goto_20
    if-nez v3, :cond_63

    .line 114
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v3

    .line 115
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lcom/shabakaty/downloader/yt4;->v(Lcom/shabakaty/downloader/us4;Lcom/shabakaty/downloader/us4;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/yt4;->i0(Lcom/shabakaty/downloader/us4;)I

    move-result v4

    if-nez v4, :cond_3c

    goto/16 :goto_35

    .line 116
    :cond_3c
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/shabakaty/downloader/yt4;->A(Lcom/shabakaty/downloader/us4;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto/16 :goto_35

    .line 117
    :cond_3d
    sget-object v4, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    const-string v9, "superConstructor"

    .line 118
    invoke-static {v3, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v9, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 120
    invoke-interface {v9, v0}, Lcom/shabakaty/downloader/yt4;->r0(Lcom/shabakaty/downloader/d74;)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 121
    invoke-virtual {v4, v6, v0, v3}, Lcom/shabakaty/downloader/j1;->c(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_26

    .line 122
    :cond_3e
    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/yt4;->q(Lcom/shabakaty/downloader/us4;)Z

    move-result v10

    if-nez v10, :cond_3f

    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/yt4;->M(Lcom/shabakaty/downloader/us4;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 123
    invoke-virtual {v4, v6, v0, v3}, Lcom/shabakaty/downloader/j1;->b(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_26

    .line 124
    :cond_3f
    new-instance v4, Lcom/shabakaty/downloader/e94;

    invoke-direct {v4}, Lcom/shabakaty/downloader/e94;-><init>()V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->c()V

    .line 126
    iget-object v10, v6, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    .line 127
    invoke-static {v10}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 128
    iget-object v11, v6, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    .line 129
    invoke-static {v11}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v10, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 131
    :cond_40
    :goto_21
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_46

    .line 132
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v12

    const/16 v13, 0x3e8

    if-gt v12, v13, :cond_45

    .line 133
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/d74;

    .line 134
    invoke-static {v12, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_41

    goto :goto_21

    .line 135
    :cond_41
    invoke-interface {v9, v12}, Lcom/shabakaty/downloader/yt4;->r0(Lcom/shabakaty/downloader/d74;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 136
    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/e94;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v13, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    goto :goto_22

    .line 138
    :cond_42
    sget-object v13, Lcom/shabakaty/downloader/qs4$a$b;->a:Lcom/shabakaty/downloader/qs4$a$b;

    .line 139
    :goto_22
    sget-object v14, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_43

    goto :goto_23

    :cond_43
    move-object/from16 v13, v16

    :goto_23
    if-nez v13, :cond_44

    goto :goto_21

    .line 140
    :cond_44
    iget-object v14, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 141
    invoke-interface {v14, v12}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v12

    invoke-interface {v14, v12}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v12

    .line 142
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_24
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_40

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/te2;

    .line 143
    invoke-virtual {v13, v6, v14}, Lcom/shabakaty/downloader/qs4$a;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v14

    .line 144
    invoke-virtual {v10, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 145
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 146
    invoke-static {v8, v0, v7}, Lcom/shabakaty/downloader/n0;->a(Ljava/lang/String;Lcom/shabakaty/downloader/d74;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v11

    invoke-static/range {v17 .. v24}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->b()V

    .line 148
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {v4}, Lcom/shabakaty/downloader/e94;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 150
    check-cast v10, Lcom/shabakaty/downloader/d74;

    .line 151
    sget-object v11, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    const-string v12, "it"

    invoke-static {v10, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v6, v10, v3}, Lcom/shabakaty/downloader/j1;->c(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Ljava/util/List;

    move-result-object v10

    .line 152
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_25

    :cond_47
    move-object v4, v9

    .line 153
    :goto_26
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 155
    check-cast v11, Lcom/shabakaty/downloader/d74;

    .line 156
    invoke-virtual {v6, v11}, Lcom/shabakaty/downloader/qs4;->d(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v12

    invoke-interface {v2, v12}, Lcom/shabakaty/downloader/yt4;->c(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v12

    if-nez v12, :cond_48

    goto :goto_28

    :cond_48
    move-object v11, v12

    :goto_28
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 157
    :cond_49
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_57

    const/4 v5, 0x1

    if-eq v4, v5, :cond_56

    .line 158
    new-instance v4, Lcom/shabakaty/downloader/vc;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/yt4;->i0(Lcom/shabakaty/downloader/us4;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/vc;-><init>(I)V

    .line 159
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/yt4;->i0(Lcom/shabakaty/downloader/us4;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_29
    if-ge v7, v5, :cond_52

    add-int/lit8 v11, v7, 0x1

    if-nez v8, :cond_4b

    .line 160
    invoke-interface {v2, v3, v7}, Lcom/shabakaty/downloader/yt4;->n(Lcom/shabakaty/downloader/us4;I)Lcom/shabakaty/downloader/mt4;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/shabakaty/downloader/yt4;->p0(Lcom/shabakaty/downloader/mt4;)Lcom/shabakaty/downloader/ju4;

    move-result-object v8

    sget-object v12, Lcom/shabakaty/downloader/ju4;->t:Lcom/shabakaty/downloader/ju4;

    if-eq v8, v12, :cond_4a

    goto :goto_2a

    :cond_4a
    const/4 v8, 0x0

    goto :goto_2b

    :cond_4b
    :goto_2a
    const/4 v8, 0x1

    :goto_2b
    if-eqz v8, :cond_4c

    move-object/from16 p0, v3

    goto/16 :goto_30

    .line 161
    :cond_4c
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_51

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 163
    check-cast v13, Lcom/shabakaty/downloader/d74;

    .line 164
    invoke-interface {v2, v13, v7}, Lcom/shabakaty/downloader/yt4;->h(Lcom/shabakaty/downloader/d74;I)Lcom/shabakaty/downloader/os4;

    move-result-object v14

    if-nez v14, :cond_4d

    move-object/from16 p0, v3

    goto :goto_2e

    :cond_4d
    invoke-interface {v2, v14}, Lcom/shabakaty/downloader/yt4;->O(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/ju4;

    move-result-object v15

    move-object/from16 p0, v3

    sget-object v3, Lcom/shabakaty/downloader/ju4;->u:Lcom/shabakaty/downloader/ju4;

    if-ne v15, v3, :cond_4e

    const/4 v3, 0x1

    goto :goto_2d

    :cond_4e
    const/4 v3, 0x0

    :goto_2d
    if-eqz v3, :cond_4f

    goto :goto_2f

    :cond_4f
    :goto_2e
    move-object/from16 v14, v16

    :goto_2f
    if-eqz v14, :cond_50

    invoke-interface {v2, v14}, Lcom/shabakaty/downloader/yt4;->k0(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    goto :goto_2c

    :cond_50
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", superType: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_51
    move-object/from16 p0, v3

    .line 166
    invoke-interface {v2, v12}, Lcom/shabakaty/downloader/yt4;->B(Ljava/util/List;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/yt4;->l(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/os4;

    move-result-object v3

    .line 167
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_30
    const/16 v10, 0xa

    move-object/from16 v3, p0

    move v7, v11

    goto/16 :goto_29

    :cond_52
    if-nez v8, :cond_53

    .line 168
    sget-object v0, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    invoke-virtual {v0, v6, v4, v1}, Lcom/shabakaty/downloader/j1;->g(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/ns4;Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto/16 :goto_35

    .line 169
    :cond_53
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    goto/16 :goto_36

    .line 170
    :cond_54
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/d74;

    .line 171
    sget-object v4, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/yt4;->r(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/ns4;

    move-result-object v3

    invoke-virtual {v4, v6, v3, v1}, Lcom/shabakaty/downloader/j1;->g(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/ns4;Lcom/shabakaty/downloader/d74;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto/16 :goto_35

    .line 172
    :cond_56
    sget-object v0, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    invoke-static {v9}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/d74;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/yt4;->r(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/ns4;

    move-result-object v2

    invoke-virtual {v0, v6, v2, v1}, Lcom/shabakaty/downloader/j1;->g(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/ns4;Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    goto/16 :goto_37

    .line 173
    :cond_57
    iget-object v1, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 174
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v2

    .line 175
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/yt4;->q(Lcom/shabakaty/downloader/us4;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 176
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/yt4;->I(Lcom/shabakaty/downloader/us4;)Z

    move-result v0

    goto/16 :goto_37

    .line 177
    :cond_58
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/yt4;->I(Lcom/shabakaty/downloader/us4;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto/16 :goto_35

    .line 178
    :cond_59
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->c()V

    .line 179
    iget-object v2, v6, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    .line 180
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 181
    iget-object v3, v6, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    .line 182
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 184
    :cond_5a
    :goto_31
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_61

    .line 185
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v9, 0x3e8

    if-gt v4, v9, :cond_60

    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/d74;

    .line 187
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5b

    goto :goto_31

    .line 188
    :cond_5b
    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/yt4;->r0(Lcom/shabakaty/downloader/d74;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 189
    sget-object v9, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    goto :goto_32

    .line 190
    :cond_5c
    sget-object v9, Lcom/shabakaty/downloader/qs4$a$b;->a:Lcom/shabakaty/downloader/qs4$a$b;

    .line 191
    :goto_32
    sget-object v10, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5d

    goto :goto_33

    :cond_5d
    move-object/from16 v9, v16

    :goto_33
    if-nez v9, :cond_5e

    goto :goto_31

    .line 192
    :cond_5e
    iget-object v10, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 193
    invoke-interface {v10, v4}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v4

    invoke-interface {v10, v4}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v4

    .line 194
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/te2;

    .line 195
    invoke-virtual {v9, v6, v10}, Lcom/shabakaty/downloader/qs4$a;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v10

    .line 196
    invoke-interface {v1, v10}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v11

    invoke-interface {v1, v11}, Lcom/shabakaty/downloader/yt4;->I(Lcom/shabakaty/downloader/us4;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->b()V

    :goto_35
    const/4 v0, 0x1

    goto :goto_37

    .line 198
    :cond_5f
    invoke-virtual {v2, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 199
    :cond_60
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 200
    invoke-static {v8, v0, v7}, Lcom/shabakaty/downloader/n0;->a(Ljava/lang/String;Lcom/shabakaty/downloader/d74;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v24}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_61
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qs4;->b()V

    :cond_62
    :goto_36
    const/4 v0, 0x0

    goto :goto_37

    .line 202
    :cond_63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 203
    invoke-virtual {v6, v0, v1}, Lcom/shabakaty/downloader/qs4;->a(Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Ljava/lang/Boolean;

    move v0, v2

    goto :goto_37

    .line 204
    :cond_64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 205
    invoke-virtual {v6, v11, v12}, Lcom/shabakaty/downloader/qs4;->a(Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Ljava/lang/Boolean;

    :goto_37
    return v0
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qs4;",
            "Lcom/shabakaty/downloader/d74;",
            "Lcom/shabakaty/downloader/us4;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/d74;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yv;->r:Lcom/shabakaty/downloader/yv;

    iget-object v1, p1, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 2
    invoke-interface {v1, p2, p3}, Lcom/shabakaty/downloader/yt4;->g0(Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d

    .line 3
    invoke-interface {v1, p3}, Lcom/shabakaty/downloader/yt4;->q(Lcom/shabakaty/downloader/us4;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p2}, Lcom/shabakaty/downloader/yt4;->r0(Lcom/shabakaty/downloader/d74;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v1, p3}, Lcom/shabakaty/downloader/yt4;->u(Lcom/shabakaty/downloader/us4;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {v1, p2}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Lcom/shabakaty/downloader/yt4;->v(Lcom/shabakaty/downloader/us4;Lcom/shabakaty/downloader/us4;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {v1, p2, v0}, Lcom/shabakaty/downloader/yt4;->s0(Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/yv;)Lcom/shabakaty/downloader/d74;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-static {p2}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :goto_1
    return-object p1

    .line 8
    :cond_3
    new-instance v2, Lcom/shabakaty/downloader/e94;

    invoke-direct {v2}, Lcom/shabakaty/downloader/e94;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qs4;->c()V

    .line 10
    iget-object v3, p1, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    .line 11
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    iget-object v4, p1, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    .line 13
    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v3, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 15
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    .line 16
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0x3e8

    if-gt v5, v6, :cond_b

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/d74;

    const-string v6, "current"

    .line 18
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface {v1, v5, v0}, Lcom/shabakaty/downloader/yt4;->s0(Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/yv;)Lcom/shabakaty/downloader/d74;

    move-result-object v6

    if-nez v6, :cond_6

    move-object v6, v5

    .line 20
    :cond_6
    invoke-interface {v1, v6}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v7

    invoke-interface {v1, v7, p3}, Lcom/shabakaty/downloader/yt4;->v(Lcom/shabakaty/downloader/us4;Lcom/shabakaty/downloader/us4;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 21
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v6, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    goto :goto_3

    .line 23
    :cond_7
    invoke-interface {v1, v6}, Lcom/shabakaty/downloader/yt4;->p(Lcom/shabakaty/downloader/te2;)I

    move-result v7

    if-nez v7, :cond_8

    .line 24
    sget-object v6, Lcom/shabakaty/downloader/qs4$a$b;->a:Lcom/shabakaty/downloader/qs4$a$b;

    goto :goto_3

    .line 25
    :cond_8
    iget-object v7, p1, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 26
    invoke-interface {v7, v6}, Lcom/shabakaty/downloader/yt4;->H(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/qs4$a;

    move-result-object v6

    .line 27
    :goto_3
    sget-object v7, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_a

    goto :goto_2

    .line 28
    :cond_a
    iget-object v7, p1, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 29
    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v5

    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v5

    .line 30
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/te2;

    .line 31
    invoke-virtual {v6, p1, v7}, Lcom/shabakaty/downloader/qs4$a;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v7

    .line 32
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 33
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Too many supertypes for type: "

    const-string v0, ". Supertypes = "

    .line 34
    invoke-static {p3, p2, v0}, Lcom/shabakaty/downloader/n0;->a(Ljava/lang/String;Lcom/shabakaty/downloader/d74;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    invoke-static/range {v4 .. v11}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qs4;->b()V

    :cond_d
    return-object v2
.end method

.method public final c(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qs4;",
            "Lcom/shabakaty/downloader/d74;",
            "Lcom/shabakaty/downloader/us4;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/d74;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/j1;->b(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Ljava/util/List;

    move-result-object p2

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/d74;

    .line 6
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/yt4;->r(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/ns4;

    move-result-object v3

    .line 7
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/yt4;->Z(Lcom/shabakaty/downloader/ns4;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    add-int/lit8 v7, v6, 0x1

    .line 8
    invoke-interface {p1, v3, v6}, Lcom/shabakaty/downloader/yt4;->Y(Lcom/shabakaty/downloader/ns4;I)Lcom/shabakaty/downloader/os4;

    move-result-object v6

    .line 9
    invoke-interface {p1, v6}, Lcom/shabakaty/downloader/yt4;->k0(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/te2;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/shabakaty/downloader/yt4;->j(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/ie1;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v2, :cond_1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_6

    move-object p2, p3

    :cond_6
    :goto_4
    return-object p2
.end method

.method public final d(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Z
    .locals 10

    const-string v0, "a"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    const/4 v1, 0x1

    if-ne p2, p3, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v8, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    invoke-virtual {v8, v0, p2}, Lcom/shabakaty/downloader/j1;->f(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v8, v0, p3}, Lcom/shabakaty/downloader/j1;->f(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/qs4;->e(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/qs4;->d(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v2

    .line 4
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/qs4;->e(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/qs4;->d(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    .line 5
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v4

    .line 6
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v5

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/shabakaty/downloader/yt4;->v(Lcom/shabakaty/downloader/us4;Lcom/shabakaty/downloader/us4;)Z

    move-result v5

    if-nez v5, :cond_1

    return v9

    .line 7
    :cond_1
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/yt4;->p(Lcom/shabakaty/downloader/te2;)I

    move-result v5

    if-nez v5, :cond_5

    .line 8
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/yt4;->G(Lcom/shabakaty/downloader/te2;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/yt4;->G(Lcom/shabakaty/downloader/te2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result p1

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1

    :cond_5
    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 10
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, v8

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final e(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/mt4;
    .locals 8

    .line 1
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->p(Lcom/shabakaty/downloader/te2;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 2
    invoke-interface {p1, p2, v2}, Lcom/shabakaty/downloader/yt4;->D(Lcom/shabakaty/downloader/te2;I)Lcom/shabakaty/downloader/os4;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/yt4;->S(Lcom/shabakaty/downloader/os4;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_0

    move-object v3, v5

    :cond_0
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/yt4;->k0(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    .line 3
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/yt4;->J(Lcom/shabakaty/downloader/te2;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, p3}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/yt4;->J(Lcom/shabakaty/downloader/te2;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 4
    :goto_1
    invoke-static {v3, p3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v7, :cond_3

    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v5

    invoke-interface {p1, p3}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {p0, p1, v3, p3}, Lcom/shabakaty/downloader/j1;->e(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/mt4;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_2
    move v2, v4

    goto :goto_0

    :cond_4
    return-object v2

    .line 6
    :cond_5
    :goto_3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/shabakaty/downloader/yt4;->n(Lcom/shabakaty/downloader/us4;I)Lcom/shabakaty/downloader/mt4;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v3
.end method

.method public final f(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;)Z
    .locals 1

    .line 1
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yt4;->P(Lcom/shabakaty/downloader/us4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->V(Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->o0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/ns4;Lcom/shabakaty/downloader/d74;)Z
    .locals 16

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "capturedSubArguments"

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v9, v6, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 2
    invoke-interface {v9, v8}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v10

    .line 3
    invoke-interface {v9, v7}, Lcom/shabakaty/downloader/yt4;->Z(Lcom/shabakaty/downloader/ns4;)I

    move-result v0

    .line 4
    invoke-interface {v9, v10}, Lcom/shabakaty/downloader/yt4;->i0(Lcom/shabakaty/downloader/us4;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v0, v11, :cond_f

    .line 5
    invoke-interface {v9, v8}, Lcom/shabakaty/downloader/yt4;->p(Lcom/shabakaty/downloader/te2;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v11, :cond_e

    add-int/lit8 v13, v0, 0x1

    .line 6
    invoke-interface {v9, v8, v0}, Lcom/shabakaty/downloader/yt4;->D(Lcom/shabakaty/downloader/te2;I)Lcom/shabakaty/downloader/os4;

    move-result-object v2

    .line 7
    invoke-interface {v9, v2}, Lcom/shabakaty/downloader/yt4;->S(Lcom/shabakaty/downloader/os4;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 8
    :cond_1
    invoke-interface {v9, v2}, Lcom/shabakaty/downloader/yt4;->k0(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    .line 9
    invoke-interface {v9, v7, v0}, Lcom/shabakaty/downloader/yt4;->Y(Lcom/shabakaty/downloader/ns4;I)Lcom/shabakaty/downloader/os4;

    move-result-object v4

    .line 10
    invoke-interface {v9, v4}, Lcom/shabakaty/downloader/yt4;->O(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/ju4;

    sget-object v5, Lcom/shabakaty/downloader/ju4;->u:Lcom/shabakaty/downloader/ju4;

    .line 11
    invoke-interface {v9, v4}, Lcom/shabakaty/downloader/yt4;->k0(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/te2;

    move-result-object v4

    .line 12
    sget-object v14, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    invoke-interface {v9, v10, v0}, Lcom/shabakaty/downloader/yt4;->n(Lcom/shabakaty/downloader/us4;I)Lcom/shabakaty/downloader/mt4;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/shabakaty/downloader/yt4;->p0(Lcom/shabakaty/downloader/mt4;)Lcom/shabakaty/downloader/ju4;

    move-result-object v0

    invoke-interface {v9, v2}, Lcom/shabakaty/downloader/yt4;->O(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/ju4;

    move-result-object v2

    const-string v15, "declared"

    .line 13
    invoke-static {v0, v15}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "useSite"

    invoke-static {v2, v15}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v5, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 14
    iget-boolean v0, v6, Lcom/shabakaty/downloader/qs4;->a:Z

    return v0

    :cond_5
    if-ne v0, v5, :cond_7

    .line 15
    invoke-virtual {v14, v9, v4, v3, v10}, Lcom/shabakaty/downloader/j1;->i(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/us4;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 16
    invoke-virtual {v14, v9, v3, v4, v10}, Lcom/shabakaty/downloader/j1;->i(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/us4;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    iget v2, v6, Lcom/shabakaty/downloader/qs4;->g:I

    const/16 v5, 0x64

    if-gt v2, v5, :cond_d

    add-int/lit8 v2, v2, 0x1

    .line 18
    iput v2, v6, Lcom/shabakaty/downloader/qs4;->g:I

    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 20
    invoke-virtual {v14, v6, v4, v3}, Lcom/shabakaty/downloader/j1;->d(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Z

    move-result v0

    goto :goto_3

    .line 21
    :cond_9
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0

    :cond_a
    const/4 v5, 0x0

    const/16 v15, 0x8

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v4

    move v4, v5

    move v5, v15

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result v0

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    const/16 v15, 0x8

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v15

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result v0

    .line 24
    :goto_3
    iget v1, v6, Lcom/shabakaty/downloader/qs4;->g:I

    add-int/lit8 v1, v1, -0x1

    .line 25
    iput v1, v6, Lcom/shabakaty/downloader/qs4;->g:I

    if-nez v0, :cond_c

    return v12

    :cond_c
    :goto_4
    move v0, v13

    goto/16 :goto_0

    .line 26
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Arguments depth is too high. Some related argument: "

    .line 27
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return v1

    :cond_f
    :goto_5
    return v12
.end method

.method public final i(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/us4;)Z
    .locals 3

    .line 1
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->c(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object p2

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/iw;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    check-cast p2, Lcom/shabakaty/downloader/iw;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->W(Lcom/shabakaty/downloader/iw;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->T(Lcom/shabakaty/downloader/iw;)Lcom/shabakaty/downloader/hw;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yt4;->y(Lcom/shabakaty/downloader/hw;)Lcom/shabakaty/downloader/os4;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yt4;->S(Lcom/shabakaty/downloader/os4;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->F(Lcom/shabakaty/downloader/iw;)Lcom/shabakaty/downloader/yv;

    move-result-object p2

    sget-object v0, Lcom/shabakaty/downloader/yv;->r:Lcom/shabakaty/downloader/yv;

    if-eq p2, v0, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-interface {p1, p3}, Lcom/shabakaty/downloader/yt4;->K(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/us4;

    move-result-object p2

    instance-of p3, p2, Lcom/shabakaty/downloader/iu4;

    if-eqz p3, :cond_2

    check-cast p2, Lcom/shabakaty/downloader/iu4;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->m0(Lcom/shabakaty/downloader/iu4;)Lcom/shabakaty/downloader/mt4;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1, p2, p4}, Lcom/shabakaty/downloader/yt4;->z(Lcom/shabakaty/downloader/mt4;Lcom/shabakaty/downloader/us4;)Z

    move-result p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method
