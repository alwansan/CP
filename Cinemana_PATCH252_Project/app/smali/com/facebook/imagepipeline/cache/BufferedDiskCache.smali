.class public Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"


# instance fields
.field public final a:Lcom/facebook/cache/disk/FileCache;

.field public final b:Lcom/facebook/common/memory/PooledByteBufferFactory;

.field public final c:Lcom/facebook/common/memory/PooledByteStreams;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/facebook/imagepipeline/cache/StagingArea;

.field public final g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/FileCache;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/PooledByteStreams;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->a:Lcom/facebook/cache/disk/FileCache;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->b:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->c:Lcom/facebook/common/memory/PooledByteStreams;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 8
    new-instance p1, Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/cache/StagingArea;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    :try_start_0
    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->a:Lcom/facebook/cache/disk/FileCache;

    check-cast v1, Lcom/facebook/cache/disk/DiskStorageCache;

    invoke-virtual {v1, p1}, Lcom/facebook/cache/disk/DiskStorageCache;->b(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Disk cache miss for %s"

    .line 4
    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "Found entry in disk cache for %s"

    .line 6
    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-object v2, v1

    check-cast v2, Lcom/facebook/binaryresource/FileBinaryResource;

    .line 9
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v2, v2, Lcom/facebook/binaryresource/FileBinaryResource;->a:Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->b:Lcom/facebook/common/memory/PooledByteBufferFactory;

    check-cast v1, Lcom/facebook/binaryresource/FileBinaryResource;

    invoke-virtual {v1}, Lcom/facebook/binaryresource/FileBinaryResource;->a()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-interface {v2, v3, v1}, Lcom/facebook/common/memory/PooledByteBufferFactory;->d(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const-string v2, "Successful read from disk cache for %s"

    .line 12
    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0

    :catchall_0
    move-exception v1

    .line 13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 14
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 15
    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Exception reading from cache for %s"

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/common/logging/FLog;->n(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    throw v1
.end method

.method public static b(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "About to write to disk-cache for key %s"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->a:Lcom/facebook/cache/disk/FileCache;

    new-instance v2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$7;

    invoke-direct {v2, p0, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$7;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    check-cast v1, Lcom/facebook/cache/disk/DiskStorageCache;

    invoke-virtual {v1, p1, v2}, Lcom/facebook/cache/disk/DiskStorageCache;->d(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/cache/common/WriterCallback;)Lcom/facebook/binaryresource/BinaryResource;

    .line 4
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Successful disk-cache write for key %s"

    .line 5
    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Failed to write to disk-cache for key %s"

    invoke-static {v0, p0, p1, p2}, Lcom/facebook/common/logging/FLog;->n(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/facebook/cache/common/CacheKey;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->a:Lcom/facebook/cache/disk/FileCache;

    check-cast v0, Lcom/facebook/cache/disk/DiskStorageCache;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->a(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :goto_0
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    iget-object v5, v0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v5, v4, p1}, Lcom/facebook/cache/disk/DiskStorage;->o(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 10
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 11
    :catch_0
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->a()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v1

    .line 12
    iput-object p1, v1, Lcom/facebook/cache/disk/SettableCacheEvent;->a:Lcom/facebook/cache/common/CacheKey;

    .line 13
    iget-object p1, v0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Lcom/facebook/cache/disk/SettableCacheEvent;->b()V

    :goto_1
    return-void
.end method

.method public final d(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/shabakaty/downloader/xk4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ")",
            "Lcom/shabakaty/downloader/xk4<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Found image for %s in staging area"

    invoke-static {v0, v1, p1}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/xk4;->h:Ljava/util/concurrent/ExecutorService;

    .line 4
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/xk4;->l:Lcom/shabakaty/downloader/xk4;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/xk4;->m:Lcom/shabakaty/downloader/xk4;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/fq1;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/fq1;->h1(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/xk4;

    :goto_0
    return-object p1
.end method

.method public e(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/shabakaty/downloader/xk4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lcom/shabakaty/downloader/xk4<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/StagingArea;->a(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->d(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/shabakaty/downloader/xk4;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/shabakaty/downloader/xk4;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 7
    throw p1
.end method

.method public final f(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/shabakaty/downloader/xk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lcom/shabakaty/downloader/xk4<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$3;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/CacheKey;)V

    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/xk4;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/xk4;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 2
    const-class v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to schedule disk-cache read for %s"

    invoke-static {v0, p2, p1, v1}, Lcom/facebook/common/logging/FLog;->n(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/xk4;->h:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/fq1;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/fq1;->g1(Ljava/lang/Exception;)V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/xk4;

    return-object p1
.end method

.method public g(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->p(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    .line 5
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->p(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 7
    iget-object v1, v0, Lcom/facebook/imagepipeline/cache/StagingArea;->a:Ljava/util/Map;

    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->a(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/StagingArea;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit v0

    .line 11
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->a(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    .line 12
    :try_start_3
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/lang/Object;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    :try_start_4
    const-class v2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    const-string v3, "Failed to schedule disk-cache write for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/common/logging/FLog;->n(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/cache/StagingArea;->d(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16
    :cond_1
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_5
    monitor-exit v0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 19
    throw p1
.end method
