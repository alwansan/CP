.class public final Lcom/shabakaty/downloader/mp0;
.super Ljava/lang/Object;
.source "DeferrableSurfaces.java"


# direct methods
.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hp0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/hp0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/hp0;->e()V

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Lcom/shabakaty/downloader/hp0$a; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hp0;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/hp0;->b()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    throw v1

    :cond_2
    :goto_1
    return-void
.end method
