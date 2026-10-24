.class public final Lcom/shabakaty/downloader/jr2;
.super Ljava/lang/Object;
.source "MemberDeserializer.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/rr0;

.field public final b:Lcom/shabakaty/downloader/t8;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rr0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/t8;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/or0;->b:Lcom/shabakaty/downloader/nu2;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->l:Lcom/shabakaty/downloader/b03;

    .line 6
    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/t8;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/jr2;->b:Lcom/shabakaty/downloader/t8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gj3;
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/k93;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/gj3$b;

    check-cast p1, Lcom/shabakaty/downloader/k93;

    invoke-interface {p1}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 3
    iget-object v3, v1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->g:Lcom/shabakaty/downloader/as0;

    .line 5
    invoke-direct {v0, p1, v2, v3, v1}, Lcom/shabakaty/downloader/gj3$b;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/s94;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/xr0;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/shabakaty/downloader/xr0;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->N:Lcom/shabakaty/downloader/gj3$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Lcom/shabakaty/downloader/es2;ILcom/shabakaty/downloader/i8;)Lcom/shabakaty/downloader/d9;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->c:Lcom/shabakaty/downloader/zd1$b;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    sget p1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object p1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lcom/shabakaty/downloader/xz2;

    iget-object v0, p0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/jr2$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/shabakaty/downloader/jr2$a;-><init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)V

    invoke-direct {p2, v0, v1}, Lcom/shabakaty/downloader/xz2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    return-object p2
.end method

.method public final c()Lcom/shabakaty/downloader/ao3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 3
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->R0()Lcom/shabakaty/downloader/ao3;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public final d(Lcom/shabakaty/downloader/vi3;Z)Lcom/shabakaty/downloader/d9;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->c:Lcom/shabakaty/downloader/zd1$b;

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/vi3;->u:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget p1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object p1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/xz2;

    iget-object v1, p0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/jr2$b;

    invoke-direct {v2, p0, p2, p1}, Lcom/shabakaty/downloader/jr2$b;-><init>(Lcom/shabakaty/downloader/jr2;ZLcom/shabakaty/downloader/vi3;)V

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/xz2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    return-object v0
.end method

.method public final e(Lcom/shabakaty/downloader/li3;Z)Lcom/shabakaty/downloader/l20;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 3
    move-object v14, v1

    check-cast v14, Lcom/shabakaty/downloader/q20;

    .line 4
    new-instance v15, Lcom/shabakaty/downloader/vr0;

    const/4 v3, 0x0

    .line 5
    iget v1, v13, Lcom/shabakaty/downloader/li3;->u:I

    .line 6
    sget-object v12, Lcom/shabakaty/downloader/i8;->r:Lcom/shabakaty/downloader/i8;

    invoke-virtual {v0, v13, v1, v12}, Lcom/shabakaty/downloader/jr2;->b(Lcom/shabakaty/downloader/es2;ILcom/shabakaty/downloader/i8;)Lcom/shabakaty/downloader/d9;

    move-result-object v4

    .line 7
    sget-object v6, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 8
    iget-object v8, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 9
    iget-object v9, v1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 10
    iget-object v10, v1, Lcom/shabakaty/downloader/rr0;->e:Lcom/shabakaty/downloader/f05;

    .line 11
    iget-object v11, v1, Lcom/shabakaty/downloader/rr0;->g:Lcom/shabakaty/downloader/as0;

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v14

    move/from16 v5, p2

    move-object/from16 v7, p1

    move-object/from16 v17, v14

    move-object v14, v12

    move-object/from16 v12, v16

    .line 12
    invoke-direct/range {v1 .. v12}, Lcom/shabakaty/downloader/vr0;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/vc0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/li3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/s94;)V

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    sget-object v3, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    move-object v2, v15

    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/rr0;->b(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;I)Lcom/shabakaty/downloader/rr0;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    .line 15
    iget-object v2, v13, Lcom/shabakaty/downloader/li3;->v:Ljava/util/List;

    const-string v3, "proto.valueParameterList"

    .line 16
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v13, v14}, Lcom/shabakaty/downloader/jr2;->i(Ljava/util/List;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/shabakaty/downloader/hj3;->a:Lcom/shabakaty/downloader/hj3;

    sget-object v3, Lcom/shabakaty/downloader/zd1;->d:Lcom/shabakaty/downloader/zd1$d;

    .line 18
    iget v4, v13, Lcom/shabakaty/downloader/li3;->u:I

    .line 19
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/fj3;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/ij3;->a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;

    move-result-object v2

    .line 20
    invoke-virtual {v15, v1, v2}, Lcom/shabakaty/downloader/m20;->e1(Ljava/util/List;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/m20;

    .line 21
    invoke-interface/range {v17 .. v17}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/shabakaty/downloader/yn1;->b1(Lcom/shabakaty/downloader/qe2;)V

    .line 22
    sget-object v1, Lcom/shabakaty/downloader/zd1;->n:Lcom/shabakaty/downloader/zd1$b;

    .line 23
    iget v2, v13, Lcom/shabakaty/downloader/li3;->u:I

    .line 24
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 25
    iput-boolean v1, v15, Lcom/shabakaty/downloader/yn1;->M:Z

    return-object v15
.end method

.method public final f(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/t64;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    const-string v1, "proto"

    invoke-static {v13, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, v13, Lcom/shabakaty/downloader/qi3;->t:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget v1, v13, Lcom/shabakaty/downloader/qi3;->u:I

    goto :goto_1

    .line 3
    :cond_1
    iget v1, v13, Lcom/shabakaty/downloader/qi3;->v:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    :goto_1
    move v14, v1

    .line 4
    sget-object v15, Lcom/shabakaty/downloader/i8;->r:Lcom/shabakaty/downloader/i8;

    invoke-virtual {v0, v13, v14, v15}, Lcom/shabakaty/downloader/jr2;->b(Lcom/shabakaty/downloader/es2;ILcom/shabakaty/downloader/i8;)Lcom/shabakaty/downloader/d9;

    move-result-object v4

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/bp;->m(Lcom/shabakaty/downloader/qi3;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/sr0;

    iget-object v2, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/kr2;

    invoke-direct {v3, v0, v13, v15}, Lcom/shabakaty/downloader/kr2;-><init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)V

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/sr0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    goto :goto_2

    .line 10
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    :goto_2
    move-object v12, v1

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 13
    invoke-static {v1}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    iget-object v2, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 15
    iget v3, v13, Lcom/shabakaty/downloader/qi3;->w:I

    .line 16
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/si4;->a:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    sget-object v1, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    .line 18
    sget-object v1, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    sget-object v1, Lcom/shabakaty/downloader/f05;->c:Lcom/shabakaty/downloader/f05;

    goto :goto_3

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 20
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->e:Lcom/shabakaty/downloader/f05;

    :goto_3
    move-object v10, v1

    .line 21
    new-instance v11, Lcom/shabakaty/downloader/is0;

    .line 22
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 23
    iget-object v2, v1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    const/4 v3, 0x0

    .line 24
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 25
    iget v5, v13, Lcom/shabakaty/downloader/qi3;->w:I

    .line 26
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 27
    sget-object v9, Lcom/shabakaty/downloader/hj3;->a:Lcom/shabakaty/downloader/hj3;

    sget-object v1, Lcom/shabakaty/downloader/zd1;->o:Lcom/shabakaty/downloader/zd1$d;

    invoke-virtual {v1, v14}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ri3;

    invoke-static {v9, v1}, Lcom/shabakaty/downloader/ij3;->b(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/ri3;)Lcom/shabakaty/downloader/tq$a;

    move-result-object v6

    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 28
    iget-object v8, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 29
    iget-object v7, v1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 30
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->g:Lcom/shabakaty/downloader/as0;

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object v1, v11

    move-object/from16 v18, v7

    move-object/from16 v7, p1

    move-object/from16 v25, v9

    move-object/from16 v9, v18

    move-object/from16 v26, v11

    move-object/from16 v11, v17

    move/from16 v27, v14

    move-object v14, v12

    move-object/from16 v12, v16

    .line 31
    invoke-direct/range {v1 .. v12}, Lcom/shabakaty/downloader/is0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/s94;)V

    .line 32
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 33
    iget-object v2, v13, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    const-string v3, "proto.typeParameterList"

    .line 34
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3c

    move-object/from16 v16, v1

    move-object/from16 v17, v26

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v23}, Lcom/shabakaty/downloader/rr0;->b(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;I)Lcom/shabakaty/downloader/rr0;

    move-result-object v1

    .line 35
    iget-object v2, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 36
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 37
    invoke-static {v13, v2}, Lcom/shabakaty/downloader/bp;->s(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v17, v2

    move-object/from16 v3, v26

    goto :goto_4

    .line 38
    :cond_4
    iget-object v3, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 39
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    move-object/from16 v3, v26

    .line 40
    invoke-static {v3, v2, v14}, Lcom/shabakaty/downloader/tq0;->f(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/ao3;

    move-result-object v2

    move-object/from16 v17, v2

    .line 41
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/jr2;->c()Lcom/shabakaty/downloader/ao3;

    move-result-object v18

    .line 42
    iget-object v2, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 43
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xs4;->c()Ljava/util/List;

    move-result-object v19

    .line 44
    iget-object v2, v1, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    .line 45
    iget-object v4, v13, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    const-string v5, "proto.valueParameterList"

    .line 46
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v13, v15}, Lcom/shabakaty/downloader/jr2;->i(Ljava/util/List;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;

    move-result-object v20

    .line 47
    iget-object v2, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 48
    iget-object v4, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 49
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 50
    invoke-static {v13, v4}, Lcom/shabakaty/downloader/bp;->t(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v21

    .line 51
    sget-object v2, Lcom/shabakaty/downloader/zd1;->e:Lcom/shabakaty/downloader/zd1$d;

    move/from16 v4, v27

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/si3;

    move-object/from16 v5, v25

    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/hj3;->a(Lcom/shabakaty/downloader/si3;)Lcom/shabakaty/downloader/eu2;

    move-result-object v22

    .line 52
    sget-object v2, Lcom/shabakaty/downloader/zd1;->d:Lcom/shabakaty/downloader/zd1$d;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fj3;

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/ij3;->a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;

    move-result-object v23

    .line 53
    sget-object v24, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    move-object/from16 v16, v3

    .line 54
    invoke-virtual/range {v16 .. v24}, Lcom/shabakaty/downloader/u64;->g1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Ljava/util/Map;)Lcom/shabakaty/downloader/u64;

    .line 55
    sget-object v2, Lcom/shabakaty/downloader/zd1;->p:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "IS_OPERATOR.get(flags)"

    invoke-static {v2, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 56
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->C:Z

    .line 57
    sget-object v2, Lcom/shabakaty/downloader/zd1;->q:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "IS_INFIX.get(flags)"

    invoke-static {v2, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 58
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->D:Z

    .line 59
    sget-object v2, Lcom/shabakaty/downloader/zd1;->t:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "IS_EXTERNAL_FUNCTION.get(flags)"

    invoke-static {v2, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 60
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->E:Z

    .line 61
    sget-object v2, Lcom/shabakaty/downloader/zd1;->r:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "IS_INLINE.get(flags)"

    invoke-static {v2, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 62
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->F:Z

    .line 63
    sget-object v2, Lcom/shabakaty/downloader/zd1;->s:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "IS_TAILREC.get(flags)"

    invoke-static {v2, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 64
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->G:Z

    .line 65
    sget-object v2, Lcom/shabakaty/downloader/zd1;->u:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "IS_SUSPEND.get(flags)"

    invoke-static {v2, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 66
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->L:Z

    .line 67
    sget-object v2, Lcom/shabakaty/downloader/zd1;->v:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "IS_EXPECT_FUNCTION.get(flags)"

    invoke-static {v2, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    .line 68
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->H:Z

    .line 69
    sget-object v2, Lcom/shabakaty/downloader/zd1;->w:Lcom/shabakaty/downloader/zd1$b;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 70
    iput-boolean v2, v3, Lcom/shabakaty/downloader/yn1;->M:Z

    .line 71
    iget-object v2, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 72
    iget-object v4, v2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 73
    iget-object v4, v4, Lcom/shabakaty/downloader/or0;->m:Lcom/shabakaty/downloader/ae0;

    .line 74
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 75
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 76
    invoke-interface {v4, v13, v3, v2, v1}, Lcom/shabakaty/downloader/ae0;->a(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/xs4;)Lcom/shabakaty/downloader/x93;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 77
    iget-object v2, v1, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 78
    check-cast v2, Lcom/shabakaty/downloader/rq$a;

    .line 79
    iget-object v1, v1, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 80
    invoke-virtual {v3, v2, v1}, Lcom/shabakaty/downloader/yn1;->Y0(Lcom/shabakaty/downloader/rq$a;Ljava/lang/Object;)V

    :cond_5
    return-object v3
.end method

.method public final g(Lcom/shabakaty/downloader/vi3;)Lcom/shabakaty/downloader/yh3;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    sget-object v3, Lcom/shabakaty/downloader/i8;->t:Lcom/shabakaty/downloader/i8;

    const-string v1, "proto"

    invoke-static {v15, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, v15, Lcom/shabakaty/downloader/vi3;->t:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget v1, v15, Lcom/shabakaty/downloader/vi3;->u:I

    goto :goto_1

    .line 3
    :cond_1
    iget v1, v15, Lcom/shabakaty/downloader/vi3;->v:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    :goto_1
    move v14, v1

    .line 4
    new-instance v13, Lcom/shabakaty/downloader/hs0;

    move-object v1, v13

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 7
    sget-object v4, Lcom/shabakaty/downloader/i8;->s:Lcom/shabakaty/downloader/i8;

    invoke-virtual {v0, v15, v14, v4}, Lcom/shabakaty/downloader/jr2;->b(Lcom/shabakaty/downloader/es2;ILcom/shabakaty/downloader/i8;)Lcom/shabakaty/downloader/d9;

    move-result-object v4

    .line 8
    sget-object v12, Lcom/shabakaty/downloader/hj3;->a:Lcom/shabakaty/downloader/hj3;

    sget-object v11, Lcom/shabakaty/downloader/zd1;->e:Lcom/shabakaty/downloader/zd1$d;

    invoke-virtual {v11, v14}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/si3;

    invoke-virtual {v12, v5}, Lcom/shabakaty/downloader/hj3;->a(Lcom/shabakaty/downloader/si3;)Lcom/shabakaty/downloader/eu2;

    move-result-object v5

    .line 9
    sget-object v10, Lcom/shabakaty/downloader/zd1;->d:Lcom/shabakaty/downloader/zd1$d;

    invoke-virtual {v10, v14}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/fj3;

    invoke-static {v12, v6}, Lcom/shabakaty/downloader/ij3;->a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;

    move-result-object v6

    .line 10
    sget-object v7, Lcom/shabakaty/downloader/zd1;->x:Lcom/shabakaty/downloader/zd1$b;

    const-string v8, "IS_VAR.get(flags)"

    invoke-static {v7, v14, v8}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v7

    .line 11
    iget-object v8, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 12
    iget-object v8, v8, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 13
    iget v9, v15, Lcom/shabakaty/downloader/vi3;->w:I

    .line 14
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    .line 15
    sget-object v9, Lcom/shabakaty/downloader/zd1;->o:Lcom/shabakaty/downloader/zd1$d;

    invoke-virtual {v9, v14}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ri3;

    invoke-static {v12, v9}, Lcom/shabakaty/downloader/ij3;->b(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/ri3;)Lcom/shabakaty/downloader/tq$a;

    move-result-object v9

    move-object/from16 v20, v3

    .line 16
    sget-object v3, Lcom/shabakaty/downloader/zd1;->B:Lcom/shabakaty/downloader/zd1$b;

    move-object/from16 v16, v10

    const-string v10, "IS_LATEINIT.get(flags)"

    invoke-static {v3, v14, v10}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v10

    move-object/from16 v3, v16

    move-object/from16 v21, v3

    .line 17
    sget-object v3, Lcom/shabakaty/downloader/zd1;->A:Lcom/shabakaty/downloader/zd1$b;

    move-object/from16 v16, v11

    const-string v11, "IS_CONST.get(flags)"

    invoke-static {v3, v14, v11}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v11

    move-object/from16 v3, v16

    move-object/from16 v22, v3

    .line 18
    sget-object v3, Lcom/shabakaty/downloader/zd1;->D:Lcom/shabakaty/downloader/zd1$b;

    move-object/from16 v16, v12

    const-string v12, "IS_EXTERNAL_PROPERTY.get(flags)"

    invoke-static {v3, v14, v12}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v12

    move-object/from16 v3, v16

    move-object/from16 v23, v3

    .line 19
    sget-object v3, Lcom/shabakaty/downloader/zd1;->E:Lcom/shabakaty/downloader/zd1$b;

    move-object/from16 v16, v13

    const-string v13, "IS_DELEGATED.get(flags)"

    invoke-static {v3, v14, v13}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v13

    move-object/from16 v3, v16

    move-object/from16 v24, v3

    .line 20
    sget-object v3, Lcom/shabakaty/downloader/zd1;->F:Lcom/shabakaty/downloader/zd1$b;

    const-string v15, "IS_EXPECT_PROPERTY.get(flags)"

    invoke-static {v3, v14, v15}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v3

    move v15, v14

    move v14, v3

    .line 21
    iget-object v3, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    move/from16 v25, v15

    .line 22
    iget-object v15, v3, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    move-object/from16 v16, v15

    .line 23
    iget-object v15, v3, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    move-object/from16 v17, v15

    .line 24
    iget-object v15, v3, Lcom/shabakaty/downloader/rr0;->e:Lcom/shabakaty/downloader/f05;

    move-object/from16 v18, v15

    .line 25
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->g:Lcom/shabakaty/downloader/as0;

    move-object/from16 v19, v3

    const/4 v3, 0x0

    move-object/from16 v15, v20

    move-object/from16 v29, v21

    move-object/from16 v28, v22

    move-object/from16 v27, v23

    move-object/from16 v26, v24

    move-object/from16 v30, v15

    move/from16 v31, v25

    move-object/from16 v15, p1

    .line 26
    invoke-direct/range {v1 .. v19}, Lcom/shabakaty/downloader/hs0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;ZZZZZLcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;)V

    .line 27
    iget-object v4, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    move-object/from16 v1, p1

    .line 28
    iget-object v6, v1, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    .line 29
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c

    move-object/from16 v5, v26

    invoke-static/range {v4 .. v11}, Lcom/shabakaty/downloader/rr0;->b(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;I)Lcom/shabakaty/downloader/rr0;

    move-result-object v12

    .line 30
    sget-object v2, Lcom/shabakaty/downloader/zd1;->y:Lcom/shabakaty/downloader/zd1$b;

    const-string v3, "HAS_GETTER.get(flags)"

    move/from16 v4, v31

    invoke-static {v2, v4, v3}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/bp;->n(Lcom/shabakaty/downloader/vi3;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 32
    new-instance v3, Lcom/shabakaty/downloader/sr0;

    iget-object v5, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 33
    iget-object v5, v5, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 34
    iget-object v5, v5, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 35
    new-instance v6, Lcom/shabakaty/downloader/kr2;

    move-object/from16 v7, v30

    invoke-direct {v6, v0, v1, v7}, Lcom/shabakaty/downloader/kr2;-><init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)V

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/sr0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, v30

    .line 36
    sget-object v3, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 37
    :goto_2
    iget-object v5, v12, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 38
    iget-object v6, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 39
    iget-object v6, v6, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 40
    invoke-static {v1, v6}, Lcom/shabakaty/downloader/bp;->u(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    .line 41
    iget-object v6, v12, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 42
    invoke-virtual {v6}, Lcom/shabakaty/downloader/xs4;->c()Ljava/util/List;

    move-result-object v6

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/jr2;->c()Lcom/shabakaty/downloader/ao3;

    move-result-object v8

    .line 44
    iget-object v9, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 45
    iget-object v9, v9, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    const-string v10, "typeTable"

    .line 46
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/vi3;->q()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 48
    iget-object v9, v1, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    goto :goto_3

    .line 49
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/vi3;->r()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 50
    iget v10, v1, Lcom/shabakaty/downloader/vi3;->B:I

    .line 51
    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_5

    const/4 v3, 0x0

    move-object/from16 v10, v26

    goto :goto_4

    .line 52
    :cond_5
    iget-object v10, v12, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 53
    invoke-virtual {v10, v9}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v9

    move-object/from16 v10, v26

    .line 54
    invoke-static {v10, v9, v3}, Lcom/shabakaty/downloader/tq0;->f(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/ao3;

    move-result-object v3

    .line 55
    :goto_4
    invoke-virtual {v10, v5, v6, v8, v3}, Lcom/shabakaty/downloader/zh3;->Y0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;)V

    .line 56
    sget-object v3, Lcom/shabakaty/downloader/zd1;->c:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v5

    move-object/from16 v6, v29

    .line 57
    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/fj3;

    move-object/from16 v9, v28

    .line 58
    invoke-virtual {v9, v4}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/si3;

    if-eqz v8, :cond_10

    if-eqz v11, :cond_f

    .line 59
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/zd1$b;->d(Ljava/lang/Boolean;)I

    move-result v3

    move-object v5, v9

    check-cast v5, Lcom/shabakaty/downloader/zd1$c;

    .line 60
    iget v11, v11, Lcom/shabakaty/downloader/si3;->r:I

    .line 61
    iget v5, v5, Lcom/shabakaty/downloader/zd1$d;->a:I

    shl-int v5, v11, v5

    or-int/2addr v3, v5

    .line 62
    move-object v5, v6

    check-cast v5, Lcom/shabakaty/downloader/zd1$c;

    .line 63
    iget v8, v8, Lcom/shabakaty/downloader/fj3;->r:I

    .line 64
    iget v5, v5, Lcom/shabakaty/downloader/zd1$d;->a:I

    shl-int v5, v8, v5

    or-int/2addr v3, v5

    .line 65
    sget-object v5, Lcom/shabakaty/downloader/zd1;->J:Lcom/shabakaty/downloader/zd1$b;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/zd1$b;->d(Ljava/lang/Boolean;)I

    move-result v11

    or-int/2addr v3, v11

    sget-object v11, Lcom/shabakaty/downloader/zd1;->K:Lcom/shabakaty/downloader/zd1$b;

    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/zd1$b;->d(Ljava/lang/Boolean;)I

    move-result v13

    or-int/2addr v3, v13

    sget-object v13, Lcom/shabakaty/downloader/zd1;->L:Lcom/shabakaty/downloader/zd1$b;

    invoke-virtual {v13, v8}, Lcom/shabakaty/downloader/zd1$b;->d(Ljava/lang/Boolean;)I

    move-result v8

    or-int/2addr v3, v8

    if-eqz v2, :cond_9

    .line 66
    iget v2, v1, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v8, 0x100

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_7

    .line 67
    iget v2, v1, Lcom/shabakaty/downloader/vi3;->D:I

    goto :goto_6

    :cond_7
    move v2, v3

    :goto_6
    const-string v8, "IS_NOT_DEFAULT.get(getterFlags)"

    .line 68
    invoke-static {v5, v2, v8}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v8

    const-string v14, "IS_EXTERNAL_ACCESSOR.get(getterFlags)"

    .line 69
    invoke-static {v11, v2, v14}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v21

    const-string v14, "IS_INLINE_ACCESSOR.get(getterFlags)"

    .line 70
    invoke-static {v13, v2, v14}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v22

    .line 71
    invoke-virtual {v0, v1, v2, v7}, Lcom/shabakaty/downloader/jr2;->b(Lcom/shabakaty/downloader/es2;ILcom/shabakaty/downloader/i8;)Lcom/shabakaty/downloader/d9;

    move-result-object v7

    if-eqz v8, :cond_8

    .line 72
    new-instance v14, Lcom/shabakaty/downloader/bi3;

    .line 73
    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shabakaty/downloader/si3;

    move/from16 v26, v3

    move-object/from16 v3, v27

    invoke-virtual {v3, v15}, Lcom/shabakaty/downloader/hj3;->a(Lcom/shabakaty/downloader/si3;)Lcom/shabakaty/downloader/eu2;

    move-result-object v18

    .line 74
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fj3;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/ij3;->a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;

    move-result-object v19

    const/4 v2, 0x1

    xor-int/lit8 v20, v8, 0x1

    .line 75
    invoke-virtual {v10}, Lcom/shabakaty/downloader/zh3;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v23

    const/16 v24, 0x0

    sget-object v25, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v15, v14

    move-object/from16 v16, v10

    move-object/from16 v17, v7

    .line 76
    invoke-direct/range {v15 .. v25}, Lcom/shabakaty/downloader/bi3;-><init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/ai3;Lcom/shabakaty/downloader/s94;)V

    goto :goto_7

    :cond_8
    move/from16 v26, v3

    move-object/from16 v3, v27

    const/4 v2, 0x1

    .line 77
    invoke-static {v10, v7}, Lcom/shabakaty/downloader/tq0;->b(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bi3;

    move-result-object v14

    .line 78
    :goto_7
    invoke-virtual {v10}, Lcom/shabakaty/downloader/zh3;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/shabakaty/downloader/bi3;->V0(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_8

    :cond_9
    move/from16 v26, v3

    move-object/from16 v3, v27

    const/4 v2, 0x1

    const/4 v14, 0x0

    :goto_8
    move-object v7, v14

    .line 79
    sget-object v8, Lcom/shabakaty/downloader/zd1;->z:Lcom/shabakaty/downloader/zd1$b;

    const-string v14, "HAS_SETTER.get(flags)"

    invoke-static {v8, v4, v14}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 80
    iget v8, v1, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v14, 0x200

    and-int/2addr v8, v14

    if-ne v8, v14, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_b

    .line 81
    iget v8, v1, Lcom/shabakaty/downloader/vi3;->E:I

    goto :goto_a

    :cond_b
    move/from16 v8, v26

    :goto_a
    const-string v14, "IS_NOT_DEFAULT.get(setterFlags)"

    .line 82
    invoke-static {v5, v8, v14}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v5

    const-string v14, "IS_EXTERNAL_ACCESSOR.get(setterFlags)"

    .line 83
    invoke-static {v11, v8, v14}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v21

    const-string v11, "IS_INLINE_ACCESSOR.get(setterFlags)"

    .line 84
    invoke-static {v13, v8, v11}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v22

    .line 85
    sget-object v11, Lcom/shabakaty/downloader/i8;->u:Lcom/shabakaty/downloader/i8;

    invoke-virtual {v0, v1, v8, v11}, Lcom/shabakaty/downloader/jr2;->b(Lcom/shabakaty/downloader/es2;ILcom/shabakaty/downloader/i8;)Lcom/shabakaty/downloader/d9;

    move-result-object v13

    if-eqz v5, :cond_c

    .line 86
    new-instance v14, Lcom/shabakaty/downloader/gi3;

    .line 87
    invoke-virtual {v9, v8}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/si3;

    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/hj3;->a(Lcom/shabakaty/downloader/si3;)Lcom/shabakaty/downloader/eu2;

    move-result-object v18

    .line 88
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/fj3;

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/ij3;->a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;

    move-result-object v19

    xor-int/lit8 v20, v5, 0x1

    .line 89
    invoke-virtual {v10}, Lcom/shabakaty/downloader/zh3;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v23

    const/16 v24, 0x0

    sget-object v25, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v15, v14

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    .line 90
    invoke-direct/range {v15 .. v25}, Lcom/shabakaty/downloader/gi3;-><init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/s94;)V

    .line 91
    sget-object v3, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3c

    move-object v13, v14

    move-object v5, v14

    move-object v14, v3

    invoke-static/range {v12 .. v19}, Lcom/shabakaty/downloader/rr0;->b(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;I)Lcom/shabakaty/downloader/rr0;

    move-result-object v3

    .line 92
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    .line 93
    iget-object v6, v1, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    .line 94
    invoke-static {v6}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 95
    invoke-virtual {v3, v6, v1, v11}, Lcom/shabakaty/downloader/jr2;->i(Ljava/util/List;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;

    move-result-object v3

    .line 96
    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/sz4;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/gi3;->W0(Lcom/shabakaty/downloader/sz4;)V

    move-object v14, v5

    goto :goto_b

    .line 97
    :cond_c
    sget-object v3, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 98
    invoke-static {v10, v13, v3}, Lcom/shabakaty/downloader/tq0;->c(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/gi3;

    move-result-object v14

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    .line 99
    :goto_b
    sget-object v3, Lcom/shabakaty/downloader/zd1;->C:Lcom/shabakaty/downloader/zd1$b;

    const-string v5, "HAS_CONSTANT.get(flags)"

    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 100
    iget-object v3, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 101
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 102
    iget-object v3, v3, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 103
    new-instance v4, Lcom/shabakaty/downloader/jr2$c;

    invoke-direct {v4, v0, v1, v10}, Lcom/shabakaty/downloader/jr2$c;-><init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/hs0;)V

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object v3

    .line 104
    invoke-virtual {v10, v3}, Lcom/shabakaty/downloader/wz4;->T0(Lcom/shabakaty/downloader/w13;)V

    .line 105
    :cond_e
    new-instance v3, Lcom/shabakaty/downloader/oa1;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/shabakaty/downloader/jr2;->d(Lcom/shabakaty/downloader/vi3;Z)Lcom/shabakaty/downloader/d9;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/shabakaty/downloader/oa1;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/yh3;)V

    .line 106
    new-instance v4, Lcom/shabakaty/downloader/oa1;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/jr2;->d(Lcom/shabakaty/downloader/vi3;Z)Lcom/shabakaty/downloader/d9;

    move-result-object v1

    invoke-direct {v4, v1, v10}, Lcom/shabakaty/downloader/oa1;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/yh3;)V

    .line 107
    invoke-virtual {v10, v7, v14, v3, v4}, Lcom/shabakaty/downloader/zh3;->W0(Lcom/shabakaty/downloader/bi3;Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/na1;Lcom/shabakaty/downloader/na1;)V

    return-object v10

    :cond_f
    const/16 v1, 0xb

    .line 108
    invoke-static {v1}, Lcom/shabakaty/downloader/zd1;->a(I)V

    const/4 v1, 0x0

    throw v1

    :cond_10
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/shabakaty/downloader/zd1;->a(I)V

    throw v1
.end method

.method public final h(Lcom/shabakaty/downloader/zi3;)Lcom/shabakaty/downloader/hs4;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v12, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    .line 2
    iget-object v1, v12, Lcom/shabakaty/downloader/zi3;->B:Ljava/util/List;

    const-string v2, "proto.annotationList"

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/ii3;

    .line 7
    iget-object v4, v0, Lcom/shabakaty/downloader/jr2;->b:Lcom/shabakaty/downloader/t8;

    const-string v5, "it"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 8
    iget-object v5, v5, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 9
    invoke-virtual {v4, v3, v5}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/e9;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    :goto_1
    move-object v4, v1

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/hj3;->a:Lcom/shabakaty/downloader/hj3;

    sget-object v2, Lcom/shabakaty/downloader/zd1;->d:Lcom/shabakaty/downloader/zd1$d;

    .line 12
    iget v3, v12, Lcom/shabakaty/downloader/zi3;->u:I

    .line 13
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fj3;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/ij3;->a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;

    move-result-object v6

    .line 14
    new-instance v15, Lcom/shabakaty/downloader/js0;

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 16
    iget-object v2, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 18
    iget-object v3, v1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 19
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 20
    iget v5, v12, Lcom/shabakaty/downloader/zi3;->v:I

    .line 21
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 22
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 23
    iget-object v8, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 24
    iget-object v9, v1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 25
    iget-object v10, v1, Lcom/shabakaty/downloader/rr0;->e:Lcom/shabakaty/downloader/f05;

    .line 26
    iget-object v11, v1, Lcom/shabakaty/downloader/rr0;->g:Lcom/shabakaty/downloader/as0;

    move-object v1, v15

    move-object/from16 v7, p1

    .line 27
    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/js0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/zi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;)V

    .line 28
    iget-object v13, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 29
    iget-object v1, v12, Lcom/shabakaty/downloader/zi3;->w:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    .line 30
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3c

    move-object v14, v15

    move-object v2, v15

    move-object v15, v1

    invoke-static/range {v13 .. v20}, Lcom/shabakaty/downloader/rr0;->b(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;I)Lcom/shabakaty/downloader/rr0;

    move-result-object v1

    .line 31
    iget-object v3, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 32
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xs4;->c()Ljava/util/List;

    move-result-object v3

    .line 33
    iget-object v4, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 34
    iget-object v5, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 35
    iget-object v5, v5, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    const-string v6, "typeTable"

    .line 36
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zi3;->r()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 38
    iget-object v5, v12, Lcom/shabakaty/downloader/zi3;->x:Lcom/shabakaty/downloader/yi3;

    const-string v7, "underlyingType"

    .line 39
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_2
    iget v7, v12, Lcom/shabakaty/downloader/zi3;->t:I

    const/16 v10, 0x8

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_7

    .line 41
    iget v7, v12, Lcom/shabakaty/downloader/zi3;->y:I

    .line 42
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v5

    .line 43
    :goto_3
    invoke-virtual {v4, v5, v9}, Lcom/shabakaty/downloader/xs4;->e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v4

    .line 44
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 45
    iget-object v5, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 46
    iget-object v5, v5, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 47
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/zi3;->q()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 49
    iget-object v5, v12, Lcom/shabakaty/downloader/zi3;->z:Lcom/shabakaty/downloader/yi3;

    const-string v6, "expandedType"

    .line 50
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 51
    :cond_4
    iget v6, v12, Lcom/shabakaty/downloader/zi3;->t:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_6

    .line 52
    iget v6, v12, Lcom/shabakaty/downloader/zi3;->A:I

    .line 53
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v5

    .line 54
    :goto_5
    invoke-virtual {v1, v5, v9}, Lcom/shabakaty/downloader/xs4;->e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 55
    invoke-virtual {v2, v3, v4, v1}, Lcom/shabakaty/downloader/js0;->S0(Ljava/util/List;Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v2

    .line 56
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No expandedType in ProtoBuf.TypeAlias"

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No underlyingType in ProtoBuf.TypeAlias"

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i(Ljava/util/List;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cj3;",
            ">;",
            "Lcom/shabakaty/downloader/es2;",
            "Lcom/shabakaty/downloader/i8;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 3
    move-object/from16 v20, v0

    check-cast v20, Lcom/shabakaty/downloader/rq;

    .line 4
    invoke-interface/range {v20 .. v20}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/jr2;->a(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gj3;

    move-result-object v21

    .line 5
    new-instance v15, Ljava/util/ArrayList;

    const/16 v0, 0xa

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v23, v11, 0x1

    const/4 v8, 0x0

    if-ltz v11, :cond_7

    .line 7
    move-object v9, v0

    check-cast v9, Lcom/shabakaty/downloader/cj3;

    .line 8
    iget v0, v9, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 9
    iget v0, v9, Lcom/shabakaty/downloader/cj3;->u:I

    move v10, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_2
    if-eqz v21, :cond_2

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/zd1;->c:Lcom/shabakaty/downloader/zd1$b;

    const-string v1, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v0, v10, v1}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v12, Lcom/shabakaty/downloader/xz2;

    iget-object v0, v7, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 13
    iget-object v13, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 14
    new-instance v14, Lcom/shabakaty/downloader/jr2$d;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v11

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/jr2$d;-><init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;ILcom/shabakaty/downloader/cj3;)V

    .line 15
    invoke-direct {v12, v13, v14}, Lcom/shabakaty/downloader/xz2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    goto :goto_3

    .line 16
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    move-object v12, v0

    :goto_3
    const/4 v0, 0x0

    .line 17
    iget-object v1, v7, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 19
    iget v2, v9, Lcom/shabakaty/downloader/cj3;->v:I

    .line 20
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v13

    .line 21
    iget-object v1, v7, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 22
    iget-object v2, v1, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 23
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 24
    invoke-static {v9, v1}, Lcom/shabakaty/downloader/bp;->v(Lcom/shabakaty/downloader/cj3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v14

    .line 25
    sget-object v1, Lcom/shabakaty/downloader/zd1;->G:Lcom/shabakaty/downloader/zd1$b;

    const-string v2, "DECLARES_DEFAULT_VALUE.get(flags)"

    invoke-static {v1, v10, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v1

    .line 26
    sget-object v2, Lcom/shabakaty/downloader/zd1;->H:Lcom/shabakaty/downloader/zd1$b;

    const-string v3, "IS_CROSSINLINE.get(flags)"

    invoke-static {v2, v10, v3}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v16

    .line 27
    sget-object v2, Lcom/shabakaty/downloader/zd1;->I:Lcom/shabakaty/downloader/zd1$b;

    const-string v3, "IS_NOINLINE.get(flags)"

    invoke-static {v2, v10, v3}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v17

    .line 28
    iget-object v2, v7, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 29
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    const-string v3, "typeTable"

    .line 30
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v9}, Lcom/shabakaty/downloader/cj3;->r()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    iget-object v2, v9, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    goto :goto_5

    .line 33
    :cond_3
    iget v3, v9, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_5

    .line 34
    iget v3, v9, Lcom/shabakaty/downloader/cj3;->z:I

    .line 35
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v8

    :goto_5
    if-nez v2, :cond_6

    move-object/from16 v18, v8

    goto :goto_6

    .line 36
    :cond_6
    iget-object v3, v7, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 37
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 38
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    move-object/from16 v18, v2

    .line 39
    :goto_6
    sget-object v19, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    .line 40
    new-instance v2, Lcom/shabakaty/downloader/tz4;

    move-object v8, v2

    move-object/from16 v9, v20

    move-object v10, v0

    move-object v0, v15

    move v15, v1

    invoke-direct/range {v8 .. v19}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v0

    move/from16 v11, v23

    goto/16 :goto_0

    .line 41
    :cond_7
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v8

    :cond_8
    move-object v0, v15

    .line 42
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
