.class public final Lcom/shabakaty/downloader/e12;
.super Lcom/shabakaty/downloader/ej;
.source "InnerEpisodesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e12$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/downloader/b41;",
        "Lcom/shabakaty/downloader/e52;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e12$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/b41;

    check-cast p2, Lcom/shabakaty/downloader/b41;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b41;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/shabakaty/downloader/b41;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p1, Lcom/shabakaty/downloader/b41;->a:Z

    iget-boolean v1, p2, Lcom/shabakaty/downloader/b41;->a:Z

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b41;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/shabakaty/downloader/b41;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b41;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/b41;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(I)I
    .locals 0

    const p1, 0x7f0d009f

    return p1
.end method
