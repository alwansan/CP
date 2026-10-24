.class public abstract Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
.super Lcom/facebook/common/executors/StatefulRunnable;
.source "StatefulProducerRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/executors/StatefulRunnable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/facebook/imagepipeline/producers/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field public final u:Ljava/lang/String;

.field public final v:Lcom/facebook/imagepipeline/producers/ProducerContext;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerListener2;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/common/executors/StatefulRunnable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->s:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->t:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->u:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->v:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    invoke-interface {p2, p3, p4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->e(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->t:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->v:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->u:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->g(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    const/4 v3, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->d(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->s:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->t:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->v:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->u:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->g(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    const/4 v3, 0x0

    .line 3
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->k(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->s:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->t:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->v:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->u:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->g(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->s:Lcom/facebook/imagepipeline/producers/Consumer;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public g(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
