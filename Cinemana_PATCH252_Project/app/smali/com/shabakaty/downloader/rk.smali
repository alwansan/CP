.class public final Lcom/shabakaty/downloader/rk;
.super Lcom/shabakaty/downloader/ej;
.source "BaseVideosAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "Lcom/shabakaty/downloader/d42;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pk;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    return-void
.end method


# virtual methods
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
