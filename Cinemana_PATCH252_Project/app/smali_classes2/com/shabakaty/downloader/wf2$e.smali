.class public final Lcom/shabakaty/downloader/wf2$e;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q62;ZLcom/shabakaty/downloader/wf2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/l20;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wf2;

.field public final synthetic s:Lcom/shabakaty/downloader/bg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/bg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    iput-object p2, p0, Lcom/shabakaty/downloader/wf2$e;->s:Lcom/shabakaty/downloader/bg2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    iget-object v2, v0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    .line 3
    invoke-interface {v2}, Lcom/shabakaty/downloader/q62;->o()Ljava/util/Collection;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/z62;

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    .line 7
    iget-object v7, v6, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 8
    iget-object v8, v6, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 9
    invoke-static {v8, v4}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object v8

    .line 10
    iget-object v9, v6, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 11
    iget-object v9, v9, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 12
    iget-object v9, v9, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 13
    invoke-interface {v9, v4}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v9

    .line 14
    invoke-static {v7, v8, v5, v9}, Lcom/shabakaty/downloader/r62;->g1(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;

    move-result-object v8

    .line 15
    iget-object v9, v6, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 16
    invoke-interface {v7}, Lcom/shabakaty/downloader/q20;->B()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v8, v4, v10}, Lcom/shabakaty/downloader/od0;->b(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)Lcom/shabakaty/downloader/bg2;

    move-result-object v9

    .line 17
    invoke-interface {v4}, Lcom/shabakaty/downloader/z62;->i()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v9, v8, v10}, Lcom/shabakaty/downloader/cg2;->u(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/xn1;Ljava/util/List;)Lcom/shabakaty/downloader/cg2$b;

    move-result-object v6

    .line 18
    invoke-interface {v7}, Lcom/shabakaty/downloader/q20;->B()Ljava/util/List;

    move-result-object v10

    const-string v11, "classDescriptor.declaredTypeParameters"

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v4}, Lcom/shabakaty/downloader/n82;->t()Ljava/util/List;

    move-result-object v11

    .line 20
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 22
    check-cast v13, Lcom/shabakaty/downloader/m82;

    .line 23
    iget-object v14, v9, Lcom/shabakaty/downloader/bg2;->b:Lcom/shabakaty/downloader/nt4;

    .line 24
    invoke-interface {v14, v13}, Lcom/shabakaty/downloader/nt4;->a(Lcom/shabakaty/downloader/m82;)Lcom/shabakaty/downloader/kt4;

    move-result-object v13

    invoke-static {v13}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v10, v12}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    .line 26
    iget-object v11, v6, Lcom/shabakaty/downloader/cg2$b;->a:Ljava/util/List;

    .line 27
    invoke-interface {v4}, Lcom/shabakaty/downloader/n72;->g()Lcom/shabakaty/downloader/y45;

    move-result-object v12

    invoke-static {v12}, Lcom/shabakaty/downloader/vd5;->A(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;

    move-result-object v12

    .line 28
    invoke-virtual {v8, v11, v12, v10}, Lcom/shabakaty/downloader/m20;->f1(Ljava/util/List;Lcom/shabakaty/downloader/mr0;Ljava/util/List;)Lcom/shabakaty/downloader/m20;

    .line 29
    invoke-virtual {v8, v5}, Lcom/shabakaty/downloader/r62;->Z0(Z)V

    .line 30
    iget-boolean v5, v6, Lcom/shabakaty/downloader/cg2$b;->b:Z

    .line 31
    invoke-virtual {v8, v5}, Lcom/shabakaty/downloader/r62;->a1(Z)V

    .line 32
    invoke-interface {v7}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/shabakaty/downloader/yn1;->b1(Lcom/shabakaty/downloader/qe2;)V

    .line 33
    iget-object v5, v9, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 34
    iget-object v5, v5, Lcom/shabakaty/downloader/y72;->g:Lcom/shabakaty/downloader/x72;

    .line 35
    check-cast v5, Lcom/shabakaty/downloader/x72$a;

    invoke-virtual {v5, v4, v8}, Lcom/shabakaty/downloader/x72$a;->b(Lcom/shabakaty/downloader/d72;Lcom/shabakaty/downloader/vc0;)V

    .line 36
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    .line 38
    iget-object v2, v2, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    .line 39
    invoke-interface {v2}, Lcom/shabakaty/downloader/q62;->v()Z

    move-result v2

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_7

    .line 40
    iget-object v2, v0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    .line 41
    iget-object v8, v2, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 42
    sget v9, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v9, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 43
    iget-object v10, v2, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 44
    iget-object v10, v10, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 45
    iget-object v10, v10, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 46
    iget-object v11, v2, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v10, v11}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v10

    .line 47
    invoke-static {v8, v9, v7, v10}, Lcom/shabakaty/downloader/r62;->g1(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;

    move-result-object v9

    .line 48
    iget-object v10, v2, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v10}, Lcom/shabakaty/downloader/q62;->m()Ljava/util/Collection;

    move-result-object v10

    .line 49
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-static {v1, v5, v6, v4}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v14

    .line 51
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/16 v16, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v23, v16, 0x1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/w72;

    .line 52
    iget-object v12, v2, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 53
    iget-object v12, v12, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 54
    invoke-interface {v11}, Lcom/shabakaty/downloader/w72;->b()Lcom/shabakaty/downloader/g82;

    move-result-object v13

    invoke-virtual {v12, v13, v14}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v13

    .line 55
    invoke-interface {v11}, Lcom/shabakaty/downloader/w72;->c()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 56
    iget-object v12, v2, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 57
    iget-object v12, v12, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 58
    iget-object v12, v12, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 59
    invoke-interface {v12}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/zd2;->g(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v12

    move-object/from16 v21, v12

    goto :goto_3

    :cond_2
    move-object/from16 v21, v6

    .line 60
    :goto_3
    new-instance v12, Lcom/shabakaty/downloader/tz4;

    const/16 v17, 0x0

    .line 61
    sget v18, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v18, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 62
    invoke-interface {v11}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    .line 63
    iget-object v6, v2, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 64
    iget-object v6, v6, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 65
    iget-object v6, v6, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 66
    invoke-interface {v6, v11}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v6

    move-object v11, v12

    move-object v7, v12

    move-object v12, v9

    move-object/from16 v25, v13

    move-object/from16 v13, v17

    move-object/from16 v26, v14

    move/from16 v14, v16

    move-object v4, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v25

    move/from16 v18, v20

    move/from16 v19, v22

    move/from16 v20, v24

    move-object/from16 v22, v6

    .line 67
    invoke-direct/range {v11 .. v22}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    .line 68
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v4

    move/from16 v16, v23

    move-object/from16 v14, v26

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v15

    .line 69
    invoke-virtual {v9, v5}, Lcom/shabakaty/downloader/r62;->a1(Z)V

    .line 70
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/wf2;->K(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/mr0;

    move-result-object v2

    invoke-virtual {v9, v4, v2}, Lcom/shabakaty/downloader/m20;->e1(Ljava/util/List;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/m20;

    .line 71
    invoke-virtual {v9, v5}, Lcom/shabakaty/downloader/r62;->Z0(Z)V

    .line 72
    invoke-interface {v8}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/yn1;->b1(Lcom/shabakaty/downloader/qe2;)V

    const/4 v2, 0x2

    .line 73
    invoke-static {v9, v5, v5, v2}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    .line 75
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/l20;

    .line 76
    invoke-static {v7, v5, v5, v2}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_6

    :cond_5
    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_7

    .line 77
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, v0, Lcom/shabakaty/downloader/wf2$e;->s:Lcom/shabakaty/downloader/bg2;

    .line 79
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 80
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->g:Lcom/shabakaty/downloader/x72;

    .line 81
    iget-object v4, v0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    .line 82
    iget-object v4, v4, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    .line 83
    check-cast v2, Lcom/shabakaty/downloader/x72$a;

    invoke-virtual {v2, v4, v9}, Lcom/shabakaty/downloader/x72$a;->b(Lcom/shabakaty/downloader/d72;Lcom/shabakaty/downloader/vc0;)V

    .line 84
    :cond_7
    iget-object v2, v0, Lcom/shabakaty/downloader/wf2$e;->s:Lcom/shabakaty/downloader/bg2;

    .line 85
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 86
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->x:Lcom/shabakaty/downloader/sj4;

    .line 87
    iget-object v4, v0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    .line 88
    iget-object v4, v4, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 89
    invoke-interface {v2, v4, v3}, Lcom/shabakaty/downloader/sj4;->c(Lcom/shabakaty/downloader/q20;Ljava/util/List;)V

    .line 90
    iget-object v2, v0, Lcom/shabakaty/downloader/wf2$e;->s:Lcom/shabakaty/downloader/bg2;

    .line 91
    iget-object v4, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 92
    iget-object v4, v4, Lcom/shabakaty/downloader/y72;->r:Lcom/shabakaty/downloader/d64;

    .line 93
    iget-object v13, v0, Lcom/shabakaty/downloader/wf2$e;->r:Lcom/shabakaty/downloader/wf2;

    .line 94
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 95
    iget-object v3, v13, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v3}, Lcom/shabakaty/downloader/q62;->u()Z

    move-result v3

    .line 96
    iget-object v6, v13, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v6}, Lcom/shabakaty/downloader/q62;->M()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v13, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v6}, Lcom/shabakaty/downloader/q62;->w()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    if-nez v3, :cond_9

    const/4 v6, 0x0

    goto/16 :goto_d

    .line 97
    :cond_9
    iget-object v14, v13, Lcom/shabakaty/downloader/wf2;->n:Lcom/shabakaty/downloader/q20;

    .line 98
    sget v6, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v6, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 99
    iget-object v7, v13, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 100
    iget-object v7, v7, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 101
    iget-object v7, v7, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 102
    iget-object v8, v13, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v7, v8}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v7

    const/4 v8, 0x1

    .line 103
    invoke-static {v14, v6, v8, v7}, Lcom/shabakaty/downloader/r62;->g1(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;

    move-result-object v15

    if-eqz v3, :cond_10

    .line 104
    iget-object v3, v13, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    invoke-interface {v3}, Lcom/shabakaty/downloader/q62;->S()Ljava/util/Collection;

    move-result-object v3

    .line 105
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 106
    invoke-static {v1, v8, v7, v6}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v1

    .line 107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 110
    move-object v8, v7

    check-cast v8, Lcom/shabakaty/downloader/l72;

    .line 111
    invoke-interface {v8}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    sget-object v9, Lcom/shabakaty/downloader/ta2;->b:Lcom/shabakaty/downloader/hw2;

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 112
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 113
    :cond_a
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 114
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 115
    invoke-static {v6}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/l72;

    if-eqz v3, :cond_d

    .line 116
    invoke-interface {v3}, Lcom/shabakaty/downloader/l72;->h()Lcom/shabakaty/downloader/g82;

    move-result-object v6

    .line 117
    instance-of v7, v6, Lcom/shabakaty/downloader/o62;

    if-eqz v7, :cond_c

    .line 118
    new-instance v7, Lcom/shabakaty/downloader/x93;

    .line 119
    iget-object v8, v13, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 120
    iget-object v8, v8, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 121
    check-cast v6, Lcom/shabakaty/downloader/o62;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v1, v9}, Lcom/shabakaty/downloader/r82;->c(Lcom/shabakaty/downloader/o62;Lcom/shabakaty/downloader/i82;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    .line 122
    iget-object v9, v13, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 123
    iget-object v9, v9, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 124
    invoke-interface {v6}, Lcom/shabakaty/downloader/o62;->p()Lcom/shabakaty/downloader/g82;

    move-result-object v6

    invoke-virtual {v9, v6, v1}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    .line 125
    invoke-direct {v7, v8, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 126
    :cond_c
    new-instance v7, Lcom/shabakaty/downloader/x93;

    .line 127
    iget-object v8, v13, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 128
    iget-object v8, v8, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 129
    invoke-virtual {v8, v6, v1}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    :goto_8
    iget-object v6, v7, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 131
    move-object/from16 v16, v6

    check-cast v16, Lcom/shabakaty/downloader/qe2;

    .line 132
    iget-object v6, v7, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 133
    move-object/from16 v17, v6

    check-cast v17, Lcom/shabakaty/downloader/qe2;

    const/4 v9, 0x0

    move-object v6, v13

    move-object v7, v12

    move-object v8, v15

    move-object v10, v3

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    .line 134
    invoke-virtual/range {v6 .. v12}, Lcom/shabakaty/downloader/wf2;->x(Ljava/util/List;Lcom/shabakaty/downloader/vc0;ILcom/shabakaty/downloader/l72;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_9

    :cond_d
    move-object/from16 v18, v11

    move-object/from16 v16, v12

    :goto_9
    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    .line 135
    :goto_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v6, 0x0

    :goto_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v18, v6, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/shabakaty/downloader/l72;

    .line 136
    iget-object v7, v13, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 137
    iget-object v7, v7, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 138
    invoke-interface {v10}, Lcom/shabakaty/downloader/l72;->h()Lcom/shabakaty/downloader/g82;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v11

    add-int v9, v6, v3

    const/4 v12, 0x0

    move-object v6, v13

    move-object/from16 v7, v16

    move-object v8, v15

    .line 139
    invoke-virtual/range {v6 .. v12}, Lcom/shabakaty/downloader/wf2;->x(Ljava/util/List;Lcom/shabakaty/downloader/vc0;ILcom/shabakaty/downloader/l72;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)V

    move/from16 v6, v18

    goto :goto_b

    :cond_f
    move-object/from16 v12, v16

    goto :goto_c

    .line 140
    :cond_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 141
    :goto_c
    invoke-virtual {v15, v5}, Lcom/shabakaty/downloader/r62;->a1(Z)V

    .line 142
    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/wf2;->K(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/mr0;

    move-result-object v1

    invoke-virtual {v15, v12, v1}, Lcom/shabakaty/downloader/m20;->e1(Ljava/util/List;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/m20;

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v15, v1}, Lcom/shabakaty/downloader/r62;->Z0(Z)V

    .line 144
    invoke-interface {v14}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/shabakaty/downloader/yn1;->b1(Lcom/shabakaty/downloader/qe2;)V

    .line 145
    iget-object v1, v13, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 146
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 147
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->g:Lcom/shabakaty/downloader/x72;

    .line 148
    iget-object v3, v13, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    check-cast v1, Lcom/shabakaty/downloader/x72$a;

    invoke-virtual {v1, v3, v15}, Lcom/shabakaty/downloader/x72$a;->b(Lcom/shabakaty/downloader/d72;Lcom/shabakaty/downloader/vc0;)V

    move-object v6, v15

    .line 149
    :goto_d
    invoke-static {v6}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 150
    :cond_11
    invoke-virtual {v4, v2, v3}, Lcom/shabakaty/downloader/d64;->a(Lcom/shabakaty/downloader/bg2;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 151
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
