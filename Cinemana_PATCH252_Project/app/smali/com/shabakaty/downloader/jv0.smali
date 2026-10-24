.class public final Lcom/shabakaty/downloader/jv0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/dy0;",
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

    iput-object p1, p0, Lcom/shabakaty/downloader/jv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    iput-object p2, p0, Lcom/shabakaty/downloader/jv0;->s:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dy0;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/hv0;

    iget-object v1, p0, Lcom/shabakaty/downloader/jv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    iget-object v2, p0, Lcom/shabakaty/downloader/jv0;->s:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/hv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/dy0;->c(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/dy0;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/iv0;

    iget-object v1, p0, Lcom/shabakaty/downloader/jv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iv0;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/dy0;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/dy0;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
