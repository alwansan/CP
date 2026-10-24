.class public Lcom/shabakaty/downloader/s85;
.super Lcom/shabakaty/downloader/yh1;
.source "WormDrawer.java"


# instance fields
.field public u:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/yh1;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s85;->u:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public l(Landroid/graphics/Canvas;Lcom/shabakaty/downloader/kz4;II)V
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/r85;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/r85;

    .line 3
    iget v0, p2, Lcom/shabakaty/downloader/r85;->a:I

    .line 4
    iget p2, p2, Lcom/shabakaty/downloader/r85;->b:I

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/r02;

    .line 6
    iget v2, v1, Lcom/shabakaty/downloader/r02;->c:I

    .line 7
    iget v3, v1, Lcom/shabakaty/downloader/r02;->k:I

    .line 8
    iget v4, v1, Lcom/shabakaty/downloader/r02;->l:I

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/r02;->b()Lcom/shabakaty/downloader/n83;

    move-result-object v1

    sget-object v5, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    if-ne v1, v5, :cond_1

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/s85;->u:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    .line 11
    iput p2, v1, Landroid/graphics/RectF;->right:F

    sub-int p2, p4, v2

    int-to-float p2, p2

    .line 12
    iput p2, v1, Landroid/graphics/RectF;->top:F

    add-int p2, p4, v2

    int-to-float p2, p2

    .line 13
    iput p2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/s85;->u:Landroid/graphics/RectF;

    sub-int v5, p3, v2

    int-to-float v5, v5

    iput v5, v1, Landroid/graphics/RectF;->left:F

    add-int v5, p3, v2

    int-to-float v5, v5

    .line 15
    iput v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v0, v0

    .line 16
    iput v0, v1, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    .line 17
    iput p2, v1, Landroid/graphics/RectF;->bottom:F

    .line 18
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p3

    int-to-float p3, p4

    int-to-float p4, v2

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 20
    iget-object p2, p0, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object p2, p0, Lcom/shabakaty/downloader/s85;->u:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
