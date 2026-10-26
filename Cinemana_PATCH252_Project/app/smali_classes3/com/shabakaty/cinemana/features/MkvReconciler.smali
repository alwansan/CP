.class public final Lcom/shabakaty/cinemana/features/MkvReconciler;
.super Ljava/lang/Object;
.source "MkvReconciler.java"


# static fields
.field private static final CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final ITEMS:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final OBSERVERS:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final SCHEDULER:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final STARTED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final WATCHED_PATHS:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->ITEMS:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->OBSERVERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->WATCHED_PATHS:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->STARTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->SCHEDULER:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reconcileAll()V
    .locals 5

    sget-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Cinemana/work"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->watchTree(Ljava/io/File;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->scanExistingRoot(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Download/Cinemana/work"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->watchTree(Ljava/io/File;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->scanExistingRoot(Ljava/io/File;)V

    sget-object v1, Lcom/shabakaty/cinemana/features/MkvReconciler;->ITEMS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    .locals 6

    if-eqz p0, :reconcile_done
    if-eqz p1, :reconcile_done

    :try_start_reconcile
    # Existing sibling MKV means conversion already produced output; do not queue another export.
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->hasSiblingMkv(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z
    move-result v1
    if-eqz v1, :reconcile_check_manifest

    const-string v1, "FINAL_MKV_AWAITING_PROMOTION"
    const-string v2, "valid_sibling_mkv_exists_skip_duplicate_export;wake_database_finalization"
    invoke-static {p0, p1, v1, v2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V
    goto :reconcile_try_done

    :reconcile_check_manifest
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;
    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isReadyToken(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :reconcile_ready

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->filesystemInputsReady(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z
    move-result v1

    :reconcile_ready
    if-eqz v1, :reconcile_wait

    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "MKV_READY token="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;
    move-result-object v3
    if-eqz v3, :reconcile_export_rejected

    # Use the already verified concrete MP4 path rather than asking a token-based search to rediscover it.
    invoke-static {p0, p1, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->onRecoveredVideo(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/io/File;)Z
    move-result v4
    if-eqz v4, :reconcile_export_rejected

    const-string v1, "MKV_QUEUED"
    const-string v2, "source_mp4_and_exact_subtitle_plan_verified;explicit_source_path_accepted_by_guarded_exporter"
    invoke-static {p0, p1, v1, v2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    goto :reconcile_try_done

    :reconcile_export_rejected
    const-string v1, "MKV_QUEUE_REJECTED"
    const-string v2, "subtitle_plan_verified_but_explicit_exporter_did_not_accept_source"
    invoke-static {p0, p1, v1, v2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    goto :reconcile_try_done

    :reconcile_wait
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "MKV_MANIFEST_WAIT token="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    # Store compact actionable counts; this is separate from the optional diagnostic logs.
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->expectedSubtitleCount(Ljava/lang/String;)I
    move-result v3
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->completedSubtitleCount(Ljava/lang/String;)I
    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "expected_subtitles="
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v2, ";terminal_subtitle_callbacks="
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v2, ";reason=manifest_or_plan_or_filesystem_verification_not_ready"
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2

    const-string v1, "WAITING_PLAN_OR_SUBTITLES"
    invoke-static {p0, p1, v1, v2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :reconcile_try_done
    :try_end_reconcile
    .catch Ljava/lang/Throwable; {:try_start_reconcile .. :try_end_reconcile} :reconcile_failed
    goto :reconcile_done

    :reconcile_failed
    move-exception v0

    :reconcile_done
    return-void
.end method

.method public static reconcileToken(Ljava/lang/String;)V
    .locals 13

    if-eqz p0, :token_done

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :token_done
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :token_done

    sget-object v1, Lcom/shabakaty/cinemana/features/MkvReconciler;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    if-eqz v1, :token_done

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V

    sget-object v2, Lcom/shabakaty/cinemana/features/MkvReconciler;->ITEMS:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    if-eqz v3, :token_scan_items

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    return-void

    :token_scan_items
    :try_start_token_scan
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    if-eqz v3, :token_use_context
    move-object v4, v3
    goto :token_app_checked

    :token_use_context
    move-object v4, v1

    :token_app_checked
    instance-of v3, v4, Lcom/shabakaty/cinemana/CinemanaApplication;
    if-eqz v3, :token_wait_mapping

    check-cast v4, Lcom/shabakaty/cinemana/CinemanaApplication;
    invoke-virtual {v4}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;
    move-result-object v3
    invoke-interface {v3}, Lcom/shabakaty/downloader/jw0;->j()Ljava/util/List;
    move-result-object v3
    if-eqz v3, :token_wait_mapping
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3

    :token_item_loop
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :token_wait_mapping

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    if-eqz v4, :token_item_loop

    # Fast path: the existing identity already equals the filename token.
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :token_try_path_identity
    goto :token_item_found

    # Recovery path: task identity may have changed after promotion. Match the actual MP4 path tag instead.
    :token_try_path_identity
    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;
    move-result-object v6
    if-eqz v6, :token_item_loop
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-static {v6}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :token_item_loop

    :token_item_found
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :token_record_wait
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-eqz v6, :token_store_item

    :token_record_wait
    const-string v5, "WAIT_ITEM_IDENTITY"
    const-string v6, "matching_mp4_path_found_but_download_identity_is_empty"
    move-object v7, v1
    move-object v8, v0
    move-object v9, v5
    move-object v10, p0
    const-string v11, ""
    move-object v12, v6
    invoke-static/range {v7 .. v12}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    goto :token_done

    :token_store_item
    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ITEM_MATCHED"
    const-string v7, "filename_token_matched_to_database_item;verifying_exact_subtitle_plan"
    invoke-static {v1, v4, v6, v7}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    # Drop the discovery-only raw-token entry after transferring it to the durable item identity.
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :token_reconcile_matched
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V

    :token_reconcile_matched
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "MKV_DB_RECOVER rawToken="
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, " itemKey="
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {v1, v6}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    :try_end_token_scan
    .catch Ljava/lang/Throwable; {:try_start_token_scan .. :try_end_token_scan} :token_scan_failed
    return-void

    :token_wait_mapping
    # Manager memory lists can omit completed downloads. Re-resolve via the persistent Downloads DAO
    # by the exact cnm token in the completed MP4 path before giving up on recovery.
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->findDatabaseItemForToken(Landroid/content/Context;Ljava/lang/String;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    move-result-object v3
    if-eqz v3, :token_mapping_unresolved

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :token_db_use_raw
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-eqz v6, :token_db_key_ready

    :token_db_use_raw
    move-object v5, v0

    :token_db_key_ready
    invoke-virtual {v2, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ITEM_MATCHED_DB_ROW"
    const-string v7, "resolved_from_persistent_downloads_dao_by_exact_completed_mp4_token"
    invoke-static {v1, v3, v6, v7}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :token_db_reconcile
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V

    :token_db_reconcile
    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    return-void

    :token_mapping_unresolved
    const-string v3, "WAIT_ITEM_MAPPING"
    const-string v4, "no_database_item_matched_filename_token_or_exact_mp4_path"
    move-object v5, v1
    move-object v6, v0
    move-object v7, v3
    move-object v8, p0
    const-string v9, ""
    move-object v10, v4
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    goto :token_done

    :token_scan_failed
    move-exception v2
    const-string v3, "ITEM_SCAN_FAILED"
    const-string v4, "exception_during_item_or_mp4_identity_lookup"
    move-object v5, v1
    move-object v6, v0
    move-object v7, v3
    move-object v8, p0
    const-string v9, ""
    move-object v10, v4
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :token_done
    return-void
.end method

.method public static register(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->start(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/shabakaty/cinemana/features/MkvReconciler;->ITEMS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    :cond_1
    return-object p1
.end method

.method public static start(Landroid/content/Context;)V
    .locals 8

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->STARTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvStateStore;->resetStale(Landroid/content/Context;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Cinemana/work"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->watchTree(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Download/Cinemana/work"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->watchTree(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method private static watchRoot(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/shabakaty/cinemana/features/MkvReconciler;->WATCHED_PATHS:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/shabakaty/cinemana/features/MkvReconciler$2;

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/features/MkvReconciler$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    sget-object v2, Lcom/shabakaty/cinemana/features/MkvReconciler;->OBSERVERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/shabakaty/cinemana/features/MkvReconciler;->WATCHED_PATHS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method private static watchTree(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->watchRoot(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvReconciler;->watchTree(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static hasSiblingMkv(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z
    .locals 6

    if-eqz p0, :sibling_no
    if-eqz p1, :sibling_no

    :try_start_sibling
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;
    move-result-object v0
    if-eqz v0, :sibling_no

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :sibling_no

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v2
    const-string v3, ".mp4"
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :sibling_no

    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v4, 0x400
    cmp-long v2, v2, v4
    if-lez v2, :sibling_no

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    move-result v2
    add-int/lit8 v2, v2, -0x4
    const/4 v3, 0x0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    const-string v2, ".mkv"
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    new-instance v2, Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v3
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :sibling_no

    invoke-virtual {v2}, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v4, 0x400
    cmp-long v2, v2, v4
    if-lez v2, :sibling_no

    const/4 v0, 0x1
    :try_end_sibling
    .catch Ljava/lang/Throwable; {:try_start_sibling .. :try_end_sibling} :sibling_error
    return v0

    :sibling_error
    move-exception v0

    :sibling_no
    const/4 v0, 0x0
    return v0
.end method

.method private static filesystemInputsReady(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z
    .locals 7

    if-eqz p0, :fs_not_ready
    if-eqz p1, :fs_not_ready

    :try_start_fs_ready
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;
    move-result-object v0
    if-eqz v0, :fs_not_ready

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :fs_not_ready

    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v1
    const-wide/16 v3, 0x400
    cmp-long v1, v1, v3
    if-lez v1, :fs_not_ready

    # A valid sibling MKV means this path should be handled by finalization/promotion, not rebuilt.
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    const-string v2, ".mp4"
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :fs_check_token

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    move-result v2
    add-int/lit8 v2, v2, -0x4
    const/4 v3, 0x0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    const-string v2, ".mkv"
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v3
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :fs_check_token
    invoke-virtual {v2}, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v4, 0x400
    cmp-long v2, v2, v4
    if-lez v2, :fs_check_token
    goto :fs_not_ready

    :fs_check_token
    # The raw cnm tag in the actual source filename is the key used by subtitle plans.
    # Do not use the DB task identity here: it may change after the MP4 was promoted/recovered.
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :fs_fallback_item_token
    goto :fs_token_ready

    :fs_fallback_item_token
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :fs_not_ready

    :fs_token_ready

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->expectedSubtitleCount(Ljava/lang/String;)I
    move-result v2
    if-gez v2, :fs_plan_ready

    # The detailed subtitle plan lives in the queue's persisted data, not the optional debug logs.
    # Recover the expected count only from that original plan; never guess from the files that happen to exist.
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Inputs114;->model(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v3
    if-eqz v3, :fs_not_ready

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->subtitles(Ljava/lang/Object;)Ljava/util/List;
    move-result-object v4
    if-eqz v4, :fs_not_ready
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v2

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->beginPlan(Landroid/content/Context;Ljava/lang/String;I)V

    :fs_plan_ready
    # This verifies the exact requested subtitle plan against the files and pending dependency state.
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->verified(Ljava/lang/Object;Ljava/io/File;)Ljava/util/List;
    move-result-object v3
    if-eqz v3, :fs_not_ready

    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v4
    if-ne v4, v2, :fs_not_ready

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    invoke-static {p0, v1, v5, v2, v4}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->recoverReadyFromVerifiedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    move-result v6
    if-eqz v6, :fs_not_ready

    const/4 v0, 0x1
    :try_end_fs_ready
    .catch Ljava/lang/Throwable; {:try_start_fs_ready .. :try_end_fs_ready} :fs_ready_exception

    return v0

    :fs_ready_exception
    move-exception v0

    :fs_not_ready
    const/4 v0, 0x0
    return v0
.end method

.method private static scanExistingRoot(Ljava/io/File;)V
    .locals 15

    if-eqz p0, :scan_root_done

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :scan_root_done

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :scan_root_done

    array-length v1, v0

    const/4 v2, 0x0

    :scan_root_loop
    if-ge v2, v1, :scan_root_done

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :scan_root_next

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :scan_root_trigger

    const-string v5, ".srt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :scan_root_trigger

    const-string v5, ".ass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :scan_root_trigger

    const-string v5, ".ssa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :scan_root_trigger

    const-string v5, ".vtt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :scan_root_trigger

    const-string v5, ".sub"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :scan_root_next

    :scan_root_trigger
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    # Record MP4s even when no matching download-row identity can be recovered.
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v5
    const-string v6, ".mp4"
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :scan_root_reconcile

    sget-object v5, Lcom/shabakaty/cinemana/features/MkvReconciler;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/content/Context;
    if-eqz v5, :scan_root_reconcile

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    if-eqz v6, :scan_root_reconcile
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    move-result v7
    if-nez v7, :scan_root_reconcile

    invoke-static {v5, v6, v4}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordDiscovery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :scan_root_reconcile
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V

    :scan_root_next
    add-int/lit8 v2, v2, 0x1

    goto :scan_root_loop

    :scan_root_done
    return-void
.end method


.method private static findDatabaseItemForToken(Landroid/content/Context;Ljava/lang/String;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    .locals 12

    const/4 v0, 0x0
    if-eqz p0, :find_db_item_done
    if-eqz p1, :find_db_item_done

    :try_start_find_db_item
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    if-eqz v1, :find_db_context_ready
    move-object p0, v1

    :find_db_context_ready
    instance-of v1, p0, Lcom/shabakaty/cinemana/CinemanaApplication;
    if-eqz v1, :find_db_item_done

    const-string v1, "getDownloadsDao"
    filled-new-array {p0, p0}, [Ljava/lang/Object;
    move-result-object v2
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :find_db_item_done

    const-string v2, "readAllDownloads"
    filled-new-array {v1}, [Ljava/lang/Object;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    instance-of v3, v2, Ljava/util/List;
    if-eqz v3, :find_db_item_done
    check-cast v2, Ljava/util/List;

    check-cast p0, Lcom/shabakaty/cinemana/CinemanaApplication;
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;
    move-result-object v3
    if-eqz v3, :find_db_item_done

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v4

    :find_db_row_loop
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :find_db_item_done

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    if-eqz v5, :find_db_row_loop

    const-string v6, "x"
    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    if-eqz v6, :find_db_row_loop

    invoke-static {v6}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    if-eqz v7, :find_db_row_loop
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :find_db_row_loop

    new-instance v7, Ljava/io/File;
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->mp4Complete(Ljava/lang/Object;Ljava/io/File;)Z
    move-result v8
    if-eqz v8, :find_db_row_loop

    const-string v8, "s"
    invoke-static {v5, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    if-eqz v8, :find_db_row_loop
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-nez v9, :find_db_row_loop

    const-string v9, "readCombinedById"
    filled-new-array {v3, v8}, [Ljava/lang/Object;
    move-result-object v10
    invoke-static {v9, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v9
    if-eqz v9, :find_db_row_loop

    const-string v10, "cinemanaDownloadItem"
    invoke-static {v9, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v10
    if-eqz v10, :find_db_row_loop

    # Confirm the linked app item resolves to the same completed filename token.
    invoke-static {p0, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;
    move-result-object v11
    if-eqz v11, :find_db_row_loop
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v11
    invoke-static {v11}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    if-eqz v11, :find_db_row_loop
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v11
    if-eqz v11, :find_db_row_loop

    move-object v0, v10
    goto :try_end_find_db_item

    :try_end_find_db_item
    .catch Ljava/lang/Throwable; {:try_start_find_db_item .. :try_end_find_db_item} :find_db_item_failed

    goto :find_db_item_done

    :find_db_item_failed
    move-exception v1

    :find_db_item_done
    return-object v0
.end method

.method public static reconcileDiskVideo(Landroid/content/Context;Ljava/io/File;)Z
    .locals 8

    if-eqz p0, :disk_video_rejected
    if-eqz p1, :disk_video_rejected

    :try_start_disk_video
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->start(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :disk_video_rejected

    invoke-virtual {p1}, Ljava/io/File;->length()J
    move-result-wide v0
    const-wide/16 v2, 0x400
    cmp-long v0, v0, v2
    if-lez v0, :disk_video_rejected

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :disk_video_rejected
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :disk_video_rejected

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->findItemForDiskSource(Landroid/content/Context;Ljava/io/File;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    move-result-object v2
    if-eqz v2, :disk_video_mapping_wait

    invoke-static {p0, v2, p1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileDiskOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/io/File;)Z
    move-result v3
    if-eqz v3, :disk_video_rejected
    const/4 v0, 0x1
    return v0

    :disk_video_mapping_wait
    const-string v2, "WAIT_ITEM_MAPPING"
    const-string v3, "no_unique_download_item_matches_exact_mkv_destination_basename"
    const-string v4, ""
    move-object v5, p0
    move-object v6, v1
    move-object v7, v2
    move-object v2, v0
    move-object v3, v4
    const-string v4, "no_unique_download_item_matches_exact_mkv_destination_basename"
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_disk_video
    .catch Ljava/lang/Throwable; {:try_start_disk_video .. :try_end_disk_video} :disk_video_exception

    :disk_video_rejected
    const/4 v0, 0x0
    return v0

    :disk_video_exception
    move-exception v0
    const/4 v0, 0x0
    return v0
.end method

.method private static findItemForDiskSource(Landroid/content/Context;Ljava/io/File;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    .locals 16

    const/4 v0, 0x0
    if-eqz p0, :disk_item_not_found
    if-eqz p1, :disk_item_not_found

    :try_start_disk_item
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    if-eqz v1, :disk_item_context_ready
    move-object p0, v1

    :disk_item_context_ready
    instance-of v1, p0, Lcom/shabakaty/cinemana/CinemanaApplication;
    if-eqz v1, :disk_item_not_found

    check-cast p0, Lcom/shabakaty/cinemana/CinemanaApplication;
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;
    move-result-object v1
    if-eqz v1, :disk_item_not_found

    # First, match the app's actual download items against the exact intended MKV basename.
    invoke-interface {v1}, Lcom/shabakaty/downloader/jw0;->j()Ljava/util/List;
    move-result-object v2
    const/4 v3, 0x0
    const/4 v4, 0x0
    if-eqz v2, :disk_item_try_dao

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v5

    :disk_item_manager_loop
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    move-result v6
    if-eqz v6, :disk_item_manager_done

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v6
    if-eqz v6, :disk_item_manager_loop

    instance-of v7, v6, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    if-eqz v7, :disk_item_manager_loop

    check-cast v6, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    iget-object v7, v6, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    invoke-static {p1, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->matchesDiskOutputPath(Ljava/io/File;Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :disk_item_manager_loop

    const-string v7, "id"
    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    if-eqz v7, :disk_item_manager_ambiguous
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-nez v8, :disk_item_manager_ambiguous

    if-nez v3, :disk_item_manager_compare
    move-object v3, v6
    move-object v4, v7
    goto :disk_item_manager_loop

    :disk_item_manager_compare
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :disk_item_manager_loop
    goto :disk_item_not_found

    :disk_item_manager_ambiguous
    goto :disk_item_not_found

    :disk_item_manager_done
    if-eqz v3, :disk_item_try_dao
    move-object v0, v3
    goto :disk_item_end

    # If the live manager list lacks a row, resolve through the persistent downloads DAO.
    :disk_item_try_dao
    const-string v2, "getDownloadsDao"
    filled-new-array {p0, p0}, [Ljava/lang/Object;
    move-result-object v3
    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    if-eqz v2, :disk_item_not_found

    const-string v3, "readAllDownloads"
    filled-new-array {v2}, [Ljava/lang/Object;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    instance-of v4, v3, Ljava/util/List;
    if-eqz v4, :disk_item_not_found
    check-cast v3, Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v4

    const/4 v5, 0x0
    const/4 v6, 0x0

    :disk_item_dao_loop
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :disk_item_dao_done

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v7
    if-eqz v7, :disk_item_dao_loop

    const-string v8, "x"
    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-static {p1, v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->matchesDiskOutputPath(Ljava/io/File;Ljava/lang/String;)Z
    move-result v9
    if-eqz v9, :disk_item_dao_loop

    const-string v9, "s"
    invoke-static {v7, v9}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    if-eqz v9, :disk_item_dao_loop
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    move-result v10
    if-nez v10, :disk_item_dao_loop

    const-string v10, "readCombinedById"
    filled-new-array {v1, v9}, [Ljava/lang/Object;
    move-result-object v11
    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v10
    if-eqz v10, :disk_item_dao_loop

    const-string v11, "cinemanaDownloadItem"
    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v11
    instance-of v12, v11, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    if-eqz v12, :disk_item_dao_loop

    check-cast v11, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    iget-object v12, v11, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    invoke-static {p1, v12}, Lcom/shabakaty/cinemana/features/MkvExporter;->matchesDiskOutputPath(Ljava/io/File;Ljava/lang/String;)Z
    move-result v12
    if-eqz v12, :disk_item_dao_loop

    if-nez v5, :disk_item_dao_compare
    move-object v5, v11
    move-object v6, v9
    goto :disk_item_dao_loop

    :disk_item_dao_compare
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-nez v12, :disk_item_dao_loop
    goto :disk_item_not_found

    :disk_item_dao_done
    if-eqz v5, :disk_item_not_found
    move-object v0, v5

    :disk_item_end
    :try_end_disk_item
    .catch Ljava/lang/Throwable; {:try_start_disk_item .. :try_end_disk_item} :disk_item_failed

    return-object v0

    :disk_item_failed
    move-exception v1

    :disk_item_not_found
    const/4 v0, 0x0
    return-object v0
.end method

.method private static reconcileDiskOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/io/File;)Z
    .locals 10

    if-eqz p0, :disk_one_no
    if-eqz p1, :disk_one_no
    if-eqz p2, :disk_one_no

    :try_start_disk_one
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->matchesDiskOutputPath(Ljava/io/File;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :disk_one_no

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :disk_one_no
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :disk_one_no

    # If the exact destination is already complete, retire the recovery entries instead of rebuilding.
    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z
    move-result v5
    if-eqz v5, :disk_one_check_manifest
    invoke-virtual {v4}, Ljava/io/File;->length()J
    move-result-wide v5
    const-wide/16 v7, 0x400
    cmp-long v5, v5, v7
    if-lez v5, :disk_one_check_manifest

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeIfFinal(Landroid/content/Context;Ljava/lang/Object;)V
    const/4 v0, 0x1
    return v0

    :disk_one_check_manifest
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isReadyToken(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :disk_one_ready
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/features/MkvReconciler;->filesystemInputsReadyForDisk(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/io/File;)Z
    move-result v3

    :disk_one_ready
    if-eqz v3, :disk_one_wait

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->onRecoveredVideo(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/io/File;)Z
    move-result v3
    if-eqz v3, :disk_one_no

    move-object v4, p0
    move-object v5, v2
    const-string v6, "MKV_QUEUED"
    move-object v7, v1
    iget-object v8, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    const-string v9, "explicit_disk_mp4_and_exact_subtitle_plan_verified;guarded_exporter_accepted"
    invoke-static/range {v4 .. v9}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0x1
    return v0

    :disk_one_wait
    move-object v4, p0
    move-object v5, v2
    const-string v6, "WAITING_PLAN_OR_SUBTITLES"
    move-object v7, v1
    iget-object v8, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;
    const-string v9, "source_mp4_found_but_exact_saved_subtitle_plan_not_verified;no_conversion_started"
    invoke-static/range {v4 .. v9}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_disk_one
    .catch Ljava/lang/Throwable; {:try_start_disk_one .. :try_end_disk_one} :disk_one_exception

    :disk_one_no
    const/4 v0, 0x0
    return v0

    :disk_one_exception
    move-exception v0
    const/4 v0, 0x0
    return v0
.end method

.method private static filesystemInputsReadyForDisk(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/io/File;)Z
    .locals 7

    if-eqz p0, :disk_inputs_no
    if-eqz p1, :disk_inputs_no
    if-eqz p2, :disk_inputs_no

    :try_start_disk_inputs
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :disk_inputs_no
    invoke-virtual {p2}, Ljava/io/File;->length()J
    move-result-wide v0
    const-wide/16 v2, 0x400
    cmp-long v0, v0, v2
    if-lez v0, :disk_inputs_no

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :disk_inputs_no
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :disk_inputs_no

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->expectedSubtitleCount(Ljava/lang/String;)I
    move-result v2
    if-ltz v2, :disk_inputs_recover_plan

    :disk_inputs_plan_ready
    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Inputs114;->verified(Ljava/lang/Object;Ljava/io/File;)Ljava/util/List;
    move-result-object v3
    if-eqz v3, :disk_inputs_no
    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v4
    if-ne v4, v2, :disk_inputs_no

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    invoke-static {p0, v1, v5, v2, v4}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->recoverReadyFromVerifiedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    move-result v0
    :try_end_disk_inputs
    .catch Ljava/lang/Throwable; {:try_start_disk_inputs .. :try_end_disk_inputs} :disk_inputs_exception

    if-eqz v0, :disk_inputs_no
    const/4 v0, 0x1
    return v0

    :disk_inputs_recover_plan
    # Rebuild only the count from the persisted dependency plan, never from arbitrary neighboring files.
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Inputs114;->model(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v3
    if-eqz v3, :disk_inputs_no
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->subtitles(Ljava/lang/Object;)Ljava/util/List;
    move-result-object v3
    if-eqz v3, :disk_inputs_no
    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v2
    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->beginPlan(Landroid/content/Context;Ljava/lang/String;I)V
    goto :disk_inputs_plan_ready

    :disk_inputs_exception
    move-exception v0

    :disk_inputs_no
    const/4 v0, 0x0
    return v0
.end method
