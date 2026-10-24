.class public final Lcom/shabakaty/downloader/bt4$a;
.super Ljava/lang/Object;
.source "TypeIntersectionScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;Ljava/util/Collection;)Lcom/shabakaty/downloader/mr2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Lcom/shabakaty/downloader/mr2;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/qe2;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->s(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/e94;

    move-result-object p1

    const-string v0, "debugName"

    .line 5
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/jy;

    new-array v3, v3, [Lcom/shabakaty/downloader/mr2;

    .line 8
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Lcom/shabakaty/downloader/mr2;

    .line 9
    invoke-direct {v0, p0, v3, v1}, Lcom/shabakaty/downloader/jy;-><init>(Ljava/lang/String;[Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/nn0;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mr2;

    goto :goto_1

    .line 11
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    .line 12
    :goto_1
    iget p1, p1, Lcom/shabakaty/downloader/e94;->r:I

    if-gt p1, v2, :cond_3

    return-object v0

    .line 13
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/bt4;

    invoke-direct {p1, p0, v0, v1}, Lcom/shabakaty/downloader/bt4;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/nn0;)V

    return-object p1
.end method
