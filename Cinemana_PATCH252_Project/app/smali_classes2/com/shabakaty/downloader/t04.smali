.class public Lcom/shabakaty/downloader/t04;
.super Lcom/shabakaty/downloader/s04;
.source "_Sequences.kt"


# direct methods
.method public static final A(Lcom/shabakaty/downloader/l04;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t04$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/t04$a;-><init>(Lcom/shabakaty/downloader/l04;)V

    return-object v0
.end method

.method public static final B(Lcom/shabakaty/downloader/l04;I)Lcom/shabakaty/downloader/l04;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;I)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    instance-of v0, p0, Lcom/shabakaty/downloader/f11;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/shabakaty/downloader/f11;

    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/f11;->a(I)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    goto :goto_1

    .line 2
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/e11;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/e11;-><init>(Lcom/shabakaty/downloader/l04;I)V

    move-object p0, v0

    :goto_1
    return-object p0

    :cond_3
    const-string p0, "Requested element count "

    const-string v0, " is less than zero."

    .line 3
    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final C(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pb1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/shabakaty/downloader/pb1;-><init>(Lcom/shabakaty/downloader/l04;ZLcom/shabakaty/downloader/tm1;)V

    return-object v0
.end method

.method public static final D(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pb1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/shabakaty/downloader/pb1;-><init>(Lcom/shabakaty/downloader/l04;ZLcom/shabakaty/downloader/tm1;)V

    return-object v0
.end method

.method public static final E(Lcom/shabakaty/downloader/l04;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/l04;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final F(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/l04<",
            "+TR;>;>;)",
            "Lcom/shabakaty/downloader/l04<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ae1;

    sget-object v1, Lcom/shabakaty/downloader/t04$b;->r:Lcom/shabakaty/downloader/t04$b;

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/ae1;-><init>(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)V

    return-object v0
.end method

.method public static final G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+TR;>;)",
            "Lcom/shabakaty/downloader/l04<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bq4;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/bq4;-><init>(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)V

    return-object v0
.end method

.method public static final H(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+TR;>;)",
            "Lcom/shabakaty/downloader/l04<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bq4;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/bq4;-><init>(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)V

    .line 2
    sget-object p0, Lcom/shabakaty/downloader/u04;->r:Lcom/shabakaty/downloader/u04;

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/t04;->D(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    return-object p0
.end method

.method public static final I(Lcom/shabakaty/downloader/l04;Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;TT;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/l04;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 1
    invoke-static {v2}, Lcom/shabakaty/downloader/q04;->z([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/shabakaty/downloader/q04;->z([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/q04;->w(Lcom/shabakaty/downloader/l04;)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    return-object p0
.end method

.method public static final J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/t04;->K(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/iq6;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Lcom/shabakaty/downloader/l04;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/l04;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
