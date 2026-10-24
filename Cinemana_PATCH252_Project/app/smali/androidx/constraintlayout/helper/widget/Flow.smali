.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Lcom/shabakaty/downloader/t45;
.source "Flow.java"


# instance fields
.field public B:Lcom/shabakaty/downloader/se1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/t45;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public i(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/t45;->i(Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/se1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/se1;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    if-eqz p1, :cond_1b

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/gm3;->b:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1a

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 7
    iput v3, v4, Lcom/shabakaty/downloader/se1;->V0:I

    goto/16 :goto_1

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 9
    iput v3, v4, Lcom/shabakaty/downloader/u45;->s0:I

    .line 10
    iput v3, v4, Lcom/shabakaty/downloader/u45;->t0:I

    .line 11
    iput v3, v4, Lcom/shabakaty/downloader/u45;->u0:I

    .line 12
    iput v3, v4, Lcom/shabakaty/downloader/u45;->v0:I

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 14
    iput v3, v4, Lcom/shabakaty/downloader/u45;->u0:I

    .line 15
    iput v3, v4, Lcom/shabakaty/downloader/u45;->w0:I

    .line 16
    iput v3, v4, Lcom/shabakaty/downloader/u45;->x0:I

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x13

    if-ne v3, v4, :cond_3

    .line 17
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 18
    iput v3, v4, Lcom/shabakaty/downloader/u45;->v0:I

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 19
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 20
    iput v3, v4, Lcom/shabakaty/downloader/u45;->w0:I

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 21
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 22
    iput v3, v4, Lcom/shabakaty/downloader/u45;->s0:I

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    .line 23
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 24
    iput v3, v4, Lcom/shabakaty/downloader/u45;->x0:I

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    .line 25
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 26
    iput v3, v4, Lcom/shabakaty/downloader/u45;->t0:I

    goto/16 :goto_1

    :cond_7
    const/16 v5, 0x36

    if-ne v3, v5, :cond_8

    .line 27
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 28
    iput v3, v4, Lcom/shabakaty/downloader/se1;->T0:I

    goto/16 :goto_1

    :cond_8
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_9

    .line 29
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 30
    iput v3, v4, Lcom/shabakaty/downloader/se1;->D0:I

    goto/16 :goto_1

    :cond_9
    const/16 v5, 0x35

    if-ne v3, v5, :cond_a

    .line 31
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 32
    iput v3, v4, Lcom/shabakaty/downloader/se1;->E0:I

    goto/16 :goto_1

    :cond_a
    const/16 v5, 0x26

    if-ne v3, v5, :cond_b

    .line 33
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 34
    iput v3, v4, Lcom/shabakaty/downloader/se1;->F0:I

    goto/16 :goto_1

    :cond_b
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_c

    .line 35
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 36
    iput v3, v4, Lcom/shabakaty/downloader/se1;->H0:I

    goto/16 :goto_1

    :cond_c
    const/16 v5, 0x28

    if-ne v3, v5, :cond_d

    .line 37
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 38
    iput v3, v4, Lcom/shabakaty/downloader/se1;->G0:I

    goto/16 :goto_1

    :cond_d
    const/16 v5, 0x30

    if-ne v3, v5, :cond_e

    .line 39
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 40
    iput v3, v4, Lcom/shabakaty/downloader/se1;->I0:I

    goto/16 :goto_1

    :cond_e
    const/16 v5, 0x2a

    const/high16 v6, 0x3f000000    # 0.5f

    if-ne v3, v5, :cond_f

    .line 41
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 42
    iput v3, v4, Lcom/shabakaty/downloader/se1;->J0:F

    goto/16 :goto_1

    :cond_f
    const/16 v5, 0x25

    if-ne v3, v5, :cond_10

    .line 43
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 44
    iput v3, v4, Lcom/shabakaty/downloader/se1;->L0:F

    goto/16 :goto_1

    :cond_10
    const/16 v5, 0x2d

    if-ne v3, v5, :cond_11

    .line 45
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 46
    iput v3, v4, Lcom/shabakaty/downloader/se1;->N0:F

    goto/16 :goto_1

    :cond_11
    const/16 v5, 0x27

    if-ne v3, v5, :cond_12

    .line 47
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 48
    iput v3, v4, Lcom/shabakaty/downloader/se1;->M0:F

    goto :goto_1

    :cond_12
    const/16 v5, 0x2f

    if-ne v3, v5, :cond_13

    .line 49
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 50
    iput v3, v4, Lcom/shabakaty/downloader/se1;->O0:F

    goto :goto_1

    :cond_13
    const/16 v5, 0x33

    if-ne v3, v5, :cond_14

    .line 51
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 52
    iput v3, v4, Lcom/shabakaty/downloader/se1;->K0:F

    goto :goto_1

    :cond_14
    const/16 v5, 0x29

    if-ne v3, v5, :cond_15

    .line 53
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 54
    iput v3, v5, Lcom/shabakaty/downloader/se1;->R0:I

    goto :goto_1

    :cond_15
    const/16 v5, 0x32

    if-ne v3, v5, :cond_16

    .line 55
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 56
    iput v3, v5, Lcom/shabakaty/downloader/se1;->S0:I

    goto :goto_1

    :cond_16
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_17

    .line 57
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 58
    iput v3, v4, Lcom/shabakaty/downloader/se1;->P0:I

    goto :goto_1

    :cond_17
    const/16 v4, 0x34

    if-ne v3, v4, :cond_18

    .line 59
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 60
    iput v3, v4, Lcom/shabakaty/downloader/se1;->Q0:I

    goto :goto_1

    :cond_18
    const/16 v4, 0x31

    if-ne v3, v4, :cond_19

    .line 61
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 62
    iput v3, v4, Lcom/shabakaty/downloader/se1;->U0:I

    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 63
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    iput-object p1, p0, Landroidx/constraintlayout/widget/a;->u:Lcom/shabakaty/downloader/zs1;

    .line 65
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/a;->k()V

    return-void
.end method

.method public j(Lcom/shabakaty/downloader/ec0;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/u45;->u0:I

    if-gtz v0, :cond_0

    iget v1, p1, Lcom/shabakaty/downloader/u45;->v0:I

    if-lez v1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget p2, p1, Lcom/shabakaty/downloader/u45;->v0:I

    iput p2, p1, Lcom/shabakaty/downloader/u45;->w0:I

    .line 4
    iput v0, p1, Lcom/shabakaty/downloader/u45;->x0:I

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p1, Lcom/shabakaty/downloader/u45;->w0:I

    .line 6
    iget p2, p1, Lcom/shabakaty/downloader/u45;->v0:I

    iput p2, p1, Lcom/shabakaty/downloader/u45;->x0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public l(Lcom/shabakaty/downloader/u45;II)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/shabakaty/downloader/u45;->U(IIII)V

    .line 6
    iget p2, p1, Lcom/shabakaty/downloader/u45;->z0:I

    .line 7
    iget p1, p1, Lcom/shabakaty/downloader/u45;->A0:I

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->l(Lcom/shabakaty/downloader/u45;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->L0:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->F0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->M0:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->G0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->R0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->J0:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->P0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->D0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->N0:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->H0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->O0:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->I0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->U0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->V0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/u45;->s0:I

    .line 3
    iput p1, v0, Lcom/shabakaty/downloader/u45;->t0:I

    .line 4
    iput p1, v0, Lcom/shabakaty/downloader/u45;->u0:I

    .line 5
    iput p1, v0, Lcom/shabakaty/downloader/u45;->v0:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/u45;->t0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/u45;->w0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/u45;->x0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/u45;->s0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->S0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->K0:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->Q0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->E0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->B:Lcom/shabakaty/downloader/se1;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/se1;->T0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
