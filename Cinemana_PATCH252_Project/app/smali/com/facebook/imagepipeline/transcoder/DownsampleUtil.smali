.class public Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;
.super Ljava/lang/Object;
.source "DownsampleUtil.java"


# direct methods
.method public static a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->k(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->k(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 5
    iget p0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 7
    iget v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 8
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p2, p2

    .line 9
    :goto_0
    div-int v1, p0, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 11
    iget-object v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 12
    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
