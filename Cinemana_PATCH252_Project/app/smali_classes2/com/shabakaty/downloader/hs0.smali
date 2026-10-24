.class public final Lcom/shabakaty/downloader/hs0;
.super Lcom/shabakaty/downloader/zh3;
.source "DeserializedMemberDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ur0;


# instance fields
.field public final R:Lcom/shabakaty/downloader/vi3;

.field public final S:Lcom/shabakaty/downloader/jw2;

.field public final T:Lcom/shabakaty/downloader/bu4;

.field public final U:Lcom/shabakaty/downloader/f05;

.field public final V:Lcom/shabakaty/downloader/as0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;ZZZZZLcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v9, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, v16

    move/from16 v14, p11

    move/from16 v15, p12

    .line 2
    invoke-direct/range {v0 .. v15}, Lcom/shabakaty/downloader/zh3;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;ZZZZZZ)V

    move-object/from16 v1, p14

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/hs0;->R:Lcom/shabakaty/downloader/vi3;

    move-object/from16 v1, p15

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/hs0;->S:Lcom/shabakaty/downloader/jw2;

    move-object/from16 v1, p16

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/hs0;->T:Lcom/shabakaty/downloader/bu4;

    move-object/from16 v1, p17

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/hs0;->U:Lcom/shabakaty/downloader/f05;

    move-object/from16 v1, p18

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/hs0;->V:Lcom/shabakaty/downloader/as0;

    return-void
.end method


# virtual methods
.method public K()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hs0;->R:Lcom/shabakaty/downloader/vi3;

    return-object v0
.end method

.method public U0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/zh3;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newModality"

    move-object/from16 v6, p2

    invoke-static {v6, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newVisibility"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v10, p5

    invoke-static {v10, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/hs0;

    move-object v2, v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    .line 3
    iget-boolean v8, v0, Lcom/shabakaty/downloader/wz4;->w:Z

    .line 4
    iget-boolean v11, v0, Lcom/shabakaty/downloader/zh3;->D:Z

    .line 5
    iget-boolean v12, v0, Lcom/shabakaty/downloader/zh3;->E:Z

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/hs0;->l()Z

    move-result v13

    .line 7
    iget-boolean v14, v0, Lcom/shabakaty/downloader/zh3;->I:Z

    .line 8
    iget-boolean v15, v0, Lcom/shabakaty/downloader/zh3;->F:Z

    .line 9
    iget-object v4, v0, Lcom/shabakaty/downloader/hs0;->R:Lcom/shabakaty/downloader/vi3;

    move-object/from16 v16, v4

    .line 10
    iget-object v4, v0, Lcom/shabakaty/downloader/hs0;->S:Lcom/shabakaty/downloader/jw2;

    move-object/from16 v17, v4

    .line 11
    iget-object v4, v0, Lcom/shabakaty/downloader/hs0;->T:Lcom/shabakaty/downloader/bu4;

    move-object/from16 v18, v4

    .line 12
    iget-object v4, v0, Lcom/shabakaty/downloader/hs0;->U:Lcom/shabakaty/downloader/f05;

    move-object/from16 v19, v4

    .line 13
    iget-object v4, v0, Lcom/shabakaty/downloader/hs0;->V:Lcom/shabakaty/downloader/as0;

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    .line 14
    invoke-direct/range {v2 .. v20}, Lcom/shabakaty/downloader/hs0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;ZZZZZLcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;)V

    return-object v1
.end method

.method public a0()Lcom/shabakaty/downloader/bu4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hs0;->T:Lcom/shabakaty/downloader/bu4;

    return-object v0
.end method

.method public k0()Lcom/shabakaty/downloader/jw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hs0;->S:Lcom/shabakaty/downloader/jw2;

    return-object v0
.end method

.method public l()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->D:Lcom/shabakaty/downloader/zd1$b;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/hs0;->R:Lcom/shabakaty/downloader/vi3;

    .line 3
    iget v1, v1, Lcom/shabakaty/downloader/vi3;->u:I

    const-string v2, "IS_EXTERNAL_PROPERTY.get(proto.flags)"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m0()Lcom/shabakaty/downloader/as0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hs0;->V:Lcom/shabakaty/downloader/as0;

    return-object v0
.end method
