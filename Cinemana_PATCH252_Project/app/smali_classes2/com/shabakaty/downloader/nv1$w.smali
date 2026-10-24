.class public final enum Lcom/shabakaty/downloader/nv1$w;
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
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/shabakaty/downloader/mv1;->q:Ljava/util/List;

    .line 4
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    iput-object v3, v2, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/nv1;->A:Lcom/shabakaty/downloader/nv1;

    .line 6
    iput-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 7
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 8
    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 10
    check-cast v1, Lcom/shabakaty/downloader/zn4$d;

    .line 11
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    return v4

    .line 12
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v5

    .line 14
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v3

    const-string v6, "table"

    if-eqz v3, :cond_f

    .line 15
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/zn4$h;

    .line 16
    iget-object v7, v3, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v8, "caption"

    .line 17
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->l()V

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->B()V

    .line 20
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 21
    sget-object v1, Lcom/shabakaty/downloader/nv1;->B:Lcom/shabakaty/downloader/nv1;

    .line 22
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_0

    :cond_3
    const-string v8, "colgroup"

    .line 23
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->l()V

    .line 25
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/nv1;->C:Lcom/shabakaty/downloader/nv1;

    .line 27
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_0

    :cond_4
    const-string v9, "col"

    .line 28
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 29
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 30
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 31
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    :cond_5
    const-string v8, "tbody"

    const-string v9, "tfoot"

    const-string v10, "thead"

    .line 32
    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->l()V

    .line 34
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 35
    sget-object v1, Lcom/shabakaty/downloader/nv1;->D:Lcom/shabakaty/downloader/nv1;

    .line 36
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_0

    :cond_6
    const-string v9, "td"

    const-string v10, "th"

    const-string v11, "tr"

    .line 37
    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 38
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 39
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 40
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 41
    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 42
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 43
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 44
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 45
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    :cond_8
    const-string v6, "style"

    const-string v8, "script"

    .line 46
    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 47
    sget-object v3, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    .line 48
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 49
    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    :cond_9
    const-string v6, "input"

    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 51
    iget-object v5, v3, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/he;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 52
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$w;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 53
    :cond_a
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_0

    :cond_b
    const-string v6, "form"

    .line 54
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 55
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 56
    iget-object v1, v2, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    if-eqz v1, :cond_c

    return v5

    .line 57
    :cond_c
    invoke-virtual {v2, v3, v5}, Lcom/shabakaty/downloader/mv1;->z(Lcom/shabakaty/downloader/zn4$h;Z)Lcom/shabakaty/downloader/uh1;

    :cond_d
    :goto_0
    return v4

    .line 58
    :cond_e
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$w;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 59
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 60
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/zn4$g;

    .line 61
    iget-object v3, v3, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 63
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 64
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v5

    .line 65
    :cond_10
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->O()V

    return v4

    :cond_11
    const-string v7, "body"

    const-string v8, "caption"

    const-string v9, "col"

    const-string v10, "colgroup"

    const-string v11, "html"

    const-string v12, "tbody"

    const-string v13, "td"

    const-string v14, "tfoot"

    const-string v15, "th"

    const-string v16, "thead"

    const-string v17, "tr"

    .line 67
    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 68
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v5

    .line 69
    :cond_12
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$w;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 70
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->d()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v1, "html"

    .line 71
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 72
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    :cond_14
    return v4

    .line 73
    :cond_15
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$w;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1
.end method

.method public n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "table"

    const-string v3, "tbody"

    const-string v4, "tfoot"

    const-string v5, "thead"

    const-string v6, "tr"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p2, Lcom/shabakaty/downloader/mv1;->t:Z

    .line 4
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p2, Lcom/shabakaty/downloader/mv1;->t:Z

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    :goto_0
    return p1
.end method
