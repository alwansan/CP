.class public final synthetic Lcom/shabakaty/downloader/n90;
.super Ljava/lang/Object;
.source "Config.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/o90;Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/o90;
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/shabakaty/downloader/k83;->s:Lcom/shabakaty/downloader/k83;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object p1

    :goto_0
    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/o90;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o90$a;

    .line 5
    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/o90;->c(Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;

    move-result-object v2

    .line 6
    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/o90;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v1, v2, v3}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object p0

    return-object p0
.end method
