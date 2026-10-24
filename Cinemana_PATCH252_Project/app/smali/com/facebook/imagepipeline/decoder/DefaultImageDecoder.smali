.class public Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/ImageDecoder;


# instance fields
.field public final a:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field public final b:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field public final c:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

.field public final d:Lcom/facebook/imagepipeline/decoder/ImageDecoder;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/platform/PlatformDecoder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;-><init>(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->d:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->a:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 4
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->b:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->c:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 2

    .line 1
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 3
    iget-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/facebook/imageformat/ImageFormatChecker;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->d:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->a(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->c:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    iget-object p2, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->c:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, p2, v1, v1}, Lcom/facebook/imagepipeline/platform/PlatformDecoder;->a(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    .line 3
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    sget-object v1, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->d:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 5
    iget v2, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 7
    iget p1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 8
    invoke-direct {v0, p2, v1, v2, p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)V

    const-string p1, "is_rounded"

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    sget-object v2, Lcom/facebook/imagepipeline/image/CloseableImage;->s:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iget-object v2, v0, Lcom/facebook/imagepipeline/image/CloseableImage;->r:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 13
    throw p1
.end method
