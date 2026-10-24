.class public abstract Lcom/shabakaty/downloader/xi;
.super Lcom/shabakaty/downloader/r9;
.source "BaseActivity.kt"


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
        "Lcom/shabakaty/downloader/r9;"
    }
.end annotation


# instance fields
.field public final r:I

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


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r9;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/xi;->r:I

    return-void
.end method


# virtual methods
.method public final F()Lcom/shabakaty/downloader/xk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->u:Lcom/shabakaty/downloader/xk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "safeViewModel"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3
    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2$b;->a()Lcom/shabakaty/downloader/uj2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2;->a()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/shabakaty/downloader/r9;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public abstract h0()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prepare(Landroid/app/Activity;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->p(Landroid/app/Activity;)V

    .line 5
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ji1;->onCreate(Landroid/os/Bundle;)V

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "applicationContext.resources"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2$b;->a()Lcom/shabakaty/downloader/uj2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2;->a()Landroid/content/Context;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->u:Lcom/shabakaty/downloader/xk;

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->h0()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->s:Lcom/shabakaty/downloader/p35;

    if-eqz v1, :cond_7

    .line 13
    invoke-interface {p0}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 15
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    iget-object v4, v2, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/o35;

    .line 17
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    instance-of p1, v1, Landroidx/lifecycle/n$e;

    if-eqz p1, :cond_5

    .line 19
    check-cast v1, Landroidx/lifecycle/n$e;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_1

    .line 20
    :cond_3
    instance-of v4, v1, Landroidx/lifecycle/n$c;

    if-eqz v4, :cond_4

    .line 21
    check-cast v1, Landroidx/lifecycle/n$c;

    invoke-virtual {v1, v3, p1}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_4
    invoke-interface {v1, p1}, Landroidx/lifecycle/n$b;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    :goto_0
    move-object v4, p1

    .line 23
    iget-object p1, v2, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    :cond_5
    :goto_1
    const-string p1, "ViewModelProvider(this, \u2026tory).get(viewModelClass)"

    .line 25
    invoke-static {v4, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/shabakaty/downloader/xk;

    iput-object v4, p0, Lcom/shabakaty/downloader/xi;->u:Lcom/shabakaty/downloader/xk;

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->r()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/shabakaty/downloader/xk;->j(Lcom/shabakaty/downloader/vj;)V

    goto :goto_2

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p1, "viewModelFactory"

    .line 28
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_8
    :goto_2
    iget p1, p0, Lcom/shabakaty/downloader/xi;->r:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi;->setContentView(I)V

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 31
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->r()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    .line 32
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->h0()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 33
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    const/16 v1, 0x26

    iget-object v2, p0, Lcom/shabakaty/downloader/xi;->u:Lcom/shabakaty/downloader/xk;

    if-eqz v2, :cond_c

    invoke-virtual {p1, v1, v2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const-string p1, "safeViewModel"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->k()V

    :goto_6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public abstract r()Lcom/shabakaty/downloader/vj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public setContentView(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 3
    :goto_0
    invoke-super {p0, v1}, Lcom/shabakaty/downloader/r9;->setContentView(Landroid/view/View;)V

    return-void
.end method
