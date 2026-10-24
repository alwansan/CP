.class public Lcom/shabakaty/downloader/tq0;
.super Ljava/lang/Object;
.source "DescriptorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tq0$a;
    }
.end annotation


# direct methods
.method public static synthetic a(I)V
    .locals 11

    const/16 v0, 0x19

    const/16 v1, 0x17

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "propertyDescriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "owner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "enumClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "containingClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "sourceElement"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "parameterAnnotations"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "createEnumValueOfMethod"

    const-string v8, "createEnumValuesMethod"

    const-string v9, "createSetter"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v7, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v9, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "createDefaultSetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_b
    const-string v6, "createExtensionReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    const-string v6, "isEnumSpecialMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    const-string v6, "isEnumValueOfMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_e
    const-string v6, "isEnumValuesMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_f
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_10
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_11
    const-string v6, "createPrimaryConstructorForObject"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_12
    const-string v6, "createGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_13
    const-string v6, "createDefaultGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_14
    aput-object v9, v5, v4

    :goto_4
    :pswitch_15
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_15
        :pswitch_f
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static b(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bi3;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/tq0;->g(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;ZZZLcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/bi3;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/gi3;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/shabakaty/downloader/tq0;->h(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;ZZZLcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/gi3;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/t64;
    .locals 15

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v6, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    sget-object v1, Lcom/shabakaty/downloader/tb4;->b:Lcom/shabakaty/downloader/hw2;

    sget-object v2, Lcom/shabakaty/downloader/tq$a;->u:Lcom/shabakaty/downloader/tq$a;

    invoke-interface {p0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v3

    invoke-static {p0, v6, v1, v2, v3}, Lcom/shabakaty/downloader/u64;->d1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/u64;

    move-result-object v1

    .line 2
    new-instance v14, Lcom/shabakaty/downloader/tz4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "value"

    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/zd2;->w()Lcom/shabakaty/downloader/b74;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v13

    move-object v2, v14

    move-object v3, v1

    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/tz4;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/sz4;ILcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/qe2;ZZZLcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/s94;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v12

    sget-object v13, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    sget-object v14, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    move-object v7, v1

    invoke-virtual/range {v7 .. v14}, Lcom/shabakaty/downloader/u64;->f1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/u64;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x19

    invoke-static {p0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x18

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v0
.end method

.method public static e(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/t64;
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    sget-object v2, Lcom/shabakaty/downloader/tb4;->a:Lcom/shabakaty/downloader/hw2;

    sget-object v3, Lcom/shabakaty/downloader/tq$a;->u:Lcom/shabakaty/downloader/tq$a;

    invoke-interface {p0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/u64;->d1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/u64;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/shabakaty/downloader/zd2;->h(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v10

    sget-object v11, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    sget-object v12, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    invoke-virtual/range {v5 .. v12}, Lcom/shabakaty/downloader/u64;->f1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/u64;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x17

    invoke-static {p0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x16

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v0
.end method

.method public static f(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/ao3;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/bo3;

    new-instance v2, Lcom/shabakaty/downloader/r81;

    invoke-direct {v2, p0, p1, v0}, Lcom/shabakaty/downloader/r81;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/co3;)V

    invoke-direct {v1, p0, v2, p2}, Lcom/shabakaty/downloader/bo3;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/co3;Lcom/shabakaty/downloader/d9;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static g(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;ZZZLcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/bi3;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bi3;

    invoke-interface {p0}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v4

    invoke-interface {p0}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v5

    sget-object v9, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/bi3;-><init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/ai3;Lcom/shabakaty/downloader/s94;)V

    return-object v0

    :cond_0
    const/16 v1, 0x13

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v0

    :cond_1
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v0
.end method

.method public static h(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;ZZZLcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/gi3;
    .locals 13

    move-object v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    if-eqz p6, :cond_1

    if-eqz p7, :cond_0

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/gi3;

    invoke-interface {p0}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v5

    sget-object v10, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    const/4 v11, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p6

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p7

    invoke-direct/range {v2 .. v12}, Lcom/shabakaty/downloader/gi3;-><init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/s94;)V

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/shabakaty/downloader/gi3;->U0(Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/tz4;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/gi3;->W0(Lcom/shabakaty/downloader/sz4;)V

    return-object v1

    :cond_0
    const/16 v0, 0xb

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v1

    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v1

    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v1

    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/shabakaty/downloader/tq0;->a(I)V

    throw v1
.end method

.method public static i(Lcom/shabakaty/downloader/xn1;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/tq$a;->u:Lcom/shabakaty/downloader/tq$a;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->q(Lcom/shabakaty/downloader/qm0;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
