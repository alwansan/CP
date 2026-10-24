.class public final Lcom/shabakaty/downloader/aa0;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# direct methods
.method public static a(Landroid/content/res/Configuration;)Lcom/shabakaty/downloader/pj2;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/pj2;

    new-instance v1, Lcom/shabakaty/downloader/tj2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/tj2;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pj2;-><init>(Lcom/shabakaty/downloader/sj2;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/pj2;->a([Ljava/util/Locale;)Lcom/shabakaty/downloader/pj2;

    move-result-object p0

    return-object p0
.end method
