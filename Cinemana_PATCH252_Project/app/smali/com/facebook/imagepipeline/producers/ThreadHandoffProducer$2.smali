.class public Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

.field public final synthetic b:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$2;->b:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$2;->a:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$2;->a:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    invoke-virtual {v0}, Lcom/facebook/common/executors/StatefulRunnable;->a()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$2;->b:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;

    .line 3
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->b:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$2;->a:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    check-cast v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueueImpl;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueueImpl;->a:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
