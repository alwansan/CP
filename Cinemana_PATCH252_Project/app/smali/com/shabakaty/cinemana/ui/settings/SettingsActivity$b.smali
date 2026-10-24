.class public final Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;
.super Lcom/shabakaty/downloader/ui4;
.source "SettingsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.SettingsActivity$onDestinationChanged$1"
    f = "SettingsActivity.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;->k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->w:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->w:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;-><init>(Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->w:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;-><init>(Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const-wide/16 v3, 0x1f4

    .line 4
    iput v2, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->v:I

    invoke-static {v3, v4, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->w:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/v3;

    iget-object v0, v0, Lcom/shabakaty/downloader/v3;->N:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/r9;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->w:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/k2;->m(Z)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$b;->w:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast p1, Lcom/shabakaty/downloader/v3;

    iget-object p1, p1, Lcom/shabakaty/downloader/v3;->N:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const v0, 0x7f0a0202

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 12
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
