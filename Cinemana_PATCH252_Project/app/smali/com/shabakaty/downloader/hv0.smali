.class public final Lcom/shabakaty/downloader/hv0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/pw0;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    iput-object p2, p0, Lcom/shabakaty/downloader/hv0;->s:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/hv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    iget-object v1, p0, Lcom/shabakaty/downloader/hv0;->s:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v3, "subtitle"

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/mz0;->h:Lcom/shabakaty/downloader/jn1;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1, p1, v0}, Lcom/shabakaty/downloader/jn1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
