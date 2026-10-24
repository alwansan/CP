.class public Lcom/shabakaty/downloader/n85;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/g24;

.field public final synthetic s:Lcom/shabakaty/downloader/p85;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p85;Lcom/shabakaty/downloader/g24;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/n85;->s:Lcom/shabakaty/downloader/p85;

    iput-object p2, p0, Lcom/shabakaty/downloader/n85;->r:Lcom/shabakaty/downloader/g24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/n85;->s:Lcom/shabakaty/downloader/p85;

    iget-object v4, v4, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v4, v4, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/n85;->s:Lcom/shabakaty/downloader/p85;

    iget-object v1, v0, Lcom/shabakaty/downloader/p85;->w:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->d()Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/p85;->I:Lcom/shabakaty/downloader/pi2;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/n85;->r:Lcom/shabakaty/downloader/g24;

    iget-object v1, p0, Lcom/shabakaty/downloader/n85;->s:Lcom/shabakaty/downloader/p85;

    iget-object v1, v1, Lcom/shabakaty/downloader/p85;->I:Lcom/shabakaty/downloader/pi2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/g24;->l(Lcom/shabakaty/downloader/pi2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/n85;->r:Lcom/shabakaty/downloader/g24;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/g24;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
