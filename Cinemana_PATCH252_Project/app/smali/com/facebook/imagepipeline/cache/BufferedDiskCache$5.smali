.class public Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/cache/common/CacheKey;

.field public final synthetic s:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/lang/Object;Lcom/facebook/cache/common/CacheKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;->s:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;->r:Lcom/facebook/cache/common/CacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;->s:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;->r:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/StagingArea;->c(Lcom/facebook/cache/common/CacheKey;)Z

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;->s:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 5
    iget-object v0, v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->a:Lcom/facebook/cache/disk/FileCache;

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;->r:Lcom/facebook/cache/common/CacheKey;

    check-cast v0, Lcom/facebook/cache/disk/DiskStorageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/DiskStorageCache;->f(Lcom/facebook/cache/common/CacheKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 8
    throw v0
.end method
