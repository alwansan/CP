.class public final Lcom/shabakaty/downloader/jj;
.super Lcom/shabakaty/downloader/ej;
.source "BaseVideosAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "Lcom/shabakaty/downloader/f42;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/pk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;",
            "Lcom/shabakaty/downloader/pk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->itemId(Ljava/lang/Object;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const p1, 0x7f0d008f

    return p1
.end method

.method public i(I)I
    .locals 0

    const p1, 0x7f0d008f

    return p1
.end method
