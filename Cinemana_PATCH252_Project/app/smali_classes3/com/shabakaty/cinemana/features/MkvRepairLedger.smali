.class public final Lcom/shabakaty/cinemana/features/MkvRepairLedger;
.super Ljava/lang/Object;
.source "MkvRepairLedger.java"


# This is a compact unresolved-work ledger, not a verbose debug log.
# It lives under Cinemana/work/data and is independent of the user-facing log toggle.

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static ledgerFile()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/data"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;
    const-string v2, "mkv_repair_pending.properties"
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    return-object v1
.end method

.method private static load()Ljava/util/Properties;
    .locals 4

    new-instance v0, Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_load
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->ledgerFile()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :load_done

    new-instance v2, Ljava/io/FileInputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_load
    .catch Ljava/lang/Throwable; {:try_start_load .. :try_end_load} :load_failed

    :load_done
    return-object v0

    :load_failed
    move-exception v1
    return-object v0
.end method

.method private static save(Ljava/util/Properties;)V
    .locals 3

    :try_start_save
    invoke-virtual {p0}, Ljava/util/Properties;->isEmpty()Z
    move-result v0
    if-eqz v0, :save_nonempty

    # Zero outstanding repair problems means zero-byte state file; the parent data folder may remain.
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->ledgerFile()Ljava/io/File;
    move-result-object v0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    goto :try_end_save

    :save_nonempty
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->ledgerFile()Ljava/io/File;
    move-result-object v0
    new-instance v1, Ljava/io/FileOutputStream;
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0
    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_save
    .catch Ljava/lang/Throwable; {:try_start_save .. :try_end_save} :save_failed

    return-void

    :save_failed
    move-exception v0
    return-void
.end method

.method public static declared-synchronized record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :record_done
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    move-result v5
    if-nez v5, :record_done

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v0

    # Transitions may have no new path information. Preserve the last known source and target
    # rather than blanking them when recordItem cannot resolve a transient/stale DB identity.
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :record_paths_ready

    const-string v2, "\\|"
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4

    if-eqz p3, :record_restore_source
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z
    move-result v5
    if-eqz v5, :record_restore_target

    :record_restore_source
    array-length v5, v4
    const/4 v2, 0x3
    if-lt v5, v2, :record_restore_target
    const/4 v5, 0x2
    aget-object p3, v4, v5

    :record_restore_target
    if-eqz p4, :record_restore_target_value
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z
    move-result v5
    if-eqz v5, :record_paths_ready

    :record_restore_target_value
    array-length v5, v4
    const/4 v2, 0x4
    if-lt v5, v2, :record_paths_ready
    const/4 v5, 0x3
    aget-object p4, v4, v5

    :record_paths_ready
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "|"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->save(Ljava/util/Properties;)V

    :record_done
    return-void
.end method

.method public static recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    if-eqz p0, :record_item_done
    if-eqz p1, :record_item_done

    :try_start_record_item
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->identityToken(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :record_item_done

    const-string v2, ""
    const-string v3, ""

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;
    move-result-object v4
    if-eqz v4, :record_item_write

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v6
    const-string v1, ".mp4"
    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :record_item_write

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v6
    add-int/lit8 v6, v6, -0x4
    const/4 v1, 0x0
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v5
    const-string v1, ".mkv"
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    new-instance v6, Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v1
    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v3

    :record_item_write
    move-object v5, p0
    move-object v6, v0
    move-object v7, p2
    move-object v8, v2
    move-object v9, v3
    move-object v10, p3
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_record_item
    .catch Ljava/lang/Throwable; {:try_start_record_item .. :try_end_record_item} :record_item_failed

    goto :record_item_done

    :record_item_failed
    move-exception v0

    :record_item_done
    return-void
.end method

.method public static declared-synchronized clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :clear_done
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :clear_done

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->save(Ljava/util/Properties;)V

    :clear_done
    return-void
.end method

.method public static declared-synchronized sweep(Landroid/content/Context;)V
    .locals 8

    if-eqz p0, :sweep_done

    :try_start_sweep
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->sweepFinalFiles(Landroid/content/Context;)V
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    if-eqz v0, :sweep_done

    instance-of v2, v0, Lcom/shabakaty/cinemana/CinemanaApplication;
    if-eqz v2, :sweep_done

    check-cast v0, Lcom/shabakaty/cinemana/CinemanaApplication;
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;
    move-result-object v0
    invoke-interface {v0}, Lcom/shabakaty/downloader/jw0;->j()Ljava/util/List;
    move-result-object v1
    if-eqz v1, :sweep_done

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v2
    invoke-virtual {v2}, Ljava/util/Properties;->keySet()Ljava/util/Set;
    move-result-object v2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3

    :sweep_token_loop
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :sweep_done

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v5

    :sweep_item_loop
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :sweep_token_loop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v6
    if-eqz v6, :sweep_item_loop

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->identityToken(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :sweep_item_loop

    # Clear only after the database identity resolves to a valid final MKV file.
    invoke-static {p0, v6}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeIfFinal(Landroid/content/Context;Ljava/lang/Object;)V
    goto :sweep_token_loop

    :try_end_sweep
    .catch Ljava/lang/Throwable; {:try_start_sweep .. :try_end_sweep} :sweep_failed

    goto :sweep_done

    :sweep_failed
    move-exception v0

    :sweep_done
    return-void
.end method

.method public static completeIfFinal(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :complete_done
    if-eqz p1, :complete_done

    :try_start_complete
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->identityToken(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :complete_done
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :complete_done

    # Verify the recorded destination; exactVideo is a source-MP4 resolver.
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeIfFinalToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_complete
    .catch Ljava/lang/Throwable; {:try_start_complete .. :try_end_complete} :complete_failed

    goto :complete_done

    :complete_failed
    move-exception v0

    :complete_done
    return-void
.end method

.method public static recordDiscovery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :discovery_done
    if-eqz p1, :discovery_done
    if-eqz p2, :discovery_done

    :try_start_discovery
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :discovery_done

    new-instance v1, Ljava/io/File;
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :discovery_done

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v3
    const-string v4, ".mp4"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :discovery_done

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    move-result v3
    add-int/lit8 v3, v3, -0x4
    const/4 v4, 0x0
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    const-string v3, ".mkv"
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    new-instance v3, Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v4
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5

    # Persist only the first discovery; later reconciliation stages update this same key.
    move-object v1, p0
    move-object v2, p1
    const-string v3, "DISCOVERED_MP4"
    move-object v4, p2
    const-string v6, "filesystem_mp4_found;checking_item_mapping_subtitle_plan_and_final_mkv"
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_discovery
    .catch Ljava/lang/Throwable; {:try_start_discovery .. :try_end_discovery} :discovery_failed

    goto :discovery_done

    :discovery_failed
    move-exception v0

    :discovery_done
    return-void
.end method

.method private static sweepFinalFiles(Landroid/content/Context;)V
    .locals 5

    if-eqz p0, :sweep_files_done

    :try_start_sweep_files
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v0
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;
    move-result-object v1
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2

    :sweep_files_loop
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :try_end_sweep_files

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeIfFinalToken(Landroid/content/Context;Ljava/lang/String;)V
    goto :sweep_files_loop

    :try_end_sweep_files
    .catch Ljava/lang/Throwable; {:try_start_sweep_files .. :try_end_sweep_files} :sweep_files_failed

    goto :sweep_files_done

    :sweep_files_failed
    move-exception v0

    :sweep_files_done
    return-void
.end method

.method private static completeIfFinalToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    if-eqz p0, :final_token_done
    if-eqz p1, :final_token_done

    :try_start_final_token
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :final_token_done

    # Values are compact: timestamp|state|source|target|reason.
    const-string v2, "\\|"
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v1
    array-length v2, v1
    const/4 v3, 0x4
    if-lt v2, v3, :final_token_done

    const/4 v2, 0x2
    aget-object v3, v1, v2
    const/4 v2, 0x3
    aget-object v4, v1, v2

    if-eqz v4, :final_target_from_source
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :final_target_from_source
    goto :final_target_ready

    :final_target_from_source
    # Existing older journal entries may not store the target; derive the sibling from MP4.
    if-eqz v3, :final_token_done
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v6
    const-string v7, ".mp4"
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :final_token_done
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v6
    add-int/lit8 v6, v6, -0x4
    const/4 v7, 0x0
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v5
    const-string v6, ".mkv"
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    new-instance v6, Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v7
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4

    :final_target_ready
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    move-result v6
    if-eqz v6, :final_token_done
    invoke-virtual {v5}, Ljava/io/File;->length()J
    move-result-wide v6
    const-wide/16 v7, 0x400
    cmp-long v6, v6, v7
    if-lez v6, :final_token_done

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v5
    const-string v6, ".mkv"
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :final_token_done

    # A token-bearing target must agree with this journal entry.
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :final_clear
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :final_clear
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :final_token_done

    :final_clear
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_final_token
    .catch Ljava/lang/Throwable; {:try_start_final_token .. :try_end_final_token} :final_token_failed

    goto :final_token_done

    :final_token_failed
    move-exception v0

    :final_token_done
    return-void
.end method
