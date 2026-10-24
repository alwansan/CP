.class public Lcom/shabakaty/downloader/tz4;
.super Lcom/shabakaty/downloader/vz4;
.source "ValueParameterDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/sz4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tz4$a;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/qe2;

.field public final B:Lcom/shabakaty/downloader/sz4;

.field public final w:I

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V
    .locals 7

    move-object v6, p0

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p4

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p5

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    move-object v4, p6

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v5, p11

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/vz4;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    move v0, p3

    .line 2
    iput v0, v6, Lcom/shabakaty/downloader/tz4;->w:I

    move v0, p7

    .line 3
    iput-boolean v0, v6, Lcom/shabakaty/downloader/tz4;->x:Z

    move v0, p8

    .line 4
    iput-boolean v0, v6, Lcom/shabakaty/downloader/tz4;->y:Z

    move/from16 v0, p9

    .line 5
    iput-boolean v0, v6, Lcom/shabakaty/downloader/tz4;->z:Z

    move-object/from16 v0, p10

    .line 6
    iput-object v0, v6, Lcom/shabakaty/downloader/tz4;->A:Lcom/shabakaty/downloader/qe2;

    if-nez p2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 7
    :goto_0
    iput-object v0, v6, Lcom/shabakaty/downloader/tz4;->B:Lcom/shabakaty/downloader/sz4;

    return-void
.end method


# virtual methods
.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tz4;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->c()Lcom/shabakaty/downloader/rq;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tq$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P0(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/hw2;I)Lcom/shabakaty/downloader/sz4;
    .locals 14

    move-object v0, p0

    .line 1
    new-instance v13, Lcom/shabakaty/downloader/tz4;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    const-string v1, "annotations"

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    const-string v1, "type"

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->E0()Z

    move-result v8

    .line 3
    iget-boolean v9, v0, Lcom/shabakaty/downloader/tz4;->y:Z

    .line 4
    iget-boolean v10, v0, Lcom/shabakaty/downloader/tz4;->z:Z

    .line 5
    iget-object v11, v0, Lcom/shabakaty/downloader/tz4;->A:Lcom/shabakaty/downloader/qe2;

    .line 6
    sget-object v12, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    const/4 v3, 0x0

    move-object v1, v13

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p2

    .line 7
    invoke-direct/range {v1 .. v12}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    return-object v13
.end method

.method public bridge synthetic S0()Lcom/shabakaty/downloader/uz4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->a()Lcom/shabakaty/downloader/sz4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->a()Lcom/shabakaty/downloader/sz4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/rq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->a()Lcom/shabakaty/downloader/sz4;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/shabakaty/downloader/sz4;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/tz4;->B:Lcom/shabakaty/downloader/sz4;

    if-ne v0, p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/sz4;->a()Lcom/shabakaty/downloader/sz4;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->c()Lcom/shabakaty/downloader/rq;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/rq;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/tm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rq;

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 1

    const-string v0, "substitutor"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic e0()Lcom/shabakaty/downloader/qb0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->c()Lcom/shabakaty/downloader/rq;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->f()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "containingDeclaration.overriddenDescriptors"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/shabakaty/downloader/rq;

    .line 5
    invoke-interface {v2}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v2

    .line 6
    iget v3, p0, Lcom/shabakaty/downloader/tz4;->w:I

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tz4;->z:Z

    return v0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lr0;->f:Lcom/shabakaty/downloader/mr0;

    const-string v1, "LOCAL"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tz4;->w:I

    return v0
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->m(Lcom/shabakaty/downloader/sz4;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tz4;->y:Z

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s0()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tz4;->A:Lcom/shabakaty/downloader/qe2;

    return-object v0
.end method

.method public bridge synthetic w0()Lcom/shabakaty/downloader/vm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tz4;->a()Lcom/shabakaty/downloader/sz4;

    move-result-object v0

    return-object v0
.end method
