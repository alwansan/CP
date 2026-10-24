.class public Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;
.super Lcom/facebook/imagepipeline/producers/BaseConsumer;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/BaseConsumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;->b:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;->b:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/datasource/AbstractDataSource;->k()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;->b:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->h:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->f()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->i:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v0, v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->h:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-interface {v1, v0, p1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->h(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;->b:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->h:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 3
    check-cast v0, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 5
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->c(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 6
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result p2

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->f()Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/datasource/AbstractDataSource;->o(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 9
    iget-object p1, v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->i:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object p2, v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->h:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/listener/RequestListener2;->f(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    :cond_0
    return-void
.end method

.method public j(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;->b:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/datasource/AbstractDataSource;->n(F)Z

    return-void
.end method
