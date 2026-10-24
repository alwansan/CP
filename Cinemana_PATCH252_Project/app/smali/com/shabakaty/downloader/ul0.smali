.class public final synthetic Lcom/shabakaty/downloader/ul0;
.super Ljava/lang/Object;
.source "DataSource.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/vl0;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/vl0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
