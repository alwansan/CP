.class public Lcom/facebook/drawee/drawable/RoundedColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedColorDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/Rounded;


# instance fields
.field public A:Z

.field public final B:Landroid/graphics/Path;

.field public final C:Landroid/graphics/Path;

.field public D:I

.field public final E:Landroid/graphics/RectF;

.field public F:I

.field public final r:[F

.field public final s:[F

.field public t:[F

.field public final u:Landroid/graphics/Paint;

.field public v:Z

.field public w:F

.field public x:F

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->r:[F

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->s:[F

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->v:Z

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    .line 7
    iput v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->x:F

    .line 8
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->y:I

    .line 9
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->z:Z

    .line 10
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->A:Z

    .line 11
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->B:Landroid/graphics/Path;

    .line 12
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->C:Landroid/graphics/Path;

    .line 13
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->D:I

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    const/16 v0, 0xff

    .line 15
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->F:I

    .line 16
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->D:I

    if-eq v0, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->D:I

    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->y:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->y:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    :cond_0
    iget p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 5
    iput p2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->b()V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->B:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->C:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 5
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 7
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->C:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->s:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 9
    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->r:[F

    aget v4, v4, v0

    iget v5, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->x:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->C:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    neg-float v4, v3

    div-float/2addr v4, v2

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 12
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->x:F

    iget-boolean v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->z:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-float/2addr v0, v3

    .line 13
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-boolean v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->v:Z

    if-eqz v3, :cond_3

    .line 15
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v2

    .line 16
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->B:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 17
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->z:Z

    if-eqz v2, :cond_6

    .line 18
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->t:[F

    if-nez v2, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 19
    iput-object v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->t:[F

    .line 20
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->t:[F

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 21
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->r:[F

    aget v3, v3, v1

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_5
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->B:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 23
    :cond_6
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->B:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->r:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 24
    :goto_4
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->E:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->v:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->b()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->D:I

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->F:I

    invoke-static {v1, v2}, Lcom/facebook/drawee/drawable/DrawableUtils;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    .line 4
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->A:Z

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->B:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->y:I

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->F:I

    invoke-static {v1, v2}, Lcom/facebook/drawee/drawable/DrawableUtils;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->w:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->C:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->A:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->A:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->z:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->z:Z

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->b()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->F:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->D:I

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->F:I

    invoke-static {v0, v1}, Lcom/facebook/drawee/drawable/DrawableUtils;->b(II)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public i(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->x:F

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->b()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public l([F)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->r:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "radii should have exactly 8 values"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->r:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->b()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->b()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->F:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->F:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
