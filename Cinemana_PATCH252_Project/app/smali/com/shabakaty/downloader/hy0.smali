.class public final Lcom/shabakaty/downloader/hy0;
.super Lcom/shabakaty/downloader/xd0;
.source "DownloadManager.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager"
    f = "DownloadManager.kt"
    l = {
        0xc9,
        0xe2
    }
    m = "deleteDownloadedFile"
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:I

.field public synthetic x:Ljava/lang/Object;

.field public final synthetic y:Lcom/shabakaty/downloader/ey0;

.field public z:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ey0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/hy0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/hy0;->y:Lcom/shabakaty/downloader/ey0;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/shabakaty/downloader/hy0;->x:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/hy0;->z:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/hy0;->z:I

    iget-object p1, p0, Lcom/shabakaty/downloader/hy0;->y:Lcom/shabakaty/downloader/ey0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/shabakaty/downloader/ey0;->k(Lcom/shabakaty/downloader/ey0;ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
