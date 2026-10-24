.class public Lcom/shabakaty/downloader/mi;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/shabakaty/downloader/sl4$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mi$a;
    }
.end annotation


# instance fields
.field public A:F

.field public B:I

.field public C:F

.field public D:F

.field public E:F

.field public F:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/sn2;

.field public final t:Lcom/shabakaty/downloader/sl4;

.field public final u:Landroid/graphics/Rect;

.field public final v:F

.field public final w:F

.field public final x:F

.field public final y:Lcom/shabakaty/downloader/mi$a;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/mi;->r:Ljava/lang/ref/WeakReference;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/om4;->b:[I

    const-string v2, "Theme.MaterialComponents"

    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/om4;->c(Landroid/content/Context;[ILjava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/shabakaty/downloader/mi;->u:Landroid/graphics/Rect;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/sn2;

    invoke-direct {v2}, Lcom/shabakaty/downloader/sn2;-><init>()V

    iput-object v2, p0, Lcom/shabakaty/downloader/mi;->s:Lcom/shabakaty/downloader/sn2;

    const v2, 0x7f07013e

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/shabakaty/downloader/mi;->v:F

    const v2, 0x7f07013d

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/shabakaty/downloader/mi;->x:F

    const v2, 0x7f070143

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/shabakaty/downloader/mi;->w:F

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/sl4;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/sl4;-><init>(Lcom/shabakaty/downloader/sl4$b;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    .line 11
    iget-object v2, v1, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 12
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/mi$a;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/mi$a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/nl4;

    const v3, 0x7f1301dd

    invoke-direct {v2, p1, v3}, Lcom/shabakaty/downloader/nl4;-><init>(Landroid/content/Context;I)V

    .line 16
    iget-object p1, v1, Lcom/shabakaty/downloader/sl4;->f:Lcom/shabakaty/downloader/nl4;

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1, v2, p1}, Lcom/shabakaty/downloader/sl4;->b(Lcom/shabakaty/downloader/nl4;Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->m()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->e()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/mi;->B:I

    if-gt v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->e()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    const v1, 0x7f1201ae

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/mi;->B:I

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "+"

    aput-object v4, v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/mi$a;->x:I

    if-lez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->e()I

    move-result v1

    iget v2, p0, Lcom/shabakaty/downloader/mi;->B:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 8
    iget v1, v1, Lcom/shabakaty/downloader/mi$a;->x:I

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->e()I

    move-result v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 10
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 12
    iget v1, v1, Lcom/shabakaty/downloader/mi$a;->y:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    .line 14
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/mi$a;->w:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->G:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/mi$a;->t:I

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->s:Lcom/shabakaty/downloader/sn2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/sn2;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->b()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 13
    iget v2, p0, Lcom/shabakaty/downloader/mi;->z:F

    iget v3, p0, Lcom/shabakaty/downloader/mi;->A:F

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 16
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/mi$a;->u:I

    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/mi$a;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/mi$a;->r:I

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->s:Lcom/shabakaty/downloader/sn2;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/sn2;->r:Lcom/shabakaty/downloader/sn2$b;

    iget-object v1, v1, Lcom/shabakaty/downloader/sn2$b;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/sn2;->q(Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/mi$a;->t:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/mi$a;->z:I

    if-eq v1, p1, :cond_1

    .line 3
    iput p1, v0, Lcom/shabakaty/downloader/mi$a;->z:I

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/mi;->F:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/mi;->F:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->G:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/mi;->l(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/mi$a;->s:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 5
    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 8
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/mi$a;->v:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, Lcom/shabakaty/downloader/mi$a;->v:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 4
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/shabakaty/downloader/mi;->B:I

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lcom/shabakaty/downloader/sl4;->d:Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->m()V

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/mi$a;->u:I

    if-eq v1, p1, :cond_0

    .line 4
    iput p1, v0, Lcom/shabakaty/downloader/mi$a;->u:I

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lcom/shabakaty/downloader/sl4;->d:Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->m()V

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/mi;->F:Ljava/lang/ref/WeakReference;

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/mi;->G:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->m()V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final m()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/mi;->F:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_b

    if-nez v1, :cond_1

    goto/16 :goto_9

    .line 3
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/mi;->u:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 7
    iget-object v5, p0, Lcom/shabakaty/downloader/mi;->G:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 10
    iget v5, v2, Lcom/shabakaty/downloader/mi$a;->C:I

    .line 11
    iget v6, v2, Lcom/shabakaty/downloader/mi$a;->E:I

    add-int/2addr v5, v6

    .line 12
    iget v2, v2, Lcom/shabakaty/downloader/mi$a;->z:I

    const v6, 0x800053

    if-eq v2, v6, :cond_4

    const v7, 0x800055

    if-eq v2, v7, :cond_4

    .line 13
    iget v2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iput v2, p0, Lcom/shabakaty/downloader/mi;->A:F

    goto :goto_2

    .line 14
    :cond_4
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iput v2, p0, Lcom/shabakaty/downloader/mi;->A:F

    .line 15
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->e()I

    move-result v2

    const/16 v5, 0x9

    if-gt v2, v5, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->f()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/shabakaty/downloader/mi;->v:F

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/shabakaty/downloader/mi;->w:F

    :goto_3
    iput v2, p0, Lcom/shabakaty/downloader/mi;->C:F

    .line 17
    iput v2, p0, Lcom/shabakaty/downloader/mi;->E:F

    .line 18
    iput v2, p0, Lcom/shabakaty/downloader/mi;->D:F

    goto :goto_4

    .line 19
    :cond_6
    iget v2, p0, Lcom/shabakaty/downloader/mi;->w:F

    iput v2, p0, Lcom/shabakaty/downloader/mi;->C:F

    .line 20
    iput v2, p0, Lcom/shabakaty/downloader/mi;->E:F

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->b()Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v5, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/sl4;->a(Ljava/lang/String;)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget v5, p0, Lcom/shabakaty/downloader/mi;->x:F

    add-float/2addr v2, v5

    iput v2, p0, Lcom/shabakaty/downloader/mi;->D:F

    .line 23
    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f07013f

    goto :goto_5

    :cond_7
    const v2, 0x7f07013c

    .line 25
    :goto_5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 26
    iget-object v2, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 27
    iget v5, v2, Lcom/shabakaty/downloader/mi$a;->B:I

    .line 28
    iget v7, v2, Lcom/shabakaty/downloader/mi$a;->D:I

    add-int/2addr v5, v7

    .line 29
    iget v2, v2, Lcom/shabakaty/downloader/mi$a;->z:I

    const v7, 0x800033

    if-eq v2, v7, :cond_9

    if-eq v2, v6, :cond_9

    .line 30
    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_8

    .line 32
    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shabakaty/downloader/mi;->D:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v5

    sub-float/2addr v1, v0

    goto :goto_6

    :cond_8
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shabakaty/downloader/mi;->D:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v5

    add-float/2addr v1, v0

    :goto_6
    iput v1, p0, Lcom/shabakaty/downloader/mi;->z:F

    goto :goto_8

    .line 33
    :cond_9
    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_a

    .line 35
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shabakaty/downloader/mi;->D:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v5

    add-float/2addr v1, v0

    goto :goto_7

    :cond_a
    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shabakaty/downloader/mi;->D:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v5

    sub-float/2addr v1, v0

    :goto_7
    iput v1, p0, Lcom/shabakaty/downloader/mi;->z:F

    .line 36
    :goto_8
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->u:Landroid/graphics/Rect;

    iget v1, p0, Lcom/shabakaty/downloader/mi;->z:F

    iget v2, p0, Lcom/shabakaty/downloader/mi;->A:F

    iget v4, p0, Lcom/shabakaty/downloader/mi;->D:F

    iget v5, p0, Lcom/shabakaty/downloader/mi;->E:F

    sub-float v6, v1, v4

    float-to-int v6, v6

    sub-float v7, v2, v5

    float-to-int v7, v7

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 37
    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->s:Lcom/shabakaty/downloader/sn2;

    iget v1, p0, Lcom/shabakaty/downloader/mi;->C:F

    .line 39
    iget-object v2, v0, Lcom/shabakaty/downloader/sn2;->r:Lcom/shabakaty/downloader/sn2$b;

    iget-object v2, v2, Lcom/shabakaty/downloader/sn2$b;->a:Lcom/shabakaty/downloader/t44;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/t44;->e(F)Lcom/shabakaty/downloader/t44;

    move-result-object v1

    .line 40
    iget-object v2, v0, Lcom/shabakaty/downloader/sn2;->r:Lcom/shabakaty/downloader/sn2$b;

    iput-object v1, v2, Lcom/shabakaty/downloader/sn2$b;->a:Lcom/shabakaty/downloader/t44;

    .line 41
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sn2;->invalidateSelf()V

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->u:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 43
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->s:Lcom/shabakaty/downloader/sn2;

    iget-object v1, p0, Lcom/shabakaty/downloader/mi;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_b
    :goto_9
    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/mi$a;->t:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mi;->t:Lcom/shabakaty/downloader/sl4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/sl4;->a:Landroid/text/TextPaint;

    .line 5
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
