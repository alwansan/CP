.class public final Lcom/shabakaty/downloader/vr0;
.super Lcom/shabakaty/downloader/m20;
.source "DeserializedMemberDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ur0;


# instance fields
.field public final V:Lcom/shabakaty/downloader/li3;

.field public final W:Lcom/shabakaty/downloader/jw2;

.field public final X:Lcom/shabakaty/downloader/bu4;

.field public final Y:Lcom/shabakaty/downloader/f05;

.field public final Z:Lcom/shabakaty/downloader/as0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/vc0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/li3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/s94;)V
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

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/m20;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/vc0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object v8, v7, Lcom/shabakaty/downloader/vr0;->V:Lcom/shabakaty/downloader/li3;

    .line 3
    iput-object v9, v7, Lcom/shabakaty/downloader/vr0;->W:Lcom/shabakaty/downloader/jw2;

    .line 4
    iput-object v10, v7, Lcom/shabakaty/downloader/vr0;->X:Lcom/shabakaty/downloader/bu4;

    .line 5
    iput-object v11, v7, Lcom/shabakaty/downloader/vr0;->Y:Lcom/shabakaty/downloader/f05;

    move-object/from16 v0, p10

    .line 6
    iput-object v0, v7, Lcom/shabakaty/downloader/vr0;->Z:Lcom/shabakaty/downloader/as0;

    return-void
.end method


# virtual methods
.method public H0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public K()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr0;->V:Lcom/shabakaty/downloader/li3;

    return-object v0
.end method

.method public bridge synthetic T0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/yn1;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/vr0;->g1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/vr0;

    move-result-object p1

    return-object p1
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a0()Lcom/shabakaty/downloader/bu4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr0;->X:Lcom/shabakaty/downloader/bu4;

    return-object v0
.end method

.method public bridge synthetic c1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/m20;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/vr0;->g1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/vr0;

    move-result-object p1

    return-object p1
.end method

.method public g1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/vr0;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "newOwner"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    move-object/from16 v14, p5

    invoke-static {v14, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/vr0;

    .line 2
    move-object v4, v1

    check-cast v4, Lcom/shabakaty/downloader/q20;

    move-object/from16 v5, p2

    check-cast v5, Lcom/shabakaty/downloader/vc0;

    iget-boolean v7, v0, Lcom/shabakaty/downloader/m20;->U:Z

    .line 3
    iget-object v9, v0, Lcom/shabakaty/downloader/vr0;->V:Lcom/shabakaty/downloader/li3;

    .line 4
    iget-object v10, v0, Lcom/shabakaty/downloader/vr0;->W:Lcom/shabakaty/downloader/jw2;

    .line 5
    iget-object v11, v0, Lcom/shabakaty/downloader/vr0;->X:Lcom/shabakaty/downloader/bu4;

    .line 6
    iget-object v12, v0, Lcom/shabakaty/downloader/vr0;->Y:Lcom/shabakaty/downloader/f05;

    .line 7
    iget-object v13, v0, Lcom/shabakaty/downloader/vr0;->Z:Lcom/shabakaty/downloader/as0;

    move-object v3, v2

    .line 8
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/vr0;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/vc0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/li3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/s94;)V

    .line 9
    iget-boolean v1, v0, Lcom/shabakaty/downloader/yn1;->M:Z

    .line 10
    iput-boolean v1, v2, Lcom/shabakaty/downloader/yn1;->M:Z

    return-object v2
.end method

.method public k0()Lcom/shabakaty/downloader/jw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr0;->W:Lcom/shabakaty/downloader/jw2;

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m0()Lcom/shabakaty/downloader/as0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr0;->Z:Lcom/shabakaty/downloader/as0;

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
