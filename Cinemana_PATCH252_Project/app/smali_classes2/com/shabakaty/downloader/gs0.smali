.class public Lcom/shabakaty/downloader/gs0;
.super Lcom/shabakaty/downloader/ds0;
.source "DeserializedPackageMemberScope.kt"


# instance fields
.field public final g:Lcom/shabakaty/downloader/k93;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/ti3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/or0;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/k93;",
            "Lcom/shabakaty/downloader/ti3;",
            "Lcom/shabakaty/downloader/jw2;",
            "Lcom/shabakaty/downloader/gm;",
            "Lcom/shabakaty/downloader/as0;",
            "Lcom/shabakaty/downloader/or0;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;>;)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p7

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "debugName"

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classNames"

    move-object/from16 v5, p8

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v11, Lcom/shabakaty/downloader/bu4;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    const-string v4, "proto.typeTable"

    .line 3
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v1}, Lcom/shabakaty/downloader/bu4;-><init>(Lcom/shabakaty/downloader/bj3;)V

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    .line 5
    iget-object v4, v0, Lcom/shabakaty/downloader/ti3;->y:Lcom/shabakaty/downloader/ej3;

    const-string v8, "proto.versionRequirementTable"

    .line 6
    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/f05$a;->a(Lcom/shabakaty/downloader/ej3;)Lcom/shabakaty/downloader/f05;

    move-result-object v12

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 7
    invoke-virtual/range {v8 .. v14}, Lcom/shabakaty/downloader/or0;->a(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;)Lcom/shabakaty/downloader/rr0;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    const-string v3, "proto.functionList"

    .line 9
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, v0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    const-string v4, "proto.propertyList"

    .line 11
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v4, v0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    const-string v0, "proto.typeAliasList"

    .line 13
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ds0;-><init>(Lcom/shabakaty/downloader/rr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/rm1;)V

    move-object/from16 v0, p1

    .line 15
    iput-object v0, v6, Lcom/shabakaty/downloader/gs0;->g:Lcom/shabakaty/downloader/k93;

    .line 16
    iput-object v7, v6, Lcom/shabakaty/downloader/gs0;->h:Ljava/lang/String;

    .line 17
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    iput-object v0, v6, Lcom/shabakaty/downloader/gs0;->i:Lcom/shabakaty/downloader/fi1;

    return-void
.end method


# virtual methods
.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/mz2;->D:Lcom/shabakaty/downloader/mz2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/ds0;->i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/or0;->k:Ljava/lang/Iterable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/s20;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/gs0;->i:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/s20;->a(Lcom/shabakaty/downloader/fi1;)Ljava/util/Collection;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->i:Lcom/shabakaty/downloader/nl2;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/gs0;->g:Lcom/shabakaty/downloader/k93;

    invoke-static {v0, p2, v1, p1}, Lcom/shabakaty/downloader/nh3;->G(Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ll2;Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/hw2;)V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ds0;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
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

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v20;

    iget-object v1, p0, Lcom/shabakaty/downloader/gs0;->i:Lcom/shabakaty/downloader/fi1;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    return-object v0
.end method

.method public n()Ljava/util/Set;
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
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object v0
.end method

.method public o()Ljava/util/Set;
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
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object v0
.end method

.method public p()Ljava/util/Set;
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
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object v0
.end method

.method public q(Lcom/shabakaty/downloader/hw2;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ds0;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->k:Ljava/lang/Iterable;

    .line 5
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/s20;

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/gs0;->i:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v3, v4, p1}, Lcom/shabakaty/downloader/s20;->c(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gs0;->h:Ljava/lang/String;

    return-object v0
.end method
