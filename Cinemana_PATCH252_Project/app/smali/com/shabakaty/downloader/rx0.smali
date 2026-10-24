.class public final Lcom/shabakaty/downloader/rx0;
.super Lcom/shabakaty/downloader/xd0;
.source "DownloadItemsUseCases.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsUseCases"
    f = "DownloadItemsUseCases.kt"
    l = {
        0x50
    }
    m = "filterEpisodesOf"
.end annotation


# instance fields
.field public final synthetic A:Lcom/shabakaty/downloader/qx0;

.field public B:I

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:Ljava/lang/Object;

.field public synthetic z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qx0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/rx0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/rx0;->A:Lcom/shabakaty/downloader/qx0;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/rx0;->z:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/rx0;->B:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/rx0;->B:I

    iget-object p1, p0, Lcom/shabakaty/downloader/rx0;->A:Lcom/shabakaty/downloader/qx0;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lcom/shabakaty/downloader/qx0;->a(Lcom/shabakaty/downloader/qx0;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
