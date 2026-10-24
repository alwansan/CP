.class public Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "EncodedProbeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProbeConsumer"
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

.field public final g:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->d:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->e:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 5
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->f:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 6
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->g:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 7
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->h:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    const-string v0, "origin"

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->f(I)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    const/16 v1, 0xa

    .line 4
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->l(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 6
    iget-object v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 7
    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->f:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 10
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v2, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    invoke-virtual {v2, v1, v3}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->g:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->a(Ljava/lang/Object;)Z

    const-string v3, "memory_encoded"

    .line 12
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v4, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->h:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iget-object v0, v1, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 15
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->r:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->e:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->d:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 17
    :goto_1
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->c(Lcom/facebook/cache/common/CacheKey;)V

    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->h:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->a(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v1, "disk"

    .line 19
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;->h:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->a(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto :goto_4

    .line 23
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 26
    throw p1
.end method
