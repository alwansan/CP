.class public final Lcom/shabakaty/downloader/rd4;
.super Lcom/liulishuo/filedownloader/FileDownloadConnectListener;
.source "StorageUtils.kt"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/qd4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qd4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/rd4;->a:Lcom/shabakaty/downloader/qd4;

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "file downloader service connected"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    return-void
.end method

.method public disconnected()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "file downloader service disconnected"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rd4;->a:Lcom/shabakaty/downloader/qd4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    const-string v2, "setting all downloads to inactive"

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/qd4;->c:Lcom/shabakaty/downloader/se0;

    new-instance v5, Lcom/shabakaty/downloader/sd4;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/shabakaty/downloader/sd4;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method
