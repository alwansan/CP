.class public Landroidx/navigation/fragment/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavHostFragment.java"


# instance fields
.field public r:Lcom/shabakaty/downloader/bx2;

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/view/View;

.field public u:I

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->s:Ljava/lang/Boolean;

    return-void
.end method

.method public static X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    instance-of v1, v0, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->Y1()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/q;

    move-result-object v1

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/q;->u:Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v1}, Landroidx/navigation/fragment/NavHostFragment;->Y1()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/fx2;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    instance-of v0, p0, Lcom/shabakaty/downloader/ct0;

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/ct0;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/fx2;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " does not have a NavController set"

    invoke-static {v1, p0, v2}, Lcom/shabakaty/downloader/ii1;->a(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final Y1()Landroidx/navigation/NavController;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavController is not available before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iget-boolean p1, p0, Landroidx/navigation/fragment/NavHostFragment;->v:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    .line 4
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 5
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/t;->d()I

    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    .line 3
    iget-object v0, v0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    .line 4
    const-class v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-virtual {v0, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 5
    iget-object v1, v0, Landroidx/navigation/fragment/DialogFragmentNavigator;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    iget-object v0, v0, Landroidx/navigation/fragment/DialogFragmentNavigator;->e:Landroidx/lifecycle/f;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/bx2;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/bx2;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    .line 3
    iget-object v0, v1, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p0, v1, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    .line 5
    invoke-interface {p0}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v0

    iget-object v1, v1, Landroidx/navigation/NavController;->m:Lcom/shabakaty/downloader/qh2;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    if-eqz v2, :cond_c

    .line 8
    iget-object v2, v0, Landroidx/navigation/NavController;->n:Lcom/shabakaty/downloader/e63;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/e63;->b()V

    .line 9
    iget-object v2, v0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    iget-object v3, v0, Landroidx/navigation/NavController;->n:Lcom/shabakaty/downloader/e63;

    invoke-virtual {v1, v2, v3}, Landroidx/activity/OnBackPressedDispatcher;->a(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/e63;)V

    .line 10
    iget-object v1, v0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v1

    iget-object v2, v0, Landroidx/navigation/NavController;->m:Lcom/shabakaty/downloader/qh2;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/e;->c(Lcom/shabakaty/downloader/qh2;)V

    .line 11
    iget-object v1, v0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v1

    iget-object v0, v0, Landroidx/navigation/NavController;->m:Lcom/shabakaty/downloader/qh2;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    .line 12
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->s:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_1
    iput-boolean v1, v0, Landroidx/navigation/NavController;->o:Z

    .line 15
    invoke-virtual {v0}, Landroidx/navigation/NavController;->q()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->s:Ljava/lang/Boolean;

    .line 17
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object v4

    .line 18
    iget-object v5, v1, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    invoke-static {v4}, Lcom/shabakaty/downloader/xw2;->a(Lcom/shabakaty/downloader/r35;)Lcom/shabakaty/downloader/xw2;

    move-result-object v6

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    iget-object v5, v1, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 20
    invoke-static {v4}, Lcom/shabakaty/downloader/xw2;->a(Lcom/shabakaty/downloader/r35;)Lcom/shabakaty/downloader/xw2;

    move-result-object v4

    iput-object v4, v1, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    .line 21
    :goto_2
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    .line 22
    iget-object v4, v1, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    .line 23
    new-instance v5, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/q;)V

    .line 25
    invoke-virtual {v4, v5}, Landroidx/navigation/i;->a(Landroidx/navigation/h;)Landroidx/navigation/h;

    .line 26
    iget-object v1, v1, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    .line 27
    new-instance v4, Landroidx/navigation/fragment/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v6

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    goto :goto_3

    :cond_3
    const v7, 0x7f0a02fe

    .line 29
    :goto_3
    invoke-direct {v4, v5, v6, v7}, Landroidx/navigation/fragment/a;-><init>(Landroid/content/Context;Landroidx/fragment/app/q;I)V

    .line 30
    invoke-virtual {v1, v4}, Landroidx/navigation/i;->a(Landroidx/navigation/h;)Landroidx/navigation/h;

    const-string v1, "android-support-nav:fragment:graphId"

    if-eqz p1, :cond_5

    const-string v4, "android-support-nav:fragment:navControllerState"

    .line 31
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:defaultHost"

    .line 32
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 33
    iput-boolean v3, p0, Landroidx/navigation/fragment/NavHostFragment;->v:Z

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/q;

    move-result-object v3

    .line 35
    new-instance v5, Landroidx/fragment/app/a;

    invoke-direct {v5, v3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 36
    invoke-virtual {v5, p0}, Landroidx/fragment/app/a;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 37
    invoke-virtual {v5}, Landroidx/fragment/app/a;->d()I

    .line 38
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroidx/navigation/fragment/NavHostFragment;->u:I

    goto :goto_4

    :cond_5
    move-object v4, v0

    :goto_4
    if-eqz v4, :cond_6

    .line 39
    iget-object v3, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v5, v3, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v5, "android-support-nav:controller:navigatorState"

    .line 41
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v3, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    const-string v5, "android-support-nav:controller:backStack"

    .line 42
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    iput-object v5, v3, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    const-string v5, "android-support-nav:controller:deepLinkHandled"

    .line 43
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/navigation/NavController;->g:Z

    .line 44
    :cond_6
    iget v3, p0, Landroidx/navigation/fragment/NavHostFragment;->u:I

    if-eqz v3, :cond_7

    .line 45
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    .line 46
    invoke-virtual {v1, v3, v0}, Landroidx/navigation/NavController;->o(ILandroid/os/Bundle;)V

    goto :goto_5

    .line 47
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 48
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_8
    if-eqz v3, :cond_9

    const-string v0, "android-support-nav:fragment:startDestinationArgs"

    .line 49
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_9
    if-eqz v2, :cond_a

    .line 50
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavController;->o(ILandroid/os/Bundle;)V

    .line 51
    :cond_a
    :goto_5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 52
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewModelStore should be set before setGraph call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p2, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0a02fe

    .line 3
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->t:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/fx2;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->t:Landroid/view/View;

    const v2, 0x7f0a02fd

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    :cond_0
    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->t:Landroid/view/View;

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2
    sget-object p3, Lcom/shabakaty/downloader/pl3;->b:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iput v1, p0, Landroidx/navigation/fragment/NavHostFragment;->u:I

    .line 5
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    sget-object p3, Lcom/shabakaty/downloader/rl3;->c:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Landroidx/navigation/fragment/NavHostFragment;->v:Z

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, v0, Landroidx/navigation/NavController;->o:Z

    .line 3
    invoke-virtual {v0}, Landroidx/navigation/NavController;->q()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->s:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v3, v0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    .line 6
    iget-object v3, v3, Landroidx/navigation/i;->a:Ljava/util/HashMap;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/h;

    invoke-virtual {v4}, Landroidx/navigation/h;->d()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android-support-nav:controller:navigatorState:names"

    .line 14
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "android-support-nav:controller:navigatorState"

    .line 15
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 16
    :goto_1
    iget-object v1, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v3, :cond_3

    .line 17
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v3, v1

    .line 18
    :cond_3
    iget-object v1, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    .line 19
    iget-object v4, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/vw2;

    add-int/lit8 v6, v2, 0x1

    .line 20
    new-instance v7, Lcom/shabakaty/downloader/ww2;

    invoke-direct {v7, v5}, Lcom/shabakaty/downloader/ww2;-><init>(Lcom/shabakaty/downloader/vw2;)V

    aput-object v7, v1, v2

    move v2, v6

    goto :goto_2

    :cond_4
    const-string v2, "android-support-nav:controller:backStack"

    .line 21
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 22
    :cond_5
    iget-boolean v1, v0, Landroidx/navigation/NavController;->g:Z

    if-eqz v1, :cond_7

    if-nez v3, :cond_6

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v3, v1

    .line 24
    :cond_6
    iget-boolean v0, v0, Landroidx/navigation/NavController;->g:Z

    const-string v1, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    if-eqz v3, :cond_8

    const-string v0, "android-support-nav:fragment:navControllerState"

    .line 25
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    :cond_8
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->v:Z

    if-eqz v0, :cond_9

    const-string v0, "android-support-nav:fragment:defaultHost"

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    :cond_9
    iget v0, p0, Landroidx/navigation/fragment/NavHostFragment;->u:I

    if-eqz v0, :cond_a

    const-string v1, "android-support-nav:fragment:graphId"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    const v0, 0x7f0a02fd

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->t:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 8
    iget-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->t:Landroid/view/View;

    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->r:Lcom/shabakaty/downloader/bx2;

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created host view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a ViewGroup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
