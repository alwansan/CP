.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    }
.end annotation


# static fields
.field public static w:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;


# instance fields
.field public final a:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field public final c:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/facebook/imagepipeline/core/FileCacheFactory;

.field public final f:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field public final h:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field public final i:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/facebook/cache/disk/DiskCacheConfig;

.field public final k:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field public final l:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

.field public final m:Lcom/facebook/imagepipeline/memory/PoolFactory;

.field public final n:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Z

.field public final r:Lcom/facebook/cache/disk/DiskCacheConfig;

.field public final s:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

.field public final t:Z

.field public final u:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

.field public final v:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    .line 2
    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>()V

    .line 3
    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->w:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    iget-object p2, p1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->b:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;)V

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->s:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    .line 6
    new-instance p2, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;

    .line 7
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->a:Landroid/content/Context;

    const-string v2, "activity"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {p2, v0}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;-><init>(Landroid/app/ActivityManager;)V

    .line 11
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->a:Lcom/facebook/common/internal/Supplier;

    .line 12
    new-instance p2, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;

    invoke-direct {p2}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->b:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 14
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    const-class p2, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->a:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->a:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    .line 18
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->a:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p2

    .line 19
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->c:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 20
    iget-object p2, p1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->a:Landroid/content/Context;

    .line 21
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->d:Landroid/content/Context;

    .line 23
    new-instance p2, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;

    new-instance v0, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;-><init>()V

    invoke-direct {p2, v0}, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;-><init>(Lcom/facebook/imagepipeline/core/DiskStorageFactory;)V

    .line 24
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->e:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    .line 25
    new-instance p2, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;

    invoke-direct {p2}, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->f:Lcom/facebook/common/internal/Supplier;

    .line 27
    const-class p2, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    monitor-enter p2

    .line 28
    :try_start_1
    sget-object v0, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->a:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->a:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    .line 30
    :cond_1
    sget-object v0, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->a:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p2

    .line 31
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->h:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 32
    new-instance p2, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;

    invoke-direct {p2, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    .line 33
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->i:Lcom/facebook/common/internal/Supplier;

    .line 34
    iget-object p2, p1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->a:Landroid/content/Context;

    .line 35
    :try_start_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 36
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    invoke-direct {v0, p2, v1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;-><init>(Landroid/content/Context;Lcom/facebook/cache/disk/DiskCacheConfig$1;)V

    .line 37
    new-instance p2, Lcom/facebook/cache/disk/DiskCacheConfig;

    invoke-direct {p2, v0}, Lcom/facebook/cache/disk/DiskCacheConfig;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->j:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 40
    invoke-static {}, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->b()Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->k:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    const/16 v0, 0x7530

    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 43
    new-instance v2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-direct {v2, v0}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;-><init>(I)V

    .line 44
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->l:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 45
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 46
    new-instance v0, Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 47
    new-instance v2, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;

    .line 48
    invoke-direct {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;-><init>()V

    .line 49
    new-instance v3, Lcom/facebook/imagepipeline/memory/PoolConfig;

    invoke-direct {v3, v2, v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;Lcom/facebook/imagepipeline/memory/PoolConfig$1;)V

    .line 50
    invoke-direct {v0, v3}, Lcom/facebook/imagepipeline/memory/PoolFactory;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig;)V

    .line 51
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->m:Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 52
    new-instance v1, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->n:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 54
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->o:Ljava/util/Set;

    .line 56
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->p:Ljava/util/Set;

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->q:Z

    .line 59
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->r:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 60
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->b()I

    move-result p2

    .line 61
    new-instance v0, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;

    invoke-direct {v0, p2}, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;-><init>(I)V

    .line 62
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->g:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 63
    iget-boolean p2, p1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->c:Z

    .line 64
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->t:Z

    .line 65
    iget-object p1, p1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->d:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 66
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->u:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 67
    new-instance p1, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->v:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 69
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    .line 70
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 71
    throw p1

    :catchall_1
    move-exception p1

    .line 72
    monitor-exit p2

    throw p1

    :catchall_2
    move-exception p1

    .line 73
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public A()Lcom/facebook/callercontext/CallerContextVerifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->a:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public C()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->s:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    return-object v0
.end method

.method public E()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->f:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->g:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object v0
.end method

.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->d:Landroid/content/Context;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/memory/PoolFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->m:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->p:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->i:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->e:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->u:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->v:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->l:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->j:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->o:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->c:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->q:Z

    return v0
.end method

.method public o()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->b:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public p()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->n:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object v0
.end method

.method public q()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->r:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->h:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Lcom/facebook/common/executors/SerialExecutorService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->k:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public y()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->t:Z

    return v0
.end method
