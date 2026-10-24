.class public final Lcom/shabakaty/downloader/mc4$a;
.super Lcom/shabakaty/downloader/ui4;
.source "StateListener.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.StateListener$completed$1"
    f = "StateListener.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mc4;->completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/mc4;

.field public final synthetic x:Lcom/liulishuo/filedownloader/BaseDownloadTask;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/mc4;",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/mc4$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/mc4$a;->w:Lcom/shabakaty/downloader/mc4;

    iput-object p2, p0, Lcom/shabakaty/downloader/mc4$a;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/mc4$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4$a;->w:Lcom/shabakaty/downloader/mc4;

    iget-object v1, p0, Lcom/shabakaty/downloader/mc4$a;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/mc4$a;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/mc4$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/mc4$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4$a;->w:Lcom/shabakaty/downloader/mc4;

    iget-object v1, p0, Lcom/shabakaty/downloader/mc4$a;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/mc4$a;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/mc4$a;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/mc4$a;->w:Lcom/shabakaty/downloader/mc4;

    .line 2
    iget-object v3, p1, Lcom/shabakaty/downloader/mc4;->a:Lcom/shabakaty/downloader/qd4;

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/mc4$a;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    sget-object v5, Lcom/shabakaty/downloader/xc4;->y:Lcom/shabakaty/downloader/xc4;

    const/4 v6, 0x0

    const/4 v8, 0x4

    iput v2, p0, Lcom/shabakaty/downloader/mc4$a;->v:I

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/qd4;->e(Lcom/shabakaty/downloader/qd4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/mc4$a;->w:Lcom/shabakaty/downloader/mc4;

    iget-object v3, v3, Lcom/shabakaty/downloader/mc4;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/shabakaty/downloader/mc4$a;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    const-string v5, "DOWNLOAD_DB_COMPLETED_CONFIRMED"

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v5, "DB_COMMITTED"

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Queue110;->terminal(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/features/MkvStateStore;->markQueuedForTask(Landroid/content/Context;Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvReconciler;->start(Landroid/content/Context;)V

    const-string v5, "COMPLETED"

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->markState(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
