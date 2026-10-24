.class public abstract Lcom/shabakaty/downloader/hj;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        "N::",
        "Lcom/shabakaty/downloader/vj;",
        "V:",
        "Lcom/shabakaty/downloader/xk<",
        "TN;>;>",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field public r:I

.field public s:Lcom/shabakaty/downloader/p35;

.field public t:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public u:Lcom/shabakaty/downloader/xk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public v:Lcom/shabakaty/downloader/xk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/xk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/hj;->r:I

    return-void
.end method

.method public static synthetic g2(Lcom/shabakaty/downloader/hj;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final X1(Landroid/view/View;I)Landroidx/fragment/app/FragmentContainerView;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_3

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "$this$findNavController"

    .line 1
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    const-string v2, "NavHostFragment.findNavController(this)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroidx/navigation/NavController;->g()Landroidx/navigation/d;

    move-result-object v1

    .line 4
    iget v1, v1, Landroidx/navigation/c;->t:I

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

    :goto_0
    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/hj;->X1(Landroid/view/View;I)Landroidx/fragment/app/FragmentContainerView;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public final Y1()Lcom/shabakaty/downloader/p35;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->s:Lcom/shabakaty/downloader/p35;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "factory"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract Z1()Lcom/shabakaty/downloader/vj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public final a2()Lcom/shabakaty/downloader/xk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->w:Lcom/shabakaty/downloader/xk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "safeParentFragmentViewModel"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b2(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c2()Lcom/shabakaty/downloader/xk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->u:Lcom/shabakaty/downloader/xk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "safeViewModel"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract d2()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end method

.method public e2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f2(ZLjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/hj;->X1(Landroid/view/View;I)Landroidx/fragment/app/FragmentContainerView;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v3, v0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v3, :cond_1

    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    move-object v3, v2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    :goto_2
    instance-of v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v4, :cond_3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_5

    :cond_5
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_6
    instance-of v4, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    goto :goto_7

    :cond_7
    move-object v0, v2

    :goto_7
    if-nez v0, :cond_8

    move-object v4, v2

    goto :goto_8

    :cond_8
    const v4, 0x7f0a0280

    .line 6
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    :goto_8
    const-string v5, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    if-eqz p1, :cond_f

    if-nez v3, :cond_9

    goto :goto_9

    .line 7
    :cond_9
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {v3, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    :goto_9
    if-nez v0, :cond_a

    goto/16 :goto_d

    .line 8
    :cond_a
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f080325

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v1, 0xa

    .line 11
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setElevation(F)V

    .line 12
    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    if-nez v4, :cond_b

    goto :goto_d

    .line 13
    :cond_b
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    if-eqz v1, :cond_c

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$b;

    :cond_c
    if-nez v2, :cond_d

    goto :goto_a

    :cond_d
    const/16 v0, 0x15

    .line 14
    iput v0, v2, Lcom/google/android/material/appbar/AppBarLayout$b;->a:I

    .line 15
    :goto_a
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    if-nez p2, :cond_e

    goto :goto_d

    .line 16
    :cond_e
    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_f
    if-nez v3, :cond_10

    goto :goto_b

    .line 17
    :cond_10
    invoke-virtual {v3, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    :goto_b
    if-nez v0, :cond_11

    goto :goto_d

    .line 18
    :cond_11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    const/16 v3, 0x30

    invoke-static {v3}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f06014b

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setElevation(F)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    if-nez v4, :cond_12

    goto :goto_d

    .line 23
    :cond_12
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    if-eqz v3, :cond_13

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$b;

    :cond_13
    if-nez v2, :cond_14

    goto :goto_c

    .line 24
    :cond_14
    iput v1, v2, Lcom/google/android/material/appbar/AppBarLayout$b;->a:I

    .line 25
    :goto_c
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    if-nez p2, :cond_15

    goto :goto_d

    .line 26
    :cond_15
    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_d
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/md0;->z(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p2, p0, Lcom/shabakaty/downloader/hj;->r:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p2, p3, v0, v1}, Lcom/shabakaty/downloader/vd5;->n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    const/16 p2, 0x10

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->Z1()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p3, p1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    :goto_1
    return-object p3
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "requireContext().applicationContext.resources"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v0

    .line 4
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2$b;->a()Lcom/shabakaty/downloader/uj2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2;->a()Landroid/content/Context;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->d2()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p2

    instance-of v0, p2, Lcom/shabakaty/downloader/xi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/shabakaty/downloader/xi;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/xi;->h0()Ljava/lang/Class;

    move-result-object p2

    :goto_1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "ViewModelProvider(requir\u2026.get(getViewModelClass())"

    const/16 v0, 0x26

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    const-string v3, "Local and anonymous classes can not be ViewModels"

    if-eqz p1, :cond_b

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->v:Lcom/shabakaty/downloader/xk;

    if-nez p1, :cond_7

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->Y1()Lcom/shabakaty/downloader/p35;

    move-result-object v4

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->d2()Ljava/lang/Class;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 12
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/o35;

    .line 14
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    instance-of p1, v4, Landroidx/lifecycle/n$e;

    if-eqz p1, :cond_5

    .line 16
    check-cast v4, Landroidx/lifecycle/n$e;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_3

    .line 17
    :cond_3
    instance-of v3, v4, Landroidx/lifecycle/n$c;

    if-eqz v3, :cond_4

    .line 18
    check-cast v4, Landroidx/lifecycle/n$c;

    invoke-virtual {v4, v2, v5}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v3

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/p35;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v3

    .line 20
    :goto_2
    iget-object p1, p1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    .line 22
    :cond_5
    :goto_3
    invoke-static {v3, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/shabakaty/downloader/xk;

    .line 23
    iput-object v3, p0, Lcom/shabakaty/downloader/hj;->v:Lcom/shabakaty/downloader/xk;

    goto :goto_4

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->v:Lcom/shabakaty/downloader/xk;

    const-string p2, "safeActivityViewModel"

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->Z1()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/xk;->j(Lcom/shabakaty/downloader/vj;)V

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_8

    goto/16 :goto_d

    :cond_8
    iget-object v2, p0, Lcom/shabakaty/downloader/hj;->v:Lcom/shabakaty/downloader/xk;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0, v2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    goto/16 :goto_d

    :cond_9
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_a
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_b
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->d2()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    instance-of v5, v4, Lcom/shabakaty/downloader/hj;

    if-eqz v5, :cond_c

    check-cast v4, Lcom/shabakaty/downloader/hj;

    goto :goto_5

    :cond_c
    move-object v4, v1

    :goto_5
    if-nez v4, :cond_d

    move-object v4, v1

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Lcom/shabakaty/downloader/hj;->d2()Ljava/lang/Class;

    move-result-object v4

    :goto_6
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 29
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->w:Lcom/shabakaty/downloader/xk;

    if-nez p1, :cond_12

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->Y1()Lcom/shabakaty/downloader/p35;

    move-result-object v4

    .line 31
    invoke-interface {p1}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->d2()Ljava/lang/Class;

    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 34
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v3, p1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/o35;

    .line 36
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 37
    instance-of p1, v4, Landroidx/lifecycle/n$e;

    if-eqz p1, :cond_10

    .line 38
    check-cast v4, Landroidx/lifecycle/n$e;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_8

    .line 39
    :cond_e
    instance-of v3, v4, Landroidx/lifecycle/n$c;

    if-eqz v3, :cond_f

    .line 40
    check-cast v4, Landroidx/lifecycle/n$c;

    invoke-virtual {v4, v2, v5}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v3

    goto :goto_7

    .line 41
    :cond_f
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/p35;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v3

    .line 42
    :goto_7
    iget-object p1, p1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_10

    .line 43
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    .line 44
    :cond_10
    :goto_8
    invoke-static {v3, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/shabakaty/downloader/xk;

    .line 45
    iput-object v3, p0, Lcom/shabakaty/downloader/hj;->w:Lcom/shabakaty/downloader/xk;

    goto :goto_9

    .line 46
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_12
    :goto_9
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->w:Lcom/shabakaty/downloader/xk;

    const-string p2, "safeParentFragmentViewModel"

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->Z1()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/xk;->j(Lcom/shabakaty/downloader/vj;)V

    .line 48
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_13

    goto/16 :goto_d

    :cond_13
    iget-object v2, p0, Lcom/shabakaty/downloader/hj;->w:Lcom/shabakaty/downloader/xk;

    if-eqz v2, :cond_14

    invoke-virtual {p1, v0, v2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    goto/16 :goto_d

    :cond_14
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_15
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_16
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->u:Lcom/shabakaty/downloader/xk;

    if-nez p1, :cond_1b

    .line 51
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->Y1()Lcom/shabakaty/downloader/p35;

    move-result-object p1

    .line 52
    invoke-interface {p0}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object p2

    .line 53
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->d2()Ljava/lang/Class;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 55
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v3, p2, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/o35;

    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 58
    instance-of p2, p1, Landroidx/lifecycle/n$e;

    if-eqz p2, :cond_19

    .line 59
    check-cast p1, Landroidx/lifecycle/n$e;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_b

    .line 60
    :cond_17
    instance-of v3, p1, Landroidx/lifecycle/n$c;

    if-eqz v3, :cond_18

    .line 61
    check-cast p1, Landroidx/lifecycle/n$c;

    invoke-virtual {p1, v2, v4}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    goto :goto_a

    .line 62
    :cond_18
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/p35;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    :goto_a
    move-object v3, p1

    .line 63
    iget-object p1, p2, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_19

    .line 64
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    :cond_19
    :goto_b
    const-string p1, "ViewModelProvider(this, \u2026.get(getViewModelClass())"

    .line 65
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/shabakaty/downloader/xk;

    iput-object v3, p0, Lcom/shabakaty/downloader/hj;->u:Lcom/shabakaty/downloader/xk;

    goto :goto_c

    .line 66
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1b
    :goto_c
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->u:Lcom/shabakaty/downloader/xk;

    const-string p2, "safeViewModel"

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->Z1()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/xk;->j(Lcom/shabakaty/downloader/vj;)V

    .line 68
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_1c

    goto :goto_d

    :cond_1c
    iget-object v2, p0, Lcom/shabakaty/downloader/hj;->u:Lcom/shabakaty/downloader/xk;

    if-eqz v2, :cond_1d

    invoke-virtual {p1, v0, v2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    :goto_d
    return-void

    :cond_1d
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1e
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method
