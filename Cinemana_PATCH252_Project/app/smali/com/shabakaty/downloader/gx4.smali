.class public final synthetic Lcom/shabakaty/downloader/gx4;
.super Ljava/lang/Object;
.source "UseCaseConfig.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/fu;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/hx4;

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/hx4;->p:Lcom/shabakaty/downloader/o90$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/fu;

    return-object p1
.end method

.method public static b(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14;)Lcom/shabakaty/downloader/u14;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/hx4;

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/hx4;->k:Lcom/shabakaty/downloader/o90$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u14;

    return-object p1
.end method

.method public static c(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14$d;)Lcom/shabakaty/downloader/u14$d;
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/hx4;

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/hx4;->m:Lcom/shabakaty/downloader/o90$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u14$d;

    return-object p1
.end method

.method public static d(Lcom/shabakaty/downloader/hx4;I)I
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/hx4;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hx4;->o:Lcom/shabakaty/downloader/o90$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
