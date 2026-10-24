.class public Lcom/shabakaty/downloader/c05$c;
.super Lcom/shabakaty/downloader/c05$f;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/c05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public e:[I

.field public f:Lcom/shabakaty/downloader/m80;

.field public g:F

.field public h:Lcom/shabakaty/downloader/m80;

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:Landroid/graphics/Paint$Cap;

.field public o:Landroid/graphics/Paint$Join;

.field public p:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/c05$f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/c05$c;->i:F

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/c05$c;->j:F

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->k:F

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/c05$c;->l:F

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->m:F

    .line 8
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->n:Landroid/graphics/Paint$Cap;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->p:F

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/c05$c;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/c05$f;-><init>(Lcom/shabakaty/downloader/c05$f;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/shabakaty/downloader/c05$c;->i:F

    .line 14
    iput v1, p0, Lcom/shabakaty/downloader/c05$c;->j:F

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->k:F

    .line 16
    iput v1, p0, Lcom/shabakaty/downloader/c05$c;->l:F

    .line 17
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->m:F

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->n:Landroid/graphics/Paint$Cap;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->p:F

    .line 21
    iget-object v0, p1, Lcom/shabakaty/downloader/c05$c;->e:[I

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->e:[I

    .line 22
    iget-object v0, p1, Lcom/shabakaty/downloader/c05$c;->f:Lcom/shabakaty/downloader/m80;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->f:Lcom/shabakaty/downloader/m80;

    .line 23
    iget v0, p1, Lcom/shabakaty/downloader/c05$c;->g:F

    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->g:F

    .line 24
    iget v0, p1, Lcom/shabakaty/downloader/c05$c;->i:F

    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->i:F

    .line 25
    iget-object v0, p1, Lcom/shabakaty/downloader/c05$c;->h:Lcom/shabakaty/downloader/m80;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->h:Lcom/shabakaty/downloader/m80;

    .line 26
    iget v0, p1, Lcom/shabakaty/downloader/c05$f;->c:I

    iput v0, p0, Lcom/shabakaty/downloader/c05$f;->c:I

    .line 27
    iget v0, p1, Lcom/shabakaty/downloader/c05$c;->j:F

    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->j:F

    .line 28
    iget v0, p1, Lcom/shabakaty/downloader/c05$c;->k:F

    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->k:F

    .line 29
    iget v0, p1, Lcom/shabakaty/downloader/c05$c;->l:F

    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->l:F

    .line 30
    iget v0, p1, Lcom/shabakaty/downloader/c05$c;->m:F

    iput v0, p0, Lcom/shabakaty/downloader/c05$c;->m:F

    .line 31
    iget-object v0, p1, Lcom/shabakaty/downloader/c05$c;->n:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->n:Landroid/graphics/Paint$Cap;

    .line 32
    iget-object v0, p1, Lcom/shabakaty/downloader/c05$c;->o:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$c;->o:Landroid/graphics/Paint$Join;

    .line 33
    iget p1, p1, Lcom/shabakaty/downloader/c05$c;->p:F

    iput p1, p0, Lcom/shabakaty/downloader/c05$c;->p:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$c;->h:Lcom/shabakaty/downloader/m80;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m80;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/c05$c;->f:Lcom/shabakaty/downloader/m80;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m80;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$c;->h:Lcom/shabakaty/downloader/m80;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/m80;->d([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c05$c;->f:Lcom/shabakaty/downloader/m80;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/m80;->d([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getFillAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/c05$c;->j:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$c;->h:Lcom/shabakaty/downloader/m80;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/m80;->c:I

    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/c05$c;->i:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$c;->f:Lcom/shabakaty/downloader/m80;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/m80;->c:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/c05$c;->g:F

    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/c05$c;->l:F

    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/c05$c;->m:F

    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/c05$c;->k:F

    return v0
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/c05$c;->j:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$c;->h:Lcom/shabakaty/downloader/m80;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/m80;->c:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/c05$c;->i:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$c;->f:Lcom/shabakaty/downloader/m80;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/m80;->c:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/c05$c;->g:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/c05$c;->l:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/c05$c;->m:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/c05$c;->k:F

    return-void
.end method
