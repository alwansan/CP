.class public abstract Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ProgressiveDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final d:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field public final e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field public f:Z

.field public final g:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field public final synthetic h:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 4
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->d:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 5
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 7
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->f:Z

    .line 9
    new-instance v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V

    .line 10
    new-instance p5, Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 11
    iget-object v1, p1, Lcom/facebook/imagepipeline/producers/DecodeProducer;->b:Ljava/util/concurrent/Executor;

    .line 12
    iget p2, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->a:I

    invoke-direct {p5, v1, v0, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 13
    new-instance p2, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;

    invoke-direct {p2, p0, p1, p4}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Z)V

    invoke-interface {p3, p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->d(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->q()V

    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->r(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is null."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->u(Z)V

    .line 6
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 7
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is not valid."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->u(Z)V

    .line 11
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 12
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->w(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 14
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 15
    :try_start_1
    invoke-static {p2, p1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->m(II)Z

    move-result p1

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 19
    throw p1
.end method

.method public j(F)V
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    mul-float p1, p1, v0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->b(F)V

    return-void
.end method

.method public final n(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            "J",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 1
    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->d:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v8, "DecodeProducer"

    invoke-interface {v6, v7, v8}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->g(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 3
    move-object/from16 v7, p4

    check-cast v7, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    .line 4
    iget-boolean v7, v7, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->b:Z

    .line 5
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 7
    instance-of v9, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    const-string v10, "sampleSize"

    const-string v11, "requestedImageSize"

    const-string v12, "imageFormat"

    const-string v13, "encodedImageSize"

    const-string v14, "isFinal"

    const-string v15, "hasGoodQuality"

    const-string v0, "queueTime"

    if-eqz v9, :cond_1

    .line 8
    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 9
    iget-object v1, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 p1, v1

    const/16 v1, 0x8

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "bitmapSize"

    .line 13
    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v9, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v9, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v9, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v9, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v9, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p9

    .line 20
    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "byteCount"

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/facebook/common/internal/ImmutableMap;

    invoke-direct {v0, v9}, Lcom/facebook/common/internal/ImmutableMap;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_1
    move-object v1, v5

    .line 23
    new-instance v5, Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v5, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v5, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v5, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v5, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v5, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v5, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/facebook/common/internal/ImmutableMap;

    invoke-direct {v0, v5}, Lcom/facebook/common/internal/ImmutableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public abstract o(Lcom/facebook/imagepipeline/image/EncodedImage;)I
.end method

.method public abstract p()Lcom/facebook/imagepipeline/image/QualityInfo;
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->u(Z)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    return-void
.end method

.method public final r(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->u(Z)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->j:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    .line 3
    iget-object v0, v0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;->a:Lcom/facebook/common/references/CloseableReference$LeakHandler;

    sget-object v1, Lcom/facebook/common/references/CloseableReference;->v:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/facebook/common/references/CloseableReference;->x:Lcom/facebook/common/references/ResourceReleaser;

    .line 5
    invoke-interface {v0}, Lcom/facebook/common/references/CloseableReference$LeakHandler;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 6
    :cond_1
    invoke-static {p1, v2, v0, v1}, Lcom/facebook/common/references/CloseableReference;->t(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 7
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->u(Z)V

    .line 8
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 9
    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 11
    :cond_3
    throw p1
.end method

.method public final t(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->k:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->l:Lcom/facebook/common/internal/Supplier;

    .line 4
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 6
    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer;->c:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->a(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 9
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->k:Ljava/lang/Runnable;

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 13
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->c:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 14
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->a(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    :goto_1
    return-object p1

    .line 15
    :cond_1
    throw v1
.end method

.method public final u(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->b(F)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->f:Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a()V

    return-void

    .line 8
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final v(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/CloseableImage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 3
    iget v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encoded_width"

    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 7
    iget v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encoded_height"

    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "encoded_size"

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    instance-of p1, p2, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz p1, :cond_1

    .line 11
    move-object p1, p2

    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bitmap_config"

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 14
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->f()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->c(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public abstract w(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
.end method
