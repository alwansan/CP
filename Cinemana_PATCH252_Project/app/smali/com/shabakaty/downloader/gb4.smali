.class public final synthetic Lcom/shabakaty/downloader/gb4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/hb4;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/hb4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gb4;->a:Lcom/shabakaty/downloader/hb4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/gb4;->a:Lcom/shabakaty/downloader/hb4;

    sget v1, Lcom/shabakaty/downloader/hb4;->z:I

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/hb4;->x:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v2}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/FloatEvaluator;

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, -0x3e600000    # -20.0f

    .line 6
    invoke-virtual {v2, v4, p2, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 8
    invoke-virtual {v0, v0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/nk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/nk1;->U:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 11
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast p1, Lcom/shabakaty/downloader/nk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/nk1;->T:Landroid/widget/TextView;

    const/16 v2, 0x12

    int-to-float v2, v2

    sub-float/2addr v2, p2

    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float v3, v2, p2

    if-lez v3, :cond_0

    const/high16 v2, 0x41f00000    # 30.0f

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x10

    int-to-float p1, p1

    const/16 p2, 0x28

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v1, p1

    float-to-int p1, v1

    .line 13
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result p1

    .line 14
    iget-object p2, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 15
    check-cast p2, Lcom/shabakaty/downloader/nk1;

    iget-object p2, p2, Lcom/shabakaty/downloader/nk1;->T:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method
