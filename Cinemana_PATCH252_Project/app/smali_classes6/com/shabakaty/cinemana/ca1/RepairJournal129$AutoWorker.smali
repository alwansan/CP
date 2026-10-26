.class final Lcom/shabakaty/cinemana/ca1/RepairJournal129$AutoWorker;
.super Ljava/lang/Object;
.source "RepairJournal129.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final app:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/RepairJournal129$AutoWorker;->app:Landroid/content/Context;

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    const-wide/16 v0, 0x2ee0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :auto_interrupted
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :auto_failed

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/RepairJournal129$AutoWorker;->app:Landroid/content/Context;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :auto_first_done

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->start(Landroid/content/Context;Landroid/widget/TextView;)V

    :auto_first_done
    :try_start_1
    const-wide/16 v1, 0x7530

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :auto_interrupted
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :auto_failed

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/RepairJournal129$AutoWorker;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RepairJournal129;->hasPending(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :auto_done

    sget-object v1, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :auto_done

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->start(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :auto_done

    :auto_interrupted
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :auto_done

    :auto_failed
    move-exception v0

    :auto_done
    return-void
.end method
