.class public final synthetic Lcom/shabakaty/downloader/iv0;
.super Lcom/shabakaty/downloader/co1;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    const/4 v1, 0x0

    const-string v4, "handleDownloadCanceledOrDeleted"

    const-string v5, "handleDownloadCanceledOrDeleted()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/mz0;->i(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
