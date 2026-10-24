.class public Lcom/facebook/drawee/generic/WrappingUtils;
.super Ljava/lang/Object;
.source "WrappingUtils.java"


# static fields
.field public static final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/facebook/drawee/generic/WrappingUtils;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 5
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->b(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object v0

    .line 6
    :cond_0
    instance-of p2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p2, :cond_1

    .line 7
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 8
    new-instance p2, Lcom/facebook/drawee/drawable/RoundedNinePatchDrawable;

    invoke-direct {p2, p0}, Lcom/facebook/drawee/drawable/RoundedNinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 9
    invoke-static {p2, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->b(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p2

    .line 10
    :cond_1
    instance-of p2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    .line 11
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    new-instance p2, Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-direct {p2, p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;-><init>(I)V

    .line 13
    invoke-static {p2, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->b(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p2

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p2, "WrappingUtils"

    const-string v0, "Don\'t know how to round that drawable: %s"

    .line 14
    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    .line 2
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->c(Z)V

    .line 3
    iget-object v0, p1, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    .line 4
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->l([F)V

    .line 5
    iget v0, p1, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    .line 6
    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    .line 7
    invoke-interface {p0, v0, v1}, Lcom/facebook/drawee/drawable/Rounded;->a(IF)V

    .line 8
    iget p1, p1, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    .line 9
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/Rounded;->i(F)V

    const/4 p1, 0x0

    .line 10
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/Rounded;->f(Z)V

    .line 11
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/Rounded;->e(Z)V

    return-void
.end method

.method public static c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p1, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 3
    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->s:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/facebook/drawee/drawable/ForwardingDrawable;

    .line 6
    :goto_0
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/DrawableParent;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 7
    instance-of v2, v1, Lcom/facebook/drawee/drawable/DrawableParent;

    if-nez v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/facebook/drawee/drawable/DrawableParent;

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    sget-object v1, Lcom/facebook/drawee/generic/WrappingUtils;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/DrawableParent;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 10
    invoke-static {v1, p1, p2}, Lcom/facebook/drawee/generic/WrappingUtils;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/DrawableParent;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object p0

    .line 13
    :cond_3
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/facebook/drawee/generic/WrappingUtils;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object p0

    :cond_4
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 15
    throw p0
.end method

.method public static d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->q(Landroid/graphics/PointF;)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object v0

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object p0
.end method
