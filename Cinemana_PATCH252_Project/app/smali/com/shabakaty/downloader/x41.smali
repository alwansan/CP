.class public final Lcom/shabakaty/downloader/x41;
.super Lcom/shabakaty/downloader/xj;
.source "ErrorNotification.kt"


# instance fields
.field public f:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/app/NotificationManager;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/shabakaty/downloader/xj;-><init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/content/Context;Landroid/app/NotificationManager;)V

    const/16 p1, 0x67

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xj;->e(I)I

    move-result p1

    const-class p2, Lcom/shabakaty/downloader/receivers/RetryDownloadBR;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xj;->b(ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/x41;->f:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xj;->a:Lcom/shabakaty/downloader/d13;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/d13;->r:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/m03;)Lcom/shabakaty/downloader/m03;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j03;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const v2, 0x7f12023c

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/x41;->f:Landroid/app/PendingIntent;

    const v3, 0x7f080170

    .line 5
    invoke-direct {v0, v3, v1, v2}, Lcom/shabakaty/downloader/j03;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/xj;->a:Lcom/shabakaty/downloader/d13;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const-string v3, "notificationModel"

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v1, v1, Lcom/shabakaty/downloader/d13;->x:I

    .line 10
    iget-object v3, p1, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v1, v3, Landroid/app/Notification;->icon:I

    const/4 v1, 0x2

    new-array v4, v1, [J

    .line 11
    fill-array-data v4, :array_0

    .line 12
    iput-object v4, v3, Landroid/app/Notification;->vibrate:[J

    const/4 v3, 0x0

    .line 13
    invoke-virtual {p1, v1, v3}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/m03;->b(Lcom/shabakaty/downloader/j03;)Lcom/shabakaty/downloader/m03;

    const/4 v0, 0x1

    .line 15
    iput v0, p1, Lcom/shabakaty/downloader/m03;->j:I

    const/high16 v1, -0x10000

    const/16 v3, 0x7d0

    .line 16
    invoke-virtual {p1, v1, v3, v3}, Lcom/shabakaty/downloader/m03;->k(III)Lcom/shabakaty/downloader/m03;

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const/16 v1, 0x10

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const v0, 0x7f1200e9

    .line 19
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    const-string v0, "com.shabakaty.downloader.GROUP_KEY"

    .line 20
    iput-object v0, p1, Lcom/shabakaty/downloader/m03;->q:Ljava/lang/String;

    return-object p1

    nop

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method
