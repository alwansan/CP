.class public final enum Lcom/shabakaty/downloader/nv1$e;
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
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v0

    const-string v1, "template"

    const/4 v2, 0x0

    const-string v3, "tr"

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_0

    :cond_0
    const-string v5, "th"

    const-string v6, "td"

    .line 6
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->j([Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/nv1;->F:Lcom/shabakaty/downloader/nv1;

    .line 10
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->B()V

    goto :goto_0

    :cond_1
    const-string v5, "caption"

    const-string v6, "col"

    const-string v7, "colgroup"

    const-string v8, "tbody"

    const-string v9, "tfoot"

    const-string v10, "thead"

    const-string v11, "tr"

    .line 12
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 15
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v2

    :cond_2
    return v2

    .line 16
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$e;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$g;

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 22
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v2

    .line 23
    :cond_5
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->j([Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    .line 25
    sget-object p1, Lcom/shabakaty/downloader/nv1;->D:Lcom/shabakaty/downloader/nv1;

    .line 26
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_6
    const-string v1, "table"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 30
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result v2

    :cond_7
    return v2

    :cond_8
    const-string v1, "tbody"

    const-string v4, "tfoot"

    const-string v5, "thead"

    .line 31
    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v2

    .line 34
    :cond_9
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 35
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 36
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    :cond_a
    const-string v3, "body"

    const-string v4, "caption"

    const-string v5, "col"

    const-string v6, "colgroup"

    const-string v7, "html"

    const-string v8, "td"

    const-string v9, "th"

    .line 37
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v2

    .line 39
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$e;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    .line 40
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$e;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method

.method public final n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->z:Lcom/shabakaty/downloader/nv1;

    .line 2
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method
