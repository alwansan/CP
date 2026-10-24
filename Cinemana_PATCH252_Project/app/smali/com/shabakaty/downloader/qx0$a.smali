.class public final Lcom/shabakaty/downloader/qx0$a;
.super Lcom/shabakaty/downloader/xd0;
.source "DownloadItemsUseCases.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsUseCases"
    f = "DownloadItemsUseCases.kt"
    l = {
        0x77
    }
    m = "dbContainsItem"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qx0;->b(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Lcom/shabakaty/downloader/qx0;

.field public w:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qx0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qx0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/qx0$a;->v:Lcom/shabakaty/downloader/qx0;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/qx0$a;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/qx0$a;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/qx0$a;->w:I

    iget-object p1, p0, Lcom/shabakaty/downloader/qx0$a;->v:Lcom/shabakaty/downloader/qx0;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/qx0;->b(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
