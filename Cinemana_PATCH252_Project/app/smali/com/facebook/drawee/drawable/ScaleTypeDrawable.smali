.class public Lcom/facebook/drawee/drawable/ScaleTypeDrawable;
.super Lcom/facebook/drawee/drawable/ForwardingDrawable;
.source "ScaleTypeDrawable.java"


# instance fields
.field public A:Landroid/graphics/Matrix;

.field public u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public v:Ljava/lang/Object;

.field public w:Landroid/graphics/PointF;

.field public x:I

.field public y:I

.field public z:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->w:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->x:I

    .line 4
    iput p1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->y:I

    .line 5
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->A:Landroid/graphics/Matrix;

    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->m(Landroid/graphics/Matrix;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->p()V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->p()V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public n(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->n(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->o()V

    return-object p1
.end method

.method public o()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iput v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->y:I

    iput v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->x:I

    .line 3
    iput-object v2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 6
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->x:I

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->y:I

    if-lez v6, :cond_6

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    if-ne v6, v3, :cond_2

    if-ne v7, v4, :cond_2

    .line 9
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iput-object v2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    return-void

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v4, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne v3, v4, :cond_3

    .line 12
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    iput-object v2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    return-void

    .line 14
    :cond_3
    invoke-virtual {v0, v1, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object v3, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->A:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->w:Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move v8, v2

    goto :goto_0

    :cond_4
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_0
    if-eqz v0, :cond_5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v9, v0

    goto :goto_1

    :cond_5
    const/high16 v9, 0x3f000000    # 0.5f

    :goto_1
    invoke-interface/range {v3 .. v9}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 16
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->A:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    return-void

    .line 17
    :cond_6
    :goto_2
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iput-object v2, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->z:Landroid/graphics/Matrix;

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->o()V

    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    instance-of v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast v0, Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;

    invoke-interface {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;->getState()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->v:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 4
    :goto_1
    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->v:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget v4, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->x:I

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->y:I

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v4, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->o()V

    :cond_7
    return-void
.end method

.method public q(Landroid/graphics/PointF;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->w:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->w:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->w:Landroid/graphics/PointF;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->w:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->o()V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public r(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->v:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->o()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
