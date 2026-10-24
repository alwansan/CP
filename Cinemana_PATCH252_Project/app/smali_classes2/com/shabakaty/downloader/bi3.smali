.class public Lcom/shabakaty/downloader/bi3;
.super Lcom/shabakaty/downloader/wh3;
.source "PropertyGetterDescriptorImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/ai3;


# instance fields
.field public D:Lcom/shabakaty/downloader/qe2;

.field public final E:Lcom/shabakaty/downloader/ai3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/ai3;Lcom/shabakaty/downloader/s94;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p8, :cond_2

    if-eqz p10, :cond_1

    const-string v0, "<get-"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/wh3;-><init>(Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    if-eqz p9, :cond_0

    move-object v1, p0

    move-object/from16 v0, p9

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, v0

    .line 2
    :goto_0
    iput-object v0, v1, Lcom/shabakaty/downloader/bi3;->E:Lcom/shabakaty/downloader/ai3;

    return-void

    :cond_1
    move-object v1, p0

    const/4 v2, 0x5

    .line 3
    invoke-static {v2}, Lcom/shabakaty/downloader/bi3;->N(I)V

    throw v0

    :cond_2
    move-object v1, p0

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/shabakaty/downloader/bi3;->N(I)V

    throw v0

    :cond_3
    move-object v1, p0

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/shabakaty/downloader/bi3;->N(I)V

    throw v0

    :cond_4
    move-object v1, p0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/shabakaty/downloader/bi3;->N(I)V

    throw v0

    :cond_5
    move-object v1, p0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/shabakaty/downloader/bi3;->N(I)V

    throw v0
.end method

.method public static synthetic N(I)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "correspondingProperty"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "modality"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const/4 v7, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v7

    goto :goto_3

    :cond_2
    const-string v6, "getOriginal"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_3
    const-string v6, "getValueParameters"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_4
    const-string v6, "getOverriddenDescriptors"

    aput-object v6, v5, v7

    :goto_3
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_5
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic S0()Lcom/shabakaty/downloader/vh3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bi3;->U0()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    return-object v0
.end method

.method public U0()Lcom/shabakaty/downloader/ai3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bi3;->E:Lcom/shabakaty/downloader/ai3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/shabakaty/downloader/bi3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public V0(Lcom/shabakaty/downloader/qe2;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->K0()Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/bi3;->D:Lcom/shabakaty/downloader/qe2;

    return-void
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bi3;->U0()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/rq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bi3;->U0()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bi3;->U0()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/xn1;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bi3;->U0()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/ai3;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wh3;->T0(Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bi3;->D:Lcom/shabakaty/downloader/qe2;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/shabakaty/downloader/bi3;->N(I)V

    const/4 v0, 0x0

    throw v0
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
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->b(Lcom/shabakaty/downloader/ai3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w0()Lcom/shabakaty/downloader/vm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bi3;->U0()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    return-object v0
.end method
