.class public Lcom/facebook/imagepipeline/memory/PoolConfig;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/facebook/imagepipeline/memory/PoolParams;

.field public final b:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field public final c:Lcom/facebook/imagepipeline/memory/PoolParams;

.field public final d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field public final e:Lcom/facebook/imagepipeline/memory/PoolParams;

.field public final f:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field public final g:Lcom/facebook/imagepipeline/memory/PoolParams;

.field public final h:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field public final i:Ljava/lang/String;

.field public final j:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;Lcom/facebook/imagepipeline/memory/PoolConfig$1;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultBitmapPoolParams;->a()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->a:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->h()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->b:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 7
    new-instance p1, Lcom/facebook/imagepipeline/memory/PoolParams;

    sget p2, Lcom/facebook/imagepipeline/memory/DefaultFlexByteArrayPoolParams;->a:I

    const/high16 v7, 0x400000

    mul-int v2, p2, v7

    .line 8
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/high16 v8, 0x20000

    const/high16 v0, 0x20000

    :goto_0
    if-gt v0, v7, :cond_0

    .line 9
    invoke-virtual {v3, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/high16 v4, 0x20000

    const/high16 v5, 0x400000

    .line 10
    sget v6, Lcom/facebook/imagepipeline/memory/DefaultFlexByteArrayPoolParams;->a:I

    const/high16 v1, 0x400000

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;III)V

    .line 11
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->c:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 12
    invoke-static {}, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->b()Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 14
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    const/16 p2, 0x400

    const/4 v0, 0x5

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p2, 0x800

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p2, 0x1000

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p2, 0x2000

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p2, 0x4000

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x8000

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x10000

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    invoke-virtual {p1, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x40000

    const/4 v2, 0x2

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x80000

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x100000

    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    new-instance v3, Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/32 v8, 0x7fffffff

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    const/high16 v4, 0x1000000

    if-ge v5, v4, :cond_1

    const/high16 v5, 0x300000

    goto :goto_1

    :cond_1
    const/high16 v6, 0x2000000

    if-ge v5, v6, :cond_2

    const/high16 v5, 0x600000

    goto :goto_1

    :cond_2
    const/high16 v5, 0xc00000

    .line 28
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v6, v8

    if-ge v6, v4, :cond_3

    .line 29
    div-int/2addr v6, v2

    goto :goto_2

    .line 30
    :cond_3
    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    .line 31
    :goto_2
    invoke-direct {v3, v5, v6, p1}, Lcom/facebook/imagepipeline/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;)V

    .line 32
    iput-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->e:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 33
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->h()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->f:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 35
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    new-instance p2, Lcom/facebook/imagepipeline/memory/PoolParams;

    const v0, 0x14000

    invoke-direct {p2, v0, v1, p1}, Lcom/facebook/imagepipeline/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;)V

    .line 38
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->g:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 39
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->h()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->h:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    const-string p1, "legacy"

    .line 41
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->i:Ljava/lang/String;

    .line 42
    iput v7, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->j:I

    .line 43
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void
.end method
