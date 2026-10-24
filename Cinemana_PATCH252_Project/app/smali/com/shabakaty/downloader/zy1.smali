.class public final synthetic Lcom/shabakaty/downloader/zy1;
.super Ljava/lang/Object;
.source "ImageInputConfig.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/az1;)I
    .locals 1
    .param p0, "_this"    # Lcom/shabakaty/downloader/az1;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/az1;->a:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/jn3;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
