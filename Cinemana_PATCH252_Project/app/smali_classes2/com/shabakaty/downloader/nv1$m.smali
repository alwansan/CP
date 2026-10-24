.class public final enum Lcom/shabakaty/downloader/nv1$m;
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

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 3
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zn4$h;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    const-string v2, "html"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 10
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 11
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1
.end method
