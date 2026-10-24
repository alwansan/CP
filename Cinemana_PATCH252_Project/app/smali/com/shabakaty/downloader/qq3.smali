.class public final Lcom/shabakaty/downloader/qq3;
.super Lcom/shabakaty/downloader/ej;
.source "RelatedVideosAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "Lcom/shabakaty/downloader/d42;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pq3;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    const/4 p1, 0x6

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/qq3;->d:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ej;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/qq3;->d:I

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const p1, 0x7f0d008e

    return p1
.end method

.method public i(I)I
    .locals 0

    const p1, 0x7f0d008e

    return p1
.end method
