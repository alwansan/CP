.class public final Lcom/shabakaty/downloader/wf2;
.super Lcom/shabakaty/downloader/cg2;
.source "LazyJavaClassMemberScope.kt"


# instance fields
.field public final n:Lcom/shabakaty/downloader/q20;

.field public final o:Lcom/shabakaty/downloader/q62;

.field public final p:Z

.field public final q:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/l20;",
            ">;>;"
        }
    .end annotation
.end field

.field public final r:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/f72;",
            ">;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/r20;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q62;ZLcom/shabakaty/downloader/wf2;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p5}, Lcom/shabakaty/downloader/cg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/cg2;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    .line 4
    iput-boolean p4, p0, Lcom/shabakaty/downloader/wf2;->p:Z

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/wf2$e;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/wf2$e;-><init>(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/bg2;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wf2;->q:Lcom/shabakaty/downloader/d03;

    .line 8
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 10
    new-instance p3, Lcom/shabakaty/downloader/wf2$h;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/wf2$h;-><init>(Lcom/shabakaty/downloader/wf2;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wf2;->r:Lcom/shabakaty/downloader/d03;

    .line 11
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 12
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 13
    new-instance p3, Lcom/shabakaty/downloader/wf2$f;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/wf2$f;-><init>(Lcom/shabakaty/downloader/wf2;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wf2;->s:Lcom/shabakaty/downloader/d03;

    .line 14
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 15
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 16
    new-instance p3, Lcom/shabakaty/downloader/wf2$i;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/wf2$i;-><init>(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/bg2;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/wf2;->t:Lcom/shabakaty/downloader/rr2;

    return-void
.end method

.method public static final v(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xm0;->c(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;

    move-result-object p1

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

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/l72;

    .line 6
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/cg2;->t(Lcom/shabakaty/downloader/l72;)Lcom/shabakaty/downloader/m72;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final w(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wf2;->L(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/t64;

    const-string v2, "<this>"

    .line 4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/to;->a(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    if-nez v3, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lcom/shabakaty/downloader/tm1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/yh3;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yh3;

    .line 2
    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/wf2;->E(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/wf2;->I(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v3}, Lcom/shabakaty/downloader/uz4;->r0()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5
    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/wf2;->J(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    if-nez v6, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-interface {v6}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    invoke-interface {v4}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    .line 7
    :goto_1
    new-instance v15, Lcom/shabakaty/downloader/h72;

    .line 8
    iget-object v7, v0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 9
    invoke-direct {v15, v7, v4, v6, v3}, Lcom/shabakaty/downloader/h72;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/yh3;)V

    .line 10
    invoke-interface {v4}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v8, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/wf2;->p()Lcom/shabakaty/downloader/ao3;

    move-result-object v9

    invoke-virtual {v15, v7, v8, v9, v5}, Lcom/shabakaty/downloader/zh3;->Y0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;)V

    .line 11
    invoke-interface {v4}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 12
    invoke-interface {v4}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v12

    move-object v7, v15

    .line 13
    invoke-static/range {v7 .. v12}, Lcom/shabakaty/downloader/tq0;->g(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;ZZZLcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/bi3;

    move-result-object v14

    .line 14
    iput-object v4, v14, Lcom/shabakaty/downloader/wh3;->C:Lcom/shabakaty/downloader/xn1;

    .line 15
    invoke-virtual {v15}, Lcom/shabakaty/downloader/vz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/shabakaty/downloader/bi3;->V0(Lcom/shabakaty/downloader/qe2;)V

    if-eqz v6, :cond_5

    .line 16
    invoke-interface {v6}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v4

    const-string v7, "setterMethod.valueParameters"

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/sz4;

    if-eqz v4, :cond_4

    .line 17
    invoke-interface {v6}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v8

    invoke-interface {v4}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 18
    invoke-interface {v6}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v13

    invoke-interface {v6}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v4

    move-object v7, v15

    move-object v5, v14

    move-object v14, v4

    .line 19
    invoke-static/range {v7 .. v14}, Lcom/shabakaty/downloader/tq0;->h(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;ZZZLcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/gi3;

    move-result-object v4

    .line 20
    iput-object v6, v4, Lcom/shabakaty/downloader/wh3;->C:Lcom/shabakaty/downloader/xn1;

    goto :goto_2

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No parameter found for "

    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_5
    move-object v5, v14

    const/4 v4, 0x0

    .line 22
    :goto_2
    iput-object v5, v15, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    .line 23
    iput-object v4, v15, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    const/4 v4, 0x0

    .line 24
    iput-object v4, v15, Lcom/shabakaty/downloader/zh3;->P:Lcom/shabakaty/downloader/na1;

    .line 25
    iput-object v4, v15, Lcom/shabakaty/downloader/zh3;->Q:Lcom/shabakaty/downloader/na1;

    move-object v5, v15

    :goto_3
    move-object/from16 v4, p2

    if-eqz v5, :cond_0

    .line 26
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_6

    goto :goto_4

    .line 27
    :cond_6
    move-object/from16 v1, p3

    check-cast v1, Lcom/shabakaty/downloader/f94;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/f94;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method public final B()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wf2;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/ez2;->b()Lcom/shabakaty/downloader/ve2;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ve2;->g(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final C(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/rq;Ljava/util/Collection;)Lcom/shabakaty/downloader/t64;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/t64;",
            "Lcom/shabakaty/downloader/rq;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;)",
            "Lcom/shabakaty/downloader/t64;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/t64;

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/shabakaty/downloader/xn1;->n0()Lcom/shabakaty/downloader/xn1;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/wf2;->F(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    invoke-interface {p1}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1$a;->n()Lcom/shabakaty/downloader/xn1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast p1, Lcom/shabakaty/downloader/t64;

    :goto_2
    return-object p1
.end method

.method public final D(Lcom/shabakaty/downloader/t64;)Lcom/shabakaty/downloader/t64;
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    const-string v1, "valueParameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz4;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    goto :goto_3

    .line 2
    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    move-object v3, v2

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/gi1;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_4

    goto :goto_0

    .line 3
    :cond_4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    :goto_2
    sget-object v4, Lcom/shabakaty/downloader/tb4;->d:Lcom/shabakaty/downloader/fi1;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_3
    if-nez v0, :cond_5

    return-object v2

    .line 4
    :cond_5
    invoke-interface {p1}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/m50;->W(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/xn1$a;->a(Ljava/util/List;)Lcom/shabakaty/downloader/xn1$a;

    move-result-object p1

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/xn1$a;->c(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/xn1$a;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t64;

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/u64;

    if-nez v0, :cond_6

    goto :goto_4

    .line 9
    :cond_6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/yn1;->L:Z

    :goto_4
    return-object p1
.end method

.method public final E(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yh3;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/bp;->p(Lcom/shabakaty/downloader/yh3;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wf2;->I(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wf2;->J(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;

    move-result-object p2

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/uz4;->r0()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p2}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object p1

    invoke-interface {v0}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object p2

    if-ne p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final F(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/a93;->d:Lcom/shabakaty/downloader/a93;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/shabakaty/downloader/a93;->n(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Z)Lcom/shabakaty/downloader/a93$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a93$c;->c()Lcom/shabakaty/downloader/a93$c$a;

    move-result-object v0

    const-string v2, "DEFAULT.isOverridableByW\u2026iptor, this, true).result"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/a93$c$a;->r:Lcom/shabakaty/downloader/a93$c$a;

    if-ne v0, v2, :cond_0

    .line 3
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/i72;->c(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final G(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/xn1;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/so;->m:Lcom/shabakaty/downloader/so;

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeAt"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->e(Lcom/shabakaty/downloader/rq;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/z94;->h:Lcom/shabakaty/downloader/z94$a$a;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/z94$a$a;->b:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p2}, Lcom/shabakaty/downloader/xn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object p2

    :cond_1
    const-string v0, "if (superDescriptor.isRe\u2026iginal else subDescriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/wf2;->F(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result p1

    return p1
.end method

.method public final H(Lcom/shabakaty/downloader/yh3;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yh3;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;)",
            "Lcom/shabakaty/downloader/t64;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/t64;

    .line 2
    invoke-interface {p3}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    invoke-interface {p3}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    check-cast v1, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/fz2;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    move-object v0, p3

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    :cond_4
    return-object v0
.end method

.method public final I(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yh3;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;)",
            "Lcom/shabakaty/downloader/t64;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh3;->p()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ai3;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/shabakaty/downloader/c30;->r:Lcom/shabakaty/downloader/c30;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object v3, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/vo;->b:Ljava/util/Map;

    .line 6
    invoke-static {v2}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hw2;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 8
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/x94;->d(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/rq;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0, p1, v1, p2}, Lcom/shabakaty/downloader/wf2;->H(Lcom/shabakaty/downloader/yh3;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/sa2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/shabakaty/downloader/wf2;->H(Lcom/shabakaty/downloader/yh3;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/t64;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yh3;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;)",
            "Lcom/shabakaty/downloader/t64;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/sa2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/t64;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/shabakaty/downloader/zd2;->P(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    sget-object v2, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v3

    const-string v4, "descriptor.valueParameters"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v3}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    check-cast v2, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/fz2;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    :goto_0
    if-eqz v1, :cond_0

    :cond_5
    return-object v1
.end method

.method public final K(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object p1

    const-string v0, "classDescriptor.visibility"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/c72;->b:Lcom/shabakaty/downloader/mr0;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/c72;->c:Lcom/shabakaty/downloader/mr0;

    const-string v0, "PROTECTED_AND_PACKAGE"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final L(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            ")",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/t64;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wf2;->B()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

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
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/mz2;->F:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v2, p1, v3}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final M(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            ")",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wf2;->B()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/mz2;->F:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v2, p1, v3}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Lcom/shabakaty/downloader/yh3;

    .line 9
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/xn1;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p1, v0, v0, v1}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/downloader/xn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object v3

    const-string v4, "builtinWithErasedParameters.original"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v0, v1}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wf2;->F(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final O(Lcom/shabakaty/downloader/t64;)Z
    .locals 10

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    const-string v1, "function.name"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name.asString()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/sa2;->a:Lcom/shabakaty/downloader/sa2;

    const-string v2, "get"

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 4
    invoke-static {v1, v2, v4, v3}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    const-string v6, "is"

    const/4 v7, 0x1

    if-nez v5, :cond_1

    invoke-static {v1, v6, v4, v3}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const-string v8, "set"

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    const/16 v5, 0xc

    .line 5
    invoke-static {v0, v2, v4, v1, v5}, Lcom/shabakaty/downloader/rm3;->n(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;ZLjava/lang/String;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v2, 0x8

    invoke-static {v0, v6, v4, v1, v2}, Lcom/shabakaty/downloader/rm3;->n(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;ZLjava/lang/String;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    .line 6
    :cond_2
    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {v1, v8, v4, v3}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v3, [Lcom/shabakaty/downloader/hw2;

    .line 8
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/rm3;->m(Lcom/shabakaty/downloader/hw2;Z)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/rm3;->m(Lcom/shabakaty/downloader/hw2;Z)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->r([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 9
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/vo;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 11
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    .line 12
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/hw2;

    .line 13
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/wf2;->M(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 15
    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yh3;

    .line 16
    new-instance v5, Lcom/shabakaty/downloader/wf2$g;

    invoke-direct {v5, p1, p0}, Lcom/shabakaty/downloader/wf2$g;-><init>(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/wf2;)V

    invoke-virtual {p0, v2, v5}, Lcom/shabakaty/downloader/wf2;->E(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tm1;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 17
    invoke-interface {v2}, Lcom/shabakaty/downloader/uz4;->r0()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    const-string v5, "function.name.asString()"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v2, v8, v4, v3}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    return v4

    .line 19
    :cond_e
    sget-object v0, Lcom/shabakaty/downloader/z94;->a:Lcom/shabakaty/downloader/z94$a;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v2, Lcom/shabakaty/downloader/z94;->l:Ljava/util/Map;

    .line 21
    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 22
    :cond_f
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_c

    .line 23
    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hw2;

    .line 24
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/wf2;->L(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;

    move-result-object v3

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/shabakaty/downloader/t64;

    const-string v9, "<this>"

    .line 27
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v8}, Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    goto :goto_9

    :cond_13
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_12

    .line 29
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 30
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_a

    .line 31
    :cond_15
    invoke-interface {p1}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v3

    .line 32
    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/xn1$a;->m(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/xn1$a;

    .line 33
    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1$a;->r()Lcom/shabakaty/downloader/xn1$a;

    .line 34
    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1$a;->d()Lcom/shabakaty/downloader/xn1$a;

    .line 35
    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v2, Lcom/shabakaty/downloader/t64;

    .line 36
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_a

    .line 37
    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/t64;

    .line 38
    invoke-virtual {p0, v5, v2}, Lcom/shabakaty/downloader/wf2;->G(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/xn1;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_d

    :cond_19
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_25

    .line 39
    sget-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/to;->b(Lcom/shabakaty/downloader/hw2;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_f

    .line 40
    :cond_1a
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wf2;->L(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;

    move-result-object v0

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 43
    check-cast v3, Lcom/shabakaty/downloader/t64;

    .line 44
    invoke-static {v3}, Lcom/shabakaty/downloader/to;->a(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/xn1;

    move-result-object v3

    if-nez v3, :cond_1b

    goto :goto_e

    .line 45
    :cond_1b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 46
    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_f

    .line 47
    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/xn1;

    .line 48
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/wf2;->N(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/xn1;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_10

    :cond_1f
    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_25

    .line 49
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wf2;->D(Lcom/shabakaty/downloader/t64;)Lcom/shabakaty/downloader/t64;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_12

    .line 50
    :cond_20
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wf2;->L(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_12

    .line 52
    :cond_21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/t64;

    .line 53
    invoke-interface {v1}, Lcom/shabakaty/downloader/xn1;->H0()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/wf2;->F(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_11

    :cond_23
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_22

    const/4 p1, 0x1

    goto :goto_13

    :cond_24
    :goto_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_25

    const/4 v4, 0x1

    :cond_25
    return v4
.end method

.method public P(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->n:Lcom/shabakaty/downloader/nl2;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 5
    invoke-static {v0, p2, v1, p1}, Lcom/shabakaty/downloader/nh3;->F(Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/ll2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/hw2;)V

    return-void
.end method

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
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wf2;->P(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/cg2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

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
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wf2;->P(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/cg2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wf2;->P(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)V

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/cg2;->c:Lcom/shabakaty/downloader/cg2;

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/wf2;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/shabakaty/downloader/wf2;->t:Lcom/shabakaty/downloader/rr2;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/r20;

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/shabakaty/downloader/wf2;->t:Lcom/shabakaty/downloader/rr2;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/g30;

    :cond_1
    return-object p2
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
    iget-object p1, p0, Lcom/shabakaty/downloader/wf2;->r:Lcom/shabakaty/downloader/d03;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p2, p0, Lcom/shabakaty/downloader/wf2;->s:Lcom/shabakaty/downloader/d03;

    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .locals 3

    const-string v0, "kindFilter"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 9
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/xm0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 11
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/xm0;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wf2;->h(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->x:Lcom/shabakaty/downloader/sj4;

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 17
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/sj4;->b(Lcom/shabakaty/downloader/q20;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public j(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v3}, Lcom/shabakaty/downloader/q62;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 3
    invoke-interface {v3}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/xm0;->a(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/w72;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/t64;

    .line 6
    invoke-interface {v6}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 8
    invoke-interface {v3}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/xm0;->a(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/w72;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    iget-object v6, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 10
    invoke-static {v6, v3}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object v6

    .line 11
    iget-object v7, v0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 12
    invoke-interface {v3}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    .line 13
    iget-object v9, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 14
    iget-object v9, v9, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 15
    iget-object v9, v9, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 16
    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v9

    .line 17
    invoke-static {v7, v6, v8, v9, v4}, Lcom/shabakaty/downloader/m72;->h1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Z)Lcom/shabakaty/downloader/m72;

    move-result-object v4

    .line 18
    sget-object v6, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v6, v5, v7, v8}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v6

    .line 19
    iget-object v7, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 20
    iget-object v7, v7, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 21
    invoke-interface {v3}, Lcom/shabakaty/downloader/w72;->b()Lcom/shabakaty/downloader/g82;

    move-result-object v3

    invoke-virtual {v7, v3, v6}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v15

    const/4 v11, 0x0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/wf2;->p()Lcom/shabakaty/downloader/ao3;

    move-result-object v12

    .line 23
    sget-object v14, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 24
    sget-object v16, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    .line 25
    sget-object v17, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    const/16 v18, 0x0

    move-object v10, v4

    move-object v13, v14

    .line 26
    invoke-virtual/range {v10 .. v18}, Lcom/shabakaty/downloader/m72;->g1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Ljava/util/Map;)Lcom/shabakaty/downloader/u64;

    .line 27
    invoke-virtual {v4, v5, v5}, Lcom/shabakaty/downloader/m72;->i1(ZZ)V

    .line 28
    iget-object v3, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 29
    iget-object v3, v3, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 30
    iget-object v3, v3, Lcom/shabakaty/downloader/y72;->g:Lcom/shabakaty/downloader/x72;

    .line 31
    check-cast v3, Lcom/shabakaty/downloader/x72$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_3
    iget-object v3, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 34
    iget-object v3, v3, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 35
    iget-object v3, v3, Lcom/shabakaty/downloader/y72;->x:Lcom/shabakaty/downloader/sj4;

    .line 36
    iget-object v4, v0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 37
    invoke-interface {v3, v4, v2, v1}, Lcom/shabakaty/downloader/sj4;->a(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V

    return-void
.end method

.method public k()Lcom/shabakaty/downloader/xm0;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p20;

    iget-object v1, p0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    sget-object v2, Lcom/shabakaty/downloader/vf2;->r:Lcom/shabakaty/downloader/vf2;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/p20;-><init>(Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/tm1;)V

    return-object v0
.end method

.method public m(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V
    .locals 10
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
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/wf2;->L(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;

    move-result-object v6

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/z94;->a:Lcom/shabakaty/downloader/z94$a;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/z94;->k:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_5

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/to;->b(Lcom/shabakaty/downloader/hw2;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/xn1;

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/xn1;->H0()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/shabakaty/downloader/t64;

    .line 11
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/wf2;->O(Lcom/shabakaty/downloader/t64;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/shabakaty/downloader/wf2;->y(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Z)V

    return-void

    .line 13
    :cond_5
    invoke-static {}, Lcom/shabakaty/downloader/f94$b;->a()Lcom/shabakaty/downloader/f94;

    move-result-object v8

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 16
    sget-object v4, Lcom/shabakaty/downloader/y41;->a:Lcom/shabakaty/downloader/y41;

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 20
    invoke-interface {v0}, Lcom/shabakaty/downloader/ez2;->a()Lcom/shabakaty/downloader/a93;

    move-result-object v5

    move-object v0, p2

    move-object v1, v6

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/fr0;->d(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/a93;)Ljava/util/Collection;

    move-result-object v9

    .line 22
    new-instance v5, Lcom/shabakaty/downloader/wf2$a;

    invoke-direct {v5, p0}, Lcom/shabakaty/downloader/wf2$a;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v9

    move-object v4, p1

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/wf2;->z(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)V

    .line 24
    new-instance v5, Lcom/shabakaty/downloader/wf2$b;

    invoke-direct {v5, p0}, Lcom/shabakaty/downloader/wf2$b;-><init>(Ljava/lang/Object;)V

    move-object v4, v8

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/wf2;->z(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/t64;

    .line 28
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/wf2;->O(Lcom/shabakaty/downloader/t64;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-virtual {p0, p1, p2, v0, v7}, Lcom/shabakaty/downloader/wf2;->y(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Z)V

    return-void
.end method

.method public n(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V
    .locals 11
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
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xm0;->c(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/l72;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v4, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 6
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object v3

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 8
    invoke-interface {v0}, Lcom/shabakaty/downloader/n72;->g()Lcom/shabakaty/downloader/y45;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/vd5;->A(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;

    move-result-object v5

    const/4 v6, 0x0

    .line 9
    invoke-interface {v0}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    .line 10
    iget-object v8, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 11
    iget-object v8, v8, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 12
    iget-object v8, v8, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 13
    invoke-interface {v8, v0}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v8

    const/4 v9, 0x0

    .line 14
    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/u72;->Z0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Z)Lcom/shabakaty/downloader/u72;

    move-result-object v2

    .line 15
    sget-object v3, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/tq0;->b(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bi3;

    move-result-object v3

    .line 16
    iput-object v3, v2, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    .line 17
    iput-object v1, v2, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    .line 18
    iput-object v1, v2, Lcom/shabakaty/downloader/zh3;->P:Lcom/shabakaty/downloader/na1;

    .line 19
    iput-object v1, v2, Lcom/shabakaty/downloader/zh3;->Q:Lcom/shabakaty/downloader/na1;

    .line 20
    iget-object v4, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    const/4 v5, 0x0

    .line 21
    invoke-static {v4, v2, v0, v5}, Lcom/shabakaty/downloader/od0;->b(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)Lcom/shabakaty/downloader/bg2;

    move-result-object v4

    .line 22
    invoke-virtual {p0, v0, v4}, Lcom/shabakaty/downloader/cg2;->l(Lcom/shabakaty/downloader/l72;Lcom/shabakaty/downloader/bg2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 23
    sget-object v4, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wf2;->p()Lcom/shabakaty/downloader/ao3;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5, v1}, Lcom/shabakaty/downloader/zh3;->Y0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;)V

    .line 24
    iput-object v0, v3, Lcom/shabakaty/downloader/bi3;->D:Lcom/shabakaty/downloader/qe2;

    .line 25
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wf2;->M(Lcom/shabakaty/downloader/hw2;)Ljava/util/Set;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 28
    :cond_2
    invoke-static {}, Lcom/shabakaty/downloader/f94$b;->a()Lcom/shabakaty/downloader/f94;

    move-result-object v2

    .line 29
    invoke-static {}, Lcom/shabakaty/downloader/f94$b;->a()Lcom/shabakaty/downloader/f94;

    move-result-object v3

    .line 30
    new-instance v4, Lcom/shabakaty/downloader/wf2$c;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/wf2$c;-><init>(Lcom/shabakaty/downloader/wf2;)V

    invoke-virtual {p0, v0, p2, v2, v4}, Lcom/shabakaty/downloader/wf2;->A(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lcom/shabakaty/downloader/tm1;)V

    .line 31
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/md0;->j(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    .line 34
    :cond_3
    instance-of v4, v2, Ljava/util/Set;

    if-eqz v4, :cond_5

    .line 35
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 37
    invoke-interface {v2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_5
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    move-object v2, v4

    .line 40
    :goto_2
    new-instance v4, Lcom/shabakaty/downloader/wf2$d;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/wf2$d;-><init>(Lcom/shabakaty/downloader/wf2;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/shabakaty/downloader/wf2;->A(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lcom/shabakaty/downloader/tm1;)V

    .line 41
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 42
    iget-object v8, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 43
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 44
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 45
    iget-object v9, v0, Lcom/shabakaty/downloader/y72;->f:Lcom/shabakaty/downloader/y41;

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 47
    invoke-interface {v0}, Lcom/shabakaty/downloader/ez2;->a()Lcom/shabakaty/downloader/a93;

    move-result-object v10

    move-object v5, p1

    move-object v7, p2

    .line 48
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/downloader/fr0;->d(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/a93;)Ljava/util/Collection;

    move-result-object p1

    .line 49
    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public o(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
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
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/cg2;->a()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 4
    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/xm0;

    invoke-interface {p2}, Lcom/shabakaty/downloader/xm0;->f()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 6
    invoke-interface {p2}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object p2

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/qe2;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/mr2;->c()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public p()Lcom/shabakaty/downloader/ao3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 2
    sget v1, Lcom/shabakaty/downloader/gr0;->a:I

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->R0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/gr0;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    return-object v0
.end method

.method public r(Lcom/shabakaty/downloader/m72;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wf2;->O(Lcom/shabakaty/downloader/t64;)Z

    move-result p1

    return p1
.end method

.method public s(Lcom/shabakaty/downloader/l72;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Ljava/util/List;)Lcom/shabakaty/downloader/cg2$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l72;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/sz4;",
            ">;)",
            "Lcom/shabakaty/downloader/cg2$a;"
        }
    .end annotation

    const-string p1, "returnType"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "valueParameters"

    invoke-static {p4, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->e:Lcom/shabakaty/downloader/k64;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    const/4 v3, 0x0

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/k64$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/cg2$a;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/cg2$a;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p1

    :cond_0
    const/4 p2, 0x3

    .line 8
    invoke-static {p2}, Lcom/shabakaty/downloader/k64$b;->a(I)V

    throw p1

    :cond_1
    const/4 p2, 0x1

    .line 9
    invoke-static {p2}, Lcom/shabakaty/downloader/k64$a;->a(I)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const-string v1, "Lazy Java member scope for "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Ljava/util/List;Lcom/shabakaty/downloader/vc0;ILcom/shabakaty/downloader/l72;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;",
            "Lcom/shabakaty/downloader/vc0;",
            "I",
            "Lcom/shabakaty/downloader/l72;",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/qe2;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v5, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 2
    invoke-interface/range {p4 .. p4}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    .line 3
    invoke-static/range {p5 .. p5}, Lcom/shabakaty/downloader/eu4;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    const-string v0, "makeNotNullable(returnType)"

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface/range {p4 .. p4}, Lcom/shabakaty/downloader/l72;->R()Z

    move-result v8

    if-nez p6, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static/range {p6 .. p6}, Lcom/shabakaty/downloader/eu4;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    :goto_0
    move-object v11, v0

    move-object v0, p0

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    move-object/from16 v2, p4

    .line 9
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v12

    .line 10
    new-instance v13, Lcom/shabakaty/downloader/tz4;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    move-object v1, p1

    .line 11
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final y(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v3, p0, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/y72;->f:Lcom/shabakaty/downloader/y41;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/ez2;->a()Lcom/shabakaty/downloader/a93;

    move-result-object v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p1

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/fr0;->d(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/a93;)Ljava/util/Collection;

    move-result-object p2

    if-nez p4, :cond_0

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 9
    :cond_0
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    .line 10
    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/t64;

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/x94;->c(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/t64;

    if-nez v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, v0, v1, p3}, Lcom/shabakaty/downloader/wf2;->C(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/rq;Ljava/util/Collection;)Lcom/shabakaty/downloader/t64;

    move-result-object v0

    :goto_1
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {p1, p4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public final z(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/t64;

    .line 2
    invoke-static {v5}, Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/t64;

    if-nez v6, :cond_1

    :cond_0
    move-object/from16 v10, p1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v6}, Lcom/shabakaty/downloader/x94;->a(Lcom/shabakaty/downloader/tq;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    invoke-static {v8}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/t64;

    .line 5
    invoke-interface {v9}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v9

    move-object/from16 v10, p1

    .line 6
    invoke-interface {v9, v10}, Lcom/shabakaty/downloader/xn1$a;->m(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/xn1$a;

    .line 7
    invoke-interface {v9}, Lcom/shabakaty/downloader/xn1$a;->r()Lcom/shabakaty/downloader/xn1$a;

    .line 8
    invoke-interface {v9}, Lcom/shabakaty/downloader/xn1$a;->d()Lcom/shabakaty/downloader/xn1$a;

    .line 9
    invoke-interface {v9}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v9, Lcom/shabakaty/downloader/t64;

    .line 10
    invoke-virtual {v0, v6, v9}, Lcom/shabakaty/downloader/wf2;->G(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/xn1;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 11
    invoke-virtual {v0, v9, v6, v1}, Lcom/shabakaty/downloader/wf2;->C(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/rq;Ljava/util/Collection;)Lcom/shabakaty/downloader/t64;

    move-result-object v6

    goto :goto_2

    :goto_1
    const/4 v6, 0x0

    .line 12
    :goto_2
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 13
    invoke-static {v5}, Lcom/shabakaty/downloader/to;->a(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/xn1;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_7

    .line 14
    :cond_3
    invoke-interface {v6}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    const-string v9, "overridden.name"

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 15
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/shabakaty/downloader/t64;

    .line 16
    invoke-virtual {v0, v11, v6}, Lcom/shabakaty/downloader/wf2;->N(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/xn1;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 17
    :goto_3
    check-cast v9, Lcom/shabakaty/downloader/t64;

    if-nez v9, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    .line 18
    :cond_6
    invoke-interface {v9}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v8

    .line 19
    invoke-interface {v6}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v11

    const-string v12, "overridden.valueParameters"

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 22
    check-cast v13, Lcom/shabakaty/downloader/sz4;

    .line 23
    new-instance v14, Lcom/shabakaty/downloader/rz4;

    invoke-interface {v13}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v15

    const-string v7, "it.type"

    invoke-static {v15, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/shabakaty/downloader/sz4;->E0()Z

    move-result v7

    invoke-direct {v14, v15, v7}, Lcom/shabakaty/downloader/rz4;-><init>(Lcom/shabakaty/downloader/qe2;Z)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 24
    :cond_7
    invoke-interface {v9}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v7

    const-string v9, "override.valueParameters"

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v12, v7, v6}, Lcom/shabakaty/downloader/md0;->k(Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/rq;)Ljava/util/List;

    move-result-object v7

    .line 26
    invoke-interface {v8, v7}, Lcom/shabakaty/downloader/xn1$a;->a(Ljava/util/List;)Lcom/shabakaty/downloader/xn1$a;

    .line 27
    invoke-interface {v8}, Lcom/shabakaty/downloader/xn1$a;->r()Lcom/shabakaty/downloader/xn1$a;

    .line 28
    invoke-interface {v8}, Lcom/shabakaty/downloader/xn1$a;->d()Lcom/shabakaty/downloader/xn1$a;

    .line 29
    sget-object v7, Lcom/shabakaty/downloader/m72;->X:Lcom/shabakaty/downloader/rq$a;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v7, v9}, Lcom/shabakaty/downloader/xn1$a;->o(Lcom/shabakaty/downloader/rq$a;Ljava/lang/Object;)Lcom/shabakaty/downloader/xn1$a;

    .line 30
    invoke-interface {v8}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/t64;

    :goto_5
    if-nez v7, :cond_8

    goto :goto_7

    .line 31
    :cond_8
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/wf2;->O(Lcom/shabakaty/downloader/t64;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_a

    :goto_7
    const/4 v6, 0x0

    goto :goto_8

    .line 32
    :cond_a
    invoke-virtual {v0, v7, v6, v1}, Lcom/shabakaty/downloader/wf2;->C(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/rq;Ljava/util/Collection;)Lcom/shabakaty/downloader/t64;

    move-result-object v6

    .line 33
    :goto_8
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 34
    invoke-interface {v5}, Lcom/shabakaty/downloader/xn1;->H0()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_b

    .line 35
    :cond_b
    invoke-interface {v5}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    const-string v7, "descriptor.name"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/t64;

    .line 36
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/wf2;->D(Lcom/shabakaty/downloader/t64;)Lcom/shabakaty/downloader/t64;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v0, v7, v5}, Lcom/shabakaty/downloader/wf2;->F(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_c

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v7, 0x0

    .line 37
    :goto_c
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    return-void
.end method
