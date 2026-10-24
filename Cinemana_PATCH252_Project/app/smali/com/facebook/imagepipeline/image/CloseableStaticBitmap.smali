.class public Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
.super Lcom/facebook/imagepipeline/image/CloseableBitmap;
.source "CloseableStaticBitmap.java"

# interfaces
.implements Lcom/facebook/common/references/HasBitmap;


# instance fields
.field public t:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public volatile u:Landroid/graphics/Bitmap;

.field public final v:Lcom/facebook/imagepipeline/image/QualityInfo;

.field public final w:I

.field public final x:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, p2}, Lcom/facebook/common/references/CloseableReference;->o(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->t:Lcom/facebook/common/references/CloseableReference;

    .line 6
    iput-object p3, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->v:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 7
    iput p4, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->w:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->x:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "II)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->b()Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->t:Lcom/facebook/common/references/CloseableReference;

    .line 13
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    .line 14
    iput-object p2, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->v:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 15
    iput p3, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->w:I

    .line 16
    iput p4, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->x:I

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/image/QualityInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->v:Lcom/facebook/imagepipeline/image/QualityInfo;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imageutils/BitmapUtil;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->t:Lcom/facebook/common/references/CloseableReference;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->t:Lcom/facebook/common/references/CloseableReference;

    .line 4
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized s()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->t:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
