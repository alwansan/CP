.class public final synthetic Lcom/shabakaty/downloader/sp5;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/shabakaty/downloader/gg5;Ljava/util/HashMap;Lcom/shabakaty/downloader/gg5;Ljava/util/HashMap;I)Lcom/shabakaty/downloader/u74;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    const-class p0, Lcom/shabakaty/downloader/gg5;

    .line 2
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance p0, Lcom/shabakaty/downloader/u74;

    invoke-direct {p0, p4}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    return-object p0
.end method
