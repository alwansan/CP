.class public final synthetic Lcom/shabakaty/downloader/ny1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/io3;

.field public final synthetic s:Lcom/shabakaty/downloader/io3;

.field public final synthetic t:Landroid/view/View;

.field public final synthetic u:Lcom/shabakaty/downloader/rm1;

.field public final synthetic v:Lcom/shabakaty/downloader/io3;

.field public final synthetic w:Lcom/shabakaty/downloader/io3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/io3;Lcom/shabakaty/downloader/io3;Landroid/view/View;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/io3;Lcom/shabakaty/downloader/io3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ny1;->r:Lcom/shabakaty/downloader/io3;

    iput-object p2, p0, Lcom/shabakaty/downloader/ny1;->s:Lcom/shabakaty/downloader/io3;

    iput-object p3, p0, Lcom/shabakaty/downloader/ny1;->t:Landroid/view/View;

    iput-object p4, p0, Lcom/shabakaty/downloader/ny1;->u:Lcom/shabakaty/downloader/rm1;

    iput-object p5, p0, Lcom/shabakaty/downloader/ny1;->v:Lcom/shabakaty/downloader/io3;

    iput-object p6, p0, Lcom/shabakaty/downloader/ny1;->w:Lcom/shabakaty/downloader/io3;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object p1, p0, Lcom/shabakaty/downloader/ny1;->r:Lcom/shabakaty/downloader/io3;

    iget-object v0, p0, Lcom/shabakaty/downloader/ny1;->s:Lcom/shabakaty/downloader/io3;

    iget-object v1, p0, Lcom/shabakaty/downloader/ny1;->t:Landroid/view/View;

    iget-object v2, p0, Lcom/shabakaty/downloader/ny1;->u:Lcom/shabakaty/downloader/rm1;

    iget-object v3, p0, Lcom/shabakaty/downloader/ny1;->v:Lcom/shabakaty/downloader/io3;

    iget-object v4, p0, Lcom/shabakaty/downloader/ny1;->w:Lcom/shabakaty/downloader/io3;

    const-string v5, "$x"

    .line 1
    invoke-static {p1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$y"

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this_addDragWithTouch"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$onViewOutside"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$dx"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$dy"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget p1, p1, Lcom/shabakaty/downloader/io3;->r:F

    sub-float/2addr v2, p1

    iput v2, v3, Lcom/shabakaty/downloader/io3;->r:F

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, v0, Lcom/shabakaty/downloader/io3;->r:F

    sub-float/2addr p1, p2

    iput p1, v4, Lcom/shabakaty/downloader/io3;->r:F

    .line 5
    iget p1, v3, Lcom/shabakaty/downloader/io3;->r:F

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    iget p1, v4, Lcom/shabakaty/downloader/io3;->r:F

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    :cond_0
    const-string p1, "<this>"

    .line 7
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    add-float/2addr v0, v3

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v7, v0

    const-wide v9, 0x3fe999999999999aL    # 0.8

    mul-double v7, v7, v9

    add-double/2addr v7, v4

    int-to-double v4, p1

    cmpl-double p1, v7, v4

    if-gtz p1, :cond_2

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    add-float/2addr p1, v0

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v7, p1

    mul-double v7, v7, v9

    add-double/2addr v7, v4

    int-to-double p1, p2

    cmpl-double v0, v7, p1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 12
    invoke-interface {v2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 13
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 14
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p1, Lcom/shabakaty/downloader/io3;->r:F

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v0, Lcom/shabakaty/downloader/io3;->r:F

    .line 17
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    return v6
.end method
