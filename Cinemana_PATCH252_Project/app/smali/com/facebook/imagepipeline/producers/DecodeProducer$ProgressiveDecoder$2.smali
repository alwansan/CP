.class public Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->b:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->a:Z

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->b:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->u(Z)V

    .line 4
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->b:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->b:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 5
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->g:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 6
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z

    :cond_0
    return-void
.end method
