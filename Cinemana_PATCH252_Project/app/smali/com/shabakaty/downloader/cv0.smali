.class public final Lcom/shabakaty/downloader/cv0;
.super Lcom/shabakaty/downloader/xd0;
.source "DownloadsActionsHandler.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope"
    f = "DownloadsActionsHandler.kt"
    l = {
        0xa2,
        0xa3
    }
    m = "deleteDownloadedVideo"
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

.field public y:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/cv0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/cv0;->x:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/cv0;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/cv0;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/cv0;->y:I

    iget-object p1, p0, Lcom/shabakaty/downloader/cv0;->x:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->a(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
