.class public final Landroidx/camera/view/PreviewView;
.super Landroid/widget/FrameLayout;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/PreviewView$c;,
        Landroidx/camera/view/PreviewView$e;,
        Landroidx/camera/view/PreviewView$d;,
        Landroidx/camera/view/PreviewView$b;
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public r:Landroidx/camera/view/PreviewView$b;

.field public s:Landroidx/camera/view/c;

.field public final t:Landroidx/camera/view/b;

.field public final u:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Landroidx/camera/view/PreviewView$e;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/camera/view/a;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/qf3;

.field public final x:Landroid/view/View$OnLayoutChangeListener;

.field public final y:Lcom/shabakaty/downloader/if3$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v1, Landroidx/camera/view/PreviewView$b;->s:Landroidx/camera/view/PreviewView$b;

    iput-object v1, p0, Landroidx/camera/view/PreviewView;->r:Landroidx/camera/view/PreviewView$b;

    .line 3
    new-instance v1, Landroidx/camera/view/b;

    invoke-direct {v1}, Landroidx/camera/view/b;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/PreviewView;->t:Landroidx/camera/view/b;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/xv2;

    sget-object v3, Landroidx/camera/view/PreviewView$e;->r:Landroidx/camera/view/PreviewView$e;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->u:Lcom/shabakaty/downloader/xv2;

    .line 5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->v:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/qf3;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/qf3;-><init>(Landroidx/camera/view/b;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->w:Lcom/shabakaty/downloader/qf3;

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/pf3;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/pf3;-><init>(Landroidx/camera/view/PreviewView;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->x:Landroid/view/View$OnLayoutChangeListener;

    .line 8
    new-instance v2, Landroidx/camera/view/PreviewView$a;

    invoke-direct {v2, p0}, Landroidx/camera/view/PreviewView$a;-><init>(Landroidx/camera/view/PreviewView;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->y:Lcom/shabakaty/downloader/if3$d;

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcom/shabakaty/downloader/em3;->a:[I

    invoke-virtual {v2, p2, v5, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    .line 12
    invoke-virtual/range {v3 .. v9}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 13
    :cond_0
    :try_start_0
    iget-object p2, v1, Landroidx/camera/view/b;->g:Landroidx/camera/view/PreviewView$d;

    .line 14
    iget p2, p2, Landroidx/camera/view/PreviewView$d;->r:I

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v2, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 16
    invoke-static {}, Landroidx/camera/view/PreviewView$d;->values()[Landroidx/camera/view/PreviewView$d;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 17
    iget v6, v5, Landroidx/camera/view/PreviewView$d;->r:I

    if-ne v6, p2, :cond_4

    .line 18
    invoke-virtual {p0, v5}, Landroidx/camera/view/PreviewView;->setScaleType(Landroidx/camera/view/PreviewView$d;)V

    .line 19
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 20
    invoke-static {}, Landroidx/camera/view/PreviewView$b;->values()[Landroidx/camera/view/PreviewView$b;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 21
    iget v5, v4, Landroidx/camera/view/PreviewView$b;->r:I

    if-ne v5, p2, :cond_2

    .line 22
    invoke-virtual {p0, v4}, Landroidx/camera/view/PreviewView;->setImplementationMode(Landroidx/camera/view/PreviewView$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroidx/camera/view/PreviewView$c;

    invoke-direct {v0, p0}, Landroidx/camera/view/PreviewView$c;-><init>(Landroidx/camera/view/PreviewView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x106000c

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown implementation mode id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown scale type id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    throw p1
.end method

.method private getViewPortScaleType()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getScaleType()Landroidx/camera/view/PreviewView$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected scale type: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getScaleType()Landroidx/camera/view/PreviewView$d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/camera/view/c;->f()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->w:Lcom/shabakaty/downloader/qf3;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/qf3;->a:Landroidx/camera/view/b;

    invoke-virtual {v3, v1, v2}, Landroidx/camera/view/b;->a(Landroid/util/Size;I)Landroid/graphics/Matrix;

    .line 10
    monitor-exit v0

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/view/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Landroidx/camera/view/c;->c:Landroidx/camera/view/b;

    new-instance v3, Landroid/util/Size;

    iget-object v4, v0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget-object v0, v0, Landroidx/camera/view/c;->b:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    .line 7
    invoke-virtual {v1}, Landroidx/camera/view/b;->f()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Landroidx/camera/view/b;->d()Landroid/graphics/Matrix;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v3, v0}, Landroidx/camera/view/b;->e(Landroid/util/Size;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 10
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 11
    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 12
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v7, v1, Landroidx/camera/view/b;->a:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget-object v1, v1, Landroidx/camera/view/b;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v7, v1

    .line 17
    invoke-virtual {v6, v4, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v2, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v1, v3

    :goto_0
    return-object v1
.end method

.method public getController()Lcom/shabakaty/downloader/et;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationMode()Landroidx/camera/view/PreviewView$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->r:Landroidx/camera/view/PreviewView$b;

    return-object v0
.end method

.method public getMeteringPointFactory()Lcom/shabakaty/downloader/ct2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->w:Lcom/shabakaty/downloader/qf3;

    return-object v0
.end method

.method public getOutputTransform()Lcom/shabakaty/downloader/x83;
    .locals 8

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/view/PreviewView;->t:Landroidx/camera/view/b;

    new-instance v2, Landroid/util/Size;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    .line 4
    invoke-virtual {v1, v2, v3}, Landroidx/camera/view/b;->c(Landroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/camera/view/PreviewView;->t:Landroidx/camera/view/b;

    .line 6
    iget-object v2, v2, Landroidx/camera/view/b;->b:Landroid/graphics/Rect;

    const-string v3, "PreviewView"

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    sget-object v4, Lcom/shabakaty/downloader/tp4;->a:Landroid/graphics/RectF;

    .line 8
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 9
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    sget-object v6, Lcom/shabakaty/downloader/tp4;->a:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v6, v4, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 11
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 12
    iget-object v4, p0, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    instance-of v4, v4, Landroidx/camera/view/e;

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_1

    :cond_1
    const-string v4, "PreviewView needs to be in COMPATIBLE mode for the transform to work correctly."

    .line 14
    invoke-static {v3, v4, v0}, Lcom/shabakaty/downloader/vk2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_1
    new-instance v0, Lcom/shabakaty/downloader/x83;

    new-instance v3, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 16
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v3}, Lcom/shabakaty/downloader/x83;-><init>(Landroid/graphics/Matrix;Landroid/util/Size;)V

    return-object v0

    :cond_2
    :goto_2
    const-string v1, "Transform info is not ready"

    .line 17
    invoke-static {v3, v1, v0}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getPreviewStreamState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/view/PreviewView$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->u:Lcom/shabakaty/downloader/xv2;

    return-object v0
.end method

.method public getScaleType()Landroidx/camera/view/PreviewView$d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->t:Landroidx/camera/view/b;

    .line 3
    iget-object v0, v0, Landroidx/camera/view/b;->g:Landroidx/camera/view/PreviewView$d;

    return-object v0
.end method

.method public getSurfaceProvider()Lcom/shabakaty/downloader/if3$d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->y:Lcom/shabakaty/downloader/if3$d;

    return-object v0
.end method

.method public getViewPort()Lcom/shabakaty/downloader/z35;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 7
    invoke-direct {p0}, Landroidx/camera/view/PreviewView;->getViewPortScaleType()I

    move-result v2

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    const-string v4, "The crop aspect ratio must be set."

    .line 9
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/z35;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/shabakaty/downloader/z35;-><init>(ILandroid/util/Rational;II)V

    move-object v1, v4

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->x:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/camera/view/c;->c()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 6
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getViewPort()Lcom/shabakaty/downloader/z35;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->x:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->s:Landroidx/camera/view/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/camera/view/c;->d()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setController(Lcom/shabakaty/downloader/et;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 3
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getViewPort()Lcom/shabakaty/downloader/z35;

    return-void
.end method

.method public setImplementationMode(Landroidx/camera/view/PreviewView$b;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iput-object p1, p0, Landroidx/camera/view/PreviewView;->r:Landroidx/camera/view/PreviewView$b;

    return-void
.end method

.method public setScaleType(Landroidx/camera/view/PreviewView$d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->t:Landroidx/camera/view/b;

    .line 3
    iput-object p1, v0, Landroidx/camera/view/b;->g:Landroidx/camera/view/PreviewView$d;

    .line 4
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->a()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 6
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getViewPort()Lcom/shabakaty/downloader/z35;

    return-void
.end method
