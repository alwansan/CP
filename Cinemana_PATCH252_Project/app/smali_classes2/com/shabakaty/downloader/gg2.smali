.class public final Lcom/shabakaty/downloader/gg2;
.super Lcom/shabakaty/downloader/kg2;
.source "LazyJavaStaticClassScope.kt"


# instance fields
.field public final n:Lcom/shabakaty/downloader/q62;

.field public final o:Lcom/shabakaty/downloader/uf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/uf2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/kg2;-><init>(Lcom/shabakaty/downloader/bg2;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/gg2;->n:Lcom/shabakaty/downloader/q62;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/xm0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/xm0;->b()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->A0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/md0;->x(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/gg2;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cg2;->a()Ljava/util/Set;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/gg2;->n:Lcom/shabakaty/downloader/q62;

    invoke-interface {p2}, Lcom/shabakaty/downloader/q62;->E()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/shabakaty/downloader/hw2;

    const/4 v0, 0x0

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/tb4;->b:Lcom/shabakaty/downloader/hw2;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/shabakaty/downloader/tb4;->a:Lcom/shabakaty/downloader/hw2;

    aput-object v1, p2, v0

    invoke-static {p2}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->x:Lcom/shabakaty/downloader/sj4;

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 11
    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/sj4;->e(Lcom/shabakaty/downloader/q20;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public j(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Lcom/shabakaty/downloader/hw2;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->x:Lcom/shabakaty/downloader/sj4;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 5
    invoke-interface {v0, v1, p2, p1}, Lcom/shabakaty/downloader/sj4;->d(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V

    return-void
.end method

.method public k()Lcom/shabakaty/downloader/xm0;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p20;

    iget-object v1, p0, Lcom/shabakaty/downloader/gg2;->n:Lcom/shabakaty/downloader/q62;

    sget-object v2, Lcom/shabakaty/downloader/fg2;->r:Lcom/shabakaty/downloader/fg2;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/p20;-><init>(Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/tm1;)V

    return-object v0
.end method

.method public m(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Lcom/shabakaty/downloader/hw2;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->x(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/gg2;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/mz2;->F:Lcom/shabakaty/downloader/mz2;

    invoke-virtual {v0, p2, v1}, Lcom/shabakaty/downloader/cg2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 7
    iget-object v5, v0, Lcom/shabakaty/downloader/y72;->f:Lcom/shabakaty/downloader/y41;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 9
    invoke-interface {v0}, Lcom/shabakaty/downloader/ez2;->a()Lcom/shabakaty/downloader/a93;

    move-result-object v6

    move-object v1, p2

    move-object v3, p1

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/fr0;->e(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/a93;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/gg2;->n:Lcom/shabakaty/downloader/q62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/tb4;->b:Lcom/shabakaty/downloader/hw2;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object p2, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 14
    invoke-static {p2}, Lcom/shabakaty/downloader/tq0;->d(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/t64;

    move-result-object p2

    const-string v0, "createEnumValueOfMethod(ownerDescriptor)"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->a:Lcom/shabakaty/downloader/hw2;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 17
    invoke-static {p2}, Lcom/shabakaty/downloader/tq0;->e(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/t64;

    move-result-object p2

    const-string v0, "createEnumValuesMethod(ownerDescriptor)"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public n(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Lcom/shabakaty/downloader/gg2$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/gg2$a;-><init>(Lcom/shabakaty/downloader/hw2;)V

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/ig2;->a:Lcom/shabakaty/downloader/ig2;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/jg2;

    invoke-direct {v5, v0, v2, v1}, Lcom/shabakaty/downloader/jg2;-><init>(Lcom/shabakaty/downloader/q20;Ljava/util/Set;Lcom/shabakaty/downloader/tm1;)V

    .line 5
    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/nh0;->b(Ljava/util/Collection;Lcom/shabakaty/downloader/nh0$c;Lcom/shabakaty/downloader/nh0$d;)Ljava/lang/Object;

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 10
    iget-object v5, v0, Lcom/shabakaty/downloader/y72;->f:Lcom/shabakaty/downloader/y41;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 12
    invoke-interface {v0}, Lcom/shabakaty/downloader/ez2;->a()Lcom/shabakaty/downloader/a93;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/fr0;->e(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/a93;)Ljava/util/Collection;

    move-result-object p1

    .line 14
    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 15
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 17
    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/yh3;

    .line 18
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/gg2;->v(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/yh3;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 23
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    .line 27
    iget-object v6, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 28
    iget-object v2, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 29
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 30
    iget-object v7, v2, Lcom/shabakaty/downloader/y72;->f:Lcom/shabakaty/downloader/y41;

    .line 31
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 32
    invoke-interface {v2}, Lcom/shabakaty/downloader/ez2;->a()Lcom/shabakaty/downloader/a93;

    move-result-object v8

    move-object v3, p1

    move-object v5, p2

    .line 33
    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/fr0;->e(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/a93;)Ljava/util/Collection;

    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 35
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public o(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/xm0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/xm0;->f()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->A0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/gg2$b;->r:Lcom/shabakaty/downloader/gg2$b;

    .line 5
    invoke-static {p2}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/ig2;->a:Lcom/shabakaty/downloader/ig2;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/jg2;

    invoke-direct {v3, p2, p1, v0}, Lcom/shabakaty/downloader/jg2;-><init>(Lcom/shabakaty/downloader/q20;Ljava/util/Set;Lcom/shabakaty/downloader/tm1;)V

    .line 7
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/nh0;->b(Ljava/util/Collection;Lcom/shabakaty/downloader/nh0$c;Lcom/shabakaty/downloader/nh0$d;)Ljava/lang/Object;

    return-object p1
.end method

.method public q()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gg2;->o:Lcom/shabakaty/downloader/uf2;

    return-object v0
.end method

.method public final v(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/yh3;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tq$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh3;->f()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "this.overriddenDescriptors"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/yh3;

    const-string v2, "it"

    .line 6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/gg2;->v(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/yh3;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->U(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yh3;

    return-object p1
.end method
