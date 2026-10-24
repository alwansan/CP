.class public Lcom/shabakaty/downloader/r62;
.super Lcom/shabakaty/downloader/m20;
.source "JavaClassConstructorDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/p62;


# instance fields
.field public V:Ljava/lang/Boolean;

.field public W:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/r62;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/shabakaty/downloader/m20;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/vc0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/r62;->V:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/r62;->W:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw v0

    :cond_1
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw v0

    :cond_2
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw v0
.end method

.method public static synthetic N(I)V
    .locals 9

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "enhancedValueParametersData"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "enhance"

    const-string v7, "createSubstitutedCopy"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v6, v4, v8

    goto :goto_3

    :cond_3
    aput-object v7, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_9
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_b
    aput-object v7, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public static g1(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r62;

    const/4 v3, 0x0

    sget-object v6, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/r62;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/r62;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    return-object v0

    :cond_0
    const/4 p0, 0x6

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw v0

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw v0
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/x93;)Lcom/shabakaty/downloader/p62;
    .locals 12

    move-object v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m20;->d1()Lcom/shabakaty/downloader/q20;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn1;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v8

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/shabakaty/downloader/r62;->h1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;

    move-result-object v11

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v2, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v2, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {v11, p1, v2}, Lcom/shabakaty/downloader/tq0;->f(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/ao3;

    move-result-object v2

    :goto_0
    move-object v0, p0

    move-object v4, v2

    .line 3
    iget-object v5, v0, Lcom/shabakaty/downloader/yn1;->z:Lcom/shabakaty/downloader/ao3;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn1;->t()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v2

    move-object v3, p2

    invoke-static {p2, v2, v11}, Lcom/shabakaty/downloader/md0;->k(Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/rq;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn1;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v9

    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn1;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v10

    move-object v3, v11

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Lcom/shabakaty/downloader/yn1;->W0(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/yn1;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/rq$a;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 8
    invoke-virtual {v11, v2, v1}, Lcom/shabakaty/downloader/yn1;->Y0(Lcom/shabakaty/downloader/rq$a;Ljava/lang/Object;)V

    :cond_1
    return-object v11

    :cond_2
    move-object v0, p0

    const/16 v1, 0x11

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw v2
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r62;->W:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic T0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/yn1;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/shabakaty/downloader/r62;->h1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/r62;->V:Ljava/lang/Boolean;

    return-void
.end method

.method public a1(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/r62;->W:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic c1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/m20;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/shabakaty/downloader/r62;->h1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;

    move-result-object p1

    return-object p1
.end method

.method public h1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/r62;
    .locals 7

    const/4 p4, 0x0

    if-eqz p1, :cond_9

    if-eqz p3, :cond_8

    if-eqz p5, :cond_7

    if-eqz p6, :cond_6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/tq$a;->u:Lcom/shabakaty/downloader/tq$a;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "newOwner: "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "kind: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/q20;

    move-object v2, p2

    check-cast v2, Lcom/shabakaty/downloader/r62;

    if-eqz v1, :cond_5

    if-eqz p3, :cond_4

    if-eqz p6, :cond_3

    if-eqz p5, :cond_2

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/r62;

    iget-boolean v4, p0, Lcom/shabakaty/downloader/m20;->U:Z

    move-object v0, p1

    move-object v3, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/r62;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/r62;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r62;->i1()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/r62;->Z0(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r62;->M()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/r62;->a1(Z)V

    return-object p1

    :cond_2
    const/16 p1, 0xf

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4

    :cond_3
    const/16 p1, 0xe

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4

    :cond_4
    const/16 p1, 0xd

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4

    :cond_5
    const/16 p1, 0xc

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4

    :cond_6
    const/16 p1, 0xa

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4

    :cond_7
    const/16 p1, 0x9

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4

    :cond_8
    const/16 p1, 0x8

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4

    :cond_9
    const/4 p1, 0x7

    invoke-static {p1}, Lcom/shabakaty/downloader/r62;->N(I)V

    throw p4
.end method

.method public i1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r62;->V:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
