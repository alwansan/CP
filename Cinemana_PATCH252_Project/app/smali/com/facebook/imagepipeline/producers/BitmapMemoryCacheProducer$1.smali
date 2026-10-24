.class public Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "BitmapMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->d(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;Z)Lcom/facebook/imagepipeline/producers/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/facebook/cache/common/CacheKey;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->e:Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->c:Lcom/facebook/cache/common/CacheKey;

    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->d:Z

    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 5
    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :cond_0
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    goto/16 :goto_3

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/CloseableImage;

    const/16 v2, 0x8

    invoke-static {p2, v2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->m(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_5

    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->e:Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;

    .line 11
    iget-object v2, v2, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->a:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 12
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->c:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_5

    .line 13
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/image/CloseableImage;->a()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v3

    .line 14
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/image/CloseableImage;->a()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v4

    .line 15
    move-object v5, v4

    check-cast v5, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    .line 16
    iget-boolean v5, v5, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->c:Z

    if-nez v5, :cond_4

    .line 17
    check-cast v4, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    .line 18
    iget v4, v4, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->a:I

    .line 19
    check-cast v3, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    .line 20
    iget v3, v3, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v4, v3, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 22
    :cond_4
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 23
    invoke-interface {p1, v2, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    :try_start_5
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 25
    throw p1

    .line 26
    :cond_5
    :goto_2
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->d:Z

    if-eqz v2, :cond_6

    .line 27
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->e:Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;

    .line 28
    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;->a:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 29
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer$1;->c:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v1, v2, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->b(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    if-eqz v0, :cond_7

    .line 30
    :try_start_6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(F)V

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    if-eqz v1, :cond_8

    move-object p1, v1

    .line 33
    :cond_8
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_0

    .line 34
    :try_start_7
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    goto/16 :goto_0

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 35
    :cond_9
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 36
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 37
    throw p1
.end method
