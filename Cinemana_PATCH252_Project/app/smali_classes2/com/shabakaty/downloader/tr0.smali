.class public final Lcom/shabakaty/downloader/tr0;
.super Lcom/shabakaty/downloader/fd;
.source "DeserializedArrayValue.kt"


# instance fields
.field public final c:Lcom/shabakaty/downloader/qe2;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/qe2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;",
            "Lcom/shabakaty/downloader/qe2;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tr0$a;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/tr0$a;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/fd;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/tm1;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/tr0;->c:Lcom/shabakaty/downloader/qe2;

    return-void
.end method
