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

    # PATCH321 immediate, separate worker-thread scan; keep delayed retry.
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvRepairStartup;->context:Landroid/content/Context;
    :try_start_immediate
    const-string v1, "download_repair_actions.log"
    const-string v2, "PATCH321_BOOT_IMMEDIATE_AUDIT"
    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->execute(Landroid/content/Context;)Ljava/lang/String;
    # PATCH323: recover durable native receipts at first boot pass as well,
    # instead of waiting eight seconds for the only initial sidecar scan.
    # The existing guarded Queue110 path never trusts partial .mp4/.temp.
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->recoverPending(Landroid/content/Context;)I
    move-result v1
    if-lez v1, :patch323_immediate_sidecars_done
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->scan()V
    :patch323_immediate_sidecars_done
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvReconciler;->requestAudit()V
    :try_end_immediate
    .catch Ljava/lang/Throwable; {:try_start_immediate .. :try_end_immediate} :startup_immediate_failed
    goto :try_start_delay

    :startup_immediate_failed
    move-exception v1
    const-string v2, "STARTUP_IMMEDIATE_SCAN_FAILED"
    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_delay
    const-wide/16 v0, 0x1f40
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_delay
    .catch Ljava/lang/InterruptedException; {:try_start_delay .. :try_end_delay} :interrupted

    :try_start_second_pass
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvRepairStartup;->context:Landroid/content/Context;
    const-string v2, "download_repair_actions.log"
    const-string v3, "PATCH321_BOOT_DELAYED_RETRY"
    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->execute(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->recoverPending(Landroid/content/Context;)I
    move-result v1
    if-lez v1, :startup_sidecars_done
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->scan()V
    :startup_sidecars_done
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvReconciler;->requestAudit()V
    :try_end_second_pass
    .catch Ljava/lang/Throwable; {:try_start_second_pass .. :try_end_second_pass} :second_pass_failed

    goto :startup_done

    :second_pass_failed
    move-exception v0
    iget-object v1, p0, Lcom/shabakaty/cinemana/features/MkvRepairStartup;->context:Landroid/content/Context;
    const-string v2, "STARTUP_DELAYED_RECOVERY_FAILED"
    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :startup_done

    :interrupted
    move-exception v0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :startup_done
    return-void
.end method