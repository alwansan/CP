.class public Lcom/shabakaty/downloader/ml1;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/d;
.implements Lcom/shabakaty/downloader/gx3;
.implements Lcom/shabakaty/downloader/s35;


# instance fields
.field public final r:Landroidx/fragment/app/Fragment;

.field public final s:Lcom/shabakaty/downloader/r35;

.field public t:Landroidx/lifecycle/n$b;

.field public u:Landroidx/lifecycle/g;

.field public v:Landroidx/savedstate/b;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/shabakaty/downloader/r35;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/ml1;->u:Landroidx/lifecycle/g;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ml1;->v:Landroidx/savedstate/b;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/ml1;->r:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/ml1;->s:Lcom/shabakaty/downloader/r35;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/e$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->u:Landroidx/lifecycle/g;

    const-string v1, "handleLifecycleEvent"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->e(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/e$b;->f()Landroidx/lifecycle/e$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/g;->h(Landroidx/lifecycle/e$c;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->u:Landroidx/lifecycle/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0, p0}, Landroidx/lifecycle/g;-><init>(Lcom/shabakaty/downloader/rh2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ml1;->u:Landroidx/lifecycle/g;

    .line 3
    new-instance v0, Landroidx/savedstate/b;

    invoke-direct {v0, p0}, Landroidx/savedstate/b;-><init>(Lcom/shabakaty/downloader/gx3;)V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/ml1;->v:Landroidx/savedstate/b;

    :cond_0
    return-void
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/n$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->r:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/n$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ml1;->r:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/n$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/ml1;->t:Landroidx/lifecycle/n$b;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->t:Landroidx/lifecycle/n$b;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ml1;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 7
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 8
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 9
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    .line 10
    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    new-instance v1, Landroidx/lifecycle/l;

    iget-object v2, p0, Lcom/shabakaty/downloader/ml1;->r:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/l;-><init>(Landroid/app/Application;Lcom/shabakaty/downloader/gx3;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/ml1;->t:Landroidx/lifecycle/n$b;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->t:Landroidx/lifecycle/n$b;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ml1;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->u:Landroidx/lifecycle/g;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ml1;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->v:Landroidx/savedstate/b;

    .line 3
    iget-object v0, v0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    return-object v0
.end method

.method public getViewModelStore()Lcom/shabakaty/downloader/r35;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ml1;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ml1;->s:Lcom/shabakaty/downloader/r35;

    return-object v0
.end method
