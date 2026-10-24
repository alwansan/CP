.class public final Lcom/shabakaty/downloader/jh3;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/jh3$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/kf2;

.field public final b:Lcom/shabakaty/downloader/kf2;

.field public final c:Lcom/shabakaty/downloader/kf2;

.field public d:F

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/jh3$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/jh3$b;-><init>(Lcom/shabakaty/downloader/jh3;I)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/jh3;->a:Lcom/shabakaty/downloader/kf2;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/jh3$c;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/jh3$c;-><init>(Lcom/shabakaty/downloader/jh3;I)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/jh3;->b:Lcom/shabakaty/downloader/kf2;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/jh3$d;->r:Lcom/shabakaty/downloader/jh3$d;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/jh3;->c:Lcom/shabakaty/downloader/kf2;

    const/high16 p1, 0x41000000    # 8.0f

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/jh3;->d:F

    const-wide/16 p1, 0x64

    .line 6
    iput-wide p1, p0, Lcom/shabakaty/downloader/jh3;->f:J

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->e()V

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/jh3;I)Landroid/graphics/Paint;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 3
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget p0, p0, Lcom/shabakaty/downloader/jh3;->d:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jh3;->a:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jh3;->b:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public final d()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jh3;->c:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/shabakaty/downloader/jh3;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/jh3;->e:J

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/16 v0, 0x168

    int-to-float v0, v0

    mul-float v6, v2, v0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->d()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->b()Landroid/graphics/Paint;

    move-result-object v5

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->d()Landroid/graphics/RectF;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->c()Landroid/graphics/Paint;

    move-result-object v8

    const/high16 v5, 0x43340000    # 180.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "setting drawable to indeterminate status"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/jh3;->e:J

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/jh3;->f:J

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "setting drawable to zero status"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/jh3;->e:J

    const-wide/16 v0, 0x64

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/jh3;->f:J

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "newBounds"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/shabakaty/downloader/jh3;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->d()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->b()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->b()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jh3;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
