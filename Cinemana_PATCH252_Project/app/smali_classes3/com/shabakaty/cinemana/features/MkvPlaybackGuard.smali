.class public final Lcom/shabakaty/cinemana/features/MkvPlaybackGuard;
.super Ljava/lang/Object;
.source "MkvPlaybackGuard.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockIfBusy(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Commit105;->repair(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->message(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video is waiting for MKV conversion"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v0, "ar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "\u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0641\u064a \u0627\u0646\u062a\u0638\u0627\u0631 \u0627\u0644\u062a\u062d\u0648\u064a\u0644 \u0625\u0644\u0649 MKV"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v1, v2

    :catch_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->guardToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->isBusy(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->message(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->guardToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
