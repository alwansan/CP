.class public Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;
.super Ljava/lang/Object;
.source "PartialDiskCacheProducer.java"

# interfaces
.implements Lcom/shabakaty/downloader/wd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/wd0<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field public final synthetic b:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final synthetic c:Lcom/facebook/imagepipeline/producers/Consumer;

.field public final synthetic d:Lcom/facebook/cache/common/CacheKey;

.field public final synthetic e:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->e:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->d:Lcom/facebook/cache/common/CacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/xk4;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p1, Lcom/shabakaty/downloader/xk4;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->c()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "PartialDiskCacheProducer"

    invoke-interface {p1, v0, v1, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->d(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    goto/16 :goto_5

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "PartialDiskCacheProducer"

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->c()Ljava/lang/Exception;

    move-result-object p1

    .line 9
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->k(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 10
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->e:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->d:Lcom/facebook/cache/common/CacheKey;

    .line 11
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->c(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto/16 :goto_5

    .line 12
    :cond_3
    iget-object v1, p1, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_1
    iget-object p1, p1, Lcom/shabakaty/downloader/xk4;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz p1, :cond_9

    .line 15
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v5, "PartialDiskCacheProducer"

    .line 16
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v6

    invoke-static {v1, v4, v2, v6}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->b(Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)Ljava/util/Map;

    move-result-object v6

    .line 17
    invoke-interface {v1, v4, v5, v6}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v1

    sub-int/2addr v1, v2

    if-lez v1, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 19
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 20
    new-instance v4, Lcom/facebook/imagepipeline/common/BytesRange;

    invoke-direct {v4, v0, v1}, Lcom/facebook/imagepipeline/common/BytesRange;-><init>(II)V

    .line 21
    iput-object v4, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->A:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 22
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v4

    .line 23
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    .line 24
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/BytesRange;

    if-nez v6, :cond_5

    goto :goto_3

    .line 25
    :cond_5
    iget v7, v6, Lcom/facebook/imagepipeline/common/BytesRange;->a:I

    if-ltz v7, :cond_6

    iget v6, v6, Lcom/facebook/imagepipeline/common/BytesRange;->b:I

    if-lt v1, v6, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "disk"

    const-string v4, "partial"

    invoke-interface {v0, v1, v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v4, "PartialDiskCacheProducer"

    invoke-interface {v0, v1, v4, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 28
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    const/16 v1, 0x9

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 29
    :cond_7
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    const/16 v6, 0x8

    invoke-interface {v1, p1, v6}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    .line 30
    iget-object v1, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 31
    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 32
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 33
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 34
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 35
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 36
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 37
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 38
    iget-boolean v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 39
    iput-boolean v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    .line 40
    iget-boolean v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 41
    iput-boolean v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Z

    .line 42
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 43
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 44
    iget v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->m:I

    .line 45
    iput v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:I

    .line 46
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 47
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 48
    iget-boolean v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Z

    .line 49
    iput-boolean v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    .line 50
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    .line 51
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/common/Priority;

    .line 52
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 53
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 54
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 55
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 56
    iget-object v6, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Ljava/lang/Boolean;

    .line 57
    iput-object v6, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l:Ljava/lang/Boolean;

    .line 58
    iget v5, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->s:I

    .line 59
    iput v5, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o:I

    sub-int/2addr v4, v2

    if-ltz v4, :cond_8

    const/4 v0, 0x1

    .line 60
    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 61
    new-instance v0, Lcom/facebook/imagepipeline/common/BytesRange;

    const v2, 0x7fffffff

    invoke-direct {v0, v4, v2}, Lcom/facebook/imagepipeline/common/BytesRange;-><init>(II)V

    .line 62
    iput-object v0, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 63
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->e:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->d:Lcom/facebook/cache/common/CacheKey;

    .line 66
    invoke-virtual {v0, v2, v1, v4, p1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->c(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_5

    .line 67
    :cond_9
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v4, "PartialDiskCacheProducer"

    .line 68
    invoke-static {v1, v2, v0, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->b(Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)Ljava/util/Map;

    move-result-object v0

    .line 69
    invoke-interface {v1, v2, v4, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->e:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->d:Lcom/facebook/cache/common/CacheKey;

    .line 71
    invoke-virtual {v0, v1, v2, v4, p1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->c(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    :goto_5
    return-object v3

    :catchall_0
    move-exception p1

    .line 72
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 73
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
