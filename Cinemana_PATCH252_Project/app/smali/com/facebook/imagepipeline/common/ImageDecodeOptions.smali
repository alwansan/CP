.class public Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
.super Ljava/lang/Object;
.source "ImageDecodeOptions.java"


# static fields
.field public static final e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/Bitmap$Config;

.field public final d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;-><init>()V

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;-><init>(Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;)V

    .line 3
    sput-object v1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->a:I

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->a:I

    .line 4
    iget v0, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->b:I

    .line 5
    iput v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->b:I

    .line 6
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->c:Landroid/graphics/Bitmap$Config;

    .line 7
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->c:Landroid/graphics/Bitmap$Config;

    .line 8
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->d:Landroid/graphics/Bitmap$Config;

    .line 9
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->d:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 3
    iget v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->a:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->a:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->b:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->c:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->c:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->d:Landroid/graphics/Bitmap$Config;

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ImageDecodeOptions{"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->b(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v1

    iget v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->a:I

    const-string v3, "minDecodeIntervalMs"

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->b:I

    const-string v3, "maxDimensionPx"

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const/4 v2, 0x0

    const-string v3, "decodePreviewFrame"

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const-string v3, "useLastFrameForPreview"

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const-string v3, "decodeAllFrames"

    .line 7
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const-string v3, "forceStaticImage"

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-object v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->c:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitmapConfigName"

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 11
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->d:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "animatedBitmapConfigName"

    .line 13
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const/4 v2, 0x0

    const-string v3, "customImageDecoder"

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const-string v3, "bitmapTransformation"

    .line 15
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const-string v3, "colorSpace"

    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 17
    invoke-virtual {v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
