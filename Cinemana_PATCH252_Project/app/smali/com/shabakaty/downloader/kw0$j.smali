.class public Lcom/shabakaty/downloader/kw0$j;
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
        "Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;",
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

    const-string v0, "INSERT OR REPLACE INTO `SubtitleDb` (`id`,`parentId`,`downloadTaskId`,`name`,`type`,`extension`,`file`) VALUES (?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;

    .line 2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->parentId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 8
    iget v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->downloadTaskId:I

    int-to-long v1, v1

    .line 9
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 10
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->name:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->type:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 16
    :goto_3
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->extension:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 17
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 19
    :goto_4
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->file:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p2, :cond_5

    .line 20
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_5

    .line 21
    :cond_5
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_5
    return-void
.end method
