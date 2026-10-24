.class public final Lcom/shabakaty/downloader/as2;
.super Lcom/shabakaty/downloader/f90;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/as2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/f90<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final J:Lcom/shabakaty/downloader/dp2;


# instance fields
.field public final A:[Lcom/shabakaty/downloader/uq2;

.field public final B:[Lcom/shabakaty/downloader/nn4;

.field public final C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/uq2;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lcom/shabakaty/downloader/kd;

.field public final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Lcom/shabakaty/downloader/ov2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ov2<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/u30;",
            ">;"
        }
    .end annotation
.end field

.field public G:I

.field public H:[[J

.field public I:Lcom/shabakaty/downloader/as2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dp2$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dp2$c;-><init>()V

    const-string v1, "MergingMediaSource"

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/as2;->J:Lcom/shabakaty/downloader/dp2;

    return-void
.end method

.method public varargs constructor <init>([Lcom/shabakaty/downloader/uq2;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/kd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kd;-><init>(I)V

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/f90;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/as2;->D:Lcom/shabakaty/downloader/kd;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/as2;->C:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/as2;->G:I

    .line 7
    array-length p1, p1

    new-array p1, p1, [Lcom/shabakaty/downloader/nn4;

    iput-object p1, p0, Lcom/shabakaty/downloader/as2;->B:[Lcom/shabakaty/downloader/nn4;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/as2;->H:[[J

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/as2;->E:Ljava/util/Map;

    const/16 p1, 0x8

    const-string v0, "expectedKeys"

    .line 10
    invoke-static {p1, v0}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    const/4 v0, 0x2

    const-string v1, "expectedValuesPerKey"

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    .line 12
    new-instance v1, Lcom/google/common/collect/j;

    invoke-direct {v1, p1}, Lcom/google/common/collect/j;-><init>(I)V

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/pv2;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/pv2;-><init>(I)V

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/qv2;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/qv2;-><init>(Ljava/util/Map;Lcom/shabakaty/downloader/sh4;)V

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/as2;->F:Lcom/shabakaty/downloader/ov2;

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    array-length v0, v0

    new-array v1, v0, [Lcom/shabakaty/downloader/kp2;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/as2;->B:[Lcom/shabakaty/downloader/nn4;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/as2;->B:[Lcom/shabakaty/downloader/nn4;

    aget-object v4, v4, v3

    .line 4
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/nn4;->m(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/uq2$a;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/shabakaty/downloader/as2;->H:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v6, p3, v7

    .line 6
    invoke-interface {v5, v4, p2, v6, v7}, Lcom/shabakaty/downloader/uq2;->d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/zr2;

    iget-object p2, p0, Lcom/shabakaty/downloader/as2;->D:Lcom/shabakaty/downloader/kd;

    iget-object p3, p0, Lcom/shabakaty/downloader/as2;->H:[[J

    aget-object p3, p3, v2

    invoke-direct {p1, p2, p3, v1}, Lcom/shabakaty/downloader/zr2;-><init>(Lcom/shabakaty/downloader/kd;[J[Lcom/shabakaty/downloader/kp2;)V

    return-object p1
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/shabakaty/downloader/uq2;->h()Lcom/shabakaty/downloader/dp2;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/as2;->J:Lcom/shabakaty/downloader/dp2;

    :goto_0
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->I:Lcom/shabakaty/downloader/as2$a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/f90;->k()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/zr2;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/zr2;->r:[Lcom/shabakaty/downloader/kp2;

    aget-object v3, v2, v0

    instance-of v3, v3, Lcom/shabakaty/downloader/zr2$a;

    if-eqz v3, :cond_0

    .line 5
    aget-object v2, v2, v0

    check-cast v2, Lcom/shabakaty/downloader/zr2$a;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    goto :goto_1

    .line 7
    :cond_0
    aget-object v2, v2, v0

    .line 8
    :goto_1
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/uq2;->m(Lcom/shabakaty/downloader/kp2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/f90;->z:Lcom/shabakaty/downloader/sp4;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/f90;->y:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/f90;->A(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/f90;->x()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->B:[Lcom/shabakaty/downloader/nn4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/as2;->G:I

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/as2;->I:Lcom/shabakaty/downloader/as2$a;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shabakaty/downloader/as2;->A:[Lcom/shabakaty/downloader/uq2;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public y(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/uq2$a;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public z(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/nn4;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->I:Lcom/shabakaty/downloader/as2$a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/as2;->G:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/nn4;->i()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/as2;->G:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p3}, Lcom/shabakaty/downloader/nn4;->i()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/as2;->G:I

    if-eq v0, v1, :cond_2

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/as2$a;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/as2$a;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/as2;->I:Lcom/shabakaty/downloader/as2$a;

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->H:[[J

    array-length v0, v0

    if-nez v0, :cond_3

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/as2;->G:I

    iget-object v1, p0, Lcom/shabakaty/downloader/as2;->B:[Lcom/shabakaty/downloader/nn4;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    const-class v0, J

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/shabakaty/downloader/as2;->H:[[J

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/as2;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/as2;->B:[Lcom/shabakaty/downloader/nn4;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/as2;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/as2;->B:[Lcom/shabakaty/downloader/nn4;

    aget-object p1, p1, v2

    .line 13
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    :cond_4
    :goto_1
    return-void
.end method
