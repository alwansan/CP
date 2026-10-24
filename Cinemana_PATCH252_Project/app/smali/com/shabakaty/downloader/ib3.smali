.class public final Lcom/shabakaty/downloader/ib3;
.super Ljava/lang/Object;
.source "PausedDownloadHandler.kt"


# direct methods
.method public static a(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/ib3$a;->r:Lcom/shabakaty/downloader/ib3$a;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "scope"

    .line 2
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p3, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-direct {p3, p1, p0}, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/ib3$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
