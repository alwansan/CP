.class public Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "ThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ThrottlingProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThrottlerConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ThrottlingProducer$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->c:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->n()V

    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->n()V

    return-void
.end method

.method public i(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->n()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->c:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->c:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    .line 3
    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->c:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    .line 6
    iget v3, v2, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->b:I

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->c:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    .line 9
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->d:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v2, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;Landroid/util/Pair;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
