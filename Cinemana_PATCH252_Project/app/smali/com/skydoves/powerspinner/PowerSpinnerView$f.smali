.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$f;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 2
    iget-object v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    new-instance v2, Lcom/skydoves/powerspinner/PowerSpinnerView$f$a;

    invoke-direct {v2, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$f$a;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView$f;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 6
    new-instance v2, Lcom/skydoves/powerspinner/PowerSpinnerView$f$b;

    invoke-direct {v2, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$f$b;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView$f;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupElevation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 9
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 10
    iget-object v2, v1, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Lcom/shabakaty/downloader/tk1;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackgroundColor()I

    move-result v1

    const v3, 0x10013

    if-ne v1, v3, :cond_0

    .line 13
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackgroundColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_0
    const-string v1, "this"

    .line 15
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 16
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    .line 17
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    .line 18
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    .line 19
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 20
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowDivider()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    new-instance v1, Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroidx/recyclerview/widget/k;-><init>(Landroid/content/Context;I)V

    .line 22
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 24
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 25
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 26
    iput-object v0, v1, Landroidx/recyclerview/widget/k;->a:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 29
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 30
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    .line 31
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 33
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 34
    iget-object v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    .line 35
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_3
    return-void
.end method
