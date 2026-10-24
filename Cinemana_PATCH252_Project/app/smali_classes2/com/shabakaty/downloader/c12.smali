.class public Lcom/shabakaty/downloader/c12;
.super Ljava/lang/Object;
.source "InlineList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static final a(Lcom/shabakaty/downloader/zn;)Z
    .locals 8

    const-string v0, "$this$isProbablyUtf8"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v7, Lcom/shabakaty/downloader/zn;

    invoke-direct {v7}, Lcom/shabakaty/downloader/zn;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v3, 0x40

    .line 3
    invoke-static {v1, v2, v3, v4}, Lcom/shabakaty/downloader/rm3;->d(JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/zn;->c(Lcom/shabakaty/downloader/zn;JJ)Lcom/shabakaty/downloader/zn;

    const/16 p0, 0x10

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    .line 5
    invoke-virtual {v7}, Lcom/shabakaty/downloader/zn;->W()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v7}, Lcom/shabakaty/downloader/zn;->v()I

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/d04;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d04;->x:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/d04;->w:[[B

    .line 3
    array-length p0, p0

    const-string v2, "$this$binarySearch"

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v1, p0

    ushr-int/lit8 v2, v2, 0x1

    .line 5
    aget v3, v0, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    not-int v2, v2

    :goto_1
    return v2
.end method

.method public static d(Lcom/shabakaty/downloader/uz2;Lcom/shabakaty/downloader/sz2;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1
    invoke-interface {p0, v1, v2}, Lcom/shabakaty/downloader/uz2;->b(Lcom/shabakaty/downloader/sz2;I)V

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sz2;->h()I

    move-result v3

    if-lez v3, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/sz2;->g(I)Lcom/shabakaty/downloader/sz2;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sz2;->r()Lcom/shabakaty/downloader/sz2;

    move-result-object v3

    if-nez v3, :cond_1

    if-lez v2, :cond_1

    .line 5
    invoke-interface {p0, v1, v2}, Lcom/shabakaty/downloader/uz2;->a(Lcom/shabakaty/downloader/sz2;I)V

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p0, v1, v2}, Lcom/shabakaty/downloader/uz2;->a(Lcom/shabakaty/downloader/sz2;I)V

    if-ne v1, p1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sz2;->r()Lcom/shabakaty/downloader/sz2;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
