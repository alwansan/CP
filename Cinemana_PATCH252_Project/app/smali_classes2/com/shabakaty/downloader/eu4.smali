.class public Lcom/shabakaty/downloader/eu4;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/eu4$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/b74;

.field public static final b:Lcom/shabakaty/downloader/b74;

.field public static final c:Lcom/shabakaty/downloader/b74;

.field public static final d:Lcom/shabakaty/downloader/b74;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d51;->b:Lcom/shabakaty/downloader/d51$c;

    const-string v1, "DONT_CARE"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d51;->f(Ljava/lang/String;Lcom/shabakaty/downloader/d51$c;)Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d51;->h(Ljava/lang/String;Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/eu4;->a:Lcom/shabakaty/downloader/b74;

    const-string v0, "Cannot be inferred"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/eu4;->b:Lcom/shabakaty/downloader/b74;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/eu4$a;

    const-string v1, "NO_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/eu4$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/eu4;->c:Lcom/shabakaty/downloader/b74;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/eu4$a;

    const-string v1, "UNIT_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/eu4$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/eu4;->d:Lcom/shabakaty/downloader/b74;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x31

    const/16 v5, 0x23

    const/16 v6, 0x1a

    const/16 v7, 0x13

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v14, 0x2

    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_1

    const/4 v15, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v15, 0x2

    :goto_1
    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "kotlin/reflect/jvm/internal/impl/types/TypeUtils"

    const/16 v17, 0x0

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    const-string v18, "type"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_3
    const-string v18, "literalTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_4
    const-string v18, "expectedType"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_5
    const-string v18, "supertypes"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_6
    const-string v18, "numberValueTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_7
    const-string v18, "parameterDescriptor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_8
    const-string v18, "shouldStopAt"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_9
    const-string v18, "isSpecialType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_a
    const-string v18, "specialType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_b
    const-string v18, "typeParameterConstructors"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_c
    const-string v18, "typeParameters"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_d
    const-string v18, "b"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_e
    const-string v18, "a"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_f
    const-string v18, "projections"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_10
    const-string v18, "typeArguments"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_11
    const-string v18, "clazz"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_12
    const-string v18, "result"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_13
    const-string v18, "substitutor"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_14
    const-string v18, "superType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_15
    const-string v18, "subType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_16
    const-string v18, "parameters"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_17
    const-string v18, "refinedTypeFactory"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_18
    const-string v18, "unsubstitutedMemberScope"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_19
    const-string v18, "typeConstructor"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_1a
    aput-object v16, v15, v17

    :goto_2
    const-string v17, "getAllSupertypes"

    const-string v18, "getImmediateSupertypes"

    const-string v19, "getDefaultTypeProjections"

    const-string v20, "makeUnsubstitutedType"

    const-string v21, "makeNullableIfNeeded"

    const-string v22, "makeNullableAsSpecified"

    const/16 v23, 0x1

    if-eq v0, v12, :cond_a

    if-eq v0, v11, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_8

    if-eq v0, v8, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_3

    aput-object v16, v15, v23

    goto :goto_3

    :cond_2
    :pswitch_1b
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_3

    :cond_3
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_3

    :cond_4
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v23

    goto :goto_3

    :cond_5
    aput-object v17, v15, v23

    goto :goto_3

    :cond_6
    aput-object v18, v15, v23

    goto :goto_3

    :cond_7
    aput-object v19, v15, v23

    goto :goto_3

    :cond_8
    aput-object v20, v15, v23

    goto :goto_3

    :cond_9
    aput-object v21, v15, v23

    goto :goto_3

    :cond_a
    aput-object v22, v15, v23

    :goto_3
    packed-switch v0, :pswitch_data_4

    const-string v16, "noExpectedType"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1c
    const-string v16, "getTypeParameterDescriptorOrNull"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1d
    const-string v16, "isNonReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1e
    const-string v16, "isReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1f
    const-string v16, "isTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_20
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_21
    const-string v16, "findByFqName"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_22
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_23
    const-string v16, "makeStarProjection"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_24
    const-string v16, "containsStoppingAt"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_25
    const-string v16, "contains"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_26
    const-string v16, "dependsOnTypeConstructors"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_27
    const-string v16, "dependsOnTypeParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_28
    const-string v16, "equalTypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_29
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2a
    const-string v16, "substituteParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2b
    const-string v16, "getClassDescriptor"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2c
    const-string v16, "hasNullableSuperType"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2d
    const-string v16, "acceptsNullable"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2e
    const-string v16, "isNullableType"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2f
    aput-object v17, v15, v14

    goto :goto_4

    :pswitch_30
    const-string v16, "collectAllSupertypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_31
    const-string v16, "createSubstitutedSupertype"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_32
    aput-object v18, v15, v14

    goto :goto_4

    :pswitch_33
    aput-object v19, v15, v14

    goto :goto_4

    :pswitch_34
    aput-object v20, v15, v14

    goto :goto_4

    :pswitch_35
    const-string v16, "canHaveSubtypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_36
    aput-object v21, v15, v14

    goto :goto_4

    :pswitch_37
    aput-object v22, v15, v14

    goto :goto_4

    :pswitch_38
    const-string v16, "makeNotNullable"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_39
    const-string v16, "makeNullable"

    aput-object v16, v15, v14

    :goto_4
    :pswitch_3a
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_b

    if-eq v0, v11, :cond_b

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_b

    if-eq v0, v8, :cond_b

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_b

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :pswitch_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_16
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_2
        :pswitch_12
        :pswitch_2
        :pswitch_1a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_1a
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_c
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_1a
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1a
        :pswitch_3
        :pswitch_4
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_3a
        :pswitch_36
        :pswitch_3a
        :pswitch_3a
        :pswitch_36
        :pswitch_3a
        :pswitch_35
        :pswitch_3a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_33
        :pswitch_3a
        :pswitch_32
        :pswitch_3a
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_3a
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_3a
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_25
        :pswitch_23
        :pswitch_22
        :pswitch_3a
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_3a
        :pswitch_20
        :pswitch_20
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x39
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public static b(Lcom/shabakaty/downloader/qe2;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->k(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/fe1;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->b(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 p0, 0x1c

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/qw4;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lcom/shabakaty/downloader/eu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2b

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0
.end method

.method public static d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/qw4;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/shabakaty/downloader/f94<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v2

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->q(Lcom/shabakaty/downloader/qe2;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3, p0}, Lcom/shabakaty/downloader/f94;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    return v4

    :cond_3
    if-eqz p2, :cond_4

    .line 5
    invoke-interface {p2, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    if-nez p3, :cond_5

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/f94;->d()Lcom/shabakaty/downloader/f94;

    move-result-object p3

    .line 7
    :cond_5
    invoke-virtual {p3, p0}, Lcom/shabakaty/downloader/f94;->add(Ljava/lang/Object;)Z

    .line 8
    instance-of v3, v2, Lcom/shabakaty/downloader/fe1;

    if-eqz v3, :cond_6

    move-object v0, v2

    check-cast v0, Lcom/shabakaty/downloader/fe1;

    :cond_6
    if-eqz v0, :cond_8

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 10
    invoke-static {v3, p1, p2, p3}, Lcom/shabakaty/downloader/eu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 12
    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/eu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    return v4

    .line 13
    :cond_8
    instance-of v0, v2, Lcom/shabakaty/downloader/rp0;

    if-eqz v0, :cond_9

    check-cast v2, Lcom/shabakaty/downloader/rp0;

    .line 14
    iget-object v0, v2, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 15
    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/eu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    .line 16
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    .line 17
    instance-of v2, v0, Lcom/shabakaty/downloader/g32;

    if-eqz v2, :cond_c

    .line 18
    check-cast v0, Lcom/shabakaty/downloader/g32;

    .line 19
    iget-object p0, v0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    .line 21
    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/eu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_b
    return v1

    .line 22
    :cond_c
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qt4;

    .line 23
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_0

    .line 24
    :cond_e
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/eu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_d

    return v4

    :cond_f
    return v1

    :cond_10
    const/16 p0, 0x2e

    .line 25
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0

    :catchall_0
    move-exception p0

    .line 26
    throw p0
.end method

.method public static e(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/shabakaty/downloader/q20;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/kt4;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/st4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x10

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Lcom/shabakaty/downloader/qe2;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/q20;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wt4;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qe2;

    if-eqz v5, :cond_3

    .line 6
    sget-object v6, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v1, v5, v6}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/eu4;->l(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/16 p0, 0x15

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0

    .line 10
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_6
    return v2

    :cond_7
    const/16 p0, 0x1d

    .line 12
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0
.end method

.method public static h(Lcom/shabakaty/downloader/qe2;)Z
    .locals 3

    if-eqz p0, :cond_9

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->k(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/shabakaty/downloader/rm3;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/fe1;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/rp0;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->i(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->g(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    return p0

    .line 8
    :cond_3
    instance-of v0, p0, Lcom/shabakaty/downloader/g1;

    if-eqz v0, :cond_6

    .line 9
    check-cast p0, Lcom/shabakaty/downloader/g1;

    .line 10
    iget-object p0, p0, Lcom/shabakaty/downloader/g1;->s:Lcom/shabakaty/downloader/ts4;

    .line 11
    check-cast p0, Lcom/shabakaty/downloader/iz2;

    .line 12
    invoke-interface {p0}, Lcom/shabakaty/downloader/iz2;->a()Lcom/shabakaty/downloader/kt4;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 13
    invoke-interface {p0}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->g(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    .line 15
    instance-of v0, p0, Lcom/shabakaty/downloader/g32;

    if-eqz v0, :cond_8

    .line 16
    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    .line 17
    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_8
    return v2

    :cond_9
    const/16 p0, 0x1b

    .line 18
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static i(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt4;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    instance-of p0, p0, Lcom/shabakaty/downloader/iz2;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/eu4;->k(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static k(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qw4;->X0(Z)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0
.end method

.method public static l(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/eu4;->k(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/16 p0, 0x8

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static m(Lcom/shabakaty/downloader/b74;Z)Lcom/shabakaty/downloader/b74;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0

    :cond_1
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x7

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x5

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0
.end method

.method public static n(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    return-object v0

    :cond_0
    const/16 p0, 0x2f

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static o(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/g30;",
            "Lcom/shabakaty/downloader/mr2;",
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/ve2;",
            "Lcom/shabakaty/downloader/b74;",
            ">;)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsubstituted type for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/eu4;->p(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ts4;",
            "Lcom/shabakaty/downloader/mr2;",
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/ve2;",
            "Lcom/shabakaty/downloader/b74;",
            ">;)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 2
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/se2;->i(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xe

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0xd

    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0xc

    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v0
.end method

.method public static q(Lcom/shabakaty/downloader/qe2;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/eu4;->c:Lcom/shabakaty/downloader/b74;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/eu4;->d:Lcom/shabakaty/downloader/b74;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2
    :cond_2
    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
