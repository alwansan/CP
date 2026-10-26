.class public final Lcom/shabakaty/cinemana/ca1/DownloadRepair129;
.super Ljava/lang/Object;

.field static final RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

.method static constructor <clinit>()V
    .locals 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
    sput-object v0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-void
.end method

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static profile(Landroid/view/View;)V
    .locals 4
    if-eqz p0, :done
    const-string v0, "ca1_download_repair129"
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :done
    const-string v1, "ca1_download_repair129_title"
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :done
    check-cast v1, Landroid/widget/TextView;
    const-string v2, "إصلاح التحميلات"
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    new-instance v2, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Click;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-direct {v2, v3, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Click;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :done
    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5
    if-eqz p0, :done
    sget-object v0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x0
    const/4 v2, 0x1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    move-result v1
    if-eqz v1, :already_running
    :try_start_0
    if-eqz p1, :title_done
    const-string v2, "جارٍ فحص التحميلات وإصلاحها..."
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :title_done
    const-string v2, "download_repair_actions.log"
    const-string v3, "REPAIR_START source=profile_button"
    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    new-instance v2, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Worker;
    invoke-direct {v2, p0, p1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Worker;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V
    new-instance v3, Ljava/lang/Thread;
    const-string v4, "Cinemana-DownloadRepair"
    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :start_failed
    goto :done
    :start_failed
    move-exception v2
    sget-object v3, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    const-string v3, "REPAIR_START_FAILED"
    invoke-static {p0, v3, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :done
    :already_running
    const-string v2, "الإصلاح يعمل بالفعل"
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0x0
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :done
    return-void
.end method

.method public static execute(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    const-string v0, "download_repair_findings.log"
    const-string v1, "REPAIR_BEGIN; scan is read-only until the original guarded queues accept eligible work"
    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->scanInventory(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :inventory_failed
    goto :inventory_done
    :inventory_failed
    move-exception v2
    const-string v1, "FILE_INVENTORY_FAILED"
    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    :inventory_done

    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->scan()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :queue_failed
    const-string v0, "download_repair_actions.log"
    const-string v1, "QUEUE_SCAN_DISPATCHED; existing persisted requests rechecked using Queue110 ownership and synchronization guards"
    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    goto :queue_done
    :queue_failed
    move-exception v2
    const-string v1, "QUEUE110_SCAN_FAILED"
    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    :queue_done

    :try_start_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->start(Landroid/content/Context;)V
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileAll()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :mkv_failed
    const-string v0, "download_repair_actions.log"
    const-string v1, "MKV_RECONCILIATION_DISPATCHED; manifest-ready registered items passed to the existing guarded exporter"
    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    goto :mkv_done
    :mkv_failed
    move-exception v2
    const-string v1, "MKV_RECONCILIATION_FAILED"
    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    :mkv_done

    :try_start_3
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :recovery_failed
    const-string v0, "download_repair_actions.log"
    const-string v1, "RECOVERY_WAKE_REQUESTED; Restart108 recovery scanner nudged; repair button did not delete any source media or subtitles"
    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    goto :recovery_done
    :recovery_failed
    move-exception v2
    const-string v1, "RECOVERY_WAKE_FAILED"
    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    :recovery_done

    const-string v0, "download_repair_actions.log"
    const-string v1, "REPAIR_END; asynchronous recovery/conversion may continue in the original pipeline; consult unresolved log for failures"
    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    const-string v0, "انتهى الفحص وأعيد تحفيز طابور التحميل وMKV والاستعادة. راجع السجلات إذا بقيت مشكلة."
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method private static scanInventory(Landroid/content/Context;)V
    .locals 8
    const/4 v0, 0x5
    new-array v0, v0, [I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    new-instance v2, Ljava/io/File;
    const-string v3, "Cinemana"
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :second_root
    const/4 v3, 0x6
    invoke-static {v2, v3, v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->scanTree(Ljava/io/File;I[I)V
    :second_root
    new-instance v2, Ljava/io/File;
    const-string v3, "Download/Cinemana/work"
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :report
    const/4 v3, 0x5
    invoke-static {v2, v3, v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->scanTree(Ljava/io/File;I[I)V
    :report
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "INVENTORY nodes="
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v4, 0x0
    aget v4, v0, v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, " mp4="
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v4, 0x1
    aget v4, v0, v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, " mkv="
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v4, 0x2
    aget v4, v0, v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, " subtitles="
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v4, 0x3
    aget v4, v0, v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, " partials="
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v4, 0x4
    aget v4, v0, v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, " cap=2500; inventory_only_no_file_mutations"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "download_repair_findings.log"
    invoke-static {p0, v4, v3}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private static scanTree(Ljava/io/File;I[I)V
    .locals 7
    if-eqz p0, :scan_done
    aget v0, p2, 0
    const/16 v1, 0x9c4
    if-lt v0, v1, :scan_continue
    return-void
    :scan_continue
    const/4 v1, 0x0
    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->increment([II)V
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-eqz v0, :scan_file
    if-lez p1, :scan_done
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :scan_done
    array-length v1, v0
    const/4 v2, 0x0
    :scan_children
    if-ge v2, v1, :scan_done
    aget-object v3, v0, v2
    add-int/lit8 v4, p1, -0x1
    invoke-static {v3, v4, p2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->scanTree(Ljava/io/File;I[I)V
    add-int/lit8 v2, v2, 0x1
    goto :scan_children
    :scan_file
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :scan_done
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v0
    const-string v1, ".mp4"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_check_mkv
    const/4 v1, 0x1
    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->increment([II)V
    goto :scan_check_part
    :scan_check_mkv
    const-string v1, ".mkv"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_check_subs
    const/4 v1, 0x2
    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->increment([II)V
    goto :scan_check_part
    :scan_check_subs
    const-string v1, ".srt"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_check_ass
    goto :scan_sub_hit
    :scan_check_ass
    const-string v1, ".ass"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_check_ssa
    goto :scan_sub_hit
    :scan_check_ssa
    const-string v1, ".ssa"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_check_vtt
    goto :scan_sub_hit
    :scan_check_vtt
    const-string v1, ".vtt"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_check_sub
    goto :scan_sub_hit
    :scan_check_sub
    const-string v1, ".sub"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_check_part
    :scan_sub_hit
    const/4 v1, 0x3
    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->increment([II)V
    :scan_check_part
    const-string v1, ".part"
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :scan_check_tmp
    const/4 v1, 0x4
    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->increment([II)V
    goto :scan_done
    :scan_check_tmp
    const-string v1, ".tmp"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :scan_done
    const/4 v1, 0x4
    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->increment([II)V
    :scan_done
    return-void
.end method

.method private static increment([II)V
    .locals 1
    aget v0, p0, p1
    add-int/lit8 v0, v0, 0x1
    aput v0, p0, p1
    return-void
.end method

.method public static recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " cause="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "download_repair_unresolved.log"
    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public static log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    :try_start_0
    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/log"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :log_dir_ready
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :log_dir_ready
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    new-instance v0, Ljava/io/FileOutputStream;
    const/4 v2, 0x1
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "\n"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "UTF-8"
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :log_failed
    return-void
    :log_failed
    move-exception v0
    const-string v1, "DownloadRepair129"
    const-string v2, "Unable to write repair log"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
