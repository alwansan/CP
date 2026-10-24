.class public Lcom/shabakaty/downloader/l01;
.super Ljava/lang/Object;
.source "Drawer.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/bl;

.field public b:Lcom/shabakaty/downloader/r50;

.field public c:Lcom/shabakaty/downloader/nx3;

.field public d:Lcom/shabakaty/downloader/s85;

.field public e:Lcom/shabakaty/downloader/u84;

.field public f:Lcom/shabakaty/downloader/cb1;

.field public g:Lcom/shabakaty/downloader/vm4;

.field public h:Lcom/shabakaty/downloader/d11;

.field public i:Lcom/shabakaty/downloader/yi4;

.field public j:Lcom/shabakaty/downloader/mx3;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r02;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/bl;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/bl;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->a:Lcom/shabakaty/downloader/bl;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/r50;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/r50;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->b:Lcom/shabakaty/downloader/r50;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/nx3;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/nx3;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->c:Lcom/shabakaty/downloader/nx3;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/s85;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/s85;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->d:Lcom/shabakaty/downloader/s85;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/u84;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/u84;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->e:Lcom/shabakaty/downloader/u84;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/cb1;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/cb1;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->f:Lcom/shabakaty/downloader/cb1;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/vm4;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/vm4;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->g:Lcom/shabakaty/downloader/vm4;

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/d11;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/d11;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->h:Lcom/shabakaty/downloader/d11;

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/yi4;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/yi4;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->i:Lcom/shabakaty/downloader/yi4;

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/mx3;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/mx3;-><init>(Landroid/graphics/Paint;Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/l01;->j:Lcom/shabakaty/downloader/mx3;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l01;->b:Lcom/shabakaty/downloader/r50;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/l01;->a:Lcom/shabakaty/downloader/bl;

    iget v1, p0, Lcom/shabakaty/downloader/l01;->k:I

    iget v2, p0, Lcom/shabakaty/downloader/l01;->l:I

    iget v3, p0, Lcom/shabakaty/downloader/l01;->m:I

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/r02;

    .line 4
    iget v5, v4, Lcom/shabakaty/downloader/r02;->c:I

    int-to-float v5, v5

    .line 5
    iget v6, v4, Lcom/shabakaty/downloader/r02;->i:I

    .line 6
    iget v7, v4, Lcom/shabakaty/downloader/r02;->j:F

    .line 7
    iget v8, v4, Lcom/shabakaty/downloader/r02;->l:I

    .line 8
    iget v9, v4, Lcom/shabakaty/downloader/r02;->k:I

    .line 9
    iget v10, v4, Lcom/shabakaty/downloader/r02;->t:I

    .line 10
    invoke-virtual {v4}, Lcom/shabakaty/downloader/r02;->a()Lcom/shabakaty/downloader/e8;

    move-result-object v4

    .line 11
    sget-object v11, Lcom/shabakaty/downloader/e8;->t:Lcom/shabakaty/downloader/e8;

    if-ne v4, v11, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v11, Lcom/shabakaty/downloader/e8;->A:Lcom/shabakaty/downloader/e8;

    if-ne v4, v11, :cond_1

    if-eqz p2, :cond_1

    :goto_0
    mul-float v5, v5, v7

    :cond_1
    if-ne v1, v10, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    .line 13
    :goto_1
    sget-object p2, Lcom/shabakaty/downloader/e8;->w:Lcom/shabakaty/downloader/e8;

    if-ne v4, p2, :cond_3

    if-eq v1, v10, :cond_3

    .line 14
    iget-object p2, v0, Lcom/shabakaty/downloader/bl;->u:Landroid/graphics/Paint;

    int-to-float v0, v6

    .line 15
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object p2, v0, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Paint;

    .line 17
    :goto_2
    invoke-virtual {p2, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v2

    int-to-float v1, v3

    .line 18
    invoke-virtual {p1, v0, v1, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method
