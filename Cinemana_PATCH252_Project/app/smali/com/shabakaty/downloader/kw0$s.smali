.class public Lcom/shabakaty/downloader/kw0$s;
.super Lcom/shabakaty/downloader/x31;
.source "DownloadDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kw0;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/x31<",
        "Lcom/shabakaty/downloader/gz0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/x31;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `DownloadsCollectionItem` (`id`,`name`,`image`) VALUES (nullif(?, 0),?,?)"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/gz0;

    .line 2
    iget v0, p2, Lcom/shabakaty/downloader/gz0;->r:I

    int-to-long v0, v0

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object p2, p2, Lcom/shabakaty/downloader/gz0;->t:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p2, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
