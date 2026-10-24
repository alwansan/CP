.class public final Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;
.super Ljava/lang/Object;
.source "ThumbnailSizeChecker.java"


# direct methods
.method public static a(I)I
    .locals 1

    int-to-float p0, p0

    const v0, 0x3faaaaab

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static b(II)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->a(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x45000000    # 2048.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->a(I)I

    move-result p0

    const/16 p1, 0x800

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->u:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 4
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 6
    iget p0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 7
    invoke-static {v0, p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->b(II)Z

    move-result p0

    return p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 9
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->x:I

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 11
    iget p0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->w:I

    .line 12
    invoke-static {v0, p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->b(II)Z

    move-result p0

    return p0
.end method
