.class public final enum Lcom/shabakaty/downloader/nv1$v;
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
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/zn4$c;

    .line 3
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    .line 7
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    .line 8
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 9
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    .line 12
    iget-object p1, p2, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    .line 13
    iput-object p1, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
