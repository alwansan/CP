.class public final Lcom/shabakaty/downloader/zi2;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/mj;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/util/List;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 11
    sget-object v2, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 13
    :goto_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    return-void
.end method

.method public static final b(Lcom/shabakaty/downloader/mj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T::",
            "Ljava/util/List<",
            "+TB;>;>(",
            "Lcom/shabakaty/downloader/mj<",
            "TT;>;I)TB;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tj;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final c(Lcom/shabakaty/downloader/xv2;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tj;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 3
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final d(Lcom/shabakaty/downloader/xv2;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tj;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 3
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final e(Lcom/shabakaty/downloader/xv2;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tj;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 3
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->t:Lcom/shabakaty/downloader/tj$a;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final f(Lcom/shabakaty/downloader/xv2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/xv2<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final g(Lcom/shabakaty/downloader/xv2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/mj<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    :cond_1
    :goto_0
    move-object v2, p1

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/tj$a;->t:Lcom/shabakaty/downloader/tj$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final i(Lcom/shabakaty/downloader/xv2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->t:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    return-void
.end method

.method public static final k(Lcom/shabakaty/downloader/xv2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final l(Lcom/shabakaty/downloader/mj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/mj<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tj;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final m(Lcom/shabakaty/downloader/mj;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/mj<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v3

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/tj;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v0

    move-object v4, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final n(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/mj<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    :cond_1
    :goto_0
    move-object v2, p1

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method
