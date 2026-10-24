.class public final Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;
.super Lcom/shabakaty/downloader/xi;
.source "SettingsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vj;
.implements Landroidx/navigation/NavController$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/v3;",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/g44;",
        ">;",
        "Landroidx/navigation/NavController$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/v3;",
        "",
        "Lcom/shabakaty/downloader/g44;",
        "Landroidx/navigation/NavController$b;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0022

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$a;-><init>(Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->v:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/g44;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/g44;

    return-object v0
.end method

.method public k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "destination"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/v3;

    iget-object p1, p1, Lcom/shabakaty/downloader/v3;->M:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2, p2, p2}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZZ)V

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;-><init>(Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ih2;->c(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public final k0()Landroidx/navigation/NavController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->v:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    return-object v0
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
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k0()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/navigation/c;->t:I

    const/16 v2, 0x17d5

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_1

    :cond_2
    const v0, 0x7f0a040b

    .line 4
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/kl3;->c(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->k()Z

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k0()Landroidx/navigation/NavController;

    move-result-object p1

    const-string v0, "<this>"

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v0, Landroidx/navigation/fragment/a;

    .line 5
    iget-object v1, p1, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    const-string v2, "navigatorProvider"

    .line 6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/ax2;

    const v3, 0x7f0a040b

    const/16 v4, 0x17d5

    invoke-direct {v2, v1, v3, v4}, Lcom/shabakaty/downloader/ax2;-><init>(Landroidx/navigation/i;II)V

    .line 8
    iget-object v1, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 9
    invoke-virtual {v1, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/a;

    .line 10
    const-class v3, Lcom/shabakaty/downloader/b34;

    invoke-static {v3}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    .line 11
    new-instance v5, Lcom/shabakaty/downloader/dt0;

    invoke-direct {v5, v1, v4, v3}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v1, 0x7f12024f

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    iput-object v1, v5, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/h34;->r:Lcom/shabakaty/downloader/h34;

    const/16 v3, 0x1839

    invoke-virtual {v5, v3, v1}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/f34;->r:Lcom/shabakaty/downloader/f34;

    const/16 v3, 0x183a

    invoke-virtual {v5, v3, v1}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 16
    sget-object v1, Lcom/shabakaty/downloader/j34;->r:Lcom/shabakaty/downloader/j34;

    const/16 v3, 0x183b

    invoke-virtual {v5, v3, v1}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    const-string v1, "Settings List Fragment"

    .line 17
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 19
    iget-object v1, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 20
    invoke-virtual {v1, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/a;

    .line 21
    const-class v3, Lcom/shabakaty/downloader/fb1;

    invoke-static {v3}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    .line 22
    new-instance v4, Lcom/shabakaty/downloader/dt0;

    const/16 v5, 0x17d6

    invoke-direct {v4, v1, v5, v3}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v1, 0x7f120134

    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    iput-object v1, v4, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    const-string v1, "Filter Settings Fragment"

    .line 25
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 27
    iget-object v1, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 28
    invoke-virtual {v1, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/a;

    .line 29
    const-class v3, Lcom/shabakaty/downloader/jb;

    invoke-static {v3}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    .line 30
    new-instance v4, Lcom/shabakaty/downloader/dt0;

    const/16 v5, 0x17d7

    invoke-direct {v4, v1, v5, v3}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v1, 0x7f120140

    .line 31
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    iput-object v1, v4, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    const-string v1, "App Settings Fragment"

    .line 33
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 35
    iget-object v1, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 36
    invoke-virtual {v1, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/a;

    .line 37
    const-class v1, Lcom/shabakaty/downloader/vg4;

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v1

    .line 38
    new-instance v3, Lcom/shabakaty/downloader/dt0;

    const/16 v4, 0x17d8

    invoke-direct {v3, v0, v4, v1}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v0, 0x7f120271

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    iput-object v0, v3, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    const-string v0, "Subtitles Settings Fragment"

    .line 41
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 43
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ax2;->d()Landroidx/navigation/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavController;->p(Landroidx/navigation/d;Landroid/os/Bundle;)V

    .line 45
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 46
    check-cast p1, Lcom/shabakaty/downloader/v3;

    iget-object p1, p1, Lcom/shabakaty/downloader/v3;->N:Landroidx/appcompat/widget/Toolbar;

    const-string v0, "binding.settingsToolbar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k0()Landroidx/navigation/NavController;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ol3;->h(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;I)V

    .line 47
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 48
    check-cast p1, Lcom/shabakaty/downloader/v3;

    iget-object p1, p1, Lcom/shabakaty/downloader/v3;->N:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/r9;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 49
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k2;->m(Z)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "saved_state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "destination_id"

    .line 51
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k0()Landroidx/navigation/NavController;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1, v1, v1, v1}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    :goto_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k0()Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget p1, p1, Landroidx/navigation/c;->t:I

    const/16 v1, 0x17d5

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const p1, 0x7f0a040b

    .line 3
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/kl3;->c(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->k()Z

    move-result v0

    :goto_1
    return v0
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k0()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$b;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k0()Landroidx/navigation/NavController;

    move-result-object v0

    .line 2
    iget-object v0, v0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStop()V

    return-void
.end method

.method public openThemeStudio(Landroid/view/View;)V
    .locals 7

    const-string v0, "cinemana_tmdb_api_setting"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v0, "com.cinemana.pro.logo.TmdbSettings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "openDialog"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
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

.method public r()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method
