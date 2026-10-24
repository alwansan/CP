.class public Landroidx/mediarouter/app/MediaRouteActionProvider;
.super Lcom/shabakaty/downloader/q2;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteActionProvider$a;
    }
.end annotation


# instance fields
.field public final c:Landroidx/mediarouter/media/g;

.field public final d:Landroidx/mediarouter/app/MediaRouteActionProvider$a;

.field public e:Landroidx/mediarouter/media/f;

.field public f:Lcom/shabakaty/downloader/aq2;

.field public g:Landroidx/mediarouter/app/MediaRouteButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/q2;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/f;->c:Landroidx/mediarouter/media/f;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/media/f;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/aq2;->a:Lcom/shabakaty/downloader/aq2;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Lcom/shabakaty/downloader/aq2;

    .line 4
    invoke-static {p1}, Landroidx/mediarouter/media/g;->d(Landroid/content/Context;)Landroidx/mediarouter/media/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->c:Landroidx/mediarouter/media/g;

    .line 5
    new-instance p1, Landroidx/mediarouter/app/MediaRouteActionProvider$a;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;-><init>(Landroidx/mediarouter/app/MediaRouteActionProvider;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Landroidx/mediarouter/app/MediaRouteActionProvider$a;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->c:Landroidx/mediarouter/media/g;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/media/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/media/g;->h(Landroidx/mediarouter/media/f;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public c()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz v0, :cond_0

    const-string v0, "MRActionProvider"

    const-string v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old menu item..."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/q2;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    .line 8
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/media/f;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Landroidx/mediarouter/media/f;)V

    .line 9
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setAlwaysVisible(Z)V

    .line 10
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Lcom/shabakaty/downloader/aq2;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setDialogFactory(Lcom/shabakaty/downloader/aq2;)V

    .line 11
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q2;->b:Lcom/shabakaty/downloader/q2$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q2;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/q2;->b:Lcom/shabakaty/downloader/q2$a;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->b()Z

    check-cast v0, Landroidx/appcompat/view/menu/g$a;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/g$a;->a:Landroidx/appcompat/view/menu/g;

    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/appcompat/view/menu/e;->h:Z

    .line 5
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->p(Z)V

    :cond_0
    return-void
.end method
