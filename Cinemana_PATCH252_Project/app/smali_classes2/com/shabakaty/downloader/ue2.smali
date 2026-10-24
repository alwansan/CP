.class public abstract Lcom/shabakaty/downloader/ue2;
.super Lcom/shabakaty/downloader/p1;
.source "KotlinTypePreparator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ue2$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/p1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ue2;->b(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qw4;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/qe2;

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/qe2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/b74;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ue2;->c(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_4

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/fe1;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 7
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/ue2;->c(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 9
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ue2;->c(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 10
    iget-object v3, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    if-ne v1, v3, :cond_2

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    .line 13
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/ue2$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ue2$b;-><init>(Ljava/lang/Object;)V

    const-string v2, "<this>"

    .line 14
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "origin"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "transform"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    :goto_2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/ew;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/ew;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v5

    :goto_1
    move-object v9, v5

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/ew;->b:Lcom/shabakaty/downloader/zy2;

    if-nez v1, :cond_4

    .line 7
    iget-object v11, v0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ew;->a()Ljava/util/Collection;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcom/shabakaty/downloader/qe2;

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/zy2;

    const/4 v13, 0x0

    const-string v3, "projection"

    .line 13
    invoke-static {v11, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v12, Lcom/shabakaty/downloader/yy2;

    invoke-direct {v12, v2}, Lcom/shabakaty/downloader/yy2;-><init>(Ljava/util/List;)V

    const/4 v14, 0x0

    const/16 v15, 0x8

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/shabakaty/downloader/zy2;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/kt4;I)V

    .line 15
    iput-object v1, v0, Lcom/shabakaty/downloader/ew;->b:Lcom/shabakaty/downloader/zy2;

    .line 16
    :cond_4
    new-instance v1, Lcom/shabakaty/downloader/xy2;

    .line 17
    sget-object v7, Lcom/shabakaty/downloader/yv;->r:Lcom/shabakaty/downloader/yv;

    .line 18
    iget-object v8, v0, Lcom/shabakaty/downloader/ew;->b:Lcom/shabakaty/downloader/zy2;

    .line 19
    invoke-static {v8}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x20

    move-object v6, v1

    .line 21
    invoke-direct/range {v6 .. v13}, Lcom/shabakaty/downloader/xy2;-><init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZI)V

    return-object v1

    .line 22
    :cond_5
    instance-of v1, v0, Lcom/shabakaty/downloader/u22;

    if-eqz v1, :cond_7

    .line 23
    check-cast v0, Lcom/shabakaty/downloader/u22;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 26
    check-cast v3, Lcom/shabakaty/downloader/qe2;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/eu4;->k(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    const-string v4, "makeNullableAsSpecified(it, type.isMarkedNullable)"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/shabakaty/downloader/g32;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/g32;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    .line 29
    sget-object v3, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v4

    .line 31
    invoke-static {v0, v1, v3, v2, v4}, Lcom/shabakaty/downloader/se2;->h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0

    .line 32
    :cond_7
    instance-of v1, v0, Lcom/shabakaty/downloader/g32;

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 33
    check-cast v0, Lcom/shabakaty/downloader/g32;

    .line 34
    iget-object v1, v0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 37
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 38
    invoke-static {v2}, Lcom/shabakaty/downloader/hu4;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    .line 39
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    if-nez v2, :cond_9

    goto :goto_6

    .line 40
    :cond_9
    iget-object v1, v0, Lcom/shabakaty/downloader/g32;->a:Lcom/shabakaty/downloader/qe2;

    if-nez v1, :cond_a

    goto :goto_5

    .line 41
    :cond_a
    invoke-static {v1}, Lcom/shabakaty/downloader/hu4;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    .line 42
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->hashCode()I

    .line 45
    new-instance v2, Lcom/shabakaty/downloader/g32;

    .line 46
    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/g32;-><init>(Ljava/util/Collection;)V

    .line 47
    iput-object v5, v2, Lcom/shabakaty/downloader/g32;->a:Lcom/shabakaty/downloader/qe2;

    move-object v5, v2

    :goto_6
    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move-object v0, v5

    .line 48
    :goto_7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/g32;->g()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0

    :cond_c
    return-object p1
.end method
