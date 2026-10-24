.class public final Lcom/shabakaty/downloader/jk5;
.super Lcom/shabakaty/downloader/yv5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yk5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yk5;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jk5;->r:Lcom/shabakaty/downloader/yk5;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yv5;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jk5;->r:Lcom/shabakaty/downloader/yk5;

    iget-object v0, v0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/qk5;

    iget-object v1, p0, Lcom/shabakaty/downloader/jk5;->r:Lcom/shabakaty/downloader/yk5;

    .line 1
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/qk5;-><init>(Lcom/shabakaty/downloader/yk5;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/jk5;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/shabakaty/downloader/jk5;->r:Lcom/shabakaty/downloader/yk5;

    iget-object v0, v0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/co5;->t:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, v0, Lcom/shabakaty/downloader/co5;->u:I

    sub-int/2addr p1, v1

    iput p1, v0, Lcom/shabakaty/downloader/co5;->u:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
