.class public final Lcom/shabakaty/downloader/lv0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/pw0;",
        "Ljava/lang/Float;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/lv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    iget-object v0, p0, Lcom/shabakaty/downloader/lv0;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v1, "videoModel"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/mz0;->e:Lcom/shabakaty/downloader/hn1;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
