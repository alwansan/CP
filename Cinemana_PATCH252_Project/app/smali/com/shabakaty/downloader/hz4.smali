.class public Lcom/shabakaty/downloader/hz4;
.super Ljava/lang/Object;
.source "UtilsDisplay.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/m03;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m03;

    const v1, 0x7f120029

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    .line 3
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/m03;->g(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 4
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    new-instance p0, Lcom/shabakaty/downloader/l03;

    invoke-direct {p0}, Lcom/shabakaty/downloader/l03;-><init>()V

    .line 5
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/l03;->k(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/l03;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/m03;->m(Lcom/shabakaty/downloader/r03;)Lcom/shabakaty/downloader/m03;

    .line 6
    iget-object p0, v0, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput p4, p0, Landroid/app/Notification;->icon:I

    const/4 p0, 0x2

    .line 7
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/m03;->l(Landroid/net/Uri;)Lcom/shabakaty/downloader/m03;

    const/16 p0, 0x8

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const/16 p0, 0x10

    .line 9
    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f120029

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12002a

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method
