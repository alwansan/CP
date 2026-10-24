.class public Lcom/shabakaty/downloader/ji1;
.super Landroidx/activity/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Lcom/shabakaty/downloader/s2$b;
.implements Lcom/shabakaty/downloader/s2$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ji1$c;
    }
.end annotation


# static fields
.field public static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

.field public final mFragments:Lcom/shabakaty/downloader/xi1;

.field public mResumed:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ji1$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ji1$c;-><init>(Lcom/shabakaty/downloader/ji1;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/xi1;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/xi1;-><init>(Lcom/shabakaty/downloader/sj1;)V

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 5
    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0, p0}, Landroidx/lifecycle/g;-><init>(Lcom/shabakaty/downloader/rh2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ji1;->mStopped:Z

    .line 7
    invoke-direct {p0}, Lcom/shabakaty/downloader/ji1;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/ji1$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ji1$c;-><init>(Lcom/shabakaty/downloader/ji1;)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/xi1;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/xi1;-><init>(Lcom/shabakaty/downloader/sj1;)V

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 12
    new-instance p1, Landroidx/lifecycle/g;

    invoke-direct {p1, p0}, Landroidx/lifecycle/g;-><init>(Lcom/shabakaty/downloader/rh2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ji1;->mStopped:Z

    .line 14
    invoke-direct {p0}, Lcom/shabakaty/downloader/ji1;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/a;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/ji1$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ji1$a;-><init>(Lcom/shabakaty/downloader/ji1;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/a;->b(Ljava/lang/String;Landroidx/savedstate/a$b;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ji1$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ji1$b;-><init>(Lcom/shabakaty/downloader/ji1;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Lcom/shabakaty/downloader/m63;)V

    return-void
.end method

.method private static markState(Landroidx/fragment/app/q;Landroidx/lifecycle/e$c;)Z
    .locals 7

    .line 1
    sget-object v0, Landroidx/lifecycle/e$c;->u:Landroidx/lifecycle/e$c;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v4

    .line 6
    invoke-static {v4, p1}, Lcom/shabakaty/downloader/ji1;->markState(Landroidx/fragment/app/q;Landroidx/lifecycle/e$c;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 7
    :cond_2
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/shabakaty/downloader/ml1;

    const-string v5, "setCurrentState"

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ml1;->b()V

    .line 9
    iget-object v4, v4, Lcom/shabakaty/downloader/ml1;->u:Landroidx/lifecycle/g;

    .line 10
    iget-object v4, v4, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/e$c;

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 12
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/shabakaty/downloader/ml1;

    .line 13
    iget-object v2, v2, Lcom/shabakaty/downloader/ml1;->u:Landroidx/lifecycle/g;

    .line 14
    invoke-virtual {v2, v5}, Landroidx/lifecycle/g;->e(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p1}, Landroidx/lifecycle/g;->h(Landroidx/lifecycle/e$c;)V

    const/4 v2, 0x1

    .line 16
    :cond_4
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/g;

    .line 17
    iget-object v4, v4, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/e$c;

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_0

    .line 19
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/g;

    .line 20
    invoke-virtual {v2, v5}, Landroidx/lifecycle/g;->e(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p1}, Landroidx/lifecycle/g;->h(Landroidx/lifecycle/e$c;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/q;->f:Lcom/shabakaty/downloader/vj1;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/vj1;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ji1;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ji1;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ji1;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/shabakaty/downloader/lj2;->b(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/lj2;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/shabakaty/downloader/lj2;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/q;->y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    return-object v0
.end method

.method public getSupportLoaderManager()Lcom/shabakaty/downloader/lj2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/lj2;->b(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/lj2;

    move-result-object v0

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$c;->t:Landroidx/lifecycle/e$c;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ji1;->markState(Landroidx/fragment/app/q;Landroidx/lifecycle/e$c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi1;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi1;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->k(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    sget-object v0, Landroidx/lifecycle/e$b;->ON_CREATE:Landroidx/lifecycle/e$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {p1}, Landroidx/fragment/app/q;->m()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/q;->n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/ji1;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/shabakaty/downloader/ji1;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0}, Landroidx/fragment/app/q;->o()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    sget-object v1, Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0}, Landroidx/fragment/app/q;->p()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/q;->l(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/q;->r(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->q(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi1;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/q;->s(Landroid/view/Menu;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ji1;->mResumed:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->w(I)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    sget-object v1, Landroidx/lifecycle/e$b;->ON_PAUSE:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->u(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->onResumeFragments()V

    return-void
.end method

.method public onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/ji1;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object p2, p2, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/q;->v(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi1;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi1;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ji1;->mResumed:Z

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v1, v1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->C(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    sget-object v1, Landroidx/lifecycle/e$b;->ON_RESUME:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/fragment/app/q;->C:Z

    .line 5
    iput-boolean v1, v0, Landroidx/fragment/app/q;->D:Z

    .line 6
    iget-object v2, v0, Landroidx/fragment/app/q;->K:Lcom/shabakaty/downloader/xj1;

    .line 7
    iput-boolean v1, v2, Lcom/shabakaty/downloader/xj1;->f:Z

    const/4 v1, 0x7

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->w(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi1;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ji1;->mStopped:Z

    .line 4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ji1;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iput-boolean v2, p0, Lcom/shabakaty/downloader/ji1;->mCreated:Z

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v1, v1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    .line 8
    iput-boolean v0, v1, Landroidx/fragment/app/q;->C:Z

    .line 9
    iput-boolean v0, v1, Landroidx/fragment/app/q;->D:Z

    .line 10
    iget-object v3, v1, Landroidx/fragment/app/q;->K:Lcom/shabakaty/downloader/xj1;

    .line 11
    iput-boolean v0, v3, Lcom/shabakaty/downloader/xj1;->f:Z

    const/4 v3, 0x4

    .line 12
    invoke-virtual {v1, v3}, Landroidx/fragment/app/q;->w(I)V

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 14
    iget-object v1, v1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v1, v1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/q;->C(Z)Z

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    sget-object v2, Landroidx/lifecycle/e$b;->ON_START:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v1, v1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    .line 18
    iput-boolean v0, v1, Landroidx/fragment/app/q;->C:Z

    .line 19
    iput-boolean v0, v1, Landroidx/fragment/app/q;->D:Z

    .line 20
    iget-object v2, v1, Landroidx/fragment/app/q;->K:Lcom/shabakaty/downloader/xj1;

    .line 21
    iput-boolean v0, v2, Lcom/shabakaty/downloader/xj1;->f:Z

    const/4 v0, 0x5

    .line 22
    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->w(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi1;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ji1;->mStopped:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->markFragmentsCreated()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v1, v1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    .line 6
    iput-boolean v0, v1, Landroidx/fragment/app/q;->D:Z

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/q;->K:Lcom/shabakaty/downloader/xj1;

    .line 8
    iput-boolean v0, v2, Lcom/shabakaty/downloader/xj1;->f:Z

    const/4 v0, 0x4

    .line 9
    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->w(I)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    sget-object v1, Landroidx/lifecycle/e$b;->ON_STOP:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Lcom/shabakaty/downloader/y44;)V
    .locals 0

    .line 1
    sget p1, Lcom/shabakaty/downloader/s2;->c:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Lcom/shabakaty/downloader/y44;)V
    .locals 0

    .line 1
    sget p1, Lcom/shabakaty/downloader/s2;->c:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shabakaty/downloader/ji1;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2
    sget p1, Lcom/shabakaty/downloader/s2;->c:I

    .line 3
    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    .line 1
    sget v0, Lcom/shabakaty/downloader/s2;->c:I

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-virtual/range {v1 .. v8}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/s2;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/s2;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/s2;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
