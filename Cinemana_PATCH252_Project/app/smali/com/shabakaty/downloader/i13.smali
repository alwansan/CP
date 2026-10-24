.class public final Lcom/shabakaty/downloader/i13;
.super Ljava/lang/Object;
.source "NotificationUtils.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/uz0;

.field public b:Landroid/content/Context;

.field public c:Landroid/app/NotificationManager;

.field public final d:Lcom/shabakaty/downloader/se0;

.field public e:Lcom/shabakaty/downloader/lh3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uz0;Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/i13;->a:Lcom/shabakaty/downloader/uz0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/i13;->c:Landroid/app/NotificationManager;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/i13;->d:Lcom/shabakaty/downloader/se0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloader;->stopForeground(Z)V

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    const-class v2, Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/i13;->c:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x1343c9a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/i13;->e:Lcom/shabakaty/downloader/lh3;

    return-void
.end method
