.class public Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer$BitmapPrepareConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "BitmapPrepareProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapPrepareConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput p2, p0, Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer$BitmapPrepareConsumer;->c:I

    .line 3
    iput p3, p0, Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer$BitmapPrepareConsumer;->d:I

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/CloseableImage;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v1, :cond_5

    .line 6
    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 7
    iget-object v0, v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, v1

    .line 9
    iget v1, p0, Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer$BitmapPrepareConsumer;->c:I

    if-ge v2, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget v1, p0, Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer$BitmapPrepareConsumer;->d:I

    if-le v2, v1, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 12
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    return-void
.end method
