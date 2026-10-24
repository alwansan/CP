.class public interface abstract Lcom/facebook/imagepipeline/producers/ProducerContext;
.super Ljava/lang/Object;
.source "ProducerContext.java"


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation
.end method

.method public abstract c()Lcom/facebook/imagepipeline/request/ImageRequest;
.end method

.method public abstract d(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V
.end method

.method public abstract e()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
.end method

.method public abstract f()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g(Lcom/facebook/imagepipeline/image/EncodedImageOrigin;)V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPriority()Lcom/facebook/imagepipeline/common/Priority;
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract i(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract j()Z
.end method

.method public abstract k(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m(Ljava/lang/String;)V
.end method

.method public abstract n()Lcom/facebook/imagepipeline/producers/ProducerListener2;
.end method

.method public abstract o()Z
.end method

.method public abstract p()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
.end method
