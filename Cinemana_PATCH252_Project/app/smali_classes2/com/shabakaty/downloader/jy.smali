.class public final Lcom/shabakaty/downloader/jy;
.super Ljava/lang/Object;
.source "ChainedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/mr2;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Lcom/shabakaty/downloader/mr2;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jy;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    return-void
.end method

.method public static final h(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/shabakaty/downloader/mr2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/shabakaty/downloader/mr2;",
            ">;)",
            "Lcom/shabakaty/downloader/mr2;"
        }
    .end annotation

    const-string v0, "debugName"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e94;

    invoke-direct {v0}, Lcom/shabakaty/downloader/e94;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mr2;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v2, v1, Lcom/shabakaty/downloader/jy;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/shabakaty/downloader/jy;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    const-string v2, "elements"

    .line 6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/hd;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/e94;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/jy;->i(Ljava/lang/String;Ljava/util/List;)Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/lang/String;Ljava/util/List;)Lcom/shabakaty/downloader/mr2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/mr2;",
            ">;)",
            "Lcom/shabakaty/downloader/mr2;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/e94;

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/e94;->r:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/jy;

    new-array v1, v2, [Lcom/shabakaty/downloader/mr2;

    .line 4
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/e94;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/shabakaty/downloader/mr2;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/jy;-><init>(Ljava/lang/String;[Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/nn0;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/e94;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/mr2;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-interface {v4}, Lcom/shabakaty/downloader/mr2;->a()Ljava/util/Set;

    move-result-object v4

    .line 4
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    .line 3
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/z02;->c(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_1

    .line 6
    :cond_1
    aget-object v0, v0, v2

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public c()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-interface {v4}, Lcom/shabakaty/downloader/mr2;->c()Ljava/util/Set;

    move-result-object v4

    .line 4
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    .line 3
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/z02;->c(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_1

    .line 6
    :cond_1
    aget-object v0, v0, v2

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    .line 3
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/ls3;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/z02;->c(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_1

    .line 6
    :cond_1
    aget-object v0, v0, v2

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ls3;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    invoke-static {v0}, Lcom/shabakaty/downloader/id;->N([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/bp;->k(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->c:[Lcom/shabakaty/downloader/mr2;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-interface {v4, p1, p2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    instance-of v5, v4, Lcom/shabakaty/downloader/h30;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/shabakaty/downloader/h30;

    invoke-interface {v5}, Lcom/shabakaty/downloader/ir2;->S()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_1
    move-object v2, v4

    :cond_2
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jy;->b:Ljava/lang/String;

    return-object v0
.end method
