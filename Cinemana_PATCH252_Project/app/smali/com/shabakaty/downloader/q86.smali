.class public final synthetic Lcom/shabakaty/downloader/q86;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    const-class p0, Lcom/shabakaty/downloader/u16;

    .line 2
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method
