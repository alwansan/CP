.class public Lcom/facebook/imagepipeline/memory/LruBitmapPool;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/BitmapPool;


# instance fields
.field public final a:Lcom/facebook/imagepipeline/memory/PoolBackend;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/PoolBackend<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I

.field public final d:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field public e:I


# direct methods
.method public constructor <init>(IILcom/facebook/imagepipeline/memory/PoolStatsTracker;Lcom/facebook/common/memory/MemoryTrimmableRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;

    invoke-direct {p4}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;-><init>()V

    iput-object p4, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->a:Lcom/facebook/imagepipeline/memory/PoolBackend;

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->b:I

    .line 4
    iput p2, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->c:I

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->d:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->a:Lcom/facebook/imagepipeline/memory/PoolBackend;

    check-cast v0, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->c(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->c:I

    if-gt v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->d:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->g(I)V

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->a:Lcom/facebook/imagepipeline/memory/PoolBackend;

    check-cast v1, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->d(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v1, Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;->a:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, v1, Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;->b:Lcom/facebook/imagepipeline/memory/BucketMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->c(Ljava/lang/Object;)I

    move-result v1

    .line 11
    monitor-enter v2

    .line 12
    :try_start_1
    iget-object v3, v2, Lcom/facebook/imagepipeline/memory/BucketMap;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    if-nez v3, :cond_0

    .line 13
    new-instance v9, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    const/4 v4, 0x0

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;-><init>(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;ILjava/util/LinkedList;Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;Lcom/facebook/imagepipeline/memory/BucketMap$1;)V

    .line 14
    iget-object v3, v2, Lcom/facebook/imagepipeline/memory/BucketMap;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v9

    .line 15
    :cond_0
    iget-object v1, v3, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/memory/BucketMap;->a(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 19
    :cond_1
    :goto_0
    monitor-enter p0

    .line 20
    :try_start_3
    iget p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    .line 21
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    if-le v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->a:Lcom/facebook/imagepipeline/memory/PoolBackend;

    check-cast v0, Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->a:Lcom/facebook/imagepipeline/memory/PoolBackend;

    check-cast v1, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->d:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->b:I

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->c(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->a:Lcom/facebook/imagepipeline/memory/PoolBackend;

    check-cast v0, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->a:Lcom/facebook/imagepipeline/memory/PoolBackend;

    check-cast p1, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->c(Ljava/lang/Object;)I

    move-result p1

    .line 6
    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->e:I

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->d:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    goto :goto_0

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->d:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->a(I)V

    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
