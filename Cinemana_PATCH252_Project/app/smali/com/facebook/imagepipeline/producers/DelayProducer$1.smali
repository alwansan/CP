.class public Lcom/facebook/imagepipeline/producers/DelayProducer$1;
.super Ljava/lang/Object;
.source "DelayProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/DelayProducer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/imagepipeline/producers/Consumer;

.field public final synthetic s:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final synthetic t:Lcom/facebook/imagepipeline/producers/DelayProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DelayProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DelayProducer$1;->t:Lcom/facebook/imagepipeline/producers/DelayProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DelayProducer$1;->r:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DelayProducer$1;->s:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelayProducer$1;->t:Lcom/facebook/imagepipeline/producers/DelayProducer;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DelayProducer;->a:Lcom/facebook/imagepipeline/producers/Producer;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DelayProducer$1;->r:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DelayProducer$1;->s:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/Producer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method
