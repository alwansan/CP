.class public final enum Lcom/shabakaty/downloader/nv1$p;
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
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->t:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 5
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v1

    const-string v4, "html"

    if-eqz v1, :cond_3

    .line 8
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$h;

    .line 9
    iget-object v5, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    .line 12
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    :goto_0
    return v3

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$g;

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v3, "head"

    const-string v5, "body"

    const-string v6, "br"

    .line 16
    filled-new-array {v3, v5, v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/mv1;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    .line 18
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 19
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v2

    .line 23
    :cond_5
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/mv1;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    .line 24
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 25
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method
