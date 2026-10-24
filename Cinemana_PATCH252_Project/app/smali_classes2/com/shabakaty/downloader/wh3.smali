.class public abstract Lcom/shabakaty/downloader/wh3;
.super Lcom/shabakaty/downloader/tm0;
.source "PropertyAccessorDescriptorImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/vh3;


# instance fields
.field public final A:Lcom/shabakaty/downloader/tq$a;

.field public B:Lcom/shabakaty/downloader/mr0;

.field public C:Lcom/shabakaty/downloader/xn1;

.field public v:Z

.field public final w:Z

.field public final x:Lcom/shabakaty/downloader/eu2;

.field public final y:Lcom/shabakaty/downloader/yh3;

.field public final z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;ZZZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p10, :cond_0

    .line 1
    invoke-interface {p3}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5, p10}, Lcom/shabakaty/downloader/tm0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/wh3;->C:Lcom/shabakaty/downloader/xn1;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/wh3;->x:Lcom/shabakaty/downloader/eu2;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/wh3;->B:Lcom/shabakaty/downloader/mr0;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/wh3;->y:Lcom/shabakaty/downloader/yh3;

    .line 6
    iput-boolean p6, p0, Lcom/shabakaty/downloader/wh3;->v:Z

    .line 7
    iput-boolean p7, p0, Lcom/shabakaty/downloader/wh3;->w:Z

    .line 8
    iput-boolean p8, p0, Lcom/shabakaty/downloader/wh3;->z:Z

    .line 9
    iput-object p9, p0, Lcom/shabakaty/downloader/wh3;->A:Lcom/shabakaty/downloader/tq$a;

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/wh3;->N(I)V

    throw v0

    :cond_1
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/shabakaty/downloader/wh3;->N(I)V

    throw v0

    :cond_2
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/shabakaty/downloader/wh3;->N(I)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/shabakaty/downloader/wh3;->N(I)V

    throw v0
.end method

.method public static synthetic N(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "correspondingProperty"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_c
    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_d
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_e
    const-string v3, "getCorrespondingProperty"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_f
    const-string v3, "getCorrespondingVariable"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_10
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_11
    const-string v3, "getModality"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_12
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_13
    const-string v3, "getKind"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_14
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_15
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_16
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_13
        :pswitch_c
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x6
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
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

.method public G0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H0()Z
    .locals 1

    const/4 v0, 0x0

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

    return-void
.end method

.method public K0()Lcom/shabakaty/downloader/yh3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh3;->y:Lcom/shabakaty/downloader/yh3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/shabakaty/downloader/wh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract S0()Lcom/shabakaty/downloader/vh3;
.end method

.method public T0(Z)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/vh3;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->K0()Lcom/shabakaty/downloader/yh3;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/yh3;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yh3;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {v2}, Lcom/shabakaty/downloader/yh3;->p()Lcom/shabakaty/downloader/ai3;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/shabakaty/downloader/yh3;->i0()Lcom/shabakaty/downloader/fi3;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->S0()Lcom/shabakaty/downloader/vh3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/rq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->S0()Lcom/shabakaty/downloader/vh3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->S0()Lcom/shabakaty/downloader/vh3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/xn1;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->S0()Lcom/shabakaty/downloader/vh3;

    move-result-object v0

    return-object v0
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wh3;->v:Z

    return v0
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wh3;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/xn1;

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/xn1;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x7

    invoke-static {p1}, Lcom/shabakaty/downloader/wh3;->N(I)V

    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh3;->B:Lcom/shabakaty/downloader/mr0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/shabakaty/downloader/wh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Z)Lcom/shabakaty/downloader/tq;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Accessors must be copied by the corresponding property"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wh3;->w:Z

    return v0
.end method

.method public n()Lcom/shabakaty/downloader/eu2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh3;->x:Lcom/shabakaty/downloader/eu2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/shabakaty/downloader/wh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public n0()Lcom/shabakaty/downloader/xn1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh3;->C:Lcom/shabakaty/downloader/xn1;

    return-object v0
.end method

.method public o0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->K0()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

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
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/shabakaty/downloader/wh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public u0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->K0()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/shabakaty/downloader/tq$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh3;->A:Lcom/shabakaty/downloader/tq$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/shabakaty/downloader/wh3;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic w0()Lcom/shabakaty/downloader/vm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh3;->S0()Lcom/shabakaty/downloader/vh3;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wh3;->z:Z

    return v0
.end method
