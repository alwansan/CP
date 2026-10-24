.class public final Lcom/shabakaty/downloader/d30;
.super Ljava/lang/Object;
.source "ClassicBuiltinSpecialProperties.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/tq;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/vo;->e:Ljava/util/Set;

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/vo;->d:Ljava/util/Set;

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->c(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/m50;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "overriddenDescriptors"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tq;

    const-string v2, "it"

    .line 10
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/d30;->a(Lcom/shabakaty/downloader/tq;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method
