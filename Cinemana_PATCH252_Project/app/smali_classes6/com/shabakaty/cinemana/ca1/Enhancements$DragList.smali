.class public Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;
.super Landroid/widget/ListView;
.source "Enhancements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Enhancements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragList"
.end annotation


# instance fields
.field captured:Z

.field controller:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;->controller:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;->captured:Z

    if-nez v4, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v4}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;->captured:Z

    :cond_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;->captured:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v4, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v3, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;->captured:Z

    :cond_5
    if-eqz v0, :cond_6

    return v2

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
