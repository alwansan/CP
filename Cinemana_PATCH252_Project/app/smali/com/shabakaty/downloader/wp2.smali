.class public Lcom/shabakaty/downloader/wp2;
.super Lcom/shabakaty/downloader/ct0;
.source "MediaRouteChooserDialogFragment.java"


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
    iput-boolean v0, p0, Lcom/shabakaty/downloader/wp2;->H:Z

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
    iget-boolean p1, p0, Lcom/shabakaty/downloader/wp2;->H:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/dq2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/dq2;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/wp2;->I:Landroid/app/Dialog;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wp2;->d2()V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dq2;->b(Landroidx/mediarouter/media/f;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/vp2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vp2;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/wp2;->I:Landroid/app/Dialog;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wp2;->d2()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    .line 13
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vp2;->b(Landroidx/mediarouter/media/f;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/wp2;->I:Landroid/app/Dialog;

    return-object p1
.end method

.method public final d2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selector"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/f;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/f;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Landroidx/mediarouter/media/f;->c:Landroidx/mediarouter/media/f;

    iput-object v0, p0, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/wp2;->I:Landroid/app/Dialog;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wp2;->H:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/dq2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dq2;->c()V

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/vp2;

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/bq2;->a(Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void
.end method
