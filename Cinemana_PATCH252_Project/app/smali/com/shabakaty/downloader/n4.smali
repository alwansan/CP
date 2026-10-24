.class public Lcom/shabakaty/downloader/n4;
.super Lcom/shabakaty/downloader/hk;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/n4$a;,
        Lcom/shabakaty/downloader/n4$b;
    }
.end annotation


# instance fields
.field public final g:Lcom/shabakaty/downloader/qi;

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:F

.field public final l:F

.field public final m:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/n4$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/shabakaty/downloader/w30;

.field public o:F

.field public p:I

.field public q:I

.field public r:J

.field public s:Lcom/shabakaty/downloader/lo2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bp4;[IILcom/shabakaty/downloader/qi;JJJFFLjava/util/List;Lcom/shabakaty/downloader/w30;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bp4;",
            "[II",
            "Lcom/shabakaty/downloader/qi;",
            "JJJFF",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/n4$a;",
            ">;",
            "Lcom/shabakaty/downloader/w30;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/hk;-><init>(Lcom/shabakaty/downloader/bp4;[II)V

    cmp-long p1, p9, p5

    if-gez p1, :cond_0

    const-string p1, "AdaptiveTrackSelection"

    const-string p2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p9, p5

    .line 3
    :cond_0
    iput-object p4, p0, Lcom/shabakaty/downloader/n4;->g:Lcom/shabakaty/downloader/qi;

    const-wide/16 p1, 0x3e8

    mul-long p5, p5, p1

    .line 4
    iput-wide p5, p0, Lcom/shabakaty/downloader/n4;->h:J

    mul-long p7, p7, p1

    .line 5
    iput-wide p7, p0, Lcom/shabakaty/downloader/n4;->i:J

    mul-long p9, p9, p1

    .line 6
    iput-wide p9, p0, Lcom/shabakaty/downloader/n4;->j:J

    .line 7
    iput p11, p0, Lcom/shabakaty/downloader/n4;->k:F

    .line 8
    iput p12, p0, Lcom/shabakaty/downloader/n4;->l:F

    .line 9
    invoke-static {p13}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/n4;->m:Lcom/google/common/collect/p;

    .line 10
    iput-object p14, p0, Lcom/shabakaty/downloader/n4;->n:Lcom/shabakaty/downloader/w30;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/shabakaty/downloader/n4;->o:F

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/n4;->q:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide p1, p0, Lcom/shabakaty/downloader/n4;->r:J

    return-void
.end method

.method public static f(Ljava/util/List;[J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/p$a<",
            "Lcom/shabakaty/downloader/n4$a;",
            ">;>;[J)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 2
    aget-wide v4, p1, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/p$a;

    if-nez v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    new-instance v4, Lcom/shabakaty/downloader/n4$a;

    aget-wide v5, p1, v0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/shabakaty/downloader/n4$a;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/p$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/p$a;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/n4;->s:Lcom/shabakaty/downloader/lo2;

    return-void
.end method

.method public h(JJJLjava/util/List;[Lcom/shabakaty/downloader/mo2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/lo2;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/n4;->n:Lcom/shabakaty/downloader/w30;

    invoke-interface {p1}, Lcom/shabakaty/downloader/w30;->d()J

    move-result-wide p1

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/n4;->p:I

    array-length v1, p8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    aget-object v0, p8, v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/mo2;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/n4;->p:I

    aget-object p8, p8, v0

    .line 4
    invoke-interface {p8}, Lcom/shabakaty/downloader/mo2;->b()J

    move-result-wide v0

    invoke-interface {p8}, Lcom/shabakaty/downloader/mo2;->a()J

    move-result-wide v3

    goto :goto_1

    .line 5
    :cond_0
    array-length v0, p8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p8, v1

    .line 6
    invoke-interface {v3}, Lcom/shabakaty/downloader/mo2;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v3}, Lcom/shabakaty/downloader/mo2;->b()J

    move-result-wide v0

    invoke-interface {v3}, Lcom/shabakaty/downloader/mo2;->a()J

    move-result-wide v3

    :goto_1
    sub-long/2addr v0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, p7}, Lcom/shabakaty/downloader/n4;->x(Ljava/util/List;)J

    move-result-wide v0

    .line 9
    :goto_2
    iget p8, p0, Lcom/shabakaty/downloader/n4;->q:I

    const/4 v3, 0x1

    if-nez p8, :cond_3

    .line 10
    iput v3, p0, Lcom/shabakaty/downloader/n4;->q:I

    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/shabakaty/downloader/n4;->w(JJ)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/n4;->p:I

    return-void

    .line 12
    :cond_3
    iget v4, p0, Lcom/shabakaty/downloader/n4;->p:I

    .line 13
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    goto :goto_3

    :cond_4
    invoke-static {p7}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/lo2;

    iget-object v5, v5, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/hk;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v5

    :goto_3
    if-eq v5, v6, :cond_5

    .line 14
    invoke-static {p7}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/shabakaty/downloader/lo2;

    iget p8, p7, Lcom/shabakaty/downloader/zz;->e:I

    move v4, v5

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/shabakaty/downloader/n4;->w(JJ)I

    move-result p7

    .line 16
    invoke-virtual {p0, v4, p1, p2}, Lcom/shabakaty/downloader/hk;->k(IJ)Z

    move-result p1

    if-nez p1, :cond_9

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/hk;->d:[Lcom/shabakaty/downloader/wh1;

    aget-object p2, p1, v4

    .line 18
    aget-object p1, p1, p7

    .line 19
    iget p1, p1, Lcom/shabakaty/downloader/wh1;->y:I

    iget p2, p2, Lcom/shabakaty/downloader/wh1;->y:I

    if-le p1, p2, :cond_8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p5, v0

    if-eqz v5, :cond_6

    .line 20
    iget-wide v0, p0, Lcom/shabakaty/downloader/n4;->h:J

    cmp-long v5, p5, v0

    if-gtz v5, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    long-to-float p5, p5

    .line 21
    iget p6, p0, Lcom/shabakaty/downloader/n4;->l:F

    mul-float p5, p5, p6

    float-to-long p5, p5

    goto :goto_4

    .line 22
    :cond_7
    iget-wide p5, p0, Lcom/shabakaty/downloader/n4;->h:J

    :goto_4
    cmp-long v0, p3, p5

    if-gez v0, :cond_8

    goto :goto_5

    :cond_8
    if-ge p1, p2, :cond_9

    .line 23
    iget-wide p1, p0, Lcom/shabakaty/downloader/n4;->i:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_9

    :goto_5
    move p7, v4

    :cond_9
    if-ne p7, v4, :cond_a

    goto :goto_6

    :cond_a
    const/4 p8, 0x3

    .line 24
    :goto_6
    iput p8, p0, Lcom/shabakaty/downloader/n4;->q:I

    .line 25
    iput p7, p0, Lcom/shabakaty/downloader/n4;->p:I

    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/n4;->p:I

    return v0
.end method

.method public m()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/n4;->r:J

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/n4;->s:Lcom/shabakaty/downloader/lo2;

    return-void
.end method

.method public n(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/lo2;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n4;->n:Lcom/shabakaty/downloader/w30;

    invoke-interface {v0}, Lcom/shabakaty/downloader/w30;->d()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/n4;->r:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/lo2;

    iget-object v3, p0, Lcom/shabakaty/downloader/n4;->s:Lcom/shabakaty/downloader/lo2;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 5
    :cond_2
    iput-wide v0, p0, Lcom/shabakaty/downloader/n4;->r:J

    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/lo2;

    :goto_2
    iput-object v2, p0, Lcom/shabakaty/downloader/n4;->s:Lcom/shabakaty/downloader/lo2;

    .line 7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return v6

    .line 8
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 9
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/lo2;

    .line 10
    iget-wide v3, v3, Lcom/shabakaty/downloader/zz;->g:J

    sub-long/2addr v3, p1

    iget v5, p0, Lcom/shabakaty/downloader/n4;->o:F

    .line 11
    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/sy4;->y(JF)J

    move-result-wide v3

    .line 12
    iget-wide v7, p0, Lcom/shabakaty/downloader/n4;->j:J

    cmp-long v5, v3, v7

    if-gez v5, :cond_5

    return v2

    .line 13
    :cond_5
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/n4;->x(Ljava/util/List;)J

    move-result-wide v3

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/shabakaty/downloader/n4;->w(JJ)I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/hk;->d:[Lcom/shabakaty/downloader/wh1;

    aget-object v0, v1, v0

    :goto_3
    if-ge v6, v2, :cond_7

    .line 15
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/lo2;

    .line 16
    iget-object v3, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    .line 17
    iget-wide v4, v1, Lcom/shabakaty/downloader/zz;->g:J

    sub-long/2addr v4, p1

    .line 18
    iget v1, p0, Lcom/shabakaty/downloader/n4;->o:F

    .line 19
    invoke-static {v4, v5, v1}, Lcom/shabakaty/downloader/sy4;->y(JF)J

    move-result-wide v4

    cmp-long v1, v4, v7

    if-ltz v1, :cond_6

    .line 20
    iget v1, v3, Lcom/shabakaty/downloader/wh1;->y:I

    iget v4, v0, Lcom/shabakaty/downloader/wh1;->y:I

    if-ge v1, v4, :cond_6

    iget v1, v3, Lcom/shabakaty/downloader/wh1;->I:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    const/16 v5, 0x2d0

    if-ge v1, v5, :cond_6

    iget v3, v3, Lcom/shabakaty/downloader/wh1;->H:I

    if-eq v3, v4, :cond_6

    const/16 v4, 0x500

    if-ge v3, v4, :cond_6

    iget v3, v0, Lcom/shabakaty/downloader/wh1;->I:I

    if-ge v1, v3, :cond_6

    return v6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    return v2
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/n4;->q:I

    return v0
.end method

.method public r(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/n4;->o:F

    return-void
.end method

.method public s()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final w(JJ)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n4;->g:Lcom/shabakaty/downloader/qi;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/qi;->f()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/shabakaty/downloader/n4;->k:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/n4;->g:Lcom/shabakaty/downloader/qi;

    invoke-interface {v2}, Lcom/shabakaty/downloader/qi;->a()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v6, p3, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p3, p3

    .line 4
    iget p4, p0, Lcom/shabakaty/downloader/n4;->o:F

    div-float p4, p3, p4

    long-to-float v2, v2

    sub-float/2addr p4, v2

    const/4 v2, 0x0

    .line 5
    invoke-static {p4, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    long-to-float v0, v0

    mul-float v0, v0, p4

    div-float/2addr v0, p3

    float-to-long p3, v0

    goto :goto_1

    :cond_1
    :goto_0
    long-to-float p3, v0

    .line 6
    iget p4, p0, Lcom/shabakaty/downloader/n4;->o:F

    div-float/2addr p3, p4

    float-to-long p3, p3

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/n4;->m:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    .line 8
    :goto_2
    iget-object v2, p0, Lcom/shabakaty/downloader/n4;->m:Lcom/google/common/collect/p;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/n4;->m:Lcom/google/common/collect/p;

    .line 9
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/n4$a;

    iget-wide v2, v2, Lcom/shabakaty/downloader/n4$a;->a:J

    cmp-long v4, v2, p3

    if-gez v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/n4;->m:Lcom/google/common/collect/p;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/n4$a;

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/n4;->m:Lcom/google/common/collect/p;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/n4$a;

    .line 12
    iget-wide v3, v2, Lcom/shabakaty/downloader/n4$a;->a:J

    sub-long/2addr p3, v3

    long-to-float p3, p3

    iget-wide v5, v0, Lcom/shabakaty/downloader/n4$a;->a:J

    sub-long/2addr v5, v3

    long-to-float p4, v5

    div-float/2addr p3, p4

    .line 13
    iget-wide v2, v2, Lcom/shabakaty/downloader/n4$a;->b:J

    iget-wide v4, v0, Lcom/shabakaty/downloader/n4$a;->b:J

    sub-long/2addr v4, v2

    long-to-float p4, v4

    mul-float p3, p3, p4

    float-to-long p3, p3

    add-long/2addr p3, v2

    :goto_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 14
    :goto_4
    iget v4, p0, Lcom/shabakaty/downloader/hk;->b:I

    if-ge v2, v4, :cond_8

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {p0, v2, p1, p2}, Lcom/shabakaty/downloader/hk;->k(IJ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 16
    :cond_4
    iget-object v3, p0, Lcom/shabakaty/downloader/hk;->d:[Lcom/shabakaty/downloader/wh1;

    aget-object v3, v3, v2

    .line 17
    iget v3, v3, Lcom/shabakaty/downloader/wh1;->y:I

    int-to-long v3, v3

    cmp-long v5, v3, p3

    if-gtz v5, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_6

    return v2

    :cond_6
    move v3, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return v3
.end method

.method public final x(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/lo2;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/lo2;

    .line 3
    iget-wide v3, p1, Lcom/shabakaty/downloader/zz;->g:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v5, p1, Lcom/shabakaty/downloader/zz;->h:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_1

    sub-long v1, v5, v3

    :cond_1
    return-wide v1
.end method
