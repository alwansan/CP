.class public final Lcom/shabakaty/downloader/dx0;
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

.field public final synthetic t:Lcom/shabakaty/downloader/gz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/gz0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/dx0;->r:Lcom/shabakaty/downloader/bx0;

    iput-object p2, p0, Lcom/shabakaty/downloader/dx0;->s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iput-object p3, p0, Lcom/shabakaty/downloader/dx0;->t:Lcom/shabakaty/downloader/gz0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dx0;->r:Lcom/shabakaty/downloader/bx0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by0;

    iget-object v1, p0, Lcom/shabakaty/downloader/dx0;->s:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v2, p0, Lcom/shabakaty/downloader/dx0;->t:Lcom/shabakaty/downloader/gz0;

    const-string v3, "cinemanaDownloadItem"

    .line 2
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "collection"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v4

    new-instance v7, Lcom/shabakaty/downloader/xx0;

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/shabakaty/downloader/xx0;-><init>(Lcom/shabakaty/downloader/by0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
