.class public final enum Lcom/shabakaty/downloader/nv1$f;
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
    sget-object v3, Lcom/shabakaty/downloader/nv1;->E:Lcom/shabakaty/downloader/nv1;

    sget-object v4, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "th"

    const-string v8, "td"

    if-eqz v5, :cond_7

    .line 2
    move-object v5, v1

    check-cast v5, Lcom/shabakaty/downloader/zn4$g;

    .line 3
    iget-object v5, v5, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 4
    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 7
    iput-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    return v6

    .line 8
    :cond_0
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 10
    :cond_1
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mv1;->i()V

    .line 12
    iput-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    const/4 v1, 0x1

    return v1

    :cond_2
    const-string v3, "body"

    const-string v9, "caption"

    const-string v10, "col"

    const-string v11, "colgroup"

    const-string v12, "html"

    .line 13
    filled-new-array {v3, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v6

    :cond_3
    const-string v3, "table"

    const-string v9, "tbody"

    const-string v10, "tfoot"

    const-string v11, "thead"

    const-string v12, "tr"

    .line 15
    filled-new-array {v3, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 17
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v6

    .line 18
    :cond_4
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 21
    :goto_0
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 22
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 23
    :cond_6
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 24
    invoke-virtual {v4, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 25
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 26
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/zn4$h;

    .line 27
    iget-object v3, v3, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v9, "caption"

    const-string v10, "col"

    const-string v11, "colgroup"

    const-string v12, "tbody"

    const-string v13, "td"

    const-string v14, "tfoot"

    const-string v15, "th"

    const-string v16, "thead"

    const-string v17, "tr"

    .line 28
    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 29
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 30
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v6

    .line 31
    :cond_8
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 32
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    goto :goto_1

    .line 33
    :cond_9
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 34
    :goto_1
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 35
    iget-object v3, v2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1

    .line 36
    :cond_a
    iput-object v1, v2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 37
    invoke-virtual {v4, v1, v2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v1

    return v1
.end method
