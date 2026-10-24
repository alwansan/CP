.class public final synthetic Lcom/shabakaty/downloader/u05;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/d15;

.field public final synthetic b:Landroid/animation/FloatEvaluator;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/d15;Landroid/animation/FloatEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u05;->a:Lcom/shabakaty/downloader/d15;

    iput-object p2, p0, Lcom/shabakaty/downloader/u05;->b:Landroid/animation/FloatEvaluator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/u05;->a:Lcom/shabakaty/downloader/d15;

    iget-object v1, p0, Lcom/shabakaty/downloader/u05;->b:Landroid/animation/FloatEvaluator;

    sget-boolean v2, Lcom/shabakaty/downloader/d15;->A:Z

    const-string v2, "this$0"

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$linearInterpolator"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u15;

    .line 3
    iput p2, v2, Lcom/shabakaty/downloader/u15;->p:I

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u15;

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v5, -0x40000000    # -2.0f

    .line 7
    invoke-virtual {v1, v5, v3, v4}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 9
    iput v3, v2, Lcom/shabakaty/downloader/u15;->s:F

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u15;

    .line 11
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v5, -0x41b33333    # -0.2f

    .line 13
    invoke-virtual {v1, v5, v3, v4}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 15
    iput v1, v2, Lcom/shabakaty/downloader/u15;->r:F

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u15;

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/16 p1, 0x64

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-double p1, p2

    .line 18
    iput-wide p1, v1, Lcom/shabakaty/downloader/u15;->q:D

    .line 19
    invoke-virtual {v0, v0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 21
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 23
    iget-wide v1, p2, Lcom/shabakaty/downloader/u15;->q:D

    double-to-int p2, v1

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u15;

    .line 25
    iget-wide v1, v1, Lcom/shabakaty/downloader/u15;->q:D

    double-to-int v1, v1

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u15;

    .line 27
    iget-wide v2, v2, Lcom/shabakaty/downloader/u15;->q:D

    double-to-int v2, v2

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/u15;

    .line 29
    iget-wide v3, v3, Lcom/shabakaty/downloader/u15;->q:D

    double-to-int v3, v3

    .line 30
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 31
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 32
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->Y:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 34
    iget p2, p2, Lcom/shabakaty/downloader/u15;->r:F

    .line 35
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u15;

    .line 36
    iget v1, v1, Lcom/shabakaty/downloader/u15;->r:F

    const/16 v2, 0x9

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, p2

    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 38
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 39
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->d0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 40
    iget p2, p2, Lcom/shabakaty/downloader/u15;->s:F

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method
