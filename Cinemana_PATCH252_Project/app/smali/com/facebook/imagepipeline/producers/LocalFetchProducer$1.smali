.class public Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;
.super Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
.source "LocalFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalFetchProducer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic w:Lcom/facebook/imagepipeline/request/ImageRequest;

.field public final synthetic x:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field public final synthetic y:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final synthetic z:Lcom/facebook/imagepipeline/producers/LocalFetchProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/LocalFetchProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->z:Lcom/facebook/imagepipeline/producers/LocalFetchProducer;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->w:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->y:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->z:Lcom/facebook/imagepipeline/producers/LocalFetchProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->w:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    const-string v1, "local"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->y:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->z:Lcom/facebook/imagepipeline/producers/LocalFetchProducer;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->y:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->j()V

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->y:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->z:Lcom/facebook/imagepipeline/producers/LocalFetchProducer;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalFetchProducer$1;->y:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
