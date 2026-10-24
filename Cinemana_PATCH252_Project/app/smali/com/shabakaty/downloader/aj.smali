.class public abstract Lcom/shabakaty/downloader/aj;
.super Lcom/google/android/material/bottomsheet/b;
.source "BaseBottomSheet.kt"


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
        "Lcom/google/android/material/bottomsheet/b;"
    }
.end annotation


# instance fields
.field public I:I

.field public J:Lcom/shabakaty/downloader/p35;

.field public K:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public L:Lcom/shabakaty/downloader/xk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public M:Lcom/shabakaty/downloader/xk;
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
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/aj;->I:I

    return-void
.end method


# virtual methods
.method public abstract d2()Lcom/shabakaty/downloader/vj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public final e2(Landroidx/fragment/app/Fragment;)Z
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

    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f2()Lcom/shabakaty/downloader/xk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->L:Lcom/shabakaty/downloader/xk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "safeViewModel"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract g2()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/md0;->z(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ct0;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/shabakaty/downloader/aj;->I:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->d2()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object p3, p1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    :goto_2
    return-object p3
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ct0;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->g2()Ljava/lang/Class;

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

    const/16 p2, 0x26

    const-string v0, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    const-string v2, "Local and anonymous classes can not be ViewModels"

    const-string v3, "factory"

    if-eqz p1, :cond_c

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->M:Lcom/shabakaty/downloader/xk;

    if-nez p1, :cond_8

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/aj;->J:Lcom/shabakaty/downloader/p35;

    if-eqz v4, :cond_7

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->g2()Ljava/lang/Class;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 13
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v2, p1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/o35;

    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    instance-of p1, v4, Landroidx/lifecycle/n$e;

    if-eqz p1, :cond_5

    .line 17
    check-cast v4, Landroidx/lifecycle/n$e;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_3

    .line 18
    :cond_3
    instance-of v2, v4, Landroidx/lifecycle/n$c;

    if-eqz v2, :cond_4

    .line 19
    check-cast v4, Landroidx/lifecycle/n$c;

    invoke-virtual {v4, v0, v3}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v2

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/p35;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v2

    .line 21
    :goto_2
    iget-object p1, p1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    :cond_5
    :goto_3
    const-string p1, "ViewModelProvider(requir\u2026.get(getViewModelClass())"

    .line 23
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/shabakaty/downloader/xk;

    .line 24
    iput-object v2, p0, Lcom/shabakaty/downloader/aj;->M:Lcom/shabakaty/downloader/xk;

    goto :goto_4

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_7
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->M:Lcom/shabakaty/downloader/xk;

    const-string v0, "safeActivityViewModel"

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->d2()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/xk;->j(Lcom/shabakaty/downloader/vj;)V

    .line 28
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_9

    goto/16 :goto_8

    :cond_9
    iget-object v2, p0, Lcom/shabakaty/downloader/aj;->M:Lcom/shabakaty/downloader/xk;

    if-eqz v2, :cond_a

    invoke-virtual {p1, p2, v2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    goto/16 :goto_8

    :cond_a
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_b
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_c
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->L:Lcom/shabakaty/downloader/xk;

    if-nez p1, :cond_12

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->J:Lcom/shabakaty/downloader/p35;

    if-eqz p1, :cond_11

    .line 32
    invoke-interface {p0}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->g2()Ljava/lang/Class;

    move-result-object v4

    .line 34
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 35
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v2, v3, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/o35;

    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 38
    instance-of v0, p1, Landroidx/lifecycle/n$e;

    if-eqz v0, :cond_f

    .line 39
    check-cast p1, Landroidx/lifecycle/n$e;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_6

    .line 40
    :cond_d
    instance-of v2, p1, Landroidx/lifecycle/n$c;

    if-eqz v2, :cond_e

    .line 41
    check-cast p1, Landroidx/lifecycle/n$c;

    invoke-virtual {p1, v0, v4}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    goto :goto_5

    .line 42
    :cond_e
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/p35;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    :goto_5
    move-object v2, p1

    .line 43
    iget-object p1, v3, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_f

    .line 44
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    :cond_f
    :goto_6
    const-string p1, "ViewModelProvider(this, \u2026.get(getViewModelClass())"

    .line 45
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/shabakaty/downloader/xk;

    iput-object v2, p0, Lcom/shabakaty/downloader/aj;->L:Lcom/shabakaty/downloader/xk;

    goto :goto_7

    .line 46
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_11
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_12
    :goto_7
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->L:Lcom/shabakaty/downloader/xk;

    const-string v0, "safeViewModel"

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->d2()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/xk;->j(Lcom/shabakaty/downloader/vj;)V

    .line 49
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_13

    goto :goto_8

    :cond_13
    iget-object v2, p0, Lcom/shabakaty/downloader/aj;->L:Lcom/shabakaty/downloader/xk;

    if-eqz v2, :cond_14

    invoke-virtual {p1, p2, v2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    :goto_8
    return-void

    :cond_14
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_15
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method
