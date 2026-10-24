.class public final Lcom/shabakaty/downloader/ig7;
.super Lcom/shabakaty/downloader/bh5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "internal.platform"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    new-instance v1, Lcom/shabakaty/downloader/zf7;

    .line 2
    invoke-direct {v1}, Lcom/shabakaty/downloader/zf7;-><init>()V

    const-string v2, "getVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1
.end method
