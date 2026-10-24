.class public final Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;
.super Lcom/shabakaty/downloader/xi;
.source "DownloadsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/w2;",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/bz0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/w2;",
        "",
        "Lcom/shabakaty/downloader/bz0;",
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
.field private modHasResumedBefore:Z

.field public final v:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d001d

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity$a;-><init>(Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;->v:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/bz0;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/bz0;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DOWNLOADS_ACTIVITY_CREATE"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;->v:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavController;

    const-string v0, "<this>"

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    const-string v1, "navigatorProvider"

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/ax2;

    const v2, 0x7f0a014d

    const/16 v3, 0x1bbd

    invoke-direct {v1, v0, v2, v3}, Lcom/shabakaty/downloader/ax2;-><init>(Landroidx/navigation/i;II)V

    .line 7
    invoke-static {v1, p0}, Lcom/shabakaty/downloader/uo1;->j(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ax2;->d()Landroidx/navigation/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavController;->p(Landroidx/navigation/d;Landroid/os/Bundle;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast p1, Lcom/shabakaty/downloader/w2;

    iget-object p1, p1, Lcom/shabakaty/downloader/w2;->M:Landroidx/appcompat/widget/Toolbar;

    const-string v0, "binding.downloadsToolbar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;->v:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v2, 0x2

    .line 13
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ol3;->h(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/shabakaty/downloader/xi;->onResume()V

    const-string v0, "DOWNLOADS_ACTIVITY_RESUME"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;->modHasResumedBefore:Z

    if-eqz v0, :cond_0

    const-string v0, "DOWNLOADS_ACTIVITY_RECREATE"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;->recreate()V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;->modHasResumedBefore:Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/shabakaty/downloader/xi;->onStart()V

    const-string v0, "DOWNLOADS_ACTIVITY_START"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "DOWNLOADS_ACTIVITY_STOP"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/shabakaty/downloader/xi;->onStop()V

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
