.class final Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;
.super Landroid/view/View;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Rail"
.end annotation


# instance fields
.field final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Landroid/content/Context;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    const-string p1, "\u0627\u0633\u062d\u0628 \u0644\u0644\u062a\u0645\u0631\u064a\u0631 \u0627\u0644\u0633\u0631\u064a\u0639 \u0628\u064a\u0646 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 231
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    const v2, -0xc7c7c0

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v2, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v4, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {v3, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v2, v2, v1

    add-float v4, v3, v2

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    const v2, -0x23c5c0

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v4, v1

    iget-object v7, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-boolean v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rows="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v6, v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fast_scroll_start"

    invoke-virtual {v4, v6, v5, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz v0, :cond_5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eq v0, v3, :cond_4

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->performClick()Z

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prioritize()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fast_scroll_end"

    invoke-virtual {p1, v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->invalidate()V

    return v3

    :cond_6
    :goto_2
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 233
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
