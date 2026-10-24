.class public final Lcom/shabakaty/downloader/kv0;
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


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/kv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/kv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/mz0;->i(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
