.class public Lcom/shabakaty/downloader/kw0$r;
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
        "Lcom/shabakaty/downloader/p84;",
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

    const-string v0, "INSERT OR REPLACE INTO `SkippableSceneDB` (`id`,`parentId`,`start`,`end`,`controlLevel`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/p84;

    .line 2
    iget v0, p2, Lcom/shabakaty/downloader/p84;->r:I

    int-to-long v0, v0

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/p84;->s:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 7
    iget-wide v1, p2, Lcom/shabakaty/downloader/p84;->t:J

    .line 8
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    const/4 v0, 0x4

    .line 9
    iget-wide v1, p2, Lcom/shabakaty/downloader/p84;->u:J

    .line 10
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 11
    iget-object p2, p2, Lcom/shabakaty/downloader/p84;->v:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p2, :cond_1

    .line 12
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
