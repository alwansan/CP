.class public final Lcom/shabakaty/downloader/hq5;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/br5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br5;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/hq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/hq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/br5;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/hq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/gp5;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/gp5;-><init>(Lcom/shabakaty/downloader/br5;I)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/shabakaty/downloader/hq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hq5;->r:Lcom/shabakaty/downloader/br5;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/br5;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/br5;->A:Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/downloader/br5;->A:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/hq5;->r:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->size()I

    move-result v0

    return v0
.end method
