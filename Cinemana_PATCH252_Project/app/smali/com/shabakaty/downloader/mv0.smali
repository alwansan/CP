.class public final Lcom/shabakaty/downloader/mv0;
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


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dy0;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/kv0;

    iget-object v1, p0, Lcom/shabakaty/downloader/mv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/dy0;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/dy0;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/lv0;

    iget-object v1, p0, Lcom/shabakaty/downloader/mv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/dy0;->b(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/dy0;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
