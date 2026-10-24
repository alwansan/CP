.class public final Lcom/shabakaty/downloader/db3;
.super Lcom/shabakaty/downloader/xd0;
.source "PausedDownloadHandler.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.PausedDownloadHandler"
    f = "PausedDownloadHandler.kt"
    l = {
        0x1a,
        0x1c
    }
    m = "handlePauseClick"
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

.field public y:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/db3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/db3;->x:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/db3;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/db3;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/db3;->y:I

    iget-object p1, p0, Lcom/shabakaty/downloader/db3;->x:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;->p(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
