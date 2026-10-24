.class public final Lcom/shabakaty/cinemana/utils/AlphaTileView;
.super Landroid/view/View;
.source "AlphaTileView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/utils/AlphaTileView;",
        "Landroid/view/View;",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final r:Landroid/graphics/Paint;

.field public final s:Lcom/shabakaty/downloader/k5$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/AlphaTileView;->r:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/k5$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/k5$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/AlphaTileView;->s:Lcom/shabakaty/downloader/k5$a;

    const-string p2, "#cccccc"

    .line 5
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 6
    iput p2, p1, Lcom/shabakaty/downloader/k5$a;->b:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f06014c

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p2

    .line 8
    iput p2, p1, Lcom/shabakaty/downloader/k5$a;->c:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/AlphaTileView;->s:Lcom/shabakaty/downloader/k5$a;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x9

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/k5$a;->a:I

    .line 5
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/AlphaTileView;->s:Lcom/shabakaty/downloader/k5$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/k5;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/k5;-><init>(Lcom/shabakaty/downloader/k5$a;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const-string v3, "<this>"

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    const-string v4, "bitmap"

    if-eqz v3, :cond_1

    .line 10
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createScaledBitmap(bitmap, width, height, true)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string v5, "bounds"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 15
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 16
    iget v7, v3, Landroid/graphics/Rect;->right:I

    .line 17
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 18
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    .line 19
    invoke-virtual {v1, v9, v9, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/k5;->draw(Landroid/graphics/Canvas;)V

    .line 21
    invoke-virtual {v1, v5, v6, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    invoke-static {v8, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/utils/AlphaTileView;->r:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_2
    return-void
.end method
