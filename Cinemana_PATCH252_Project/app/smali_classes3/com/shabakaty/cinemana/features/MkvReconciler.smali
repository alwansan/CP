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

    const-string v1, "MKV_QUEUED"
    const-string v2, "subtitle_plan_and_files_verified;manifest_ready_or_rebuilt"
    invoke-static {p0, p1, v1, v2}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->onVideoCompleted(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
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
    .locals 8

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/shabakaty/cinemana/features/MkvReconciler;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V

    sget-object v2, Lcom/shabakaty/cinemana/features/MkvReconciler;->ITEMS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz v3, :cond_0

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    instance-of v3, v4, Lcom/shabakaty/cinemana/CinemanaApplication;

    if-eqz v3, :cond_3

    check-cast v4, Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {v4}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/jw0;->j()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MKV_DB_RECOVER token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileOne(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    return-void
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    :goto_1
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
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :fs_not_ready

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

    const-string v7, "DISCOVERED_MP4"
    const-string v8, "filesystem_mp4_found;checking_item_identity_plan_subtitles_and_final_mkv"
    const-string v3, ""
    move-object v9, v5
    move-object v10, v6
    move-object v11, v7
    move-object v12, v4
    move-object v13, v3
    move-object v14, v8
    invoke-static/range {v9 .. v14}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :scan_root_reconcile
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V

    :scan_root_next
    add-int/lit8 v2, v2, 0x1

    goto :scan_root_loop

    :scan_root_done
    return-void
.end method
