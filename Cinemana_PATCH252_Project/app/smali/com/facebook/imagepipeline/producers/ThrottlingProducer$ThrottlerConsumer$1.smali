.class public Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/util/Pair;

.field public final synthetic s:Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;Landroid/util/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;->s:Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;->r:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;->s:Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->c:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;->r:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v3

    const-string v4, "ThrottlingProducer"

    const/4 v5, 0x0

    .line 3
    invoke-interface {v3, v1, v4, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    iget-object v3, v0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->a:Lcom/facebook/imagepipeline/producers/Producer;

    new-instance v4, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;

    invoke-direct {v4, v0, v2, v5}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;-><init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ThrottlingProducer$1;)V

    invoke-interface {v3, v4, v1}, Lcom/facebook/imagepipeline/producers/Producer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method
