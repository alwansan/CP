.class public Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/producers/Consumer;

.field public final synthetic b:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;->b:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;->b:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a()V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;->b:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->f:Z

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;->b:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;->b:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    .line 5
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 6
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z

    :cond_0
    return-void
.end method
