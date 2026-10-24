.class public final Lcom/shabakaty/downloader/d93;
.super Ljava/lang/Object;
.source "overridingUtils.kt"


# direct methods
.method public static final a(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TH;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TH;+",
            "Lcom/shabakaty/downloader/rq;",
            ">;)",
            "Ljava/util/Collection<",
            "TH;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptorByHandle"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/f94$b;->a()Lcom/shabakaty/downloader/f94;

    move-result-object p0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_5

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/f94$b;->a()Lcom/shabakaty/downloader/f94;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/d93$a;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/d93$a;-><init>(Lcom/shabakaty/downloader/f94;)V

    invoke-static {v2, v0, p1, v4}, Lcom/shabakaty/downloader/a93;->g(Ljava/lang/Object;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object v2

    .line 8
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_1

    invoke-virtual {v3}, Ljava/util/AbstractSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->p0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "overridableGroup.single()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/f94;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/a93;->s(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "selectMostSpecificMember\u2026roup, descriptorByHandle)"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/rq;

    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "it"

    .line 13
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/rq;

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/a93;->k(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/f94;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {p0, v3}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_4
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/f94;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object p0
.end method
