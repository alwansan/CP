.class public Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/shabakaty/downloader/xk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic s:Lcom/facebook/cache/common/CacheKey;

.field public final synthetic t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/CacheKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->s:Lcom/facebook/cache/common/CacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 3
    iget-object v1, v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->s:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/StagingArea;->a(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Found image for %s in staging area"

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->s:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v3}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 7
    iget-object v2, v2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "Did not find image for %s in staging area"

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->s:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v2}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 11
    iget-object v1, v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;->s:Lcom/facebook/cache/common/CacheKey;

    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->a(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->k(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    new-instance v3, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v3, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v3

    .line 17
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "Host thread was interrupted, decreasing reference count"

    .line 18
    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->g(Ljava/lang/Class;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 20
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 21
    :try_start_5
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 22
    :cond_3
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    :goto_1
    return-object v1

    .line 23
    :cond_4
    :try_start_6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 24
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 25
    throw v0
.end method
