.class public Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransformingConsumer"
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
.field public final c:Z

.field public final d:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field public final e:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public f:Z

.field public final g:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field public final synthetic h:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Z",
            "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->h:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->f:Z

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 5
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->c:Z

    .line 7
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->d:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 8
    new-instance p4, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;

    invoke-direct {p4, p0, p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)V

    .line 9
    new-instance p5, Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 10
    iget-object v0, p1, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->a:Ljava/util/concurrent/Executor;

    const/16 v1, 0x64

    .line 11
    invoke-direct {p5, v0, p4, v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 12
    new-instance p4, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;

    invoke-direct {p4, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;-><init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V

    invoke-interface {p3, p4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->d(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;I)V
    .locals 10

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 2
    sget-object v0, Lcom/facebook/common/util/TriState;->t:Lcom/facebook/common/util/TriState;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->f:Z

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    if-eqz v1, :cond_11

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 5
    invoke-interface {p1, v2, v3}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto/16 :goto_7

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 7
    iget-object v4, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 8
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 9
    invoke-interface {v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->d:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    iget-boolean v7, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->c:Z

    .line 10
    invoke-interface {v6, v4, v7}, Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;->createImageTranscoder(Lcom/facebook/imageformat/ImageFormat;Z)Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;

    move-result-object v6

    .line 11
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 13
    iget-object v7, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 14
    sget-object v8, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_2

    move-object v2, v0

    goto :goto_4

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 16
    iget-object v7, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 17
    invoke-interface {v6, v7}, Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;->d(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 18
    sget-object v2, Lcom/facebook/common/util/TriState;->s:Lcom/facebook/common/util/TriState;

    goto :goto_4

    .line 19
    :cond_3
    iget-object v7, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 20
    iget-boolean v8, v7, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    if-nez v8, :cond_7

    .line 21
    invoke-static {v7, p1}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->b(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v8

    if-nez v8, :cond_6

    .line 22
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/common/RotationOptions;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 23
    iget-boolean v7, v7, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    if-eqz v7, :cond_4

    goto :goto_0

    .line 24
    :cond_4
    sget-object v7, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->a:Lcom/facebook/common/internal/ImmutableList;

    .line 25
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 26
    iget v8, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 28
    :cond_5
    :goto_0
    iput v9, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_9

    .line 29
    iget-object v5, v5, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 30
    invoke-interface {v6, p1, v5, v2}, Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;->b(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 31
    :cond_9
    :goto_3
    invoke-static {v3}, Lcom/facebook/common/util/TriState;->f(Z)Lcom/facebook/common/util/TriState;

    move-result-object v2

    :goto_4
    if-nez v1, :cond_a

    if-ne v2, v0, :cond_a

    goto/16 :goto_7

    .line 32
    :cond_a
    sget-object v0, Lcom/facebook/common/util/TriState;->r:Lcom/facebook/common/util/TriState;

    if-eq v2, v0, :cond_e

    .line 33
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    if-eq v4, v0, :cond_c

    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->k:Lcom/facebook/imageformat/ImageFormat;

    if-ne v4, v0, :cond_b

    goto :goto_5

    .line 34
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 35
    iget-object v0, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 36
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->c()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 37
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->a()I

    move-result v0

    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->a(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 39
    iput v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    goto :goto_6

    .line 40
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 42
    iget-boolean v0, v0, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    if-nez v0, :cond_d

    .line 43
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 44
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    if-eqz v0, :cond_d

    .line 45
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 46
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 47
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->a(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 48
    iput v9, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    .line 49
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 50
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto :goto_7

    .line 51
    :cond_e
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->f(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    if-nez v1, :cond_10

    .line 52
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->o()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 53
    :cond_10
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z

    :cond_11
    :goto_7
    return-void
.end method

.method public final n(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Lcom/facebook/imagepipeline/common/ResizeOptions;",
            "Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "ResizeAndRotateProducer"

    .line 3
    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->g(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 6
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 9
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unspecified"

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Image format"

    .line 12
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 13
    iget-object p1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Original size"

    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Requested size"

    .line 16
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "queueTime"

    .line 17
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 18
    monitor-enter p2

    .line 19
    :try_start_0
    iget-wide v2, p2, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:J

    iget-wide v4, p2, Lcom/facebook/imagepipeline/producers/JobScheduler;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    monitor-exit p2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Transcoder id"

    .line 21
    invoke-virtual {v1, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Transcoding result"

    .line 22
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p1, Lcom/facebook/common/internal/ImmutableMap;

    invoke-direct {p1, v1}, Lcom/facebook/common/internal/ImmutableMap;-><init>(Ljava/util/Map;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p2

    throw p1
.end method
