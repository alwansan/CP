.class public Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;
.super Ljava/lang/Object;
.source "DiskStorageCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/FileCacheFactory;


# instance fields
.field public a:Lcom/facebook/imagepipeline/core/DiskStorageFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/DiskStorageFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;->a:Lcom/facebook/imagepipeline/core/DiskStorageFactory;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/cache/disk/FileCache;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;->a:Lcom/facebook/imagepipeline/core/DiskStorageFactory;

    check-cast v2, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v4, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;

    .line 3
    iget v2, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->a:I

    .line 4
    iget-object v3, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->c:Lcom/facebook/common/internal/Supplier;

    .line 5
    iget-object v5, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->b:Ljava/lang/String;

    .line 6
    iget-object v6, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 7
    invoke-direct {v4, v2, v3, v5, v6}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;-><init>(ILcom/facebook/common/internal/Supplier;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 9
    new-instance v6, Lcom/facebook/cache/disk/DiskStorageCache$Params;

    .line 10
    iget-wide v12, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->f:J

    .line 11
    iget-wide v14, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->e:J

    .line 12
    iget-wide v2, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->d:J

    move-object v11, v6

    move-wide/from16 v16, v2

    .line 13
    invoke-direct/range {v11 .. v17}, Lcom/facebook/cache/disk/DiskStorageCache$Params;-><init>(JJJ)V

    .line 14
    new-instance v2, Lcom/facebook/cache/disk/DiskStorageCache;

    .line 15
    iget-object v5, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->g:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 16
    iget-object v7, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->i:Lcom/facebook/cache/common/CacheEventListener;

    .line 17
    iget-object v8, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 18
    iget-object v9, v1, Lcom/facebook/cache/disk/DiskCacheConfig;->j:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    const/4 v11, 0x0

    move-object v3, v2

    .line 19
    invoke-direct/range {v3 .. v11}, Lcom/facebook/cache/disk/DiskStorageCache;-><init>(Lcom/facebook/cache/disk/DiskStorage;Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;Lcom/facebook/cache/disk/DiskStorageCache$Params;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lcom/facebook/common/disk/DiskTrimmableRegistry;Ljava/util/concurrent/Executor;Z)V

    return-object v2
.end method
