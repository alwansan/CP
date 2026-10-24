.class public final enum Lcom/shabakaty/downloader/nv1$u;
.super Lcom/shabakaty/downloader/nv1;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/nv1;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/nv1$k;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lcom/shabakaty/downloader/nv1;->z:Lcom/shabakaty/downloader/nv1;

    iget-object v4, v1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8b

    const-string v6, "name"

    const-string v7, "html"

    const-string v8, "span"

    const-string v9, "form"

    const-string v10, "li"

    const-string v11, "body"

    const-string v12, "p"

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v4, v14, :cond_38

    const/4 v3, 0x3

    if-eq v4, v13, :cond_4

    if-eq v4, v3, :cond_3

    const/4 v3, 0x4

    if-eq v4, v3, :cond_0

    goto/16 :goto_22

    .line 2
    :cond_0
    check-cast v1, Lcom/shabakaty/downloader/zn4$c;

    .line 3
    iget-object v3, v1, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 4
    sget-object v4, Lcom/shabakaty/downloader/nv1;->N:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v5

    .line 7
    :cond_1
    iget-boolean v3, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    if-eqz v3, :cond_2

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 10
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    goto/16 :goto_22

    .line 11
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 12
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    .line 13
    iput-boolean v5, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    goto/16 :goto_22

    .line 14
    :cond_3
    check-cast v1, Lcom/shabakaty/downloader/zn4$d;

    .line 15
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto/16 :goto_22

    .line 16
    :cond_4
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/zn4$g;

    .line 17
    iget-object v4, v3, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 18
    sget-object v13, Lcom/shabakaty/downloader/nv1$x;->p:[Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_1a

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v3, v6, :cond_8a

    .line 19
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    move-result-object v6

    if-nez v6, :cond_5

    .line 20
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$u;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 21
    :cond_5
    iget-object v7, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v6}, Lcom/shabakaty/downloader/mv1;->E(Ljava/util/ArrayList;Lcom/shabakaty/downloader/k21;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 22
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 23
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mv1;->M(Lcom/shabakaty/downloader/k21;)V

    return v14

    .line 24
    :cond_6
    invoke-virtual {v6}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 25
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v5

    .line 26
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v7

    if-eq v7, v6, :cond_8

    .line 27
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 28
    :cond_8
    iget-object v7, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v15

    :goto_1
    if-ge v9, v8, :cond_b

    const/16 v12, 0x40

    if-ge v9, v12, :cond_b

    .line 30
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/k21;

    if-ne v12, v6, :cond_9

    add-int/lit8 v10, v9, -0x1

    .line 31
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/shabakaty/downloader/k21;

    const/4 v10, 0x1

    goto :goto_2

    :cond_9
    if-eqz v10, :cond_a

    .line 32
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->F(Lcom/shabakaty/downloader/k21;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_b
    move-object v12, v15

    :goto_3
    if-nez v12, :cond_c

    .line 33
    invoke-virtual {v6}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mv1;->M(Lcom/shabakaty/downloader/k21;)V

    return v14

    :cond_c
    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v9, v12

    move-object v10, v9

    :goto_4
    if-ge v7, v8, :cond_14

    .line 35
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/mv1;->G(Lcom/shabakaty/downloader/k21;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 36
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/mv1;->h(Lcom/shabakaty/downloader/k21;)Lcom/shabakaty/downloader/k21;

    move-result-object v9

    .line 37
    :cond_d
    iget-object v8, v2, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v9}, Lcom/shabakaty/downloader/mv1;->E(Ljava/util/ArrayList;Lcom/shabakaty/downloader/k21;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 38
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/mv1;->N(Lcom/shabakaty/downloader/k21;)Z

    goto/16 :goto_8

    :cond_e
    if-ne v9, v6, :cond_f

    goto/16 :goto_9

    .line 39
    :cond_f
    new-instance v8, Lcom/shabakaty/downloader/k21;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v13

    .line 40
    invoke-static {v13}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 41
    sget-object v14, Lcom/shabakaty/downloader/kk4;->j:Ljava/util/Map;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/shabakaty/downloader/kk4;

    if-nez v16, :cond_10

    .line 42
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-static {v13}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Lcom/shabakaty/downloader/kk4;

    if-nez v16, :cond_10

    .line 45
    new-instance v14, Lcom/shabakaty/downloader/kk4;

    invoke-direct {v14, v13}, Lcom/shabakaty/downloader/kk4;-><init>(Ljava/lang/String;)V

    .line 46
    iput-boolean v5, v14, Lcom/shabakaty/downloader/kk4;->b:Z

    goto :goto_5

    :cond_10
    move-object/from16 v14, v16

    .line 47
    :goto_5
    iget-object v5, v2, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    .line 48
    invoke-direct {v8, v14, v5, v15}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 49
    iget-object v5, v2, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_11

    const/16 v16, 0x1

    goto :goto_6

    :cond_11
    const/16 v16, 0x0

    .line 51
    :goto_6
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/z02;->o(Z)V

    .line 52
    invoke-virtual {v5, v13, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v5, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v9

    if-eq v9, v14, :cond_12

    const/4 v13, 0x1

    goto :goto_7

    :cond_12
    const/4 v13, 0x0

    .line 55
    :goto_7
    invoke-static {v13}, Lcom/shabakaty/downloader/z02;->o(Z)V

    .line 56
    invoke-virtual {v5, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v5, v10, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast v5, Lcom/shabakaty/downloader/k21;

    if-eqz v5, :cond_13

    .line 58
    invoke-virtual {v10}, Lcom/shabakaty/downloader/sz2;->x()V

    .line 59
    :cond_13
    invoke-virtual {v8, v10}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    move-object v9, v8

    move-object v10, v9

    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x3

    goto/16 :goto_4

    .line 60
    :cond_14
    :goto_9
    invoke-virtual {v11}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/shabakaty/downloader/nv1$x;->q:[Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 61
    iget-object v5, v10, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast v5, Lcom/shabakaty/downloader/k21;

    if-eqz v5, :cond_15

    .line 62
    invoke-virtual {v10}, Lcom/shabakaty/downloader/sz2;->x()V

    .line 63
    :cond_15
    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/mv1;->A(Lcom/shabakaty/downloader/sz2;)V

    goto :goto_a

    .line 64
    :cond_16
    iget-object v5, v10, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast v5, Lcom/shabakaty/downloader/k21;

    if-eqz v5, :cond_17

    .line 65
    invoke-virtual {v10}, Lcom/shabakaty/downloader/sz2;->x()V

    .line 66
    :cond_17
    invoke-virtual {v11, v10}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    .line 67
    :goto_a
    new-instance v5, Lcom/shabakaty/downloader/k21;

    .line 68
    iget-object v7, v6, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 69
    iget-object v8, v2, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    .line 70
    invoke-direct {v5, v7, v8, v15}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 71
    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v7

    invoke-virtual {v6}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/he;->i(Lcom/shabakaty/downloader/he;)V

    .line 72
    invoke-virtual {v12}, Lcom/shabakaty/downloader/k21;->l()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 73
    invoke-virtual {v12}, Lcom/shabakaty/downloader/k21;->h()I

    move-result v8

    new-array v8, v8, [Lcom/shabakaty/downloader/sz2;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/shabakaty/downloader/sz2;

    .line 74
    array-length v8, v7

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_18

    aget-object v10, v7, v9

    .line 75
    invoke-virtual {v5, v10}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 76
    :cond_18
    invoke-virtual {v12, v5}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    .line 77
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mv1;->M(Lcom/shabakaty/downloader/k21;)V

    .line 78
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mv1;->N(Lcom/shabakaty/downloader/k21;)Z

    .line 79
    iget-object v6, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_19

    const/4 v7, 0x1

    goto :goto_c

    :cond_19
    const/4 v7, 0x0

    .line 80
    :goto_c
    invoke-static {v7}, Lcom/shabakaty/downloader/z02;->o(Z)V

    .line 81
    iget-object v7, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 82
    :cond_1a
    sget-object v5, Lcom/shabakaty/downloader/nv1$x;->o:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 83
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 84
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 v1, 0x0

    return v1

    .line 85
    :cond_1b
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 86
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 87
    :cond_1c
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 88
    :cond_1d
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 89
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$u;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 90
    :cond_1e
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 91
    sget-object v1, Lcom/shabakaty/downloader/mv1;->w:[Ljava/lang/String;

    .line 92
    sget-object v3, Lcom/shabakaty/downloader/mv1;->v:[Ljava/lang/String;

    .line 93
    iget-object v5, v2, Lcom/shabakaty/downloader/mv1;->u:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 94
    invoke-virtual {v2, v5, v3, v1}, Lcom/shabakaty/downloader/mv1;->t([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 95
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v6

    .line 96
    :cond_1f
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->n(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 98
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 99
    :cond_20
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 100
    :cond_21
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 101
    invoke-virtual {v2, v11}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 102
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 v1, 0x0

    return v1

    .line 103
    :cond_22
    sget-object v1, Lcom/shabakaty/downloader/nv1;->I:Lcom/shabakaty/downloader/nv1;

    .line 104
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_22

    .line 105
    :cond_23
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 106
    invoke-virtual {v2, v11}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 107
    iput-object v3, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 108
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 109
    :cond_24
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 110
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    .line 111
    iput-object v15, v2, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    if-eqz v1, :cond_27

    .line 112
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_d

    .line 113
    :cond_25
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 114
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 115
    :cond_26
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->N(Lcom/shabakaty/downloader/k21;)Z

    goto/16 :goto_22

    .line 116
    :cond_27
    :goto_d
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 v1, 0x0

    return v1

    .line 117
    :cond_28
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 118
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 119
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 120
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 121
    iput-object v3, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 122
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 123
    :cond_29
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->n(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 125
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 126
    :cond_2a
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 127
    :cond_2b
    sget-object v3, Lcom/shabakaty/downloader/nv1$x;->f:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 128
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 129
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 v1, 0x0

    return v1

    .line 130
    :cond_2c
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->n(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 132
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 133
    :cond_2d
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 134
    :cond_2e
    sget-object v3, Lcom/shabakaty/downloader/nv1$x;->c:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 135
    sget-object v1, Lcom/shabakaty/downloader/mv1;->v:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v15}, Lcom/shabakaty/downloader/mv1;->t([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 136
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 v1, 0x0

    return v1

    .line 137
    :cond_2f
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->n(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 139
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 140
    :cond_30
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_31
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8a

    .line 141
    iget-object v4, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/k21;

    .line 142
    iget-object v5, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    invoke-virtual {v4}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto/16 :goto_22

    :cond_32
    const-string v3, "sarcasm"

    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 145
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$u;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 146
    :cond_33
    sget-object v3, Lcom/shabakaty/downloader/nv1$x;->h:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 147
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 148
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 149
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 v1, 0x0

    return v1

    .line 150
    :cond_34
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 151
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 152
    :cond_35
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->i()V

    goto/16 :goto_22

    :cond_36
    const-string v3, "br"

    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 155
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 156
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    const/4 v1, 0x0

    return v1

    .line 157
    :cond_37
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$u;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 158
    :cond_38
    move-object v4, v1

    check-cast v4, Lcom/shabakaty/downloader/zn4$h;

    .line 159
    iget-object v5, v4, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v14, "a"

    .line 160
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 161
    invoke-virtual {v2, v14}, Lcom/shabakaty/downloader/mv1;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 162
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 163
    invoke-virtual {v2, v14}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 164
    invoke-virtual {v2, v14}, Lcom/shabakaty/downloader/mv1;->p(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 165
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->M(Lcom/shabakaty/downloader/k21;)V

    .line 166
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->N(Lcom/shabakaty/downloader/k21;)Z

    .line 167
    :cond_39
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 168
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    move-result-object v1

    .line 169
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->K(Lcom/shabakaty/downloader/k21;)V

    goto/16 :goto_22

    .line 170
    :cond_3a
    sget-object v14, Lcom/shabakaty/downloader/nv1$x;->i:[Ljava/lang/String;

    invoke-static {v5, v14}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 172
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    .line 173
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    goto/16 :goto_22

    .line 174
    :cond_3b
    sget-object v14, Lcom/shabakaty/downloader/nv1$x;->b:[Ljava/lang/String;

    invoke-static {v5, v14}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 175
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 176
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 177
    :cond_3c
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    .line 178
    :cond_3d
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 180
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    .line 181
    :cond_3e
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v1, 0x0

    .line 182
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 183
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_e
    if-lez v3, :cond_41

    .line 185
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/k21;

    .line 186
    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 187
    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    goto :goto_f

    .line 188
    :cond_3f
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/mv1;->F(Lcom/shabakaty/downloader/k21;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/nv1$x;->e:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    goto :goto_f

    :cond_40
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 189
    :cond_41
    :goto_f
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 190
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 191
    :cond_42
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    .line 192
    :cond_43
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 193
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 194
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    .line 196
    iget-object v2, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    .line 197
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 198
    :cond_44
    :goto_10
    iget v4, v2, Lcom/shabakaty/downloader/he;->r:I

    if-ge v3, v4, :cond_45

    const/4 v4, 0x1

    goto :goto_11

    :cond_45
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_8a

    .line 199
    new-instance v4, Lcom/shabakaty/downloader/ge;

    iget-object v5, v2, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, v2, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {v4, v5, v6, v2}, Lcom/shabakaty/downloader/ge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    add-int/lit8 v3, v3, 0x1

    .line 200
    iget-object v5, v4, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/sz2;->n(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 202
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/he;->A(Lcom/shabakaty/downloader/ge;)Lcom/shabakaty/downloader/he;

    goto :goto_10

    .line 203
    :cond_46
    sget-object v7, Lcom/shabakaty/downloader/nv1$x;->a:[Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 204
    sget-object v3, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    .line 205
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 206
    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 207
    :cond_47
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 208
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 209
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v13, :cond_48

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/k21;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_14

    :cond_48
    const/4 v3, 0x0

    .line 211
    iput-boolean v3, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 212
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    .line 213
    iget-object v2, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    .line 214
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_49
    :goto_12
    iget v4, v2, Lcom/shabakaty/downloader/he;->r:I

    if-ge v3, v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_13

    :cond_4a
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_8a

    .line 216
    new-instance v4, Lcom/shabakaty/downloader/ge;

    iget-object v5, v2, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, v2, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {v4, v5, v6, v2}, Lcom/shabakaty/downloader/ge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    add-int/lit8 v3, v3, 0x1

    .line 217
    iget-object v5, v4, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    .line 218
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/sz2;->n(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 219
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/he;->A(Lcom/shabakaty/downloader/ge;)Lcom/shabakaty/downloader/he;

    goto :goto_12

    :cond_4b
    :goto_14
    const/4 v1, 0x0

    return v1

    :cond_4c
    const-string v1, "frameset"

    .line 220
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 221
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 222
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_51

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v13, :cond_4d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/k21;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_16

    .line 224
    :cond_4d
    iget-boolean v3, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    if-nez v3, :cond_4e

    const/4 v1, 0x0

    return v1

    .line 225
    :cond_4e
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/k21;

    .line 226
    iget-object v6, v3, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast v6, Lcom/shabakaty/downloader/k21;

    if-eqz v6, :cond_4f

    .line 227
    invoke-virtual {v3}, Lcom/shabakaty/downloader/sz2;->x()V

    .line 228
    :cond_4f
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_50

    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_15

    .line 230
    :cond_50
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 231
    sget-object v1, Lcom/shabakaty/downloader/nv1;->J:Lcom/shabakaty/downloader/nv1;

    .line 232
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_22

    :cond_51
    :goto_16
    const/4 v1, 0x0

    return v1

    .line 233
    :cond_52
    sget-object v1, Lcom/shabakaty/downloader/nv1$x;->c:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 234
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 235
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 236
    :cond_53
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 237
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    .line 239
    :cond_54
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    .line 240
    :cond_55
    sget-object v1, Lcom/shabakaty/downloader/nv1$x;->d:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 241
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 242
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 243
    :cond_56
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 244
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->a:Lcom/shabakaty/downloader/ez;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ez;->m(Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 245
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    goto/16 :goto_22

    :cond_57
    const/4 v1, 0x0

    .line 246
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 247
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    if-eqz v3, :cond_58

    .line 248
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    .line 249
    :cond_58
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 250
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    :cond_59
    const/4 v1, 0x1

    .line 251
    invoke-virtual {v2, v4, v1}, Lcom/shabakaty/downloader/mv1;->z(Lcom/shabakaty/downloader/zn4$h;Z)Lcom/shabakaty/downloader/uh1;

    goto/16 :goto_22

    .line 252
    :cond_5a
    sget-object v7, Lcom/shabakaty/downloader/nv1$x;->f:[Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 253
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 254
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_17
    if-lez v3, :cond_5d

    .line 256
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/k21;

    .line 257
    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/nv1$x;->f:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 258
    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    goto :goto_18

    .line 259
    :cond_5b
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/mv1;->F(Lcom/shabakaty/downloader/k21;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/nv1$x;->e:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_18

    :cond_5c
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 260
    :cond_5d
    :goto_18
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 261
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 262
    :cond_5e
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    :cond_5f
    const-string v1, "plaintext"

    .line 263
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 264
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 265
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 266
    :cond_60
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 267
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    sget-object v2, Lcom/shabakaty/downloader/do4;->x:Lcom/shabakaty/downloader/do4;

    .line 268
    iput-object v2, v1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto/16 :goto_22

    :cond_61
    const-string v1, "button"

    .line 269
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 270
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 271
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 272
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 273
    iput-object v4, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 274
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    goto/16 :goto_22

    .line 275
    :cond_62
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 276
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    .line 277
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    goto/16 :goto_22

    .line 278
    :cond_63
    sget-object v1, Lcom/shabakaty/downloader/nv1$x;->g:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 280
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    move-result-object v1

    .line 281
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->K(Lcom/shabakaty/downloader/k21;)V

    goto/16 :goto_22

    :cond_64
    const-string v1, "nobr"

    .line 282
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 284
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 285
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 286
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 287
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 288
    :cond_65
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    move-result-object v1

    .line 289
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->K(Lcom/shabakaty/downloader/k21;)V

    goto/16 :goto_22

    .line 290
    :cond_66
    sget-object v1, Lcom/shabakaty/downloader/nv1$x;->h:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 291
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 292
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 293
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->B()V

    const/4 v1, 0x0

    .line 294
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    goto/16 :goto_22

    :cond_67
    const-string v1, "table"

    .line 295
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 296
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    .line 297
    iget v1, v1, Lcom/shabakaty/downloader/wu0;->A:I

    if-eq v1, v13, :cond_68

    .line 298
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 299
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 300
    :cond_68
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    .line 301
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 302
    iput-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_22

    :cond_69
    const-string v1, "input"

    .line 303
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 305
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    move-result-object v1

    const-string v3, "type"

    .line 306
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/sz2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8a

    const/4 v1, 0x0

    .line 307
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    goto/16 :goto_22

    .line 308
    :cond_6a
    sget-object v7, Lcom/shabakaty/downloader/nv1$x;->j:[Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 309
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    :cond_6b
    const-string v7, "hr"

    .line 310
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 311
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 312
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 313
    :cond_6c
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    .line 314
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    goto/16 :goto_22

    :cond_6d
    const-string v8, "image"

    .line 315
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "svg"

    if-eqz v8, :cond_6f

    .line 316
    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/mv1;->p(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    move-result-object v1

    if-nez v1, :cond_6e

    const-string v1, "img"

    .line 317
    iput-object v1, v4, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    .line 318
    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 319
    iput-object v4, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 320
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 321
    :cond_6e
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    :cond_6f
    const-string v8, "isindex"

    .line 322
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_79

    .line 323
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 324
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    if-eqz v3, :cond_70

    const/4 v1, 0x0

    return v1

    .line 325
    :cond_70
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 326
    iget-object v3, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    const-string v5, "action"

    .line 327
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/he;->y(Ljava/lang/String;)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_71

    const/4 v3, 0x1

    goto :goto_19

    :cond_71
    const/4 v3, 0x0

    :goto_19
    if-eqz v3, :cond_72

    .line 328
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    .line 329
    iget-object v10, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-virtual {v10, v5}, Lcom/shabakaty/downloader/he;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 330
    invoke-virtual {v3, v5, v10}, Lcom/shabakaty/downloader/sz2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    .line 331
    :cond_72
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    const-string v3, "label"

    .line 332
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 333
    iget-object v5, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    const-string v10, "prompt"

    .line 334
    invoke-virtual {v5, v10}, Lcom/shabakaty/downloader/he;->y(Ljava/lang/String;)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_73

    const/4 v5, 0x1

    goto :goto_1a

    :cond_73
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_74

    .line 335
    iget-object v5, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-virtual {v5, v10}, Lcom/shabakaty/downloader/he;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1b

    :cond_74
    const-string v5, "This is a searchable index. Enter search keywords: "

    .line 336
    :goto_1b
    new-instance v10, Lcom/shabakaty/downloader/zn4$c;

    invoke-direct {v10}, Lcom/shabakaty/downloader/zn4$c;-><init>()V

    .line 337
    iput-object v5, v10, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 338
    iput-object v10, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 339
    iget-object v5, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v5, v10, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    .line 340
    new-instance v5, Lcom/shabakaty/downloader/he;

    invoke-direct {v5}, Lcom/shabakaty/downloader/he;-><init>()V

    .line 341
    iget-object v4, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    .line 342
    :cond_75
    :goto_1c
    iget v11, v4, Lcom/shabakaty/downloader/he;->r:I

    if-ge v10, v11, :cond_76

    const/4 v11, 0x1

    goto :goto_1d

    :cond_76
    const/4 v11, 0x0

    :goto_1d
    if-eqz v11, :cond_77

    .line 343
    new-instance v11, Lcom/shabakaty/downloader/ge;

    iget-object v12, v4, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v12, v12, v10

    iget-object v13, v4, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v13, v13, v10

    invoke-direct {v11, v12, v13, v4}, Lcom/shabakaty/downloader/ge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    add-int/lit8 v10, v10, 0x1

    .line 344
    iget-object v12, v11, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    .line 345
    sget-object v13, Lcom/shabakaty/downloader/nv1$x;->k:[Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_75

    .line 346
    invoke-virtual {v5, v11}, Lcom/shabakaty/downloader/he;->A(Lcom/shabakaty/downloader/ge;)Lcom/shabakaty/downloader/he;

    goto :goto_1c

    .line 347
    :cond_77
    invoke-virtual {v5, v6, v8}, Lcom/shabakaty/downloader/he;->C(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/he;

    .line 348
    iget-object v4, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    iget-object v6, v2, Lcom/shabakaty/downloader/cr4;->i:Lcom/shabakaty/downloader/zn4$h;

    if-ne v4, v6, :cond_78

    .line 349
    new-instance v4, Lcom/shabakaty/downloader/zn4$h;

    invoke-direct {v4}, Lcom/shabakaty/downloader/zn4$h;-><init>()V

    .line 350
    iput-object v1, v4, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    .line 351
    iput-object v5, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    .line 352
    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 353
    iput-object v4, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 354
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    goto :goto_1e

    .line 355
    :cond_78
    invoke-virtual {v6}, Lcom/shabakaty/downloader/zn4$h;->s()Lcom/shabakaty/downloader/zn4$i;

    .line 356
    iget-object v4, v2, Lcom/shabakaty/downloader/cr4;->i:Lcom/shabakaty/downloader/zn4$h;

    .line 357
    iput-object v1, v4, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    .line 358
    iput-object v5, v4, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    .line 359
    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 360
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->i:Lcom/shabakaty/downloader/zn4$h;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    .line 361
    :goto_1e
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 362
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 363
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    goto/16 :goto_22

    :cond_79
    const-string v1, "textarea"

    .line 364
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 365
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 366
    iget-object v1, v2, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    sget-object v3, Lcom/shabakaty/downloader/do4;->t:Lcom/shabakaty/downloader/do4;

    .line 367
    iput-object v3, v1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    .line 368
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    const/4 v1, 0x0

    .line 369
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 370
    sget-object v1, Lcom/shabakaty/downloader/nv1;->y:Lcom/shabakaty/downloader/nv1;

    .line 371
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_22

    :cond_7a
    const-string v1, "xmp"

    .line 372
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 373
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/mv1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 374
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 375
    :cond_7b
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    const/4 v1, 0x0

    .line 376
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 377
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/nv1;->h(Lcom/shabakaty/downloader/zn4$h;Lcom/shabakaty/downloader/mv1;)V

    goto/16 :goto_22

    :cond_7c
    const/4 v1, 0x0

    const-string v6, "iframe"

    .line 378
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 379
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 380
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/nv1;->h(Lcom/shabakaty/downloader/zn4$h;Lcom/shabakaty/downloader/mv1;)V

    goto/16 :goto_22

    :cond_7d
    const-string v1, "noembed"

    .line 381
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 382
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/nv1;->h(Lcom/shabakaty/downloader/zn4$h;Lcom/shabakaty/downloader/mv1;)V

    goto/16 :goto_22

    :cond_7e
    const-string v1, "select"

    .line 383
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 384
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 385
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    .line 386
    iput-boolean v1, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 387
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 388
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    sget-object v3, Lcom/shabakaty/downloader/nv1;->B:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    sget-object v3, Lcom/shabakaty/downloader/nv1;->D:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    sget-object v3, Lcom/shabakaty/downloader/nv1;->E:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    sget-object v3, Lcom/shabakaty/downloader/nv1;->F:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    goto :goto_1f

    .line 389
    :cond_7f
    sget-object v1, Lcom/shabakaty/downloader/nv1;->G:Lcom/shabakaty/downloader/nv1;

    .line 390
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_22

    .line 391
    :cond_80
    :goto_1f
    sget-object v1, Lcom/shabakaty/downloader/nv1;->H:Lcom/shabakaty/downloader/nv1;

    .line 392
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_22

    .line 393
    :cond_81
    sget-object v1, Lcom/shabakaty/downloader/nv1$x;->l:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "option"

    .line 394
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 395
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 396
    :cond_82
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 397
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_22

    .line 398
    :cond_83
    sget-object v1, Lcom/shabakaty/downloader/nv1$x;->m:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    const-string v1, "ruby"

    .line 399
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 400
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 401
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 402
    iget-object v3, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_20
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_85

    .line 403
    iget-object v5, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/k21;

    .line 404
    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    goto :goto_21

    .line 405
    :cond_84
    iget-object v5, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 406
    :cond_85
    :goto_21
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_22

    :cond_86
    const-string v1, "math"

    .line 407
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 408
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 409
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_22

    .line 410
    :cond_87
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 411
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 412
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_22

    .line 413
    :cond_88
    sget-object v1, Lcom/shabakaty/downloader/nv1$x;->n:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 414
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 v1, 0x0

    return v1

    .line 415
    :cond_89
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->L()V

    .line 416
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    :cond_8a
    :goto_22
    const/4 v1, 0x1

    return v1

    :cond_8b
    const/4 v1, 0x0

    .line 417
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1
.end method

.method public n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
    .locals 5

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/zn4$g;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ma3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/k21;

    .line 7
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->n(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 11
    :cond_0
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/mv1;->F(Lcom/shabakaty/downloader/k21;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method
