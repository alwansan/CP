.class public final enum Lcom/shabakaty/downloader/nv1$i;
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
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 5
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_3

    .line 9
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$h;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1

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

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/nv1;->L:Lcom/shabakaty/downloader/nv1;

    .line 19
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 21
    :cond_5
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 22
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 23
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1
.end method
