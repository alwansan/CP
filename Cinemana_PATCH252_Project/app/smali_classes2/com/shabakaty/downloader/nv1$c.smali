.class public final enum Lcom/shabakaty/downloader/nv1$c;
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
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/zn4$c;

    .line 3
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    return v1

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const-string v2, "html"

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$c;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-static {p2, v2}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$c;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z

    move-result p1

    return p1

    .line 8
    :cond_3
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 9
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto :goto_0

    .line 10
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$g;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v3, "colgroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    invoke-static {p2, v2}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/nv1;->z:Lcom/shabakaty/downloader/nv1;

    .line 16
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$c;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z

    move-result p1

    return p1

    .line 18
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 19
    iget-object v3, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 20
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "col"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/nv1$c;->n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z

    move-result p1

    return p1

    .line 22
    :cond_8
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1

    .line 23
    :cond_9
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_0

    .line 24
    :cond_a
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    :goto_0
    return v1
.end method

.method public final n(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/cr4;)Z
    .locals 1

    const-string v0, "colgroup"

    .line 1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/mv1;

    .line 3
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
