.class public final Lcom/shabakaty/downloader/p30;
.super Lcom/shabakaty/downloader/xa7;
.source "SealedClassInheritorsProvider.kt"


# direct methods
.method public static final c(Lcom/shabakaty/downloader/q20;Ljava/util/LinkedHashSet;Lcom/shabakaty/downloader/mr2;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/shabakaty/downloader/q20;",
            ">;",
            "Lcom/shabakaty/downloader/mr2;",
            "Z)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vq0;->o:Lcom/shabakaty/downloader/vq0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2, v1}, Lcom/shabakaty/downloader/ls3$a;->a(Lcom/shabakaty/downloader/ls3;Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qm0;

    .line 2
    instance-of v3, v2, Lcom/shabakaty/downloader/q20;

    if-nez v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast v2, Lcom/shabakaty/downloader/q20;

    invoke-interface {v2}, Lcom/shabakaty/downloader/ir2;->S()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    const-string v3, "descriptor.name"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/shabakaty/downloader/mz2;->D:Lcom/shabakaty/downloader/mz2;

    invoke-interface {p2, v2, v3}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lcom/shabakaty/downloader/q20;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/shabakaty/downloader/q20;

    goto :goto_1

    .line 6
    :cond_2
    instance-of v3, v2, Lcom/shabakaty/downloader/hs4;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/shabakaty/downloader/hs4;

    invoke-interface {v2}, Lcom/shabakaty/downloader/hs4;->u()Lcom/shabakaty/downloader/q20;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget v3, Lcom/shabakaty/downloader/gr0;->a:I

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/qe2;

    .line 9
    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/gr0;->u(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qm0;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_8

    .line 10
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p3, :cond_0

    .line 11
    invoke-interface {v2}, Lcom/shabakaty/downloader/q20;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    const-string v3, "refinedDescriptor.unsubstitutedInnerClassesScope"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v2, p3}, Lcom/shabakaty/downloader/p30;->c(Lcom/shabakaty/downloader/q20;Ljava/util/LinkedHashSet;Lcom/shabakaty/downloader/mr2;Z)V

    goto :goto_0

    :cond_9
    return-void
.end method
