.class public Lcom/shabakaty/downloader/sq1;
.super Ljava/lang/Object;
.source "GooglePlayServicesUpgradePrompt.java"


# direct methods
.method public static a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/onesignal/o0;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/16 v3, 0x80

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Market"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    sget-object v1, Lcom/onesignal/q0;->z:Lcom/onesignal/i0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v2, "PREFS_OS_DISABLE_GMS_MISSING_PROMPT"

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "GT_DO_NOT_SHOW_MISSING_GPS"

    .line 8
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/sq1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sq1$a;-><init>()V

    invoke-static {v0}, Lcom/onesignal/o0;->x(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method
