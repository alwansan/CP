.class public final Lcom/shabakaty/downloader/s45;
.super Ljava/lang/Object;
.source "ViewsExtensions.kt"


# direct methods
.method public static final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/w93;

    invoke-direct {v1}, Lcom/shabakaty/downloader/w93;-><init>()V

    .line 3
    new-instance v2, Landroidx/recyclerview/widget/g;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/recyclerview/widget/RecyclerView$e;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/g;-><init>([Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public static final varargs b([Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x8

    .line 3
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAutofill(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "getCompoundDrawablesRelative(this)"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static final e(Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)Lcom/google/android/material/bottomsheet/a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l(I)V

    return-object p0
.end method

.method public static final f(Landroid/view/View;FFF)V
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x1

    aput p2, v2, v4

    const-string v5, "scaleX"

    .line 2
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v5, v1, [F

    aput p1, v5, v3

    aput p2, v5, v4

    const-string p1, "scaleY"

    .line 3
    invoke-static {p0, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array p1, v1, [Landroid/animation/Animator;

    aput-object v2, p1, v3

    aput-object p0, p1, v4

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    float-to-long p0, p3

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static final g(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/bn2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bn2;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/bn2;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r45;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/r45;-><init>(Lcom/shabakaty/downloader/rm1;I)V

    const p1, 0x7f12004f

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/bn2;->l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    return-object p0
.end method

.method public static synthetic h(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;I)Lcom/shabakaty/downloader/bn2;
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/s45$a;->r:Lcom/shabakaty/downloader/s45$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/s45;->g(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/bn2;

    return-object p0
.end method

.method public static i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    and-int/lit8 p1, p5, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->d(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v0, 0x2

    aget-object p3, p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p4

    const/4 p5, 0x3

    aget-object p4, p4, p5

    .line 5
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final j(Landroid/view/View;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final k(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/bn2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bn2;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/bn2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r45;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/r45;-><init>(Lcom/shabakaty/downloader/rm1;I)V

    const p1, 0x7f1202a7

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/bn2;->n(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    return-object p0
.end method

.method public static final l(Landroid/view/View;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
