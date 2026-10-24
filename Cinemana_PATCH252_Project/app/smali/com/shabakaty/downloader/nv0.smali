.class public final Lcom/shabakaty/downloader/nv0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

.field public final synthetic s:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/views/DownloadButton;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/views/DownloadButton;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/nv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    iput-object p2, p0, Lcom/shabakaty/downloader/nv0;->s:Lcom/shabakaty/downloader/tm1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/nv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    iget-boolean v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->v:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/cinemana/pro/permissions/DownloadPermissionFlow;->afterReturn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->v:Z

    iget-object v2, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->u:Lcom/shabakaty/downloader/views/DownloadButton;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/shabakaty/downloader/nv0;->s:Lcom/shabakaty/downloader/tm1;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cinemana/pro/permissions/DownloadPermissionFlow;->hasPending()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->v:Z

    :cond_2
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
