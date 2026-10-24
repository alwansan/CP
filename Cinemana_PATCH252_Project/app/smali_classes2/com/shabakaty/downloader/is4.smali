.class public final Lcom/shabakaty/downloader/is4;
.super Ljava/lang/Object;
.source "TypeAliasExpander.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/ks4;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/is4;

    sget-object v1, Lcom/shabakaty/downloader/ks4$a;->a:Lcom/shabakaty/downloader/ks4$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/is4;-><init>(Lcom/shabakaty/downloader/ks4;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ks4;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/is4;->a:Lcom/shabakaty/downloader/ks4;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/is4;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

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
    check-cast v1, Lcom/shabakaty/downloader/r8;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/r8;

    .line 6
    invoke-interface {p2}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/is4;->a:Lcom/shabakaty/downloader/ks4;

    invoke-interface {v1, p2}, Lcom/shabakaty/downloader/ks4;->d(Lcom/shabakaty/downloader/r8;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/is4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/nh3;->f(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/d9;ZIZ)Lcom/shabakaty/downloader/b74;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st4;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/js4;->b:Lcom/shabakaty/downloader/hs4;

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/hs4;->p0()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1, p4}, Lcom/shabakaty/downloader/is4;->e(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object p4

    .line 7
    invoke-interface {p4}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v1, "expandedProjection.type"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/rm3;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-interface {p4}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    .line 10
    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p4

    invoke-virtual {p0, p4, p2}, Lcom/shabakaty/downloader/is4;->a(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)V

    .line 11
    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/is4;->b(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p4

    invoke-static {p4, p3}, Lcom/shabakaty/downloader/eu4;->m(Lcom/shabakaty/downloader/b74;Z)Lcom/shabakaty/downloader/b74;

    move-result-object p4

    const-string v0, "expandedType.combineAnno\u2026fNeeded(it, isNullable) }"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 12
    iget-object p5, p1, Lcom/shabakaty/downloader/js4;->b:Lcom/shabakaty/downloader/hs4;

    .line 13
    invoke-interface {p5}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p5

    const-string v0, "descriptor.typeConstructor"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/js4;->c:Ljava/util/List;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    .line 16
    invoke-static {p2, p5, p1, p3, v0}, Lcom/shabakaty/downloader/se2;->h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    .line 17
    invoke-static {p4, p1}, Lcom/shabakaty/downloader/nh3;->L(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method public final e(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    move/from16 v8, p4

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    iget-object v2, v7, Lcom/shabakaty/downloader/js4;->b:Lcom/shabakaty/downloader/hs4;

    const/16 v3, 0x64

    if-gt v8, v3, :cond_19

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lcom/shabakaty/downloader/eu4;->n(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    const-string v3, "underlyingProjection.type"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    const-string v4, "constructor"

    .line 5
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    .line 7
    instance-of v4, v3, Lcom/shabakaty/downloader/kt4;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v7, Lcom/shabakaty/downloader/js4;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qt4;

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_f

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/bp;->o(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0}, Lcom/shabakaty/downloader/rm3;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v9

    .line 12
    invoke-static {v9}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "<this>"

    .line 13
    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/gu4;->r:Lcom/shabakaty/downloader/gu4;

    invoke-static {v9, v2}, Lcom/shabakaty/downloader/hu4;->b(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v9}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    .line 17
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    invoke-virtual {v9}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 18
    instance-of v4, v3, Lcom/shabakaty/downloader/kt4;

    if-eqz v4, :cond_5

    :cond_4
    :goto_1
    move-object v0, p1

    goto/16 :goto_6

    .line 19
    :cond_5
    instance-of v4, v3, Lcom/shabakaty/downloader/hs4;

    const/4 v10, 0x0

    if-eqz v4, :cond_b

    .line 20
    check-cast v3, Lcom/shabakaty/downloader/hs4;

    invoke-virtual {v7, v3}, Lcom/shabakaty/downloader/js4;->a(Lcom/shabakaty/downloader/hs4;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, v6, Lcom/shabakaty/downloader/is4;->a:Lcom/shabakaty/downloader/ks4;

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/ks4;->c(Lcom/shabakaty/downloader/hs4;)V

    .line 22
    new-instance v0, Lcom/shabakaty/downloader/st4;

    .line 23
    invoke-interface {v3}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    const-string v3, "Recursive type alias: "

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 24
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    goto/16 :goto_6

    .line 25
    :cond_6
    invoke-virtual {v9}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-ltz v10, :cond_7

    .line 28
    check-cast v11, Lcom/shabakaty/downloader/qt4;

    .line 29
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/kt4;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v11, v7, v10, v13}, Lcom/shabakaty/downloader/is4;->e(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_2

    .line 30
    :cond_7
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v5

    :cond_8
    const-string v0, "typeAliasDescriptor"

    .line 31
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {v3}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    const-string v2, "typeAliasDescriptor.typeConstructor.parameters"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Lcom/shabakaty/downloader/kt4;

    .line 36
    invoke-interface {v1}, Lcom/shabakaty/downloader/kt4;->a()Lcom/shabakaty/downloader/kt4;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_9
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/m50;->D0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/vm2;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v5

    .line 38
    new-instance v10, Lcom/shabakaty/downloader/js4;

    const/4 v11, 0x0

    move-object v0, v10

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/js4;-><init>(Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/hs4;Ljava/util/List;Ljava/util/Map;Lcom/shabakaty/downloader/nn0;)V

    .line 39
    invoke-interface {v9}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v2

    .line 40
    invoke-virtual {v9}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v3

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/is4;->d(Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/d9;ZIZ)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v9, v7, v8}, Lcom/shabakaty/downloader/is4;->f(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/js4;I)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 43
    invoke-static {v0}, Lcom/shabakaty/downloader/bp;->o(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/nh3;->L(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 44
    :goto_4
    new-instance v1, Lcom/shabakaty/downloader/st4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    move-object v0, v1

    goto/16 :goto_6

    .line 45
    :cond_b
    invoke-virtual {p0, v9, v7, v8}, Lcom/shabakaty/downloader/is4;->f(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/js4;I)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/shabakaty/downloader/wt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wt4;

    move-result-object v2

    .line 47
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v10, 0x1

    if-ltz v10, :cond_d

    check-cast v4, Lcom/shabakaty/downloader/qt4;

    .line 49
    invoke-interface {v4}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-interface {v4}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    const-string v11, "substitutedArgument.type"

    invoke-static {v8, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v12, Lcom/shabakaty/downloader/fu4;->r:Lcom/shabakaty/downloader/fu4;

    invoke-static {v8, v12}, Lcom/shabakaty/downloader/hu4;->b(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 52
    invoke-virtual {v9}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/qt4;

    .line 53
    invoke-virtual {v9}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v12

    invoke-interface {v12}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/kt4;

    .line 54
    iget-boolean v12, v6, Lcom/shabakaty/downloader/is4;->b:Z

    if-eqz v12, :cond_c

    .line 55
    iget-object v12, v6, Lcom/shabakaty/downloader/is4;->a:Lcom/shabakaty/downloader/ks4;

    .line 56
    invoke-interface {v8}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    const-string v13, "unsubstitutedArgument.type"

    invoke-static {v8, v13}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {v4}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "typeParameter"

    .line 58
    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {v12, v2, v8, v4, v10}, Lcom/shabakaty/downloader/ks4;->a(Lcom/shabakaty/downloader/wt4;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/kt4;)V

    :cond_c
    move v10, v7

    goto :goto_5

    .line 60
    :cond_d
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v5

    .line 61
    :cond_e
    new-instance v0, Lcom/shabakaty/downloader/st4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    :goto_6
    return-object v0

    .line 62
    :cond_f
    invoke-interface {v3}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static/range {p3 .. p3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lcom/shabakaty/downloader/eu4;->n(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    return-object v0

    .line 63
    :cond_10
    invoke-interface {v3}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v4

    .line 64
    invoke-interface {v3}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v3

    const-string v5, "argument.projectionKind"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    const-string v8, "underlyingProjection.projectionKind"

    invoke-static {v5, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v5, v3, :cond_11

    goto :goto_7

    :cond_11
    if-ne v5, v1, :cond_12

    goto :goto_7

    :cond_12
    if-ne v3, v1, :cond_13

    move-object v3, v5

    goto :goto_7

    .line 66
    :cond_13
    iget-object v5, v6, Lcom/shabakaty/downloader/is4;->a:Lcom/shabakaty/downloader/ks4;

    .line 67
    iget-object v8, v7, Lcom/shabakaty/downloader/js4;->b:Lcom/shabakaty/downloader/hs4;

    .line 68
    invoke-interface {v5, v8, v0, v4}, Lcom/shabakaty/downloader/ks4;->b(Lcom/shabakaty/downloader/hs4;Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qe2;)V

    :goto_7
    if-nez v0, :cond_14

    move-object v5, v1

    goto :goto_8

    .line 69
    :cond_14
    invoke-interface/range {p3 .. p3}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    :goto_8
    const-string v8, "typeParameterDescriptor?\u2026nce ?: Variance.INVARIANT"

    invoke-static {v5, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v5, v3, :cond_15

    goto :goto_9

    :cond_15
    if-ne v5, v1, :cond_16

    goto :goto_9

    :cond_16
    if-ne v3, v1, :cond_17

    goto :goto_a

    .line 70
    :cond_17
    iget-object v1, v6, Lcom/shabakaty/downloader/is4;->a:Lcom/shabakaty/downloader/ks4;

    .line 71
    iget-object v5, v7, Lcom/shabakaty/downloader/js4;->b:Lcom/shabakaty/downloader/hs4;

    .line 72
    invoke-interface {v1, v5, v0, v4}, Lcom/shabakaty/downloader/ks4;->b(Lcom/shabakaty/downloader/hs4;Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qe2;)V

    :goto_9
    move-object v1, v3

    .line 73
    :goto_a
    invoke-interface {v2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-interface {v4}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/shabakaty/downloader/is4;->a(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)V

    .line 74
    instance-of v0, v4, Lcom/shabakaty/downloader/t11;

    if-eqz v0, :cond_18

    .line 75
    check-cast v4, Lcom/shabakaty/downloader/t11;

    invoke-interface {v2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v4, v0}, Lcom/shabakaty/downloader/is4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object v0

    const-string v2, "newAnnotations"

    .line 77
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v2, Lcom/shabakaty/downloader/t11;

    .line 79
    iget-object v3, v4, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 80
    invoke-static {v3}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/shabakaty/downloader/t11;-><init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/d9;)V

    goto :goto_b

    .line 81
    :cond_18
    invoke-static {v4}, Lcom/shabakaty/downloader/rm3;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 82
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/eu4;->m(Lcom/shabakaty/downloader/b74;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    const-string v3, "makeNullableIfNeeded(thi\u2026romType.isMarkedNullable)"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {v2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/shabakaty/downloader/is4;->b(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 84
    :goto_b
    new-instance v0, Lcom/shabakaty/downloader/st4;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    return-object v0

    .line 85
    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v2, "Too deep recursion while expanding type alias "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final f(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/js4;I)Lcom/shabakaty/downloader/b74;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    .line 5
    check-cast v4, Lcom/shabakaty/downloader/qt4;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kt4;

    add-int/lit8 v5, p3, 0x1

    .line 7
    invoke-virtual {p0, v4, p2, v3, v5}, Lcom/shabakaty/downloader/is4;->e(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v5, Lcom/shabakaty/downloader/st4;

    .line 10
    invoke-interface {v3}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v7

    .line 11
    invoke-interface {v3}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    invoke-interface {v4}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/eu4;->l(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    .line 12
    invoke-direct {v5, v7, v3}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    move-object v3, v5

    .line 13
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v5

    :cond_2
    const/4 p2, 0x2

    .line 15
    invoke-static {p1, v2, v5, p2}, Lcom/shabakaty/downloader/rm3;->q(Lcom/shabakaty/downloader/b74;Ljava/util/List;Lcom/shabakaty/downloader/d9;I)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method
