.class public final Lcom/shabakaty/downloader/is0;
.super Lcom/shabakaty/downloader/u64;
.source "DeserializedMemberDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ur0;


# instance fields
.field public final U:Lcom/shabakaty/downloader/qi3;

.field public final V:Lcom/shabakaty/downloader/jw2;

.field public final W:Lcom/shabakaty/downloader/bu4;

.field public final X:Lcom/shabakaty/downloader/f05;

.field public final Y:Lcom/shabakaty/downloader/as0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/s94;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

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

    if-nez p11, :cond_0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/u64;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 3
    iput-object v8, v7, Lcom/shabakaty/downloader/is0;->U:Lcom/shabakaty/downloader/qi3;

    .line 4
    iput-object v9, v7, Lcom/shabakaty/downloader/is0;->V:Lcom/shabakaty/downloader/jw2;

    .line 5
    iput-object v10, v7, Lcom/shabakaty/downloader/is0;->W:Lcom/shabakaty/downloader/bu4;

    .line 6
    iput-object v11, v7, Lcom/shabakaty/downloader/is0;->X:Lcom/shabakaty/downloader/f05;

    move-object/from16 v0, p10

    .line 7
    iput-object v0, v7, Lcom/shabakaty/downloader/is0;->Y:Lcom/shabakaty/downloader/as0;

    return-void
.end method


# virtual methods
.method public K()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/is0;->U:Lcom/shabakaty/downloader/qi3;

    return-object v0
.end method

.method public T0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/yn1;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object v3, p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/is0;

    .line 2
    move-object/from16 v4, p2

    check-cast v4, Lcom/shabakaty/downloader/t64;

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    const-string v6, "name"

    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    .line 3
    :goto_0
    iget-object v8, v0, Lcom/shabakaty/downloader/is0;->U:Lcom/shabakaty/downloader/qi3;

    .line 4
    iget-object v9, v0, Lcom/shabakaty/downloader/is0;->V:Lcom/shabakaty/downloader/jw2;

    .line 5
    iget-object v10, v0, Lcom/shabakaty/downloader/is0;->W:Lcom/shabakaty/downloader/bu4;

    .line 6
    iget-object v11, v0, Lcom/shabakaty/downloader/is0;->X:Lcom/shabakaty/downloader/f05;

    .line 7
    iget-object v12, v0, Lcom/shabakaty/downloader/is0;->Y:Lcom/shabakaty/downloader/as0;

    move-object v2, v1

    move-object v3, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move-object/from16 v13, p6

    .line 8
    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/is0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/s94;)V

    .line 9
    iget-boolean v2, v0, Lcom/shabakaty/downloader/yn1;->M:Z

    .line 10
    iput-boolean v2, v1, Lcom/shabakaty/downloader/yn1;->M:Z

    return-object v1
.end method

.method public a0()Lcom/shabakaty/downloader/bu4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/is0;->W:Lcom/shabakaty/downloader/bu4;

    return-object v0
.end method

.method public k0()Lcom/shabakaty/downloader/jw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/is0;->V:Lcom/shabakaty/downloader/jw2;

    return-object v0
.end method

.method public m0()Lcom/shabakaty/downloader/as0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/is0;->Y:Lcom/shabakaty/downloader/as0;

    return-object v0
.end method
