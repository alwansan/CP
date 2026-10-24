.class public final Lcom/shabakaty/downloader/js0;
.super Lcom/shabakaty/downloader/i1;
.source "DeserializedMemberDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/cs0;


# instance fields
.field public final A:Lcom/shabakaty/downloader/jw2;

.field public final B:Lcom/shabakaty/downloader/bu4;

.field public final C:Lcom/shabakaty/downloader/f05;

.field public final D:Lcom/shabakaty/downloader/as0;

.field public E:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/fs4;",
            ">;"
        }
    .end annotation
.end field

.field public F:Lcom/shabakaty/downloader/b74;

.field public G:Lcom/shabakaty/downloader/b74;

.field public H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lcom/shabakaty/downloader/b74;

.field public final y:Lcom/shabakaty/downloader/md4;

.field public final z:Lcom/shabakaty/downloader/zi3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/zi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    move-object v1, p2

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v4, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/i1;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/mr0;)V

    .line 2
    iput-object v7, v6, Lcom/shabakaty/downloader/js0;->y:Lcom/shabakaty/downloader/md4;

    .line 3
    iput-object v8, v6, Lcom/shabakaty/downloader/js0;->z:Lcom/shabakaty/downloader/zi3;

    .line 4
    iput-object v9, v6, Lcom/shabakaty/downloader/js0;->A:Lcom/shabakaty/downloader/jw2;

    .line 5
    iput-object v10, v6, Lcom/shabakaty/downloader/js0;->B:Lcom/shabakaty/downloader/bu4;

    .line 6
    iput-object v11, v6, Lcom/shabakaty/downloader/js0;->C:Lcom/shabakaty/downloader/f05;

    move-object/from16 v0, p10

    .line 7
    iput-object v0, v6, Lcom/shabakaty/downloader/js0;->D:Lcom/shabakaty/downloader/as0;

    return-void
.end method


# virtual methods
.method public final S0(Ljava/util/List;Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/b74;",
            "Lcom/shabakaty/downloader/b74;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "underlyingType"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "expandedType"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 1
    iput-object v2, v8, Lcom/shabakaty/downloader/i1;->w:Ljava/util/List;

    .line 2
    iput-object v0, v8, Lcom/shabakaty/downloader/js0;->F:Lcom/shabakaty/downloader/b74;

    .line 3
    iput-object v1, v8, Lcom/shabakaty/downloader/js0;->G:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/pt4;->b(Lcom/shabakaty/downloader/h30;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/shabakaty/downloader/js0;->H:Ljava/util/List;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/js0;->u()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->M0()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/h1;

    invoke-direct {v1, v8}, Lcom/shabakaty/downloader/h1;-><init>(Lcom/shabakaty/downloader/i1;)V

    invoke-static {v8, v0, v1}, Lcom/shabakaty/downloader/eu4;->o(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 6
    iput-object v0, v8, Lcom/shabakaty/downloader/js0;->I:Lcom/shabakaty/downloader/b74;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/js0;->u()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto/16 :goto_5

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->o()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "classDescriptor.constructors"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 11
    move-object v11, v0

    check-cast v11, Lcom/shabakaty/downloader/l20;

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/gs4;->X:Lcom/shabakaty/downloader/gs4$a;

    .line 13
    iget-object v1, v8, Lcom/shabakaty/downloader/js0;->y:Lcom/shabakaty/downloader/md4;

    const-string v2, "it"

    .line 14
    invoke-static {v11, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "storageManager"

    .line 15
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/js0;->u()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    const/4 v12, 0x0

    if-nez v0, :cond_2

    move-object v13, v12

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/js0;->d0()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/wt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wt4;

    move-result-object v0

    move-object v13, v0

    :goto_2
    if-nez v13, :cond_3

    goto/16 :goto_4

    .line 18
    :cond_3
    invoke-interface {v11, v13}, Lcom/shabakaty/downloader/l20;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/l20;

    move-result-object v14

    if-nez v14, :cond_4

    goto/16 :goto_4

    .line 19
    :cond_4
    new-instance v15, Lcom/shabakaty/downloader/gs4;

    const/4 v4, 0x0

    .line 20
    invoke-interface {v11}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    .line 21
    invoke-interface {v11}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v6

    const-string v0, "constructor.kind"

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/tm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v7

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v2, p0

    move-object v3, v14

    .line 22
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/gs4;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hs4;Lcom/shabakaty/downloader/l20;Lcom/shabakaty/downloader/fs4;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 23
    invoke-interface {v11}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v15

    move-object v4, v13

    .line 24
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/yn1;->V0(Lcom/shabakaty/downloader/xn1;Ljava/util/List;Lcom/shabakaty/downloader/wt4;ZZ[Z)Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_5

    goto :goto_4

    .line 25
    :cond_5
    invoke-interface {v14}, Lcom/shabakaty/downloader/vc0;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/js0;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/nh3;->L(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v20

    .line 26
    invoke-interface {v11}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 27
    :cond_6
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v13, v0, v1}, Lcom/shabakaty/downloader/wt4;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 28
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 29
    invoke-static {v15, v0, v1}, Lcom/shabakaty/downloader/tq0;->f(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/ao3;

    move-result-object v12

    :goto_3
    move-object/from16 v16, v12

    const/16 v17, 0x0

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/i1;->B()Ljava/util/List;

    move-result-object v18

    .line 31
    sget-object v21, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    .line 32
    iget-object v0, v8, Lcom/shabakaty/downloader/i1;->v:Lcom/shabakaty/downloader/mr0;

    move-object v1, v15

    move-object v15, v1

    move-object/from16 v22, v0

    .line 33
    invoke-virtual/range {v15 .. v22}, Lcom/shabakaty/downloader/yn1;->W0(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/yn1;

    move-object v12, v1

    :goto_4
    if-nez v12, :cond_7

    goto/16 :goto_1

    .line 34
    :cond_7
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x1a

    .line 35
    invoke-static {v0}, Lcom/shabakaty/downloader/yn1;->N(I)V

    throw v12

    :cond_9
    move-object v0, v9

    .line 36
    :goto_5
    iput-object v0, v8, Lcom/shabakaty/downloader/js0;->E:Ljava/util/Collection;

    return-void
.end method

.method public a0()Lcom/shabakaty/downloader/bu4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js0;->B:Lcom/shabakaty/downloader/bu4;

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 12

    const-string v0, "substitutor"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/js0;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/js0;->y:Lcom/shabakaty/downloader/md4;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v3

    const-string v1, "containingDeclaration"

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    const-string v1, "name"

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v6, p0, Lcom/shabakaty/downloader/i1;->v:Lcom/shabakaty/downloader/mr0;

    .line 7
    iget-object v7, p0, Lcom/shabakaty/downloader/js0;->z:Lcom/shabakaty/downloader/zi3;

    .line 8
    iget-object v8, p0, Lcom/shabakaty/downloader/js0;->A:Lcom/shabakaty/downloader/jw2;

    .line 9
    iget-object v9, p0, Lcom/shabakaty/downloader/js0;->B:Lcom/shabakaty/downloader/bu4;

    .line 10
    iget-object v10, p0, Lcom/shabakaty/downloader/js0;->C:Lcom/shabakaty/downloader/f05;

    .line 11
    iget-object v11, p0, Lcom/shabakaty/downloader/js0;->D:Lcom/shabakaty/downloader/as0;

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/js0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/zi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i1;->B()Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/js0;->p0()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/wt4;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    const-string v4, "substitutor.safeSubstitu\u2026Type, Variance.INVARIANT)"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/rm3;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/js0;->d0()Lcom/shabakaty/downloader/b74;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Lcom/shabakaty/downloader/wt4;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    .line 16
    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/js0;->S0(Ljava/util/List;Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    :goto_0
    return-object v0
.end method

.method public d0()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js0;->G:Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "expandedType"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k0()Lcom/shabakaty/downloader/jw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js0;->A:Lcom/shabakaty/downloader/jw2;

    return-object v0
.end method

.method public m0()Lcom/shabakaty/downloader/as0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js0;->D:Lcom/shabakaty/downloader/as0;

    return-object v0
.end method

.method public p0()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js0;->F:Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "underlyingType"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public u()Lcom/shabakaty/downloader/q20;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/js0;->d0()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/js0;->d0()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    instance-of v2, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/q20;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public x()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js0;->I:Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "defaultTypeImpl"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
