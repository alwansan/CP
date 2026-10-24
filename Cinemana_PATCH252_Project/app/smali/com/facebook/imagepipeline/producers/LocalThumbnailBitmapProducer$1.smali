.class public Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;
.super Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
.source "LocalThumbnailBitmapProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic A:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;

.field public final synthetic w:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field public final synthetic x:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field public final synthetic y:Lcom/facebook/imagepipeline/request/ImageRequest;

.field public final synthetic z:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->A:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->w:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->y:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p9, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->z:Landroid/os/CancellationSignal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->v:Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->A:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;->b:Landroid/content/ContentResolver;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->y:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    iget-object v1, v1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 5
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->y:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->y:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x800

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->z:Landroid/os/CancellationSignal;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->b()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->d:Lcom/facebook/imagepipeline/image/QualityInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;I)V

    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "image_format"

    const-string v3, "thumbnail"

    invoke-interface {v0, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/image/CloseableImage;->c(Ljava/util/Map;)V

    .line 12
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->k(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->d()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->z:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->e(Ljava/lang/Exception;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->w:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "LocalThumbnailBitmapProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v0, "local"

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->f(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->w:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerContext;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "LocalThumbnailBitmapProducer"

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer$1;->x:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v0, "local"

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
