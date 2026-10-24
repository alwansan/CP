.class public Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/cache/common/CacheKey;

.field public final synthetic s:Lcom/facebook/imagepipeline/image/EncodedImage;

.field public final synthetic t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/lang/Object;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->r:Lcom/facebook/cache/common/CacheKey;

    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->s:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->r:Lcom/facebook/cache/common/CacheKey;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->s:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->b(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 3
    iget-object v0, v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->r:Lcom/facebook/cache/common/CacheKey;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->s:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/StagingArea;->d(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->s:Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    :cond_0
    return-void

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
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->t:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 9
    iget-object v1, v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->r:Lcom/facebook/cache/common/CacheKey;

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->s:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/imagepipeline/cache/StagingArea;->d(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$4;->s:Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 13
    :cond_1
    throw v0
.end method
