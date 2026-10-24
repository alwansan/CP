.class public final Lcom/shabakaty/downloader/uu1;
.super Lcom/shabakaty/downloader/ej;
.source "HomeSliderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "Lcom/shabakaty/downloader/h42;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/v84;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;",
            "Lcom/shabakaty/downloader/v84;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    return-void
.end method


# virtual methods
.method public i(I)I
    .locals 0

    const p1, 0x7f0d00a4

    return p1
.end method
