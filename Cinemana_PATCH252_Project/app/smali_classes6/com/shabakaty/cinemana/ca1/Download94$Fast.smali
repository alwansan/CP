.class final Lcom/shabakaty/cinemana/ca1/Download94$Fast;
.super Landroid/view/View;
.source "Download94.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Download94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fast"
.end annotation


# instance fields
.field dragging:Z

.field final p:Landroid/graphics/Paint;

.field final s:Lcom/shabakaty/cinemana/ca1/Download94$State;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/shabakaty/cinemana/ca1/Download94$State;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->p:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->s:Lcom/shabakaty/cinemana/ca1/Download94$State;

    const-string p1, "\u0627\u0644\u062a\u0645\u0631\u064a\u0631 \u0627\u0644\u0633\u0631\u064a\u0639"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method metric(Ljava/lang/String;)I
    .locals 3

    .line 43
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->s:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 43
    const-string v0, "computeVerticalScrollRange"

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->metric(Ljava/lang/String;)I

    move-result v0

    const-string v1, "computeVerticalScrollExtent"

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->metric(Ljava/lang/String;)I

    move-result v1

    const-string v2, "computeVerticalScrollOffset"

    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->metric(Ljava/lang/String;)I

    move-result v2

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    mul-float v5, v5, v6

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float v8, v5, v0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->p:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->dragging:Z

    if-eqz v1, :cond_1

    const v1, -0x4f31cbbf

    goto :goto_0

    :cond_1
    const v1, 0x556f808d

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->dragging:Z

    if-eqz v2, :cond_2

    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x40800000    # 4.0f

    :goto_1
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    add-float v10, v8, v3

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x40400000    # 3.0f

    iget-object v13, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->p:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 43
    const-string v0, "computeVerticalScrollRange"

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->metric(Ljava/lang/String;)I

    move-result v0

    const-string v1, "computeVerticalScrollExtent"

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->metric(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->dragging:Z

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eq v0, v1, :cond_4

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->dragging:Z

    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->invalidate()V

    return v1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->s:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    int-to-float v3, v0

    mul-float p1, p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->s:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    const-string v3, "q0"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_1
.end method
