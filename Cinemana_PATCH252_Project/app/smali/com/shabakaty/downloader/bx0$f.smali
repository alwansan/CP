.class public final Lcom/shabakaty/downloader/bx0$f;
.super Lcom/shabakaty/downloader/xd0;
.source "DownloadItemsFragment.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsFragment"
    f = "DownloadItemsFragment.kt"
    l = {
        0x13f
    }
    m = "resumePausedDownloadVideo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bx0;->m2(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Lcom/shabakaty/downloader/bx0;

.field public w:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bx0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/bx0$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/bx0$f;->v:Lcom/shabakaty/downloader/bx0;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/bx0$f;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/bx0$f;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/bx0$f;->w:I

    iget-object p1, p0, Lcom/shabakaty/downloader/bx0$f;->v:Lcom/shabakaty/downloader/bx0;

    sget v0, Lcom/shabakaty/downloader/bx0;->z:I

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/bx0;->m2(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
