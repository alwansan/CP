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

    # Iterate a snapshot because successful entries are deleted from Properties while sweeping.
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v2
    invoke-virtual {v2}, Ljava/util/Properties;->keySet()Ljava/util/Set;
    move-result-object v3
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
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
    if-eqz v2, :sweep_try_disk_alias

    # Identity-keyed entries still require a valid final MKV in the database's canonical path.
    invoke-static {p0, v6}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeIfFinal(Landroid/content/Context;Ljava/lang/Object;)V

    :sweep_try_disk_alias
    # A raw MP4 token is different from the item's stable identity. Clear it only after the saved MKV target is final.
    invoke-static {p0, v4, v6}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeDiskAliasIfFinal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :sweep_item_loop
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
    .locals 7

    if-eqz p0, :complete_done
    if-eqz p1, :complete_done

    :try_start_complete
    instance-of v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    if-eqz v0, :complete_done

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->identityToken(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :complete_done
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :complete_done

    # The DB item's current path is the authoritative final destination. A sibling file alone
    # is not enough: it may exist while the DB promotion/commit is still pending.
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    iget-object v1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    if-eqz v1, :complete_done
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :complete_done

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v2
    const-string v3, ".mkv"
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :complete_done

    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :complete_done
    invoke-virtual {v2}, Ljava/io/File;->length()J
    move-result-wide v3
    const-wide/16 v5, 0x400
    cmp-long v3, v3, v5
    if-lez v3, :complete_done

    # If the final filename contains a cnm token, it must match the same DB item.
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :complete_clear
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :complete_clear
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :complete_done

    :complete_clear
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V
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
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    # Repair stale entries created by subtitle observer events. Do not downgrade a queued
    # conversion or an item already waiting for final MKV promotion.
    if-eqz v1, :discovery_validate_mp4
    const-string v2, "\\|"
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
    array-length v3, v2
    const/4 v4, 0x3
    if-lt v3, v4, :discovery_existing_source_unknown

    const/4 v3, 0x1
    aget-object v3, v2, v3
    const-string v4, "MKV_QUEUED"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :discovery_done
    const-string v4, "FINAL_MKV_AWAITING_PROMOTION"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :discovery_done

    const/4 v3, 0x2
    aget-object v3, v2, v3
    if-eqz v3, :discovery_validate_mp4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :discovery_validate_mp4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v3
    const-string v4, ".srt"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :discovery_validate_mp4
    const-string v4, ".ass"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :discovery_validate_mp4
    const-string v4, ".ssa"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :discovery_validate_mp4
    const-string v4, ".vtt"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :discovery_validate_mp4
    const-string v4, ".sub"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :discovery_validate_mp4
    goto :discovery_done

    :discovery_existing_source_unknown
    const-string v3, "WAITING_MP4_SOURCE"
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :discovery_validate_mp4
    goto :discovery_done

    :discovery_validate_mp4
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

    move-object v1, p0
    move-object v2, p1
    const-string v3, "DISCOVERED_MP4"
    move-object v4, p2
    const-string v6, "filesystem_mp4_found;replacing_stale_subtitle_source_if_needed;checking_item_mapping_subtitle_plan_and_final_mkv"
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_discovery
    .catch Ljava/lang/Throwable; {:try_start_discovery .. :try_end_discovery} :discovery_failed

    goto :discovery_done

    :discovery_failed
    move-exception v0

    :discovery_done
    return-void
.end methoddd






.method private static completeDiskAliasIfFinal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8

    if-eqz p0, :disk_alias_no
    if-eqz p1, :disk_alias_no
    if-eqz p2, :disk_alias_no

    :try_start_disk_alias
    instance-of v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    if-eqz v0, :disk_alias_no

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :disk_alias_no

    const-string v2, "\\|"
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
    array-length v3, v2
    const/4 v4, 0x3
    if-lt v3, v4, :disk_alias_no

    # Only a queued conversion can be retired by this alias path.
    const/4 v3, 0x1
    aget-object v3, v2, v3
    const-string v4, "MKV_QUEUED"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :disk_alias_no

    const/4 v3, 0x2
    aget-object v3, v2, v3
    if-eqz v3, :disk_alias_no
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :disk_alias_no

    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    iget-object v4, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    if-eqz v4, :disk_alias_no

    # The current DB item must now point to an actual final MKV with the exact source basename.
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    move-result v6
    if-eqz v6, :disk_alias_no
    invoke-virtual {v5}, Ljava/io/File;->length()J
    move-result-wide v6
    const-wide/16 v0, 0x400
    cmp-long v6, v6, v0
    if-lez v6, :disk_alias_no

    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->matchesDiskOutputPath(Ljava/io/File;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :disk_alias_no

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeIfFinal(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_disk_alias
    .catch Ljava/lang/Throwable; {:try_start_disk_alias .. :try_end_disk_alias} :disk_alias_exception

    const/4 v0, 0x1
    return v0

    :disk_alias_exception
    move-exception v0

    :disk_alias_no
    const/4 v0, 0x0
    return v0
.end method

.method public static completeAliasFromSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :disk_alias_source_done
    if-eqz p1, :disk_alias_source_done
    if-eqz p2, :disk_alias_source_done

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :disk_alias_source_done
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :disk_alias_source_done

    invoke-static {p0, v0, p2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeDiskAliasIfFinal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    :disk_alias_source_done
    return-void
.end method


.method public static isQueued(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :is_queued_no
    if-eqz p1, :is_queued_no

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->load()Ljava/util/Properties;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :is_queued_no

    const-string v2, "\\|"
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v1
    array-length v2, v1
    const/4 v3, 0x2
    if-lt v2, v3, :is_queued_no

    const/4 v2, 0x1
    aget-object v1, v1, v2
    const-string v2, "MKV_QUEUED"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    return v0

    :is_queued_no
    const/4 v0, 0x0
    return v0
.end method
