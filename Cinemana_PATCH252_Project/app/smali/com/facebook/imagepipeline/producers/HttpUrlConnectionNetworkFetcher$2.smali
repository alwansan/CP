.class public Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "HttpUrlConnectionNetworkFetcher.java"


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Future;

.field public final synthetic b:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$2;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$2;->b:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$2;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$2;->b:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    check-cast v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;

    .line 3
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->b:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->a:Lcom/facebook/imagepipeline/producers/FetchState;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/FetchState;->a()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const/4 v3, 0x0

    const-string v4, "NetworkFetchProducer"

    .line 7
    invoke-interface {v1, v2, v4, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->d(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/FetchState;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 9
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    :cond_0
    return-void
.end method
