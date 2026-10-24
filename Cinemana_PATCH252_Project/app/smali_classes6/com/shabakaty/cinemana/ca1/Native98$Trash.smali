.class public final Lcom/shabakaty/cinemana/ca1/Native98$Trash;
.super Landroid/graphics/drawable/Drawable;
.source "Native98.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Native98;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trash"
.end annotation


# instance fields
.field p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x40c00000    # 6.0f

    iget-object v7, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v9, 0x41100000    # 9.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x41700000    # 15.0f

    const/high16 v12, 0x40400000    # 3.0f

    iget-object v13, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x41a80000    # 21.0f

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x41880000    # 17.0f

    const/high16 v10, 0x41a80000    # 21.0f

    iget-object v11, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v3, 0x41880000    # 17.0f

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41880000    # 17.0f

    iget-object v11, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41880000    # 17.0f

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 12
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Native98$Trash;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
