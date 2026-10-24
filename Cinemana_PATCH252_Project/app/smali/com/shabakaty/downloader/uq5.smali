.class public final Lcom/shabakaty/downloader/uq5;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/br5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br5;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/uq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/uq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/uq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/gp5;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/gp5;-><init>(Lcom/shabakaty/downloader/br5;I)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/uq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->size()I

    move-result v0

    return v0
.end method
