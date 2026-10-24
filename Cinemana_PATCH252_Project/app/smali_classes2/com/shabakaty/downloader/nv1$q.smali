.class public final enum Lcom/shabakaty/downloader/nv1$q;
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
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 4
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v2

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v0

    const-string v3, "html"

    if-eqz v0, :cond_3

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v0

    const-string v4, "head"

    if-eqz v0, :cond_4

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 14
    iget-object v5, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    move-result-object p1

    .line 17
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->n:Lcom/shabakaty/downloader/k21;

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    .line 19
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    :goto_0
    return v1

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$g;

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v1, "body"

    const-string v5, "br"

    .line 23
    filled-new-array {v4, v1, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 25
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v2

    .line 28
    :cond_6
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/cr4;->g(Ljava/lang/String;)Z

    .line 29
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1
.end method
