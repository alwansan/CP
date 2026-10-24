.class public final Lcom/shabakaty/downloader/xr0$a;
.super Lcom/shabakaty/downloader/ds0;
.source "DeserializedClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final g:Lcom/shabakaty/downloader/ve2;

.field public final h:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic j:Lcom/shabakaty/downloader/xr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0;Lcom/shabakaty/downloader/ve2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ve2;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/ji3;->E:Ljava/util/List;

    const-string v0, "classProto.functionList"

    .line 5
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 7
    iget-object v4, v0, Lcom/shabakaty/downloader/ji3;->F:Ljava/util/List;

    const-string v0, "classProto.propertyList"

    .line 8
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 10
    iget-object v5, v0, Lcom/shabakaty/downloader/ji3;->G:Ljava/util/List;

    const-string v0, "classProto.typeAliasList"

    .line 11
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/ji3;->B:Ljava/util/List;

    const-string v1, "classProto.nestedClassNameList"

    .line 14
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 19
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 20
    invoke-static {p1, v6}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/shabakaty/downloader/xr0$a$a;

    invoke-direct {v6, v1}, Lcom/shabakaty/downloader/xr0$a$a;-><init>(Ljava/util/List;)V

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ds0;-><init>(Lcom/shabakaty/downloader/rr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/rm1;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/xr0$a;->g:Lcom/shabakaty/downloader/ve2;

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 24
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 25
    new-instance p2, Lcom/shabakaty/downloader/xr0$a$b;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/xr0$a$b;-><init>(Lcom/shabakaty/downloader/xr0$a;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$a;->h:Lcom/shabakaty/downloader/d03;

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 29
    new-instance p2, Lcom/shabakaty/downloader/xr0$a$d;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/xr0$a$d;-><init>(Lcom/shabakaty/downloader/xr0$a;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$a;->i:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 1
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
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xr0$a;->t(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ds0;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 1
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
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xr0$a;->t(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ds0;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 1
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

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xr0$a;->h:Lcom/shabakaty/downloader/d03;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xr0$a;->t(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->G:Lcom/shabakaty/downloader/xr0$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0$c;->b:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q20;

    if-nez v0, :cond_1

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ds0;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public h(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/xr0;->G:Lcom/shabakaty/downloader/xr0$c;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p2, Lcom/shabakaty/downloader/xr0$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/hw2;

    const-string v3, "name"

    .line 7
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, p2, Lcom/shabakaty/downloader/xr0$c;->b:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/q20;

    if-nez v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_3

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_3
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public j(Lcom/shabakaty/downloader/hw2;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/t64;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xr0$a;->i:Lcom/shabakaty/downloader/d03;

    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/mz2;->C:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v2, p1, v3}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->n:Lcom/shabakaty/downloader/o4;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    invoke-interface {v1, p1, v2}, Lcom/shabakaty/downloader/o4;->c(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Lcom/shabakaty/downloader/xr0$a;->s(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/List;)V

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/hw2;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xr0$a;->i:Lcom/shabakaty/downloader/d03;

    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/mz2;->C:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v2, p1, v3}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/shabakaty/downloader/xr0$a;->s(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/List;)V

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->y:Lcom/shabakaty/downloader/v20;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v20;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->E:Lcom/shabakaty/downloader/xr0$b;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k1;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/mr2;->f()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public o()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->E:Lcom/shabakaty/downloader/xr0$b;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k1;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/mr2;->a()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/or0;->n:Lcom/shabakaty/downloader/o4;

    .line 12
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/o4;->d(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public p()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->E:Lcom/shabakaty/downloader/xr0$b;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k1;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/mr2;->c()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public r(Lcom/shabakaty/downloader/t64;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->o:Lcom/shabakaty/downloader/oc3;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/oc3;->b(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/t64;)Z

    move-result p1

    return p1
.end method

.method public final s(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/shabakaty/downloader/tq;",
            ">(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "+TD;>;",
            "Ljava/util/List<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->q:Lcom/shabakaty/downloader/ez2;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/ez2;->a()Lcom/shabakaty/downloader/a93;

    move-result-object v0

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 7
    new-instance v5, Lcom/shabakaty/downloader/xr0$a$c;

    invoke-direct {v5, p3}, Lcom/shabakaty/downloader/xr0$a$c;-><init>(Ljava/util/List;)V

    move-object v1, p1

    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/a93;->h(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/z83;)V

    return-void
.end method

.method public t(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->i:Lcom/shabakaty/downloader/nl2;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 5
    invoke-static {v0, p2, v1, p1}, Lcom/shabakaty/downloader/nh3;->F(Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ll2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/hw2;)V

    return-void
.end method
