.class public final Lcom/shabakaty/downloader/xt1;
.super Lcom/shabakaty/downloader/ej;
.source "HomeFranchisesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
        "Lcom/shabakaty/downloader/t42;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/bm1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p2}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/xt1;->d:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/xt1;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/ej;->getItemCount()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shabakaty/downloader/ej;->getItemCount()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/xt1;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0d0098

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0099

    :goto_0
    return p1
.end method

.method public i(I)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/xt1;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0d0098

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0099

    :goto_0
    return p1
.end method
