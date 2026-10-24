.class public final synthetic Lcom/shabakaty/downloader/r91;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/s91;Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;
    .locals 0
    .param p0, "_this"    # Lcom/shabakaty/downloader/s91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/s91;->c()[Lcom/shabakaty/downloader/n91;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b()[Lcom/shabakaty/downloader/n91;
    .locals 1

    invoke-static {}, Lcom/shabakaty/downloader/r91;->c()[Lcom/shabakaty/downloader/n91;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()[Lcom/shabakaty/downloader/n91;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/shabakaty/downloader/n91;

    return-object v0
.end method
