.class public final Lcom/shabakaty/downloader/lg2;
.super Lcom/shabakaty/downloader/e0;
.source "LazyJavaTypeParameterDescriptor.kt"


# instance fields
.field public final B:Lcom/shabakaty/downloader/bg2;

.field public final C:Lcom/shabakaty/downloader/m82;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/m82;ILcom/shabakaty/downloader/qm0;)V
    .locals 11

    const-string v0, "containingDeclaration"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/tf2;

    const/4 v0, 0x0

    .line 4
    invoke-direct {v4, p1, p2, v0}, Lcom/shabakaty/downloader/tf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;Z)V

    .line 5
    invoke-interface {p2}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 6
    sget-object v6, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    const/4 v7, 0x0

    .line 7
    sget-object v9, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    iget-object v10, v0, Lcom/shabakaty/downloader/y72;->m:Lcom/shabakaty/downloader/ph4;

    move-object v1, p0

    move-object v3, p4

    move v8, p3

    .line 10
    invoke-direct/range {v1 .. v10}, Lcom/shabakaty/downloader/e0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/xz4;ZILcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/ph4;)V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/lg2;->B:Lcom/shabakaty/downloader/bg2;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/lg2;->C:Lcom/shabakaty/downloader/m82;

    return-void
.end method


# virtual methods
.method public S0(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string v1, "bounds"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v12, v11, Lcom/shabakaty/downloader/lg2;->B:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v2, v12, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v13, v2, Lcom/shabakaty/downloader/y72;->r:Lcom/shabakaty/downloader/d64;

    .line 4
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "typeParameter"

    .line 5
    invoke-static {v11, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v12, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v14, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/qe2;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/i64;->r:Lcom/shabakaty/downloader/i64;

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/hu4;->b(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    new-instance v10, Lcom/shabakaty/downloader/d64$b;

    .line 11
    sget-object v4, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v5, 0x0

    .line 12
    sget-object v7, Lcom/shabakaty/downloader/u8;->w:Lcom/shabakaty/downloader/u8;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v16, 0x80

    move-object v0, v10

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v6, v12

    move-object v11, v10

    move/from16 v10, v16

    .line 13
    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/d64$b;-><init>(Lcom/shabakaty/downloader/d64;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/qe2;Ljava/util/Collection;ZLcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/u8;ZZI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 14
    invoke-static {v11, v0, v1, v2}, Lcom/shabakaty/downloader/d64$b;->d(Lcom/shabakaty/downloader/d64$b;Lcom/shabakaty/downloader/zs4;ZI)Lcom/shabakaty/downloader/d64$a;

    move-result-object v0

    .line 15
    iget-object v3, v0, Lcom/shabakaty/downloader/d64$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 16
    :goto_1
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p0

    goto :goto_0

    :cond_1
    return-object v14
.end method

.method public T0(Lcom/shabakaty/downloader/qe2;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public U0()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lg2;->C:Lcom/shabakaty/downloader/m82;

    invoke-interface {v0}, Lcom/shabakaty/downloader/m82;->getUpperBounds()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/lg2;->B:Lcom/shabakaty/downloader/bg2;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    const-string v1, "c.module.builtIns.anyType"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/lg2;->B:Lcom/shabakaty/downloader/bg2;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 10
    invoke-interface {v1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    const-string v2, "c.module.builtIns.nullableAnyType"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Lcom/shabakaty/downloader/y62;

    .line 16
    iget-object v3, p0, Lcom/shabakaty/downloader/lg2;->B:Lcom/shabakaty/downloader/bg2;

    .line 17
    iget-object v3, v3, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 18
    sget-object v4, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, p0, v6}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0
.end method
