.class public final Lcom/shabakaty/downloader/d50;
.super Ljava/lang/Object;
.source "DownloadsCollectionEntity.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/gz0;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 4
    new-instance v6, Lcom/shabakaty/downloader/gz0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/gz0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 6
    invoke-direct {p0, v6, v0}, Lcom/shabakaty/downloader/d50;-><init>(Lcom/shabakaty/downloader/gz0;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gz0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gz0;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadsCollectionItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videos"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d50;->a:Lcom/shabakaty/downloader/gz0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/d50;->b:Ljava/util/List;

    return-void
.end method
