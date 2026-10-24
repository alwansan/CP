.class public final Lcom/shabakaty/downloader/v05;
.super Lcom/shabakaty/downloader/xd0;
.source "VideoInfoFragment.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.video_info.VideoInfoFragment"
    f = "VideoInfoFragment.kt"
    l = {
        0xd9
    }
    m = "bindDownloadService"
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/d15;

.field public y:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d15;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/v05;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/v05;->x:Lcom/shabakaty/downloader/d15;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/v05;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/v05;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/v05;->y:I

    iget-object p1, p0, Lcom/shabakaty/downloader/v05;->x:Lcom/shabakaty/downloader/d15;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/shabakaty/downloader/d15;->h2(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
