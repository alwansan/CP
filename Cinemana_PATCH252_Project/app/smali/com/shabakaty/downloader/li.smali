.class public Lcom/shabakaty/downloader/li;
.super Ljava/lang/Object;
.source "BadgeCountUpdater.java"


# static fields
.field public static a:I = -0x1


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Lcom/shabakaty/downloader/li;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    const-string v0, "com.onesignal.BadgeCount"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DISABLE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    sput p0, Lcom/shabakaty/downloader/li;->a:I

    goto :goto_1

    .line 6
    :cond_3
    sput v2, Lcom/shabakaty/downloader/li;->a:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    sput v1, Lcom/shabakaty/downloader/li;->a:I

    const/4 v0, 0x3

    const-string v3, "Error reading meta-data tag \'com.onesignal.BadgeCount\'. Disabling badge setting."

    .line 8
    invoke-static {v0, v3, p0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_1
    sget p0, Lcom/shabakaty/downloader/li;->a:I

    if-ne p0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static b(Lcom/shabakaty/downloader/p73;Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/li;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/o0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/r73;->a(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 4
    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    .line 5
    invoke-static {v3}, Lcom/shabakaty/downloader/v03;->c(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/li;->c(ILandroid/content/Context;)V

    goto :goto_3

    .line 7
    :cond_4
    invoke-static {}, Lcom/shabakaty/downloader/q73;->o()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/shabakaty/downloader/v03;->a:Ljava/lang/String;

    .line 8
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/q73;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "notification"

    invoke-virtual/range {v1 .. v9}, Lcom/shabakaty/downloader/q73;->k(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/li;->c(ILandroid/content/Context;)V

    :goto_3
    return-void
.end method

.method public static c(ILandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/li;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/m54;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/l54; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
