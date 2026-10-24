.class public final Lcom/shabakaty/downloader/bc1;
.super Lcom/shabakaty/downloader/xj;
.source "FinishedNotification.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/xj;-><init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/content/Context;Landroid/app/NotificationManager;)V

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
    iget-object v0, p0, Lcom/shabakaty/downloader/xj;->a:Lcom/shabakaty/downloader/d13;

    const-string v1, "notificationModel"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/d13;->v:I

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    const/4 v0, 0x2

    new-array v2, v0, [J

    .line 5
    fill-array-data v2, :array_0

    .line 6
    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    const/4 v1, 0x0

    .line 7
    iput v1, p1, Lcom/shabakaty/downloader/m03;->j:I

    const v2, -0xff0100

    const/16 v3, 0x5dc

    const/16 v4, 0xbb8

    .line 8
    invoke-virtual {p1, v2, v3, v4}, Lcom/shabakaty/downloader/m03;->k(III)Lcom/shabakaty/downloader/m03;

    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 9
    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const/16 v0, 0x10

    .line 11
    invoke-virtual {p1, v0, v3}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const-string v0, "com.shabakaty.downloader.GROUP_KEY"

    .line 12
    iput-object v0, p1, Lcom/shabakaty/downloader/m03;->q:Ljava/lang/String;

    return-object p1

    nop

    :array_0
    .array-data 8
        0x1f4
        0x3e8
    .end array-data
.end method
