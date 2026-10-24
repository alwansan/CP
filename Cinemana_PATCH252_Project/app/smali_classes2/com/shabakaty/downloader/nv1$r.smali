.class public final enum Lcom/shabakaty/downloader/nv1$r;
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
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->y:Lcom/shabakaty/downloader/nv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/zn4$c;

    .line 3
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    return v2

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    const-string v4, "head"

    const-string v5, "html"

    if-eq v1, v2, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$r;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 7
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto/16 :goto_2

    .line 8
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$g;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/nv1;->w:Lcom/shabakaty/downloader/nv1;

    .line 13
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_2

    :cond_3
    const-string v1, "body"

    const-string v2, "br"

    .line 14
    filled-new-array {v1, v5, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$r;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z

    move-result p1

    return p1

    .line 16
    :cond_4
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v3

    .line 17
    :cond_5
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$h;

    .line 18
    iget-object v6, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 20
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    :cond_6
    const-string v5, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "command"

    const-string v10, "link"

    .line 21
    filled-new-array {v5, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 22
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    move-result-object p1

    .line 23
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/sz2;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 24
    iget-boolean v1, p2, Lcom/shabakaty/downloader/mv1;->m:Z

    if-eqz v1, :cond_7

    goto/16 :goto_2

    .line 25
    :cond_7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/sz2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 27
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    .line 28
    iput-boolean v2, p2, Lcom/shabakaty/downloader/mv1;->m:Z

    .line 29
    iget-object p2, p2, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    move-object v0, p2

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_10

    .line 31
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/sz2;->k(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sz2;->h()I

    move-result v4

    if-lez v4, :cond_8

    .line 33
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/sz2;->g(I)Lcom/shabakaty/downloader/sz2;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sz2;->r()Lcom/shabakaty/downloader/sz2;

    move-result-object v4

    if-nez v4, :cond_9

    if-lez v1, :cond_9

    .line 35
    iget-object v0, v0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_9
    if-ne v0, p2, :cond_a

    goto :goto_2

    .line 36
    :cond_a
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sz2;->r()Lcom/shabakaty/downloader/sz2;

    move-result-object v0

    goto :goto_0

    :cond_b
    const-string v5, "meta"

    .line 37
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 38
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_2

    :cond_c
    const-string v5, "title"

    .line 39
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 40
    iget-object p1, p2, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    sget-object v3, Lcom/shabakaty/downloader/do4;->t:Lcom/shabakaty/downloader/do4;

    .line 41
    iput-object v3, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    .line 42
    iget-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    .line 43
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 44
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_2

    :cond_d
    const-string v5, "noframes"

    const-string v7, "style"

    .line 45
    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 46
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/nv1;->h(Lcom/shabakaty/downloader/zn4$h;Lcom/shabakaty/downloader/mv1;)V

    goto :goto_2

    :cond_e
    const-string v5, "noscript"

    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 48
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 49
    sget-object p1, Lcom/shabakaty/downloader/nv1;->v:Lcom/shabakaty/downloader/nv1;

    .line 50
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_2

    :cond_f
    const-string v5, "script"

    .line 51
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 52
    iget-object p1, p2, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    sget-object v3, Lcom/shabakaty/downloader/do4;->w:Lcom/shabakaty/downloader/do4;

    .line 53
    iput-object v3, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    .line 54
    iget-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    .line 55
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 56
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    :cond_10
    :goto_2
    return v2

    .line 57
    :cond_11
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v3

    .line 59
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$r;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z

    move-result p1

    return p1

    .line 60
    :cond_13
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v3
.end method

.method public final n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z
    .locals 1

    const-string v0, "head"

    .line 1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/mv1;

    .line 3
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method
