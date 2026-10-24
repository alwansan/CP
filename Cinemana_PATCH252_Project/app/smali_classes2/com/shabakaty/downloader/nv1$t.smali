.class public final enum Lcom/shabakaty/downloader/nv1$t;
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
    sget-object v3, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    check-cast v1, Lcom/shabakaty/downloader/zn4$c;

    .line 3
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/zn4$d;

    .line 6
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v4

    const-string v5, "body"

    const-string v6, "html"

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    .line 10
    move-object v4, v1

    check-cast v4, Lcom/shabakaty/downloader/zn4$h;

    .line 11
    iget-object v8, v4, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result v1

    return v1

    .line 14
    :cond_3
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 16
    iput-boolean v7, v2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 17
    iput-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_0

    :cond_4
    const-string v3, "frameset"

    .line 18
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 20
    sget-object v1, Lcom/shabakaty/downloader/nv1;->J:Lcom/shabakaty/downloader/nv1;

    .line 21
    iput-object v1, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_0

    :cond_5
    const-string v9, "base"

    const-string v10, "basefont"

    const-string v11, "bgsound"

    const-string v12, "link"

    const-string v13, "meta"

    const-string v14, "noframes"

    const-string v15, "script"

    const-string v16, "style"

    const-string v17, "title"

    .line 22
    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 24
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->n:Lcom/shabakaty/downloader/k21;

    .line 25
    iget-object v4, v2, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v4, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    .line 27
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mv1;->N(Lcom/shabakaty/downloader/k21;)Z

    goto :goto_0

    :cond_6
    const-string v3, "head"

    .line 28
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 29
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v7

    .line 30
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$t;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    goto :goto_0

    .line 31
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 32
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/zn4$g;

    .line 33
    iget-object v3, v3, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 34
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 35
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$t;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    goto :goto_0

    .line 36
    :cond_9
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v7

    .line 37
    :cond_a
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/nv1$t;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public final n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
    .locals 1

    const-string v0, "body"

    .line 1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p2, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 3
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method
