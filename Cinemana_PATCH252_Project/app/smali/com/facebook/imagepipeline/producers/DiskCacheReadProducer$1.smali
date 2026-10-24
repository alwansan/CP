.class public Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lcom/shabakaty/downloader/wd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/wd0<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field public final synthetic b:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final synthetic c:Lcom/facebook/imagepipeline/producers/Consumer;

.field public final synthetic d:Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->d:Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/xk4;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p1, Lcom/shabakaty/downloader/xk4;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->c()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "DiskCacheProducer"

    invoke-interface {p1, v0, v1, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->d(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->d()V

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "DiskCacheProducer"

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk4;->c()Ljava/lang/Exception;

    move-result-object p1

    .line 9
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->k(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 10
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->d:Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;

    .line 11
    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;->d:Lcom/facebook/imagepipeline/producers/Producer;

    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/Producer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v1, p1, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_1
    iget-object p1, p1, Lcom/shabakaty/downloader/xk4;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz p1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v4, "DiskCacheProducer"

    .line 17
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v5

    invoke-static {v1, v2, v0, v5}, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;->b(Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)Ljava/util/Map;

    move-result-object v5

    .line 18
    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v4, "DiskCacheProducer"

    invoke-interface {v1, v2, v4, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 20
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "disk"

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(F)V

    .line 22
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v1, p1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    .line 23
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    goto :goto_2

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->a:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "DiskCacheProducer"

    .line 25
    invoke-static {p1, v0, v2, v2}, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;->b(Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)Ljava/util/Map;

    move-result-object v2

    .line 26
    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->d:Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;

    .line 28
    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;->d:Lcom/facebook/imagepipeline/producers/Producer;

    .line 29
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer$1;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/Producer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    :goto_2
    return-object v3

    :catchall_0
    move-exception p1

    .line 30
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 31
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
