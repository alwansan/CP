.class public abstract Lcom/shabakaty/downloader/yd1;
.super Landroid/widget/RelativeLayout;
.source "FlagView.java"


# instance fields
.field public r:Lcom/shabakaty/downloader/wd1;

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/wd1;->r:Lcom/shabakaty/downloader/wd1;

    iput-object p1, p0, Lcom/shabakaty/downloader/yd1;->r:Lcom/shabakaty/downloader/wd1;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yd1;->s:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    .line 6
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/shabakaty/downloader/s50;)V
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wd1;->t:Lcom/shabakaty/downloader/wd1;

    sget-object v1, Lcom/shabakaty/downloader/wd1;->s:Lcom/shabakaty/downloader/wd1;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yd1;->getFlagMode()Lcom/shabakaty/downloader/wd1;

    move-result-object p1

    if-ne p1, v1, :cond_6

    .line 3
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yd1;->getFlagMode()Lcom/shabakaty/downloader/wd1;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 5
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yd1;->getFlagMode()Lcom/shabakaty/downloader/wd1;

    move-result-object p1

    if-ne p1, v0, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010022

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yd1;->getFlagMode()Lcom/shabakaty/downloader/wd1;

    move-result-object p1

    if-ne p1, v1, :cond_5

    .line 12
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yd1;->getFlagMode()Lcom/shabakaty/downloader/wd1;

    move-result-object p1

    if-ne p1, v0, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010021

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public getFlagMode()Lcom/shabakaty/downloader/wd1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yd1;->r:Lcom/shabakaty/downloader/wd1;

    return-object v0
.end method

.method public setFlagMode(Lcom/shabakaty/downloader/wd1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yd1;->r:Lcom/shabakaty/downloader/wd1;

    return-void
.end method

.method public setFlipAble(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yd1;->s:Z

    return-void
.end method
