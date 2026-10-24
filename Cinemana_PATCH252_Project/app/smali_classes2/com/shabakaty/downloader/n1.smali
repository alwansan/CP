.class public abstract Lcom/shabakaty/downloader/n1;
.super Lcom/shabakaty/downloader/tm0;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/kt4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/n1$c;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/md4;

.field public final v:Lcom/shabakaty/downloader/xz4;

.field public final w:Z

.field public final x:I

.field public final y:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/ts4;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/xz4;ZILcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/ph4;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    if-eqz p8, :cond_1

    if-eqz p9, :cond_0

    .line 1
    invoke-direct {p0, p2, p3, p4, p8}, Lcom/shabakaty/downloader/tm0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object p5, p0, Lcom/shabakaty/downloader/n1;->v:Lcom/shabakaty/downloader/xz4;

    .line 3
    iput-boolean p6, p0, Lcom/shabakaty/downloader/n1;->w:Z

    .line 4
    iput p7, p0, Lcom/shabakaty/downloader/n1;->x:I

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/n1$a;

    invoke-direct {p2, p0, p1, p9}, Lcom/shabakaty/downloader/n1$a;-><init>(Lcom/shabakaty/downloader/n1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ph4;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/n1;->y:Lcom/shabakaty/downloader/d03;

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/n1$b;

    invoke-direct {p2, p0, p4}, Lcom/shabakaty/downloader/n1$b;-><init>(Lcom/shabakaty/downloader/n1;Lcom/shabakaty/downloader/hw2;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/n1;->z:Lcom/shabakaty/downloader/d03;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/n1;->A:Lcom/shabakaty/downloader/md4;

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0

    :cond_1
    const/4 p1, 0x5

    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0

    :cond_2
    const/4 p1, 0x4

    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0

    :cond_3
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0

    :cond_4
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0

    :cond_5
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0

    :cond_6
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

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

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "bounds"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "supertypeLoopChecker"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "variance"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "processBoundsWithoutCycles"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_c
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_d
    const-string v3, "getStorageManager"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_e
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "getOriginal"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_10
    const-string v3, "getDefaultType"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_11
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_12
    const-string v3, "getUpperBounds"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_13
    const-string v3, "getVariance"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_14
    aput-object v4, v2, v1

    :goto_4
    :pswitch_15
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_17
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/n1;->w:Z

    return v0
.end method

.method public S0(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xd

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0

    :cond_1
    const/16 p1, 0xc

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/n1;->N(I)V

    throw v0
.end method

.method public abstract T0(Lcom/shabakaty/downloader/qe2;)V
.end method

.method public abstract U0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end method

.method public a()Lcom/shabakaty/downloader/g30;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/shabakaty/downloader/kt4;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/shabakaty/downloader/qm0;
    .locals 0

    return-object p0
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/n1;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/n1$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k1;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/shabakaty/downloader/n1;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/n1;->x:I

    return v0
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
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->i(Lcom/shabakaty/downloader/kt4;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1;->y:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ts4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/shabakaty/downloader/n1;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Lcom/shabakaty/downloader/xz4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1;->v:Lcom/shabakaty/downloader/xz4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/shabakaty/downloader/n1;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q0()Lcom/shabakaty/downloader/md4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1;->A:Lcom/shabakaty/downloader/md4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/shabakaty/downloader/n1;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public w0()Lcom/shabakaty/downloader/vm0;
    .locals 0

    return-object p0
.end method

.method public x()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1;->z:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/shabakaty/downloader/n1;->N(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
