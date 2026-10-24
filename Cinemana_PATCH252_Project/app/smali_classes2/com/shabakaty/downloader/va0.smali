.class public Lcom/shabakaty/downloader/va0;
.super Ljava/lang/Object;
.source "ConfigurationUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Lcom/shabakaty/downloader/ua0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ua0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ua0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/va0;->a:Lcom/shabakaty/downloader/ua0;

    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/shabakaty/downloader/z90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/z90;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/va0;->a:Lcom/shabakaty/downloader/ua0;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/ua0;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/shabakaty/downloader/z90;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/Class;)Lcom/shabakaty/downloader/z90;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/z90;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "ZENDESK_CONFIGURATION"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Lcom/shabakaty/downloader/z90;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
