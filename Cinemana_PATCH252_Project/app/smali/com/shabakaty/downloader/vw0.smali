.class public final Lcom/shabakaty/downloader/vw0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadItemsFragment.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/bx0;

.field public final synthetic s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/vw0;->r:Lcom/shabakaty/downloader/bx0;

    iput-object p2, p0, Lcom/shabakaty/downloader/vw0;->s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw0;->r:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/vw0;->s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    sget v2, Lcom/shabakaty/downloader/bx0;->z:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bx0;->l2(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
