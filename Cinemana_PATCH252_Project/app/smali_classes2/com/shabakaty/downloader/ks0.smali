.class public final Lcom/shabakaty/downloader/ks0;
.super Lcom/shabakaty/downloader/e0;
.source "DeserializedTypeParameterDescriptor.kt"


# instance fields
.field public final B:Lcom/shabakaty/downloader/rr0;

.field public final C:Lcom/shabakaty/downloader/aj3;

.field public final D:Lcom/shabakaty/downloader/sr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/aj3;I)V
    .locals 11

    const-string v0, "c"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 4
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v4, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 6
    iget v1, p2, Lcom/shabakaty/downloader/aj3;->v:I

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 8
    iget-object v0, p2, Lcom/shabakaty/downloader/aj3;->x:Lcom/shabakaty/downloader/aj3$c;

    const-string v1, "proto.variance"

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    .line 12
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    :goto_0
    move-object v6, v0

    .line 14
    iget-boolean v7, p2, Lcom/shabakaty/downloader/aj3;->w:Z

    .line 15
    sget-object v9, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    sget-object v10, Lcom/shabakaty/downloader/ph4$a;->a:Lcom/shabakaty/downloader/ph4$a;

    move-object v1, p0

    move v8, p3

    .line 16
    invoke-direct/range {v1 .. v10}, Lcom/shabakaty/downloader/e0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/xz4;ZILcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/ph4;)V

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/ks0;->B:Lcom/shabakaty/downloader/rr0;

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/ks0;->C:Lcom/shabakaty/downloader/aj3;

    .line 19
    new-instance p2, Lcom/shabakaty/downloader/sr0;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 22
    new-instance p3, Lcom/shabakaty/downloader/ks0$a;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/ks0$a;-><init>(Lcom/shabakaty/downloader/ks0;)V

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/sr0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ks0;->D:Lcom/shabakaty/downloader/sr0;

    return-void
.end method


# virtual methods
.method public T0(Lcom/shabakaty/downloader/qe2;)V
    .locals 1

    const-string v0, "type"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There should be no cycles for deserialized type parameters, but found for: "

    .line 3
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U0()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ks0;->C:Lcom/shabakaty/downloader/aj3;

    iget-object v1, p0, Lcom/shabakaty/downloader/ks0;->B:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    const-string v2, "<this>"

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-nez v2, :cond_1

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    const-string v2, "upperBoundIdList"

    .line 7
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    check-cast v4, Ljava/lang/Integer;

    const-string v5, "it"

    .line 11
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->n()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ks0;->B:Lcom/shabakaty/downloader/rr0;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Lcom/shabakaty/downloader/yi3;

    .line 19
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ks0;->D:Lcom/shabakaty/downloader/sr0;

    return-object v0
.end method
