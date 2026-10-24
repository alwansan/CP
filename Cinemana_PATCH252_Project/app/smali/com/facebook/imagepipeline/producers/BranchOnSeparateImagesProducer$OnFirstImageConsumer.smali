.class public Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "BranchOnSeparateImagesProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnFirstImageConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final synthetic d:Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;->d:Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;->d:Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;

    .line 2
    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;->b:Lcom/facebook/imagepipeline/producers/Producer;

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/Producer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method public i(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result v1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->c(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v2

    if-eqz p1, :cond_2

    if-nez v2, :cond_0

    .line 5
    iget-boolean v3, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 7
    invoke-interface {v3, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    and-int/lit8 p2, p2, -0x2

    .line 8
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 9
    invoke-interface {v3, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    .line 10
    iget-boolean p2, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;->d:Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;

    .line 13
    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;->b:Lcom/facebook/imagepipeline/producers/Producer;

    .line 14
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer$OnFirstImageConsumer;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Producer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    :cond_4
    return-void
.end method
