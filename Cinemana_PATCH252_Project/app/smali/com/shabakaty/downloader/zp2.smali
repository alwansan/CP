.class public Lcom/shabakaty/downloader/zp2;
.super Lcom/shabakaty/downloader/ct0;
.source "MediaRouteControllerDialogFragment.java"


# instance fields
.field public H:Z

.field public I:Landroid/app/Dialog;

.field public J:Landroidx/mediarouter/media/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ct0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/zp2;->H:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ct0;->x:Z

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Z1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/zp2;->H:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Landroidx/mediarouter/app/e;

    invoke-direct {v0, p1}, Landroidx/mediarouter/app/e;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/zp2;->I:Landroid/app/Dialog;

    .line 5
    check-cast v0, Landroidx/mediarouter/app/e;

    iget-object p1, p0, Lcom/shabakaty/downloader/zp2;->J:Landroidx/mediarouter/media/f;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/e;->f(Landroidx/mediarouter/media/f;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    new-instance v0, Landroidx/mediarouter/app/b;

    invoke-direct {v0, p1}, Landroidx/mediarouter/app/b;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/zp2;->I:Landroid/app/Dialog;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/zp2;->I:Landroid/app/Dialog;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zp2;->I:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zp2;->H:Z

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->h()V

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Landroidx/mediarouter/app/b;

    invoke-virtual {p1}, Landroidx/mediarouter/app/b;->q()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ct0;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zp2;->I:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/zp2;->H:Z

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Landroidx/mediarouter/app/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/b;->d(Z)V

    :cond_0
    return-void
.end method
