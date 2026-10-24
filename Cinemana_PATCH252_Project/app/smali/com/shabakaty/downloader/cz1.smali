.class public final synthetic Lcom/shabakaty/downloader/cz1;
.super Ljava/lang/Object;
.source "ImageOutputConfig.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/dz1;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/dz1;

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/dz1;->e:Lcom/shabakaty/downloader/o90$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1
.end method

.method public static b(Lcom/shabakaty/downloader/dz1;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/dz1;

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/dz1;->f:Lcom/shabakaty/downloader/o90$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1
.end method

.method public static c(Lcom/shabakaty/downloader/dz1;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/dz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/dz1;->g:Lcom/shabakaty/downloader/o90$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public static d(Lcom/shabakaty/downloader/dz1;)I
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/dz1;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dz1;->b:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/jn3;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static e(Lcom/shabakaty/downloader/dz1;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/dz1;

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/dz1;->d:Lcom/shabakaty/downloader/o90$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1
.end method

.method public static f(Lcom/shabakaty/downloader/dz1;I)I
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/dz1;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dz1;->c:Lcom/shabakaty/downloader/o90$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static g(Lcom/shabakaty/downloader/dz1;)Z
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/dz1;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dz1;->b:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/jn3;->d(Lcom/shabakaty/downloader/o90$a;)Z

    move-result v0

    return v0
.end method
