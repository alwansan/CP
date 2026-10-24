.class public final Lcom/shabakaty/downloader/uf2$a;
.super Lcom/shabakaty/downloader/q;
.source "LazyJavaClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uf2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final c:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/shabakaty/downloader/uf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uf2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 5
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/q;-><init>(Lcom/shabakaty/downloader/md4;)V

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/uf2$a$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/uf2$a$a;-><init>(Lcom/shabakaty/downloader/uf2;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/uf2$a;->c:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2$a;->c:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/util/Collection;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    iget-object v2, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/uf2;->z:Lcom/shabakaty/downloader/q62;

    .line 3
    invoke-interface {v2}, Lcom/shabakaty/downloader/q62;->a()Ljava/util/Collection;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 7
    iget-object v6, v6, Lcom/shabakaty/downloader/uf2;->M:Lcom/shabakaty/downloader/d9;

    .line 8
    sget-object v7, Lcom/shabakaty/downloader/ta2;->n:Lcom/shabakaty/downloader/fi1;

    const-string v8, "PURELY_IMPLEMENTS_ANNOTATION"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_0

    goto :goto_4

    .line 9
    :cond_0
    invoke-interface {v6}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/m50;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    instance-of v10, v6, Lcom/shabakaty/downloader/ge4;

    if-eqz v10, :cond_1

    check-cast v6, Lcom/shabakaty/downloader/ge4;

    goto :goto_0

    :cond_1
    move-object v6, v9

    :goto_0
    if-nez v6, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    iget-object v6, v6, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 11
    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_9

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v11, v11, 0x1

    .line 13
    invoke-static {v12}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v14

    if-eqz v14, :cond_7

    if-eq v14, v8, :cond_5

    if-eq v14, v10, :cond_7

    goto :goto_1

    :cond_5
    const/16 v14, 0x2e

    if-ne v13, v14, :cond_6

    const/4 v12, 0x3

    goto :goto_1

    .line 14
    :cond_6
    invoke-static {v13}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {v13}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_2

    :cond_8
    const/4 v12, 0x2

    goto :goto_1

    :cond_9
    if-eq v12, v7, :cond_a

    const/4 v10, 0x1

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_b

    :goto_4
    move-object v10, v9

    goto :goto_5

    .line 16
    :cond_b
    new-instance v10, Lcom/shabakaty/downloader/fi1;

    invoke-direct {v10, v6}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    :goto_5
    if-nez v10, :cond_c

    goto :goto_7

    .line 17
    :cond_c
    invoke-virtual {v10}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Lcom/shabakaty/downloader/tb4;->h:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {v10, v6}, Lcom/shabakaty/downloader/fi1;->i(Lcom/shabakaty/downloader/hw2;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    move-object v10, v9

    :goto_8
    const/16 v6, 0xa

    if-nez v10, :cond_f

    .line 18
    sget-object v11, Lcom/shabakaty/downloader/u91;->a:Lcom/shabakaty/downloader/u91;

    iget-object v11, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    invoke-static {v11}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v11

    .line 19
    sget-object v12, Lcom/shabakaty/downloader/u91;->b:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/fi1;

    if-nez v11, :cond_10

    goto/16 :goto_c

    :cond_f
    move-object v11, v10

    .line 20
    :cond_10
    iget-object v12, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 21
    iget-object v12, v12, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 22
    iget-object v12, v12, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 23
    iget-object v12, v12, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 24
    sget-object v13, Lcom/shabakaty/downloader/mz2;->J:Lcom/shabakaty/downloader/mz2;

    sget v14, Lcom/shabakaty/downloader/hr0;->a:I

    const-string v14, "<this>"

    .line 25
    invoke-static {v12, v14}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v11}, Lcom/shabakaty/downloader/fi1;->d()Z

    .line 27
    invoke-virtual {v11}, Lcom/shabakaty/downloader/fi1;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v14

    const-string v15, "topLevelClassFqName.parent()"

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v14}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v12

    invoke-interface {v12}, Lcom/shabakaty/downloader/t93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v12

    .line 28
    invoke-virtual {v11}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v11

    const-string v14, "topLevelClassFqName.shortName()"

    invoke-static {v11, v14}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {v12, v11, v13}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v11

    .line 30
    instance-of v12, v11, Lcom/shabakaty/downloader/q20;

    if-eqz v12, :cond_11

    check-cast v11, Lcom/shabakaty/downloader/q20;

    goto :goto_9

    :cond_11
    move-object v11, v9

    :goto_9
    if-nez v11, :cond_12

    goto/16 :goto_c

    .line 31
    :cond_12
    invoke-interface {v11}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v12

    invoke-interface {v12}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 32
    iget-object v13, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 33
    iget-object v13, v13, Lcom/shabakaty/downloader/uf2;->H:Lcom/shabakaty/downloader/uf2$a;

    .line 34
    invoke-virtual {v13}, Lcom/shabakaty/downloader/uf2$a;->e()Ljava/util/List;

    move-result-object v13

    const-string v14, "getTypeConstructor().parameters"

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v12, :cond_13

    .line 36
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v13, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 38
    check-cast v13, Lcom/shabakaty/downloader/kt4;

    .line 39
    new-instance v14, Lcom/shabakaty/downloader/st4;

    invoke-interface {v13}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v13

    invoke-direct {v14, v1, v13}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    if-ne v14, v8, :cond_16

    if-le v12, v8, :cond_16

    if-nez v10, :cond_16

    .line 40
    new-instance v10, Lcom/shabakaty/downloader/st4;

    invoke-static {v13}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/kt4;

    invoke-interface {v13}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v13

    invoke-direct {v10, v1, v13}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    .line 41
    new-instance v13, Lcom/shabakaty/downloader/n22;

    invoke-direct {v13, v8, v12}, Lcom/shabakaty/downloader/n22;-><init>(II)V

    .line 42
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v13, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-virtual {v13}, Lcom/shabakaty/downloader/l22;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    move-object v14, v13

    check-cast v14, Lcom/shabakaty/downloader/m22;

    .line 44
    iget-boolean v14, v14, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz v14, :cond_14

    .line 45
    move-object v14, v13

    check-cast v14, Lcom/shabakaty/downloader/k22;

    invoke-virtual {v14}, Lcom/shabakaty/downloader/k22;->a()I

    .line 46
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    move-object v10, v12

    .line 47
    :cond_15
    sget-object v12, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {v12, v11, v10}, Lcom/shabakaty/downloader/se2;->e(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/q20;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object v10

    goto :goto_d

    :cond_16
    :goto_c
    move-object v10, v9

    .line 48
    :goto_d
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/y62;

    .line 49
    iget-object v12, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 50
    iget-object v12, v12, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 51
    iget-object v12, v12, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 52
    sget-object v13, Lcom/shabakaty/downloader/du4;->r:Lcom/shabakaty/downloader/du4;

    invoke-static {v13, v5, v9, v7}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v12

    .line 53
    iget-object v13, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 54
    iget-object v13, v13, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 55
    iget-object v14, v13, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 56
    iget-object v15, v14, Lcom/shabakaty/downloader/y72;->r:Lcom/shabakaty/downloader/d64;

    .line 57
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "type"

    .line 58
    invoke-static {v12, v14}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v14, Lcom/shabakaty/downloader/d64$b;

    .line 60
    sget-object v18, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 61
    sget-object v21, Lcom/shabakaty/downloader/u8;->v:Lcom/shabakaty/downloader/u8;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x40

    move-object/from16 v25, v14

    move-object/from16 v17, v12

    move-object/from16 v20, v13

    .line 62
    invoke-direct/range {v14 .. v24}, Lcom/shabakaty/downloader/d64$b;-><init>(Lcom/shabakaty/downloader/d64;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/qe2;Ljava/util/Collection;ZLcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/u8;ZZI)V

    move-object/from16 v12, v25

    .line 63
    invoke-static {v12, v9, v5, v7}, Lcom/shabakaty/downloader/d64$b;->d(Lcom/shabakaty/downloader/d64$b;Lcom/shabakaty/downloader/zs4;ZI)Lcom/shabakaty/downloader/d64$a;

    move-result-object v12

    .line 64
    iget-object v12, v12, Lcom/shabakaty/downloader/d64$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 65
    invoke-virtual {v12}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v13

    invoke-interface {v13}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v13

    instance-of v13, v13, Lcom/shabakaty/downloader/b03$b;

    if-eqz v13, :cond_18

    .line 66
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_18
    invoke-virtual {v12}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v11

    if-nez v10, :cond_19

    move-object v13, v9

    goto :goto_f

    :cond_19
    invoke-virtual {v10}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v13

    :goto_f
    invoke-static {v11, v13}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_e

    .line 68
    :cond_1a
    invoke-static {v12}, Lcom/shabakaty/downloader/zd2;->z(Lcom/shabakaty/downloader/qe2;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 69
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 70
    :cond_1b
    iget-object v2, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 71
    iget-object v5, v2, Lcom/shabakaty/downloader/uf2;->A:Lcom/shabakaty/downloader/q20;

    if-nez v5, :cond_1c

    goto :goto_10

    .line 72
    :cond_1c
    invoke-static {v5, v2}, Lcom/shabakaty/downloader/bp;->j(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/ws4;

    move-result-object v2

    .line 73
    new-instance v7, Lcom/shabakaty/downloader/wt4;

    invoke-direct {v7, v2}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 74
    invoke-interface {v5}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v9

    .line 75
    :goto_10
    invoke-static {v3, v9}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 76
    invoke-static {v3, v10}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_1e

    .line 78
    iget-object v1, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 79
    iget-object v2, v1, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 80
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 81
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->f:Lcom/shabakaty/downloader/y41;

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 84
    check-cast v6, Lcom/shabakaty/downloader/g82;

    .line 85
    check-cast v6, Lcom/shabakaty/downloader/y62;

    invoke-interface {v6}, Lcom/shabakaty/downloader/y62;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 86
    :cond_1d
    invoke-interface {v2, v1, v5}, Lcom/shabakaty/downloader/y41;->a(Lcom/shabakaty/downloader/q20;Ljava/util/List;)V

    .line 87
    :cond_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_1f

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_12

    :cond_1f
    iget-object v1, v0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 88
    iget-object v1, v1, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 89
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 90
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 91
    invoke-interface {v1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_12
    return-object v1
.end method

.method public m()Lcom/shabakaty/downloader/ph4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->m:Lcom/shabakaty/downloader/ph4;

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2$a;->d:Lcom/shabakaty/downloader/uf2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
