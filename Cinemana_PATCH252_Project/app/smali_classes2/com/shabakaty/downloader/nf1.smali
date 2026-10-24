.class public final synthetic Lcom/shabakaty/downloader/nf1;
.super Ljava/lang/Object;
.source "Share.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/te1;I)Lcom/shabakaty/downloader/n56;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;I)",
            "Lcom/shabakaty/downloader/n56;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    sget-object v1, Lcom/shabakaty/downloader/py;->d:Lcom/shabakaty/downloader/py$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/shabakaty/downloader/py$a;->a:I

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    sub-int/2addr v1, p1

    .line 3
    instance-of v2, p0, Lcom/shabakaty/downloader/ry;

    if-eqz v2, :cond_5

    .line 4
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/ry;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ry;->h()Lcom/shabakaty/downloader/te1;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 5
    new-instance p0, Lcom/shabakaty/downloader/n56;

    .line 6
    iget v4, v2, Lcom/shabakaty/downloader/ry;->s:I

    const/4 v5, -0x3

    if-eq v4, v5, :cond_1

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    if-eqz v4, :cond_1

    move v1, v4

    goto :goto_2

    .line 7
    :cond_1
    iget-object v5, v2, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    if-ne v5, v0, :cond_2

    if-nez v4, :cond_4

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 8
    :cond_4
    :goto_2
    iget-object p1, v2, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    .line 10
    invoke-direct {p0, v3, v1, p1, v0}, Lcom/shabakaty/downloader/n56;-><init>(Lcom/shabakaty/downloader/te1;ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/me0;)V

    return-object p0

    .line 11
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/n56;

    .line 12
    sget-object v2, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    .line 13
    invoke-direct {p1, p0, v1, v0, v2}, Lcom/shabakaty/downloader/n56;-><init>(Lcom/shabakaty/downloader/te1;ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/me0;)V

    return-object p1
.end method
