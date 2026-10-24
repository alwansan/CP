.class public Lcom/shabakaty/downloader/xo;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# direct methods
.method public static a()Lcom/shabakaty/downloader/wo;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yo;-><init>(ILcom/shabakaty/downloader/io2;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/c13;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c13;-><init>()V

    return-object v0
.end method
