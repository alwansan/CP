.class public final Lcom/shabakaty/downloader/mc4;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "StateListener.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/qd4;

.field public b:Lcom/shabakaty/downloader/i13;

.field public c:Landroid/content/Context;

.field public final d:Lcom/shabakaty/downloader/se0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/i13;Landroid/content/Context;)V
    .locals 1

    const-string v0, "storageUtils"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationUtils"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mc4;->a:Lcom/shabakaty/downloader/qd4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mc4;->b:Lcom/shabakaty/downloader/i13;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/mc4;->d:Lcom/shabakaty/downloader/se0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/hn1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->d:Lcom/shabakaty/downloader/se0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 8

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    const-string v1, "DOWNLOAD_COMPLETED"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "download listener completed callback with task:\n"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/mc4$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/mc4$a;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mc4;->a(Lcom/shabakaty/downloader/hn1;)V

    const-string v0, "COMPLETED"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/CnmDownloadQueue;->release(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->b:Lcom/shabakaty/downloader/i13;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result p1

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/i13;->d:Lcom/shabakaty/downloader/se0;

    new-instance v5, Lcom/shabakaty/downloader/h13;

    invoke-direct {v5, v0, p1, v1}, Lcom/shabakaty/downloader/h13;-><init>(Lcom/shabakaty/downloader/i13;ILcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    const-string v1, "DOWNLOAD_ERROR"

    invoke-static {v0, v1, p1, p2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "download listener error callback with task:\n"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/lw0;->a(Ljava/lang/Throwable;)V

    .line 3
    instance-of v0, p2, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    const v1, 0x7f1201e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/mc4$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shabakaty/downloader/mc4$b;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mc4;->a(Lcom/shabakaty/downloader/hn1;)V

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->start(Landroid/content/Context;)V

    const-string v0, "ERROR"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->markState(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const-string v0, "ERROR"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/CnmDownloadQueue;->release(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method public paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 3

    const-string p2, "task"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    const-string v1, "DOWNLOAD_PAUSED"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string p3, "download listener paused callback with task:\n"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/mc4$c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/shabakaty/downloader/mc4$c;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/mc4;->a(Lcom/shabakaty/downloader/hn1;)V

    const-string p2, "PAUSED"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/CnmDownloadQueue;->release(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method public pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 3

    const-string p2, "task"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    const-string v1, "DOWNLOAD_PENDING"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string p3, "download listener pending callback with task:\n"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/mc4$d;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/shabakaty/downloader/mc4$d;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/mc4;->a(Lcom/shabakaty/downloader/hn1;)V

    return-void
.end method

.method public progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    int-to-long v1, p3

    invoke-static {v0, p1, p2, v1, v2}, Lcom/shabakaty/cinemana/features/DownloadTrace;->progress(Landroid/content/Context;Ljava/lang/Object;IJ)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string p3, "download listener progress callback with task:\n"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/mc4$e;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/shabakaty/downloader/mc4$e;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/mc4;->a(Lcom/shabakaty/downloader/hn1;)V

    return-void
.end method

.method public started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    const-string v1, "DOWNLOAD_STARTED"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "download listener started callback with task:\n"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/mc4$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/mc4$f;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mc4;->a(Lcom/shabakaty/downloader/hn1;)V

    return-void
.end method

.method public warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    const-string v1, "DOWNLOAD_WARN"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v0, "WARN"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/CnmDownloadQueue;->release(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "download listener warn callback with task:\n"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    return-void
.end method
