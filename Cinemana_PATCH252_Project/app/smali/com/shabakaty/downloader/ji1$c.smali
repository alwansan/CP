.class public Lcom/shabakaty/downloader/ji1$c;
.super Lcom/shabakaty/downloader/sj1;
.source "FragmentActivity.java"

# interfaces
.implements Lcom/shabakaty/downloader/s35;
.implements Lcom/shabakaty/downloader/f63;
.implements Lcom/shabakaty/downloader/u3;
.implements Lcom/shabakaty/downloader/ak1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ji1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/sj1<",
        "Lcom/shabakaty/downloader/ji1;",
        ">;",
        "Lcom/shabakaty/downloader/s35;",
        "Lcom/shabakaty/downloader/f63;",
        "Lcom/shabakaty/downloader/u3;",
        "Lcom/shabakaty/downloader/ak1;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/downloader/ji1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ji1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/sj1;-><init>(Lcom/shabakaty/downloader/ji1;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ji1;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/shabakaty/downloader/ji1;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    return-object v0
.end method

.method public f()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Lcom/shabakaty/downloader/r35;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/s2;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$c;->v:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ji1;->supportInvalidateOptionsMenu()V

    return-void
.end method
