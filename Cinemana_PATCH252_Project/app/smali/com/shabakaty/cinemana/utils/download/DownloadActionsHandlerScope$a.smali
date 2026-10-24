.class public final Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;
.super Lcom/shabakaty/downloader/xd0;
.source "DownloadsActionsHandler.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope"
    f = "DownloadsActionsHandler.kt"
    l = {
        0x92
    }
    m = "collectionExists"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->d(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

.field public w:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->v:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->w:I

    iget-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->v:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->d(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
