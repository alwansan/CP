.class public final Lcom/shabakaty/cinemana/ca1/RepairLedger129;
.super Ljava/lang/Object;

.field private static final LOCK:Ljava/lang/Object;

.method static constructor <clinit>()V
    .locals 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    sput-object v0, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->LOCK:Ljava/lang/Object;
    return-void
.end method

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static ledgerFile(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    const-string v2, "Cinemana/work/data"
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v2
    if-nez v2, :ledger_dir_exists
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :ledger_dir_exists
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    move-result v2
    if-eqz v2, :ledger_private_fallback
    new-instance v0, Ljava/io/File;
    const-string v2, "download_repair_open.properties"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :ledger_private_fallback
    :ledger_private_fallback
    if-eqz p0, :ledger_null
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    const-string v2, "download_repair_open.properties"
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    return-object v1
    :ledger_null
    const/4 v0, 0x0
    return-object v0
.end method

.method private static load(Ljava/io/File;)Ljava/util/Properties;
    .locals 3
    new-instance v0, Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V
    if-eqz p0, :ledger_load_done
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :ledger_load_done
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :ledger_load_failed
    goto :ledger_load_done
    :ledger_load_failed
    move-exception v1
    :ledger_load_done
    return-object v0
.end method

.method private static write(Ljava/io/File;Ljava/util/Properties;)V
    .locals 3
    if-eqz p0, :ledger_write_done
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    if-eqz v0, :ledger_parent_done
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :ledger_parent_done
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :ledger_parent_done
    new-instance v0, Ljava/io/FileOutputStream;
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    const-string v1, "Open incomplete download/MKV repair entries only; removed after verified final MKV"
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :ledger_write_failed
    goto :ledger_write_done
    :ledger_write_failed
    move-exception v0
    :ledger_write_done
    return-void
.end method

.method private static prune(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 5
    invoke-virtual {p0}, Ljava/util/Properties;->size()I
    move-result v0
    const/16 v1, 0x80
    if-le v0, v1, :ledger_prune_done
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;
    move-result-object v0
    :ledger_prune_loop
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    move-result v1
    if-eqz v1, :ledger_prune_done
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "open:"
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :ledger_prune_loop
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :ledger_prune_remove
    goto :ledger_prune_loop
    :ledger_prune_remove
    invoke-virtual {p0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
    :ledger_prune_done
    return-void
.end method

.method public static record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    if-eqz p1, :ledger_record_done
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    move-result v0
    if-lez v0, :ledger_record_done
    sget-object v0, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->LOCK:Ljava/lang/Object;
    monitor-enter v0
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->ledgerFile(Landroid/content/Context;)Ljava/io/File;
    move-result-object v1
    if-eqz v1, :ledger_record_unlock
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->load(Ljava/io/File;)Ljava/util/Properties;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "open:"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, ""
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :ledger_make_value
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, "\t"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :ledger_make_value
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "\t"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, "\t"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v5
    if-nez v5, :ledger_record_unlock
    :ledger_make_value
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, "\t"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, "\t"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, "\t"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v3, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->prune(Ljava/util/Properties;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->write(Ljava/io/File;Ljava/util/Properties;)V
    :ledger_record_unlock
    monitor-exit v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :ledger_record_failed
    goto :ledger_record_done
    :ledger_record_failed
    move-exception v1
    monitor-exit v0
    :ledger_record_done
    return-void
.end method

.method public static complete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    if-eqz p1, :ledger_complete_done
    sget-object v0, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->LOCK:Ljava/lang/Object;
    monitor-enter v0
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->ledgerFile(Landroid/content/Context;)Ljava/io/File;
    move-result-object v1
    if-eqz v1, :ledger_complete_unlock
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->load(Ljava/io/File;)Ljava/util/Properties;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "open:"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/util/Properties;->isEmpty()Z
    move-result v3
    if-eqz v3, :ledger_complete_write
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    goto :ledger_complete_unlock
    :ledger_complete_write
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->write(Ljava/io/File;Ljava/util/Properties;)V
    :ledger_complete_unlock
    monitor-exit v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :ledger_complete_failed
    goto :ledger_complete_done
    :ledger_complete_failed
    move-exception v1
    monitor-exit v0
    :ledger_complete_done
    return-void
.end method

.method public static completeIfFinal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    if-eqz p1, :ledger_final_no
    if-eqz p2, :ledger_final_no
    const-string v0, "path"
    invoke-static {p2, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :ledger_final_no
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v1
    const-string v2, ".mkv"
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :ledger_final_no
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :ledger_final_no
    invoke-virtual {v1}, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v4, 0x400
    cmp-long v2, v2, v4
    if-lez v2, :ledger_final_no
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->complete(Landroid/content/Context;Ljava/lang/String;)V
    const/4 v0, 0x1
    return v0
    :ledger_final_no
    const/4 v0, 0x0
    return v0
.end method

.method public static finishAfterExport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    if-eqz p1, :ledger_finish_done
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz p3, :ledger_finish_failed
    invoke-static {p0, v0, p2}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->completeIfFinal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :ledger_finish_unconfirmed
    return-void
    :ledger_finish_unconfirmed
    const-string v1, "FINAL_VERIFY_WAIT"
    const-string v2, "EXPORT_ENDED_BUT_FINAL_MKV_NOT_CONFIRMED"
    invoke-static {p0, v0, p1, v1, v2}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    return-void
    :ledger_finish_failed
    const-string v1, "CONVERT_FAILED"
    const-string v2, "SOURCE_OR_FINAL_STATE_UNRESOLVED"
    invoke-static {p0, v0, p1, v1, v2}, Lcom/shabakaty/cinemana/ca1/RepairLedger129;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :ledger_finish_done
    return-void
.end method
