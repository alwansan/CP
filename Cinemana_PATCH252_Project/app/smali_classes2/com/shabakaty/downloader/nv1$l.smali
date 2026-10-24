.class public final enum Lcom/shabakaty/downloader/nv1$l;
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
    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/zn4$c;

    .line 3
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 6
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_3

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$g;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/nv1;->M:Lcom/shabakaty/downloader/nv1;

    .line 19
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v2, "noframes"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 26
    :cond_6
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1
.end method
