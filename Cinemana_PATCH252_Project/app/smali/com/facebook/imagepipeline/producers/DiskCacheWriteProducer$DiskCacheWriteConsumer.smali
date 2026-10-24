.class public Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DiskCacheWriteProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiskCacheWriteConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final d:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public final e:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public final f:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->d:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->e:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 5
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->f:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "DiskCacheWriteProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->e(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    .line 4
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->l(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 6
    iget-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 7
    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->f:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 10
    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v3, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    invoke-virtual {v3, v0, v4}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v3

    .line 11
    iget-object v0, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 12
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->r:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v4, :cond_1

    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->e:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->d:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 16
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 17
    invoke-interface {v0, v3, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto :goto_2

    .line 20
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 21
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 22
    invoke-interface {v0, v3, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    :goto_2
    return-void
.end method
