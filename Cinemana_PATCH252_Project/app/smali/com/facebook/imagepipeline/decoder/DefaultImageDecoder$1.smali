.class public Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->a:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 2
    iget-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 3
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->a:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    .line 5
    iget-object v1, v0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->c:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    iget-object v3, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->c:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p2

    .line 6
    invoke-interface/range {v1 .. v6}, Lcom/facebook/imagepipeline/platform/PlatformDecoder;->b(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    const/4 p4, 0x0

    .line 7
    :try_start_0
    invoke-static {p4, p2}, Lcom/facebook/imagepipeline/transformation/TransformationUtils;->a(Lcom/facebook/imagepipeline/transformation/BitmapTransformation;Lcom/facebook/common/references/CloseableReference;)Z

    .line 8
    new-instance p4, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 10
    iget v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 12
    iget p1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->v:I

    .line 13
    invoke-direct {p4, p2, p3, v0, p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)V

    const-string p1, "is_rounded"

    .line 14
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    sget-object v0, Lcom/facebook/imagepipeline/image/CloseableImage;->s:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p4, Lcom/facebook/imagepipeline/image/CloseableImage;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object p4

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 18
    throw p1

    .line 19
    :cond_1
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->c:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_4

    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->a:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 22
    iget v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 24
    iget v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    if-eq v1, v2, :cond_3

    .line 25
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->a:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    if-eqz v1, :cond_2

    .line 26
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->a(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0, p1, p4}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->b(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    :goto_0
    return-object p1

    .line 28
    :cond_3
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "image width or height is incorrect"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw p2

    .line 29
    :cond_4
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->j:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_6

    .line 30
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->a:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    .line 31
    iget-object v0, v0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->b:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    if-eqz v0, :cond_5

    .line 32
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->a(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 33
    :cond_5
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "Animated WebP support not set up!"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw p2

    .line 34
    :cond_6
    sget-object p2, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, p2, :cond_7

    .line 35
    iget-object p2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->a:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual {p2, p1, p4}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->b(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    return-object p1

    .line 36
    :cond_7
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "unknown image format"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw p2
.end method
