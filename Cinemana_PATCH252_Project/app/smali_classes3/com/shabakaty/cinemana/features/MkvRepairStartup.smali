.class public final Lcom/shabakaty/cinemana/features/MkvRepairStartup;
.super Ljava/lang/Object;
.source "MkvRepairStartup.java"
.implements Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/MkvRepairStartup;->context:Landroid/content/Context;
    return-void
.end method

.method public run()V
    .locals 4

    :try_start_delay
    const-wide/16 v0, 0x61a8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_delay
    .catch Ljava/lang/InterruptedException; {:try_start_delay .. :try_end_delay} :interrupted

    :try_start_second_pass
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvRepairStartup;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->execute(Landroid/content/Context;)Ljava/lang/String;
    :try_end_second_pass
    .catch Ljava/lang/Throwable; {:try_start_second_pass .. :try_end_second_pass} :second_pass_failed

    goto :startup_done

    :second_pass_failed
    move-exception v0
    goto :startup_done

    :interrupted
    move-exception v0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :startup_done
    return-void
.end method