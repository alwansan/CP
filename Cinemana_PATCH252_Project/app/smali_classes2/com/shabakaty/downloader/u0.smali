.class public abstract Lcom/shabakaty/downloader/u0;
.super Lcom/shabakaty/downloader/rm0;
.source "AbstractReceiverParameterDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/ao3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d9;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ca4;->e:Lcom/shabakaty/downloader/hw2;

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/rm0;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/u0;->N(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic N(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_0
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_2
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_3
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_4
    const-string v3, "getSource"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_5
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_6
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_7
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_8
    const-string v3, "getValueParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_9
    const-string v3, "getType"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_a
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_b
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_c
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()Lcom/shabakaty/downloader/qm0;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/shabakaty/downloader/rq;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/ao3;->getValue()Lcom/shabakaty/downloader/co3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/co3;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/shabakaty/downloader/u0;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/ao3;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u0;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u0;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u0;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-object p0

    .line 7
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/bo3;

    invoke-interface {p0}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/cq4;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/cq4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/j8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/shabakaty/downloader/bo3;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/co3;Lcom/shabakaty/downloader/d9;)V

    return-object v0

    :cond_4
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/u0;->N(I)V

    throw v0
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/u0;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/ao3;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/rq;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/shabakaty/downloader/u0;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lr0;->f:Lcom/shabakaty/downloader/mr0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/shabakaty/downloader/u0;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u0;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

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
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/shabakaty/downloader/u0;->N(I)V

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
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->a(Lcom/shabakaty/downloader/ao3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    return-object v0
.end method

.method public o0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Ljava/util/List;
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/shabakaty/downloader/u0;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public u0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
