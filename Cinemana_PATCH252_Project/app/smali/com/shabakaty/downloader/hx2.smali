.class public abstract Lcom/shabakaty/downloader/hx2;
.super Lcom/shabakaty/downloader/xi;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/kx2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        "N::",
        "Lcom/shabakaty/downloader/kx2;",
        "V:",
        "Lcom/shabakaty/downloader/yx2<",
        "TN;>;>",
        "Lcom/shabakaty/downloader/xi<",
        "TT;TN;TV;>;",
        "Lcom/shabakaty/downloader/kx2;"
    }
.end annotation


# static fields
.field public static final synthetic A:I


# instance fields
.field public final v:Lcom/shabakaty/downloader/kf2;

.field public final w:Lcom/shabakaty/downloader/kf2;

.field public final x:Lcom/shabakaty/downloader/kf2;

.field public final y:Lcom/shabakaty/downloader/kf2;

.field public final z:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/hx2$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/hx2$a;-><init>(Lcom/shabakaty/downloader/hx2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hx2;->v:Lcom/shabakaty/downloader/kf2;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/hx2$c;->r:Lcom/shabakaty/downloader/hx2$c;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hx2;->w:Lcom/shabakaty/downloader/kf2;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/hx2$b;->r:Lcom/shabakaty/downloader/hx2$b;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hx2;->x:Lcom/shabakaty/downloader/kf2;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/hx2$e;->r:Lcom/shabakaty/downloader/hx2$e;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hx2;->y:Lcom/shabakaty/downloader/kf2;

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/hx2$d;->r:Lcom/shabakaty/downloader/hx2$d;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hx2;->z:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public H0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nl6;->v(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/lang/String;)V

    return-void
.end method

.method public final k0()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hx2;->v:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public abstract m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/q;->u:Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Lcom/shabakaty/downloader/ek;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/ek;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v3

    if-ne v4, v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/px2;->getSelectedItemId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/hx2;->q0(I)V

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-ne v4, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ek;->Z1()Z

    move-result v0

    if-nez v0, :cond_12

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yx2;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/yx2;->h:Ljava/util/Stack;

    .line 10
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yx2;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/yx2;->h:Ljava/util/Stack;

    .line 13
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yx2;

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/yx2;->h:Ljava/util/Stack;

    .line 16
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "viewModel.backStack.peek()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/px2;->setSelectedItemId(I)V

    goto/16 :goto_8

    .line 17
    :cond_6
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto/16 :goto_8

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/fragment/app/q;->u:Landroidx/fragment/app/Fragment;

    .line 20
    instance-of v1, v0, Lcom/shabakaty/downloader/ek;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/shabakaty/downloader/ek;

    goto :goto_3

    :cond_8
    move-object v0, v2

    :goto_3
    const-string v1, "NavHostFragment.findNavController(this)"

    const-string v3, "$this$findNavController"

    if-nez v0, :cond_9

    :goto_4
    move-object v0, v2

    goto :goto_5

    .line 21
    :cond_9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 22
    :cond_a
    invoke-virtual {v0}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_c

    goto :goto_4

    .line 23
    :cond_c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_4

    .line 24
    :cond_d
    invoke-virtual {v0}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_f

    goto :goto_4

    .line 25
    :cond_f
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Landroidx/navigation/NavController;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_12

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    .line 29
    iget-object v0, v0, Landroidx/fragment/app/q;->u:Landroidx/fragment/app/Fragment;

    .line 30
    instance-of v4, v0, Lcom/shabakaty/downloader/ek;

    if-eqz v4, :cond_10

    check-cast v0, Lcom/shabakaty/downloader/ek;

    goto :goto_6

    :cond_10
    move-object v0, v2

    :goto_6
    if-nez v0, :cond_11

    goto :goto_7

    .line 31
    :cond_11
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroidx/navigation/NavController;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_12

    .line 34
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_12
    :goto_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    # PATCH310: remember whether Android restored a saved fragment/NavHost state.
    # Never clear the restored detail back stack while returning from the player.
    move-object v5, p1

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    # PATCH311: initialize the default tab register on BOTH verifier paths.
    # The PATCH310 saved-state jump skipped its former only definition.
    const v0, 0x7f0a0305

    if-nez v5, :patch310_keep_restored_fragments

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object p1

    const-string v0, "supportFragmentManager.fragments"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v1

    .line 6
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 7
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 8
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/q;

    if-eqz v1, :cond_1

    iget-object v3, v2, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/q;

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already attached to a FragmentManager."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_1
    new-instance v1, Landroidx/fragment/app/t$a;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v0}, Landroidx/fragment/app/t$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/t$a;)V

    .line 12
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->q(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    invoke-virtual {v2}, Landroidx/fragment/app/a;->e()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    const v0, 0x7f0a0305

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/px2;->setSelectedItemId(I)V

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :patch310_keep_restored_fragments
    # Both fresh and restored paths install the bottom navigation listeners.
    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    new-instance v1, Lcom/shabakaty/downloader/gx2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/gx2;-><init>(Lcom/shabakaty/downloader/hx2;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V

    # Saved back stack: do not reset selected tabs or schedule a Home navigation.
    # v2 is zero from listener setup; v1 must be one for reselection listener.
    if-eqz v5, :patch310_initialize_fresh_tabs
    const-string v3, "home_saved_backstack_preserved"
    invoke-static {v3}, Lcom/shabakaty/cinemana/local/LoadDiag307;->note(Ljava/lang/String;)V
    const/4 v1, 0x1
    goto :goto_3

    :patch310_initialize_fresh_tabs
    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "backStack.peek()"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/px2;->setSelectedItemId(I)V

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/px2;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 20
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/px2;->setSelectedItemId(I)V

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/rr;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/hx2;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 22
    :goto_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/gx2;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/gx2;-><init>(Lcom/shabakaty/downloader/hx2;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/shabakaty/downloader/nl6;->h(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/shabakaty/downloader/jn;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->h(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/shabakaty/downloader/jn;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    .line 28
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00a1

    .line 30
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v5

    .line 31
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.facebook.drawee.view.SimpleDraweeView"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/nl6;->v(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Ljava/lang/String;)V

    return-void
.end method

.method public abstract p0()Landroidx/fragment/app/FragmentContainerView;
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public final q0(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/q;->u:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/hx2;->y:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/du3;

    goto :goto_1

    .line 8
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/hx2;->z:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cu3;

    goto :goto_1

    .line 9
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/hx2;->w:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bu3;

    goto :goto_1

    .line 10
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/hx2;->x:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/au3;

    goto :goto_1

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hx2;->w:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bu3;

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->p0()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v1, v3, v0, p1, v2}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 14
    :cond_1
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 15
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const v0, 0x7f12016e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p1, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1, v2, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZZ)V

    .line 18
    :goto_2
    invoke-virtual {v1}, Landroidx/fragment/app/a;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0303
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public recreate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->p0()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public abstract u0(I)V
.end method

.method public final v0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->h(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/shabakaty/downloader/jn;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    instance-of v1, v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f060128

    .line 5
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    goto :goto_1

    :cond_1
    const p1, 0x7f060136

    .line 6
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2
    return-void
.end method
