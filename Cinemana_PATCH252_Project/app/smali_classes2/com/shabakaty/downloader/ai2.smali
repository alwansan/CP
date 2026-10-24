.class public Lcom/shabakaty/downloader/ai2;
.super Lcom/shabakaty/downloader/m;
.source "LinkedListChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/m<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/m;-><init>(Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/n;->c:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_5

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    new-instance v2, Lcom/shabakaty/downloader/z0$a;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/z0$a;-><init>(Ljava/lang/Object;)V

    .line 5
    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v0

    .line 6
    instance-of v3, v0, Lcom/shabakaty/downloader/zn3;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/shabakaty/downloader/zn3;

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/ck2;->g(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    return-object p1

    .line 9
    :cond_4
    instance-of v1, v0, Lcom/shabakaty/downloader/f40;

    if-eqz v1, :cond_0

    return-object v0

    .line 10
    :cond_5
    instance-of p1, v0, Lcom/shabakaty/downloader/f40;

    if-eqz p1, :cond_6

    return-object v0

    :cond_6
    const-string p1, "Invalid offerInternal result "

    .line 11
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u(Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    check-cast p1, Lcom/shabakaty/downloader/g04;

    .line 2
    instance-of v1, p1, Lcom/shabakaty/downloader/z0$a;

    if-eqz v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/shabakaty/downloader/z0$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/z0$a;->u:Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/shabakaty/downloader/d73;->a(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;)Lcom/shabakaty/downloader/lv4;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/g04;->y(Lcom/shabakaty/downloader/f40;)V

    goto :goto_2

    .line 5
    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_0
    if-ltz v1, :cond_5

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/g04;

    .line 8
    instance-of v4, v3, Lcom/shabakaty/downloader/z0$a;

    if-eqz v4, :cond_4

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/shabakaty/downloader/z0$a;

    iget-object v3, v3, Lcom/shabakaty/downloader/z0$a;->u:Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lcom/shabakaty/downloader/d73;->a(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;)Lcom/shabakaty/downloader/lv4;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {v3, p2}, Lcom/shabakaty/downloader/g04;->y(Lcom/shabakaty/downloader/f40;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    move-object v0, v2

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    return-void

    .line 11
    :cond_7
    throw v0
.end method
