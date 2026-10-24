.class public final Lcom/shabakaty/downloader/jz0;
.super Lcom/shabakaty/downloader/xk;
.source "DownloadsCollectionsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/iw0;

.field public g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gz0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/iw0;)V
    .locals 1

    const-string v0, "downloadCollectionsUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jz0;->f:Lcom/shabakaty/downloader/iw0;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/iw0;->a:Lcom/shabakaty/downloader/jw0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/jw0;->I()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/hw0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hw0;-><init>()V

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/yp4;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/rn1;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/jz0;->g:Landroidx/lifecycle/LiveData;

    return-void
.end method
