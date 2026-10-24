.class public final enum Lcom/shabakaty/downloader/nv1$h;
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
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v0

    const-string v1, "select"

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v2, "caption"

    const-string v3, "table"

    const-string v4, "tbody"

    const-string v5, "tfoot"

    const-string v6, "thead"

    const-string v7, "tr"

    const-string v8, "td"

    const-string v9, "th"

    .line 4
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 6
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 7
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$g;

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v3, "caption"

    const-string v4, "table"

    const-string v5, "tbody"

    const-string v6, "tfoot"

    const-string v7, "thead"

    const-string v8, "tr"

    const-string v9, "td"

    const-string v10, "th"

    .line 11
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 16
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 17
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/nv1;->G:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1
.end method
