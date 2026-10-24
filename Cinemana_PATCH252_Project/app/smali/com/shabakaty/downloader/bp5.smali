.class public Lcom/shabakaty/downloader/bp5;
.super Lcom/shabakaty/downloader/co5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/gv5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/co5;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 1
    check-cast p2, Ljava/util/List;

    .line 2
    instance-of v0, p2, Ljava/util/RandomAccess;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/wl5;

    .line 3
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shabakaty/downloader/wl5;-><init>(Lcom/shabakaty/downloader/co5;Ljava/lang/Object;Ljava/util/List;Lcom/shabakaty/downloader/kn5;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/xn5;

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shabakaty/downloader/xn5;-><init>(Lcom/shabakaty/downloader/co5;Ljava/lang/Object;Ljava/util/List;Lcom/shabakaty/downloader/kn5;)V

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co5;->t:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/co5;->c()Ljava/util/Collection;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/bp5;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
