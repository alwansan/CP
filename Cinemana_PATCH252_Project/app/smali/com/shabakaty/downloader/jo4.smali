.class public Lcom/shabakaty/downloader/jo4;
.super Lcom/shabakaty/downloader/sn2;
.source "TooltipDrawable.java"

# interfaces
.implements Lcom/shabakaty/downloader/sl4$b;


# instance fields
.field public P:Ljava/lang/CharSequence;

.field public final Q:Landroid/content/Context;

.field public final R:Landroid/graphics/Paint$FontMetrics;

.field public final S:Lcom/shabakaty/downloader/sl4;

.field public final T:Landroid/view/View$OnLayoutChangeListener;

.field public final U:Landroid/graphics/Rect;

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/sn2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/jo4;->R:Landroid/graphics/Paint$FontMetrics;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/sl4;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/sl4;-><init>(Lcom/shabakaty/downloader/sl4$b;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    .line 4
    new-instance p3, Lcom/shabakaty/downloader/jo4$a;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/jo4$a;-><init>(Lcom/shabakaty/downloader/jo4;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/jo4;->T:Landroid/view/View$OnLayoutChangeListener;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/jo4;->U:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    iput p3, p0, Lcom/shabakaty/downloader/jo4;->b0:F

    .line 7
    iput p3, p0, Lcom/shabakaty/downloader/jo4;->c0:F

    const/high16 p4, 0x3f000000    # 0.5f

    .line 8
    iput p4, p0, Lcom/shabakaty/downloader/jo4;->d0:F

    .line 9
    iput p3, p0, Lcom/shabakaty/downloader/jo4;->e0:F

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/jo4;->Q:Landroid/content/Context;

    .line 11
    iget-object p3, p2, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p3, Landroid/text/TextPaint;->density:F

    .line 13
    iget-object p1, p2, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 14
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public final B()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jo4;->U:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->a0:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->Y:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/jo4;->U:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->a0:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->Y:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/jo4;->U:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->a0:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->Y:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jo4;->U:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->a0:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->Y:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final C()Lcom/shabakaty/downloader/c21;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jo4;->B()F

    move-result v0

    neg-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/shabakaty/downloader/jo4;->Z:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    sub-double/2addr v1, v5

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/s53;

    new-instance v2, Lcom/shabakaty/downloader/xm2;

    iget v3, p0, Lcom/shabakaty/downloader/jo4;->Z:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/xm2;-><init>(F)V

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/s53;-><init>(Lcom/shabakaty/downloader/c21;F)V

    return-object v1
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sn2;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jo4;->B()F

    move-result v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/jo4;->Z:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->Z:I

    int-to-double v1, v1

    sub-double/2addr v3, v1

    neg-double v1, v3

    double-to-float v1, v1

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/jo4;->b0:F

    iget v3, p0, Lcom/shabakaty/downloader/jo4;->c0:F

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/shabakaty/downloader/jo4;->d0:F

    mul-float v6, v6, v7

    add-float/2addr v6, v4

    .line 7
    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sn2;->draw(Landroid/graphics/Canvas;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/jo4;->P:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/jo4;->R:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/jo4;->R:Landroid/graphics/Paint$FontMetrics;

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    .line 18
    iget-object v3, v2, Lcom/shabakaty/downloader/sl4;->f:Lcom/shabakaty/downloader/nl4;

    if-eqz v3, :cond_1

    .line 19
    iget-object v2, v2, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    iget-object v3, p0, Lcom/shabakaty/downloader/jo4;->Q:Landroid/content/Context;

    .line 22
    iget-object v4, v2, Lcom/shabakaty/downloader/sl4;->f:Lcom/shabakaty/downloader/nl4;

    iget-object v5, v2, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    iget-object v2, v2, Lcom/shabakaty/downloader/sl4;->b:Lcom/shabakaty/downloader/xa3;

    invoke-virtual {v4, v3, v5, v2}, Lcom/shabakaty/downloader/nl4;->e(Landroid/content/Context;Landroid/text/TextPaint;Lcom/shabakaty/downloader/xa3;)V

    .line 23
    iget-object v2, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    .line 24
    iget-object v2, v2, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 25
    iget v3, p0, Lcom/shabakaty/downloader/jo4;->e0:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 26
    :cond_1
    iget-object v5, p0, Lcom/shabakaty/downloader/jo4;->P:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object v0, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    .line 27
    iget-object v10, v0, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    move-object v4, p1

    .line 28
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 3
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/jo4;->X:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/jo4;->V:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/jo4;->P:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/jo4;->S:Lcom/shabakaty/downloader/sl4;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/sl4;->a(Ljava/lang/String;)F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/jo4;->W:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sn2;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/sn2;->r:Lcom/shabakaty/downloader/sn2$b;

    iget-object p1, p1, Lcom/shabakaty/downloader/sn2$b;->a:Lcom/shabakaty/downloader/t44;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/t44$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/t44$b;-><init>(Lcom/shabakaty/downloader/t44;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jo4;->C()Lcom/shabakaty/downloader/c21;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lcom/shabakaty/downloader/t44$b;->k:Lcom/shabakaty/downloader/c21;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/t44$b;->a()Lcom/shabakaty/downloader/t44;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/sn2;->r:Lcom/shabakaty/downloader/sn2$b;

    iput-object p1, v0, Lcom/shabakaty/downloader/sn2$b;->a:Lcom/shabakaty/downloader/t44;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sn2;->invalidateSelf()V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sn2;->onStateChange([I)Z

    move-result p1

    return p1
.end method
