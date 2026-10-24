.class public Lcom/shabakaty/downloader/zh3;
.super Lcom/shabakaty/downloader/wz4;
.source "PropertyDescriptorImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/yh3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zh3$a;
    }
.end annotation


# instance fields
.field public A:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Lcom/shabakaty/downloader/yh3;

.field public final C:Lcom/shabakaty/downloader/tq$a;

.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Z

.field public J:Lcom/shabakaty/downloader/ao3;

.field public K:Lcom/shabakaty/downloader/ao3;

.field public L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field

.field public M:Lcom/shabakaty/downloader/bi3;

.field public N:Lcom/shabakaty/downloader/fi3;

.field public O:Z

.field public P:Lcom/shabakaty/downloader/na1;

.field public Q:Lcom/shabakaty/downloader/na1;

.field public final y:Lcom/shabakaty/downloader/eu2;

.field public z:Lcom/shabakaty/downloader/mr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;ZZZZZZ)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    const/4 v11, 0x0

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    if-eqz v8, :cond_5

    if-eqz v9, :cond_4

    if-eqz p7, :cond_3

    if-eqz v10, :cond_2

    if-eqz p9, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p7

    move/from16 v5, p6

    move-object/from16 v6, p9

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/wz4;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZLcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object v11, v7, Lcom/shabakaty/downloader/zh3;->A:Ljava/util/Collection;

    .line 3
    iput-object v8, v7, Lcom/shabakaty/downloader/zh3;->y:Lcom/shabakaty/downloader/eu2;

    .line 4
    iput-object v9, v7, Lcom/shabakaty/downloader/zh3;->z:Lcom/shabakaty/downloader/mr0;

    if-nez p2, :cond_0

    move-object v0, v7

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 5
    :goto_0
    iput-object v0, v7, Lcom/shabakaty/downloader/zh3;->B:Lcom/shabakaty/downloader/yh3;

    .line 6
    iput-object v10, v7, Lcom/shabakaty/downloader/zh3;->C:Lcom/shabakaty/downloader/tq$a;

    move/from16 v0, p10

    .line 7
    iput-boolean v0, v7, Lcom/shabakaty/downloader/zh3;->D:Z

    move/from16 v0, p11

    .line 8
    iput-boolean v0, v7, Lcom/shabakaty/downloader/zh3;->E:Z

    move/from16 v0, p12

    .line 9
    iput-boolean v0, v7, Lcom/shabakaty/downloader/zh3;->F:Z

    move/from16 v0, p13

    .line 10
    iput-boolean v0, v7, Lcom/shabakaty/downloader/zh3;->G:Z

    move/from16 v0, p14

    .line 11
    iput-boolean v0, v7, Lcom/shabakaty/downloader/zh3;->H:Z

    move/from16 v0, p15

    .line 12
    iput-boolean v0, v7, Lcom/shabakaty/downloader/zh3;->I:Z

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v11

    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v11

    :cond_3
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v11

    :cond_4
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v11

    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v11

    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v11

    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v11
.end method

.method public static synthetic N(I)V
    .locals 11

    const/16 v0, 0x26

    const/16 v1, 0x25

    const/16 v2, 0x23

    const/16 v3, 0x22

    const/16 v4, 0x18

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v6, 0x2

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v7, 0x2

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto/16 :goto_2

    :pswitch_3
    const-string v10, "overriddenDescriptors"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_4
    const-string v10, "newName"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_5
    const-string v10, "newVisibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_6
    const-string v10, "newModality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_7
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_8
    const-string v10, "accessorDescriptor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_9
    const-string v10, "substitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_a
    const-string v10, "copyConfiguration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_b
    const-string v10, "originalSubstitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_c
    aput-object v8, v7, v9

    goto :goto_2

    :pswitch_d
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_e
    const-string v10, "outType"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_f
    const-string v10, "inType"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_10
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_11
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_12
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_13
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_14
    const-string v10, "modality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_15
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_2
    const/4 v9, 0x1

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_16
    const-string v8, "getAccessors"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_17
    const-string v8, "getVisibility"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_18
    const-string v8, "getModality"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_19
    const-string v8, "getReturnType"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_1a
    const-string v8, "getTypeParameters"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_2
    const-string v8, "copy"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_3
    const-string v8, "getOverriddenDescriptors"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_4
    const-string v8, "getKind"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_5
    const-string v8, "getOriginal"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_6
    const-string v8, "getSourceToUseForCopy"

    aput-object v8, v7, v9

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1b
    const-string v8, "setOverriddenDescriptors"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1c
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1d
    const-string v8, "getSubstitutedInitialSignatureDescriptor"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1e
    const-string v8, "doSubstitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1f
    const-string v8, "substitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_20
    const-string v8, "setVisibility"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_21
    const-string v8, "setType"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_22
    const-string v8, "setInType"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_23
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_4
    :pswitch_24
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_25
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_2
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_13
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_11
        :pswitch_4
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_1f
        :pswitch_24
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_24
        :pswitch_24
        :pswitch_1b
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x12
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public static V0(Lcom/shabakaty/downloader/wt4;Lcom/shabakaty/downloader/vh3;)Lcom/shabakaty/downloader/xn1;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->n0()Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->n0()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/xn1;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/16 p0, 0x1b

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v0
.end method


# virtual methods
.method public C0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zh3;->D:Z

    return v0
.end method

.method public D()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vh3;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public E(Lcom/shabakaty/downloader/rq$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rq$a<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zh3;->E:Z

    return v0
.end method

.method public I0(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/tq;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zh3;->A:Ljava/util/Collection;

    return-void

    :cond_0
    const/16 p1, 0x24

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/zh3;->N(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public N0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zh3;->G:Z

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zh3;->F:Z

    return v0
.end method

.method public bridge synthetic S0()Lcom/shabakaty/downloader/uz4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    return-object v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zh3;->I:Z

    return v0
.end method

.method public U0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/zh3;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/zh3;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    .line 2
    iget-boolean v8, v0, Lcom/shabakaty/downloader/wz4;->w:Z

    .line 3
    iget-boolean v12, v0, Lcom/shabakaty/downloader/zh3;->D:Z

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/zh3;->G()Z

    move-result v13

    .line 5
    iget-boolean v14, v0, Lcom/shabakaty/downloader/zh3;->F:Z

    .line 6
    iget-boolean v15, v0, Lcom/shabakaty/downloader/zh3;->G:Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/zh3;->l()Z

    move-result v16

    .line 8
    iget-boolean v11, v0, Lcom/shabakaty/downloader/zh3;->I:Z

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move/from16 v17, v11

    move-object/from16 v11, p7

    .line 9
    invoke-direct/range {v2 .. v17}, Lcom/shabakaty/downloader/zh3;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;ZZZZZZ)V

    return-object v1

    :cond_0
    const/16 v2, 0x20

    .line 10
    invoke-static {v2}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v1

    :cond_1
    const/16 v2, 0x1f

    invoke-static {v2}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v1

    :cond_2
    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v1

    :cond_3
    const/16 v2, 0x1d

    invoke-static {v2}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v1

    :cond_4
    const/16 v2, 0x1c

    invoke-static {v2}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v1
.end method

.method public W0(Lcom/shabakaty/downloader/bi3;Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/na1;Lcom/shabakaty/downloader/na1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/zh3;->P:Lcom/shabakaty/downloader/na1;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/zh3;->Q:Lcom/shabakaty/downloader/na1;

    return-void
.end method

.method public X0(Lcom/shabakaty/downloader/qe2;)V
    .locals 0

    return-void
.end method

.method public Y0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/ao3;",
            "Lcom/shabakaty/downloader/ao3;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vz4;->v:Lcom/shabakaty/downloader/qe2;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zh3;->L:Ljava/util/List;

    .line 3
    iput-object p4, p0, Lcom/shabakaty/downloader/zh3;->K:Lcom/shabakaty/downloader/ao3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zh3;->J:Lcom/shabakaty/downloader/ao3;

    return-void

    :cond_0
    const/16 p1, 0x10

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v0

    :cond_1
    const/16 p1, 0xf

    invoke-static {p1}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/rq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/shabakaty/downloader/yh3;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->B:Lcom/shabakaty/downloader/yh3;

    if-ne v0, p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/yh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zh3;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/yh3;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/zh3$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/zh3$a;-><init>(Lcom/shabakaty/downloader/zh3;)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->g()Lcom/shabakaty/downloader/tt4;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iput-object p1, v1, Lcom/shabakaty/downloader/zh3$a;->f:Lcom/shabakaty/downloader/tt4;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    .line 7
    iput-object p1, v1, Lcom/shabakaty/downloader/zh3$a;->d:Lcom/shabakaty/downloader/yh3;

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zh3$a;->b()Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0xf

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/zh3$a;->a(I)V

    throw v0

    :cond_2
    const/16 p1, 0x17

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->A:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x25

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->z:Lcom/shabakaty/downloader/mr0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Z)Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zh3$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/zh3$a;-><init>(Lcom/shabakaty/downloader/zh3;)V

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/zh3$a;->a:Lcom/shabakaty/downloader/qm0;

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/zh3$a;->d:Lcom/shabakaty/downloader/yh3;

    .line 4
    iput-object p2, v0, Lcom/shabakaty/downloader/zh3$a;->b:Lcom/shabakaty/downloader/eu2;

    if-eqz p3, :cond_1

    .line 5
    iput-object p3, v0, Lcom/shabakaty/downloader/zh3$a;->c:Lcom/shabakaty/downloader/mr0;

    .line 6
    iput-object p4, v0, Lcom/shabakaty/downloader/zh3$a;->e:Lcom/shabakaty/downloader/tq$a;

    .line 7
    iput-boolean p5, v0, Lcom/shabakaty/downloader/zh3$a;->g:Z

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zh3$a;->b()Lcom/shabakaty/downloader/yh3;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    const/16 p2, 0x26

    invoke-static {p2}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw p1

    :cond_1
    const/16 p2, 0x8

    .line 9
    invoke-static {p2}, Lcom/shabakaty/downloader/zh3$a;->a(I)V

    throw p1
.end method

.method public h()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i0()Lcom/shabakaty/downloader/fi3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->N:Lcom/shabakaty/downloader/fi3;

    return-object v0
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->c(Lcom/shabakaty/downloader/yh3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zh3;->H:Z

    return v0
.end method

.method public n()Lcom/shabakaty/downloader/eu2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->y:Lcom/shabakaty/downloader/eu2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->J:Lcom/shabakaty/downloader/ao3;

    return-object v0
.end method

.method public p()Lcom/shabakaty/downloader/ai3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->M:Lcom/shabakaty/downloader/bi3;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->L:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "typeParameters == null for "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/rm0;->O(Lcom/shabakaty/downloader/qm0;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->K:Lcom/shabakaty/downloader/ao3;

    return-object v0
.end method

.method public v0()Lcom/shabakaty/downloader/na1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->Q:Lcom/shabakaty/downloader/na1;

    return-object v0
.end method

.method public w()Lcom/shabakaty/downloader/tq$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->C:Lcom/shabakaty/downloader/tq$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic w0()Lcom/shabakaty/downloader/vm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    return-object v0
.end method

.method public z0()Lcom/shabakaty/downloader/na1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh3;->P:Lcom/shabakaty/downloader/na1;

    return-object v0
.end method
