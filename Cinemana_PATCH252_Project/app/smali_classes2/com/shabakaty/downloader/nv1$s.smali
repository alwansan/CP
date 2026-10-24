.class public final enum Lcom/shabakaty/downloader/nv1$s;
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
    .locals 10

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$h;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v3, "html"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    .line 8
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v1

    const-string v3, "noscript"

    if-eqz v1, :cond_2

    .line 11
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$g;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    .line 15
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    :goto_0
    return v2

    .line 16
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$h;

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v4, "basefont"

    const-string v5, "bgsound"

    const-string v6, "link"

    const-string v7, "meta"

    const-string v8, "noframes"

    const-string v9, "style"

    .line 19
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$g;

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v1, "br"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/zn4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$c;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    iput-object p1, v0, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    return v2

    .line 28
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v1, "head"

    .line 31
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    :cond_6
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_7
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 34
    new-instance v0, Lcom/shabakaty/downloader/zn4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$c;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    iput-object p1, v0, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    return v2

    .line 37
    :cond_8
    :goto_1
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method
