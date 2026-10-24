.class public Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final synthetic b:I

.field public final synthetic c:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->c:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->a:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput p4, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    if-eqz v2, :cond_c

    .line 1
    iget-object v3, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->c:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 2
    iget-object v3, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v4, "image_format"

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 4
    iget-object v5, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 5
    iget-object v5, v5, Lcom/facebook/imageformat/ImageFormat;->a:Ljava/lang/String;

    .line 6
    invoke-interface {v3, v4, v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v3, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->c:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iget-object v3, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 8
    iget-boolean v3, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer;->f:Z

    if-nez v3, :cond_0

    const/16 v3, 0x10

    .line 9
    invoke-static {v0, v3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->m(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    :cond_0
    iget-object v3, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->a:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    .line 11
    iget-object v4, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->c:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iget-object v4, v4, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->h:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 12
    iget-boolean v4, v4, Lcom/facebook/imagepipeline/producers/DecodeProducer;->g:Z

    if-nez v4, :cond_1

    .line 13
    iget-object v4, v3, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 14
    invoke-static {v4}, Lcom/facebook/common/util/UriUtil;->e(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 15
    :cond_1
    iget-object v3, v3, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 16
    iget v4, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->b:I

    .line 17
    invoke-static {v3, v2, v4}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result v3

    .line 18
    iput v3, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->y:I

    .line 19
    :cond_2
    iget-object v3, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->a:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 20
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->e()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v3

    .line 21
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    .line 22
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v3, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->c:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 24
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 26
    iget-object v4, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 27
    sget-object v5, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    if-eq v4, v5, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->f(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_9

    .line 28
    :cond_3
    monitor-enter v3

    .line 29
    :try_start_0
    iget-boolean v4, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v3

    if-nez v4, :cond_c

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->p(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_9

    .line 31
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 32
    iget-object v4, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    if-eqz v4, :cond_5

    .line 33
    iget-object v4, v4, Lcom/facebook/imageformat/ImageFormat;->a:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v4, "unknown"

    :goto_0
    move-object v10, v4

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 36
    iget v5, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 39
    iget v5, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 41
    iget v4, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->y:I

    .line 42
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v5, 0x8

    .line 44
    invoke-static {v0, v5}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->m(II)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    .line 45
    invoke-static {v0, v6}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->m(II)Z

    move-result v7

    .line 46
    iget-object v8, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v8}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "unknown"

    .line 47
    :try_start_1
    iget-object v8, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 48
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    iget-wide v14, v8, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:J

    move/from16 v18, v7

    iget-wide v6, v8, Lcom/facebook/imagepipeline/producers/JobScheduler;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v6, v14, v6

    :try_start_3
    monitor-exit v8

    .line 50
    iget-object v8, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v8}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v8

    .line 51
    iget-object v8, v8, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 52
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_8

    if-eqz v18, :cond_7

    goto :goto_2

    .line 53
    :cond_7
    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->o(Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v14

    goto :goto_3

    .line 54
    :cond_8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v14

    :goto_3
    if-nez v5, :cond_a

    if-eqz v18, :cond_9

    goto :goto_4

    .line 55
    :cond_9
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->p()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v5

    goto :goto_5

    .line 56
    :cond_a
    :goto_4
    sget-object v5, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->d:Lcom/facebook/imagepipeline/image/QualityInfo;

    :goto_5
    move-object v15, v5

    .line 57
    iget-object v5, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->d:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v4, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "DecodeProducer"

    invoke-interface {v5, v4, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->e(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    :try_start_4
    invoke-virtual {v3, v2, v14, v15}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->t(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v1
    :try_end_4
    .catch Lcom/facebook/imagepipeline/decoder/DecodeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 59
    :try_start_5
    iget v4, v2, Lcom/facebook/imagepipeline/image/EncodedImage;->y:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    or-int/lit8 v0, v0, 0x10

    :cond_b
    move-object v4, v3

    move-object v5, v1

    move-object v8, v15

    .line 60
    :try_start_6
    invoke-virtual/range {v4 .. v13}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->n(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 61
    iget-object v5, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->d:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v6, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v7, "DecodeProducer"

    invoke-interface {v5, v6, v7, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    invoke-virtual {v3, v2, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->v(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/CloseableImage;)V

    .line 63
    invoke-virtual {v3, v1, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->s(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 64
    :try_start_7
    iget-object v0, v1, Lcom/facebook/imagepipeline/decoder/DecodeException;->r:Lcom/facebook/imagepipeline/image/EncodedImage;

    const-string v4, "ProgressiveDecoder"

    const-string v5, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v14, v18

    const/16 v16, 0x1

    aput-object v8, v14, v16

    const/16 v8, 0xa

    .line 66
    invoke-virtual {v0, v8}, Lcom/facebook/imagepipeline/image/EncodedImage;->d(I)Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x2

    aput-object v8, v14, v17

    const/4 v8, 0x3

    .line 67
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v8

    .line 68
    invoke-static {v4, v5, v14}, Lcom/facebook/common/logging/FLog;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    const/4 v1, 0x0

    :goto_7
    move-object v5, v1

    move-object v4, v3

    move-object v8, v15

    .line 70
    :try_start_8
    invoke-virtual/range {v4 .. v13}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->n(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 71
    iget-object v4, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->d:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v5, v3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v6, "DecodeProducer"

    invoke-interface {v4, v5, v6, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->k(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v3, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->u(Z)V

    .line 73
    iget-object v1, v3, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 74
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 75
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 76
    :try_start_9
    monitor-exit v8

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 78
    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 79
    monitor-exit v3

    throw v1

    :cond_c
    :goto_9
    return-void
.end method
