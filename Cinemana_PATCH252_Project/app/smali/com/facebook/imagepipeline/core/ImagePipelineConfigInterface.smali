.class public interface abstract Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
.super Ljava/lang/Object;
.source "ImagePipelineConfigInterface.java"


# virtual methods
.method public abstract A()Lcom/facebook/callercontext/CallerContextVerifier;
.end method

.method public abstract B()Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract C()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
.end method

.method public abstract D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end method

.method public abstract E()Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
.end method

.method public abstract a()Landroid/content/Context;
.end method

.method public abstract b()Lcom/facebook/imagepipeline/memory/PoolFactory;
.end method

.method public abstract c()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()I
.end method

.method public abstract e()Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Lcom/facebook/imagepipeline/core/FileCacheFactory;
.end method

.method public abstract g()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
.end method

.method public abstract h()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
.end method

.method public abstract i()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
.end method

.method public abstract j()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract k()Lcom/facebook/cache/disk/DiskCacheConfig;
.end method

.method public abstract l()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract m()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
.end method

.method public abstract n()Z
.end method

.method public abstract o()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
.end method

.method public abstract p()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
.end method

.method public abstract q()Lcom/facebook/cache/disk/DiskCacheConfig;
.end method

.method public abstract r()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
.end method

.method public abstract s()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract t()Z
.end method

.method public abstract u()Lcom/facebook/common/executors/SerialExecutorService;
.end method

.method public abstract v()Ljava/lang/Integer;
.end method

.method public abstract w()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
.end method

.method public abstract x()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
.end method

.method public abstract y()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
.end method

.method public abstract z()Z
.end method
