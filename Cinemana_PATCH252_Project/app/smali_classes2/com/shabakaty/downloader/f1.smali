.class public final Lcom/shabakaty/downloader/f1;
.super Ljava/lang/Object;
.source "AbstractStrictEqualityTypeChecker.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;)Z
    .locals 8

    .line 1
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->p(Lcom/shabakaty/downloader/te2;)I

    move-result v0

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->p(Lcom/shabakaty/downloader/te2;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 2
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-ne v0, v1, :cond_8

    .line 3
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->N(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/sp0;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->N(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/sp0;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_8

    .line 4
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v0

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lcom/shabakaty/downloader/yt4;->v(Lcom/shabakaty/downloader/us4;Lcom/shabakaty/downloader/us4;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    invoke-interface {p0, p1, p2}, Lcom/shabakaty/downloader/au4;->s(Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->p(Lcom/shabakaty/downloader/te2;)I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_7

    add-int/lit8 v4, v3, 0x1

    .line 7
    invoke-interface {p0, p1, v3}, Lcom/shabakaty/downloader/yt4;->D(Lcom/shabakaty/downloader/te2;I)Lcom/shabakaty/downloader/os4;

    move-result-object v5

    .line 8
    invoke-interface {p0, p2, v3}, Lcom/shabakaty/downloader/yt4;->D(Lcom/shabakaty/downloader/te2;I)Lcom/shabakaty/downloader/os4;

    move-result-object v3

    .line 9
    invoke-interface {p0, v5}, Lcom/shabakaty/downloader/yt4;->S(Lcom/shabakaty/downloader/os4;)Z

    move-result v6

    invoke-interface {p0, v3}, Lcom/shabakaty/downloader/yt4;->S(Lcom/shabakaty/downloader/os4;)Z

    move-result v7

    if-eq v6, v7, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-interface {p0, v5}, Lcom/shabakaty/downloader/yt4;->S(Lcom/shabakaty/downloader/os4;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 11
    invoke-interface {p0, v5}, Lcom/shabakaty/downloader/yt4;->O(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/ju4;

    move-result-object v6

    invoke-interface {p0, v3}, Lcom/shabakaty/downloader/yt4;->O(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/ju4;

    move-result-object v7

    if-eq v6, v7, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-interface {p0, v5}, Lcom/shabakaty/downloader/yt4;->k0(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/te2;

    move-result-object v5

    invoke-interface {p0, v3}, Lcom/shabakaty/downloader/yt4;->k0(Lcom/shabakaty/downloader/os4;)Lcom/shabakaty/downloader/te2;

    move-result-object v3

    invoke-static {p0, v5, v3}, Lcom/shabakaty/downloader/f1;->b(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public static final b(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->c(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v1

    .line 2
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->c(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 3
    invoke-static {p0, v1, v2}, Lcom/shabakaty/downloader/f1;->a(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;)Z

    move-result p0

    return p0

    .line 4
    :cond_1
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->j(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/ie1;

    move-result-object p1

    .line 5
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->j(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/ie1;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->f(Lcom/shabakaty/downloader/ie1;)Lcom/shabakaty/downloader/d74;

    move-result-object v1

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->f(Lcom/shabakaty/downloader/ie1;)Lcom/shabakaty/downloader/d74;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/shabakaty/downloader/f1;->a(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/yt4;->b(Lcom/shabakaty/downloader/ie1;)Lcom/shabakaty/downloader/d74;

    move-result-object p1

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/yt4;->b(Lcom/shabakaty/downloader/ie1;)Lcom/shabakaty/downloader/d74;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/f1;->a(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/d74;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v1
.end method
