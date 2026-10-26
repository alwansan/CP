.class public final Lcom/shabakaty/cinemana/ca1/Restart108;
.super Ljava/lang/Object;
.source "Restart108.java"


# static fields
.field static final EXP:Ljava/lang/String; = "com.shabakaty.cinemana.features.MkvExporter"

.field static final MAN:Ljava/lang/String; = "com.shabakaty.cinemana.features.MkvManifestStore"

.field static final attempted:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static volatile context:Ljava/lang/Object;

.field static dirty:Z

.field static generation:I

.field static volatile manager:Ljava/lang/Object;

.field static final mkvChecked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static next:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field static final observations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static pass:I

.field static volatile populated:Z

.field static final repairAttempted:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static scanning:Z

.field static serviceRequested:J

.field static final settled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static started:Z

.field static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->observations:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->mkvChecked:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->attempted:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->repairAttempted:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->settled:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const-string v0, "com.liulishuo.filedownloader.FileDownloadList"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getImpl"

    invoke-static {v0, v3, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "get"

    invoke-static {v0, p0, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "getOrigin"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v3, "isRunning"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static admitted(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 46
    const-string v0, "putString"

    const-string v1, "getApplicationContext"

    const-string v2, "a"

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    return v6

    :cond_0
    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "getId"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    const-string v7, "e"

    invoke-static {p1, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->remember(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "ca1_restart108"

    invoke-static {v4, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "edit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    new-array v1, p1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "|RUN"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getPath"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-array p1, p1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    aput-object v1, p1, v6

    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "commit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V

    return v6

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "durable intent write failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "restart_intent_error108"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return v3
.end method

.method public static declared-synchronized attach(Ljava/lang/Object;)V
    .locals 4

    const-class v0, Lcom/shabakaty/cinemana/ca1/Restart108;

    monitor-enter v0

    .line 42
    :try_start_0
    const-string v1, "a"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "getApplicationContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    const-string p0, "MANAGER_ATTACHED"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "restart_init_error108"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 42
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static bootstrap(Ljava/lang/Object;)V
    .locals 2

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "getApplicationContext"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string p0, "BOOT_READY"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Performance116;->start()V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->start(Ljava/lang/Object;)V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->cleanupAfterUpdate(Ljava/lang/Object;)V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->start(Ljava/lang/Object;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V

    # The normal recovery bootstrap runs first. A delayed, bounded second audit then looks for
    # MP4 files that missed registration while the app was restoring its download manager.
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;
    instance-of v0, p0, Landroid/content/Context;
    if-eqz v0, :repair_autostart_done
    check-cast p0, Landroid/content/Context;
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RepairJournal129;->scheduleAuto(Landroid/content/Context;)V
    :repair_autostart_done
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "boot_error"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static canRestore(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 44
    const-string v0, "a"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getId"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->canRetry(Ljava/lang/Object;I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "ca1_delete_intent"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getBoolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "e"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    const-string p1, "restore_gate_error"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return v1
.end method

.method public static canRetry(Ljava/lang/Object;I)Z
    .locals 7

    .line 45
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "a"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "ca1_restart108"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getString"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, ""

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "|PAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "readDownloadsByTaskId"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "getDownloadsDao"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v0

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ca1_delete_intent"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getBoolean"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "s"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "retry_gate_error"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method static cls(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static converting(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    const-string v0, "com.shabakaty.cinemana.features.MkvExporter"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ACTIVE_JOB_KEYS"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "com.shabakaty.cinemana.features.MkvExporter"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "JOB_LOCK"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static decode(Ljava/lang/String;)Ljava/util/Properties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    return-object v0
.end method

.method static deleted(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v2, "ca1_delete_intent"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, p0

    const-string p0, "getBoolean"

    invoke-static {v1, p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static digest(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const-string v3, "%02x"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method static encode(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;
    .locals 13

    .line 36
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadTaskId"

    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int p1, v2

    const-string v2, "getDownloadsDao"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 37
    const-string v2, "readAllDownloads"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "x"

    const-string v7, "resolvePath"

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v8, "s"

    invoke-static {v3, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p1, :cond_1

    int-to-long v8, p1

    const-string v10, "r"

    invoke-static {v3, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    :cond_1
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    if-eqz v6, :cond_0

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->mp4Complete(Ljava/lang/Object;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 38
    :cond_3
    if-nez v2, :cond_4

    return-object v0

    :cond_4
    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {v7, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 39
    :catch_0
    move-exception p0

    const-string p1, "exact_video_error"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method static varargs exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    const-string v0, "com.shabakaty.cinemana.features.MkvExporter"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static identityToken(Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    .line 32
    const-string v0, ""

    :try_start_0
    const-string v1, "path"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadTaskId"

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int p0, v3

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->app()Ljava/lang/Object;

    move-result-object v3

    .line 33
    :cond_0
    if-eqz v3, :cond_2

    if-eqz p0, :cond_2

    const-string v4, "readDownloadsByTaskId"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "getDownloadsDao"

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v10, 0x1

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v6, "s"

    invoke-static {v4, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "x"

    invoke-static {v4, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    return-object v4

    :cond_1
    const-string v4, "ca1_restart108"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getString"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v9

    aput-object v0, v5, v10

    invoke-static {v3, v4, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    return-object p0

    .line 34
    :cond_2
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 35
    :catch_0
    move-exception p0

    return-object v0
.end method

.method static journal(Ljava/lang/String;)Ljava/util/Properties;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, ""

    aput-object v2, v1, p0

    const-string p0, "getString"

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static journalPrefs()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v1, "ca1_restart108"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "journal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$service$2()V
    .locals 5

    .line 30
    :try_start_0
    const-string v0, "com.shabakaty.downloader.services.DownloaderService"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NATIVE_SERVICE_REQUESTED"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "service_error"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "restart108"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static synthetic lambda$tick$3(I)V
    .locals 0

    .line 146
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->tick(I)V

    return-void
.end method

.method static synthetic lambda$wake$1(I)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->tick(I)V

    return-void
.end method

.method static legacy(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    const-string v0, "x"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.shabakaty.cinemana.features.MkvManifestStore"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string v5, "tokenFromPath"

    invoke-static {v1, v5, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object p0, v5, v2

    const-string p0, "taskStateKey"

    invoke-static {v0, p0, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v1, "cnm_mkv_manifest_v66"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, ""

    aput-object p0, v1, v2

    const-string p0, "getString"

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 21
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method static main(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.Application"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getProcessName"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "getPackageName"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :cond_0
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.liulishuo.filedownloader.util.FileDownloadUtils"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v0

    const-string p0, "isDownloaderProcess"

    invoke-static {v2, p0, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method static matches(Ljava/io/File;Ljava/util/Properties;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->valid(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sha256"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static moving(Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 92
    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Fresh121;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->journal(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "source"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->taskFor(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "task"

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 94
    const-string p0, "target"

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "phase"

    const-string p1, "MOVING"

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->encode(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 93
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "move identity mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "missing ready checkpoint"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    move-exception p0

    const-string p1, "restart_move_error108"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MKV move checkpoint failed"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static mp4Complete(Ljava/lang/Object;Ljava/io/File;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 62
    :cond_0
    const-string v0, "y"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 63
    :cond_1
    const-string v0, "COMPLETED"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    return v4

    .line 64
    :cond_2
    const-string v0, "com.shabakaty.cinemana.features.MkvManifestStore"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "tokenFromPath"

    invoke-static {v5, v7, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v7, "cnm_mkv_manifest_v66"

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 65
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v5, v10, v1

    const-string v11, "videoStateKey"

    invoke-static {v9, v11, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, ""

    aput-object v9, v8, v4

    const-string v10, "getString"

    invoke-static {v6, v10, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v1

    const-string v5, "videoPathKey"

    invoke-static {v0, v5, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v1

    aput-object v9, v7, v4

    invoke-static {v6, v10, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    const-string v5, "t"

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p0, v5, v2

    if-ltz p0, :cond_3

    const-string p0, "COMPLETED_VERIFIED"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 62
    :cond_4
    :goto_0
    return v1

    .line 61
    :cond_5
    :goto_1
    return v1
.end method

.method static number(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method static observe(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    const-string v0, "s"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " state="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Restart108;->observations:Ljava/util/Map;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " task="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " phase="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static paused(Ljava/lang/Object;I)V
    .locals 6

    .line 47
    const-string v0, ""

    const-string v1, "intent:"

    :try_start_0
    const-string v2, "a"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->pause(I)V

    const-string v2, "ca1_restart108"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getString"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "restart_pause_error108"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "getSharedPreferences"

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, ""

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "getString"

    invoke-static {p0, v3, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v1, "edit"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p2, :cond_3

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "remove"

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    const-string p1, "putString"

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "commit"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "durable write failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ready(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V
    .locals 8

    .line 84
    const-string v0, "id"

    :try_start_0
    const-string v1, "getApplicationContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Fresh121;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->deleted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->taskFor(Ljava/lang/Object;)I

    move-result v1

    .line 85
    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {p2, v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->valid(Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v3, v0, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "task"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "phase"

    const-string v4, "READY"

    invoke-virtual {v3, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source"

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sha256"

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->digest(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    const-string p2, "readDownloadsByTaskId"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "getDownloadsDao"

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v6, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    aput-object v6, v0, v2

    sget-object v6, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v6, v0, v7

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {p2, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    const-string v1, "x"

    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->mp4Complete(Ljava/lang/Object;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "input"

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "inputSize"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    :cond_0
    sget-object p2, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/shabakaty/cinemana/ca1/Fresh121;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->requestEpoch:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "requestEpoch"

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->requestEpoch:Ljava/lang/String;

    invoke-virtual {v3, p2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->encode(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 85
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid final output"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "deleted item"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    move-exception p0

    const-string p1, "restart_ready_error108"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MKV checkpoint failed"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static reconcile()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    const-string v1, "b"

    const-string v2, "y"

    const-string v3, "|"

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v0, v7

    const-string v5, "getDownloadsDao"

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v8, "h"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v5, v0, v6

    const-string v9, "readAllDownloads"

    invoke-static {v9, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v9

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 121
    :try_start_0
    const-string v0, "s"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "x"

    invoke-static {v11, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-static {v11, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v13

    long-to-int v14, v13

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->deleted(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v0, "DELETED"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token:"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ":"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    const-string v7, "readCombinedById"

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v8, v13, v6

    const/4 v15, 0x1

    aput-object v0, v13, v15

    invoke-static {v7, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const-string v13, "cinemanaDownloadItem"

    invoke-static {v7, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    .line 123
    :goto_1
    const-string v13, "downloadTaskId"

    if-eqz v7, :cond_4

    move-object/from16 v17, v5

    :try_start_1
    invoke-static {v7, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v5, v4

    if-eqz v5, :cond_3

    if-eq v5, v14, :cond_3

    const-string v0, "FOREIGN_TASK"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v17

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_3
    if-nez v5, :cond_5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v13, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    move-object v7, v1

    move-object v12, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v8

    move-object v3, v9

    move-object/from16 v21, v10

    move-object/from16 v25, v17

    goto/16 :goto_18

    .line 123
    :cond_4
    move-object/from16 v17, v5

    .line 124
    :cond_5
    :goto_2
    if-eqz v7, :cond_7

    :try_start_2
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->journal(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v15, Lcom/shabakaty/cinemana/ca1/Restart108;->repairAttempted:Ljava/util/Map;

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v19, :cond_6

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v19, v4, v19

    const-wide/16 v21, 0x4e20

    cmp-long v23, v19, v21

    if-gez v23, :cond_6

    const-string v0, "TRANSACTION_RETRY_COOLDOWN"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v5, v17

    :goto_3
    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v15, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v4, v17

    :try_start_5
    invoke-static {v7, v11, v8, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->repair(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v0, "TRANSACTION_RECONCILED_OR_ACTIVE"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_3

    .line 138
    :catch_1
    move-exception v0

    move-object/from16 v4, v17

    goto/16 :goto_16

    .line 124
    :cond_7
    move-object/from16 v4, v17

    .line 125
    :cond_8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v19, v7

    invoke-static {v11, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    const-string v7, "path"

    const-string v20, ""

    if-nez v19, :cond_9

    move-object/from16 v21, v10

    move/from16 v22, v14

    move-object/from16 v10, v19

    move-object/from16 v19, v12

    move-object/from16 v12, v20

    goto :goto_4

    :cond_9
    :try_start_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    move-object/from16 v21, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v12

    :try_start_7
    invoke-static {v10, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v22, v14

    invoke-static {v10, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Lcom/shabakaty/cinemana/ca1/Restart108;->settled:Ljava/util/Map;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v0, "FINAL_COMMIT_UNCHANGED"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    move-object/from16 v10, v21

    :goto_5
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-static {v11, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v5, v14, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->valid(Ljava/io/File;J)Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f

    const-string v15, "COMPLETED"

    if-eqz v12, :cond_10

    :try_start_8
    sget-object v12, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v12, :cond_b

    :try_start_9
    const-string v12, "com.shabakaty.cinemana.ca1.Final100"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "restore"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v24, v3

    move-object/from16 v18, v15

    const/4 v3, 0x2

    :try_start_a
    new-array v15, v3, [Ljava/lang/Object;

    move-object/from16 v3, v18

    sget-object v19, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v19, v15, v17

    const/16 v16, 0x1

    aput-object v11, v15, v16

    invoke-static {v12, v14, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    .line 138
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v24, v3

    :goto_6
    move-object v7, v1

    move-object v12, v2

    goto/16 :goto_15

    .line 125
    :cond_b
    move-object/from16 v24, v3

    move-object v3, v15

    :goto_7
    if-eqz v10, :cond_e

    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    const-string v14, "/work/"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    if-eqz v12, :cond_c

    :try_start_c
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {v0, v10, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->ready(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V

    invoke-static {v10, v11, v8, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->repair(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object/from16 v25, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    goto/16 :goto_9

    :cond_c
    :try_start_d
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    const-string v12, "promoteDatabaseWithRetry"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    sget-object v15, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const/4 v15, 0x1

    aput-object v10, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    new-instance v15, Ljava/io/File;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-object/from16 v25, v4

    :try_start_e
    const-string v4, "ensureLogDir"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    const/4 v8, 0x0

    :try_start_f
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4, v9}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const-string v8, "restart108.log"

    invoke-direct {v15, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v15, v14, v4

    invoke-static {v12, v14}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 138
    :catch_4
    move-exception v0

    goto/16 :goto_b

    .line 125
    :cond_d
    move-object/from16 v25, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    :goto_8
    const-string v4, "com.shabakaty.cinemana.ca1.Commit105"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v8, "repair"

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Object;

    sget-object v9, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v12, v14

    const/4 v9, 0x1

    aput-object v10, v12, v9

    invoke-static {v4, v8, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v10, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    move/from16 v4, v22

    int-to-long v9, v4

    cmp-long v4, v7, v9

    if-nez v4, :cond_f

    invoke-static {v11, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v9, v7, v4

    if-nez v9, :cond_f

    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->settled:Ljava/util/Map;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 138
    :catch_5
    move-exception v0

    goto :goto_a

    .line 125
    :cond_e
    move-object/from16 v25, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    :cond_f
    :goto_9
    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    goto/16 :goto_5

    .line 138
    :catch_6
    move-exception v0

    move-object/from16 v24, v3

    :goto_a
    move-object/from16 v25, v4

    :goto_b
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    goto/16 :goto_14

    .line 126
    :cond_10
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v3, v15

    move/from16 v4, v22

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-eqz v0, :cond_11

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "isServiceConnected"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "WAIT_NATIVE_SERVICE"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "bindService"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->service()V

    goto :goto_c

    :cond_11
    const-string v0, "NATIVE_ACTIVE"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 127
    :cond_12
    const-wide/16 v6, 0x2710

    if-eqz v10, :cond_16

    invoke-static {v11, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->mp4Complete(Ljava/lang/Object;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 128
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->converting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "MKV_NATIVE_ACTIVE"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 129
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->mkvChecked:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v8, v12

    cmp-long v3, v12, v6

    if-gez v3, :cond_14

    const-string v0, "MKV_INPUT_RECHECK_COOLDOWN"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/ca1/Inputs114;->verified(Ljava/lang/Object;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "MKV_WAIT_COMMITTED_INPUTS"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 131
    :cond_15
    const-string v0, "MP4_COMPLETE_REQUEUE_MKV"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.shabakaty.cinemana.features.MkvReconciler"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "register"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v10, v5, v4

    invoke-static {v0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onVideoCompleted"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 133
    :cond_16
    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    const-string v8, "i"

    const-string v9, "|RUN"

    const-string v12, "getString"

    const-string v13, "intent:"

    if-eqz v3, :cond_1a

    const/4 v3, 0x2

    :try_start_10
    new-array v6, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v20, v6, v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    move-object/from16 v3, v27

    :try_start_11
    invoke-static {v3, v12, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v19

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ".temp"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_18

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v12, ".mp4"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v18, 0x0

    cmp-long v5, v12, v18

    if-lez v5, :cond_18

    invoke-static {v11, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v5, v12, v18

    if-lez v5, :cond_18

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v11, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v5, v12, v18

    if-gtz v5, :cond_18

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v5

    if-nez v5, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-eqz v5, :cond_18

    sget-boolean v5, Lcom/shabakaty/cinemana/ca1/Restart108;->populated:Z

    if-eqz v5, :cond_18

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->converting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->attempted:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v6, v9

    const-wide/32 v12, 0xea60

    cmp-long v5, v9, v12

    if-ltz v5, :cond_19

    :cond_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-static {v0, v8, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "COMPLETED_TEMP_NATIVE_RECONCILE"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    const-string v0, "COMPLETED_SOURCE_MISSING_OR_NOT_VIDEO"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    :goto_d
    move-object v9, v3

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 138
    :catch_7
    move-exception v0

    move-object/from16 v3, v27

    goto/16 :goto_13

    .line 134
    :cond_1a
    move-object/from16 v3, v27

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v10, v15

    const/4 v14, 0x1

    aput-object v20, v10, v14

    invoke-static {v3, v12, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v12

    if-nez v12, :cond_21

    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->legacy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v0, v12, v14}, Lcom/shabakaty/cinemana/ca1/Restart108;->wanted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1b

    move-object v7, v1

    move-object v12, v2

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_11

    :cond_1b
    sget-object v10, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-eqz v10, :cond_1f

    sget-boolean v10, Lcom/shabakaty/cinemana/ca1/Restart108;->populated:Z

    if-nez v10, :cond_1c

    move-object v7, v1

    move-object v12, v2

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_f

    .line 135
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v10, Lcom/shabakaty/cinemana/ca1/Restart108;->attempted:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    if-eqz v12, :cond_1d

    :try_start_12
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v18, v14, v18

    sget v12, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    const/4 v5, 0x5

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    const-wide/16 v22, 0x1

    shl-long v22, v22, v5

    mul-long v5, v22, v6

    move-object v7, v1

    move-object v12, v2

    const-wide/32 v1, 0x493e0

    :try_start_13
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    cmp-long v5, v18, v1

    if-gez v5, :cond_1e

    move-object v9, v3

    move-object v1, v7

    move-object v2, v12

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 138
    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    move-object v7, v1

    move-object v12, v2

    :goto_e
    move-object v2, v0

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1b

    .line 135
    :cond_1d
    move-object v7, v1

    move-object v12, v2

    .line 137
    :cond_1e
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    const/4 v1, 0x1

    :try_start_15
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    const/4 v5, 0x0

    :try_start_16
    aput-object v4, v2, v5

    invoke-static {v0, v8, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NATIVE_RESUME_SUBMITTED"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    goto/16 :goto_1d

    :catch_a
    move-exception v0

    goto/16 :goto_19

    :catch_b
    move-exception v0

    goto/16 :goto_18

    .line 134
    :cond_1f
    move-object v7, v1

    move-object v12, v2

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_f
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-nez v0, :cond_20

    const-string v0, "WAIT_NATIVE_MANAGER"

    goto :goto_10

    :cond_20
    const-string v0, "WAIT_MANAGER_MAP"

    :goto_10
    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-nez v0, :cond_22

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->service()V

    goto :goto_12

    :cond_21
    move-object v7, v1

    move-object v12, v2

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_11
    const-string v0, "PAUSED_OR_NO_RUN_INTENT"

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    :cond_22
    :goto_12
    move-object v9, v3

    move-object v1, v7

    move-object v2, v12

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 138
    :catch_c
    move-exception v0

    goto :goto_1a

    :catch_d
    move-exception v0

    :goto_13
    move-object v7, v1

    move-object v12, v2

    goto :goto_18

    :catch_e
    move-exception v0

    :goto_14
    move-object v7, v1

    move-object v12, v2

    move-object/from16 v3, v27

    goto :goto_18

    :catch_f
    move-exception v0

    move-object v7, v1

    move-object v12, v2

    move-object/from16 v24, v3

    :goto_15
    move-object/from16 v25, v4

    move-object/from16 v26, v8

    move-object v3, v9

    goto :goto_18

    :catch_10
    move-exception v0

    :goto_16
    move-object v7, v1

    move-object v12, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    goto :goto_17

    :catch_11
    move-exception v0

    move-object v7, v1

    move-object v12, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    :goto_17
    move-object/from16 v26, v8

    move-object v3, v9

    move-object/from16 v21, v10

    :goto_18
    const/4 v1, 0x1

    :goto_19
    const/4 v5, 0x0

    :goto_1a
    move-object v2, v0

    :goto_1b
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->observe(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    goto :goto_1c

    :catch_12
    move-exception v0

    :goto_1c
    const-string v0, "restart_item_error108"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1d
    move-object v9, v3

    move-object v1, v7

    move-object v2, v12

    move-object/from16 v10, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 139
    :cond_23
    return-void
.end method

.method static repair(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->journal(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 99
    :cond_0
    const-string v6, "requestEpoch"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {v7, v3}, Lcom/shabakaty/cinemana/ca1/Fresh121;->epoch(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    return v5

    .line 100
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "r"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "task"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 101
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->converting(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_10

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v6, v8

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v6, Ljava/io/File;

    const-string v8, "source"

    invoke-virtual {v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "target"

    invoke-virtual {v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 102
    invoke-static {v9, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->matches(Ljava/io/File;Ljava/util/Properties;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v6, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->matches(Ljava/io/File;Ljava/util/Properties;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v9, v6

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    if-nez v9, :cond_5

    return v5

    .line 103
    :cond_5
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->deleted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    return v7

    .line 104
    :cond_6
    new-instance v8, Ljava/io/File;

    const-string v11, "ensureLogDir"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    const-string v12, "restart108.log"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/work/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v11, :cond_9

    .line 106
    new-array v11, v12, [Ljava/lang/Object;

    sget-object v15, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    aput-object v15, v11, v5

    aput-object v9, v11, v7

    aput-object v0, v11, v14

    aput-object v8, v11, v13

    const-string v9, "organizeMkv"

    invoke-static {v9, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    return v7

    :cond_7
    const-string v11, "finalFile"

    invoke-static {v9, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    if-eqz v9, :cond_8

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v9, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->matches(Ljava/io/File;Ljava/util/Properties;)Z

    move-result v11

    if-nez v11, :cond_9

    :cond_8
    return v7

    .line 108
    :cond_9
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->deleted(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    return v7

    .line 109
    :cond_a
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v15, v12, [Ljava/lang/Object;

    sget-object v16, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    aput-object v16, v15, v5

    aput-object v0, v15, v7

    aput-object v9, v15, v14

    aput-object v8, v15, v13

    const-string v0, "promoteDatabaseWithRetry"

    invoke-static {v0, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v7

    .line 110
    :cond_b
    new-array v0, v14, [Ljava/lang/Object;

    aput-object p3, v0, v5

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v7

    const-string v10, "readDownloadsByTaskId"

    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v10, v14, [Ljava/lang/Object;

    aput-object p2, v10, v5

    aput-object v3, v10, v7

    const-string v11, "readCombinedById"

    invoke-static {v11, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "cinemanaDownloadItem"

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 111
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    const-string v15, "x"

    invoke-static {v0, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "downloadTaskId"

    const-string v13, "y"

    const-string v14, "path"

    if-eqz v8, :cond_e

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v14}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v0, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v19, v7, v17

    if-nez v19, :cond_e

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v17

    cmp-long v19, v7, v17

    if-eqz v19, :cond_task_verified129

    const-wide/16 v17, 0x0

    cmp-long v19, v7, v17

    if-nez v19, :cond_e

    const-string v7, "RECOVERY_ACCEPT_ZERO_TASK_AFTER_PATH_SIZE_CHECK"

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    :cond_task_verified129

    .line 112
    new-array v0, v12, [Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    aput-object v1, v0, v5

    const/4 v1, 0x1

    aput-object v10, v0, v1

    const/4 v2, 0x2

    aput-object v9, v0, v2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "hasNoSubPrefix"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "writeIdentityRecord"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.shabakaty.cinemana.features.MkvStateStore"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object v10, v1, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v1, v7

    const-string v2, "READY"

    const/4 v8, 0x3

    aput-object v2, v1, v8

    const-string v2, "setBusy"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.shabakaty.cinemana.ca1.Commit105"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object v10, v1, v2

    aput-object v9, v1, v7

    const-string v2, "completed"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "input"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-string v0, "inputSize"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-nez v0, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 115
    :cond_c
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v6, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->matches(Ljava/io/File;Ljava/util/Properties;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 116
    :cond_d
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restart_committed108"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x1

    return v0

    .line 111
    :cond_e
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "database commit incomplete target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " downloads="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " primary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10, v14}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " expected="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " task="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " expectedTask="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsafe checkpoint path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "journal identity mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static root()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "android.os.Environment"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getExternalStorageDirectory"

    invoke-static {v1, v3, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "Cinemana"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static safe(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->root()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static service()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/shabakaty/cinemana/ca1/Restart108;->serviceRequested:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    sput-wide v0, Lcom/shabakaty/cinemana/ca1/Restart108;->serviceRequested:J

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "android.os.Looper"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getMainLooper"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "android.os.Handler"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda1;-><init>()V

    aput-object v2, v0, v4

    const-string v2, "post"

    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized start(Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lcom/shabakaty/cinemana/ca1/Restart108;

    monitor-enter v0

    .line 43
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/shabakaty/cinemana/ca1/Restart108;->populated:Z

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->attach(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static status(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    const-string v0, "z"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static taskFor(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    const-string v0, "downloadTaskId"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "getDownloadsDao"

    invoke-static {v5, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    const-string v5, "s"

    if-eqz v2, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    aput-object v4, p0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v7

    const-string v0, "readDownloadsByTaskId"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "task identity mismatch"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_1
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v6

    const-string v3, "readAllDownloads"

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "x"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ".mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v6, :cond_3

    const-string v4, "r"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v4, v3

    move v6, v4

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ambiguous task"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v6

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "missing task"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static tick(I)V
    .locals 19

    .line 141
    move/from16 v1, p0

    const-class v2, Lcom/shabakaty/cinemana/ca1/Restart108;

    monitor-enter v2

    :try_start_0
    sget v0, Lcom/shabakaty/cinemana/ca1/Restart108;->generation:I

    if-eq v1, v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/shabakaty/cinemana/ca1/Restart108;->scanning:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 142
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->beginScan()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCAN_BEGIN pass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    .line 143
    const-wide/16 v7, 0xa

    const/4 v2, 0x5

    const-wide/16 v9, 0x5

    const-wide/16 v11, 0x78

    const-wide/16 v15, 0x1f4

    const/4 v13, 0x3

    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->scan()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 143
    :catch_0
    move-exception v0

    move-object v14, v0

    :try_start_2
    const-string v0, "queue_scan_error112"

    invoke-static {v0, v14}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->reconcile()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->scan()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SCAN_END pass="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v14, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->endScan()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sub-long v5, v17, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v5, v15

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PERF116_RECOVERY_MS="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    .line 146
    :cond_1
    const-class v14, Lcom/shabakaty/cinemana/ca1/Restart108;

    monitor-enter v14

    :try_start_3
    sput-boolean v4, Lcom/shabakaty/cinemana/ca1/Restart108;->scanning:Z

    sget v0, Lcom/shabakaty/cinemana/ca1/Restart108;->generation:I

    if-ne v1, v0, :cond_6

    sget v0, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    add-int/2addr v0, v3

    sput v0, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    sget-boolean v3, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z

    if-eqz v3, :cond_2

    const-wide/16 v2, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v13, :cond_3

    int-to-long v2, v0

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v13

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-long v2, v9, v0

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_1
    sget v0, Lcom/shabakaty/cinemana/ca1/Queue110;->pendingCount:I

    if-gtz v0, :cond_4

    sget v0, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pendingCount:I

    if-lez v0, :cond_5

    :cond_4
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_5
    sput-boolean v4, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda3;-><init>(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->next:Ljava/util/concurrent/ScheduledFuture;

    :cond_6
    monitor-exit v14

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 144
    :catch_1
    move-exception v0

    :try_start_4
    const-string v14, "restart_scan_error108"

    invoke-static {v14, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->endScan()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sub-long v5, v17, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v5, v15

    if-ltz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PERF116_RECOVERY_MS="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    .line 146
    :cond_7
    const-class v14, Lcom/shabakaty/cinemana/ca1/Restart108;

    monitor-enter v14

    :try_start_5
    sput-boolean v4, Lcom/shabakaty/cinemana/ca1/Restart108;->scanning:Z

    sget v0, Lcom/shabakaty/cinemana/ca1/Restart108;->generation:I

    if-ne v1, v0, :cond_c

    sget v0, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    add-int/2addr v0, v3

    sput v0, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    sget-boolean v3, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z

    if-eqz v3, :cond_8

    const-wide/16 v2, 0x1

    goto :goto_2

    :cond_8
    if-ge v0, v13, :cond_9

    int-to-long v2, v0

    goto :goto_2

    :cond_9
    sub-int/2addr v0, v13

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-long v2, v9, v0

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_2
    sget v0, Lcom/shabakaty/cinemana/ca1/Queue110;->pendingCount:I

    if-gtz v0, :cond_a

    sget v0, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pendingCount:I

    if-lez v0, :cond_b

    :cond_a
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_b
    sput-boolean v4, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda3;-><init>(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->next:Ljava/util/concurrent/ScheduledFuture;

    :cond_c
    monitor-exit v14

    .line 147
    :goto_3
    nop

    .line 148
    return-void

    .line 146
    :catchall_2
    move-exception v0

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 145
    :goto_4
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->endScan()V

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sub-long v5, v17, v5

    invoke-virtual {v14, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v14, v5, v15

    if-ltz v14, :cond_d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PERF116_RECOVERY_MS="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    .line 146
    :cond_d
    const-class v5, Lcom/shabakaty/cinemana/ca1/Restart108;

    monitor-enter v5

    :try_start_6
    sput-boolean v4, Lcom/shabakaty/cinemana/ca1/Restart108;->scanning:Z

    sget v6, Lcom/shabakaty/cinemana/ca1/Restart108;->generation:I

    if-ne v1, v6, :cond_12

    sget v6, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    add-int/2addr v6, v3

    sput v6, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    sget-boolean v3, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z

    if-eqz v3, :cond_e

    const-wide/16 v13, 0x1

    goto :goto_5

    :cond_e
    if-ge v6, v13, :cond_f

    int-to-long v13, v6

    goto :goto_5

    :cond_f
    sub-int/2addr v6, v13

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-long v2, v9, v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :goto_5
    sget v2, Lcom/shabakaty/cinemana/ca1/Queue110;->pendingCount:I

    if-gtz v2, :cond_10

    sget v2, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pendingCount:I

    if-lez v2, :cond_11

    :cond_10
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :cond_11
    sput-boolean v4, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Restart108;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda3;-><init>(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v13, v14, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->next:Ljava/util/concurrent/ScheduledFuture;

    :cond_12
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 147
    throw v0

    .line 146
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 141
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method static token(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string v0, "com.shabakaty.cinemana.features.MkvManifestStore"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "tokenFromPath"

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static trace(Ljava/lang/String;)V
    .locals 5

    .line 20
    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "com.shabakaty.cinemana.features.DownloadTrace"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RECOVERY119 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method static valid(Ljava/io/File;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "com.shabakaty.cinemana.ca1.Final100"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->cls(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "valid"

    invoke-static {v1, p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static declared-synchronized wake()V
    .locals 8

    const-class v0, Lcom/shabakaty/cinemana/ca1/Restart108;

    monitor-enter v0

    .line 24
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/shabakaty/cinemana/ca1/Restart108;->started:Z

    const/4 v2, 0x0

    sput v2, Lcom/shabakaty/cinemana/ca1/Restart108;->pass:I

    .line 25
    sget-boolean v3, Lcom/shabakaty/cinemana/ca1/Restart108;->scanning:Z

    if-eqz v3, :cond_0

    sput-boolean v1, Lcom/shabakaty/cinemana/ca1/Restart108;->dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 26
    :cond_0
    :try_start_1
    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->next:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v4, 0xfa

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->next:Ljava/util/concurrent/ScheduledFuture;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, v6, v4

    if-gtz v3, :cond_1

    monitor-exit v0

    return-void

    .line 27
    :cond_1
    :try_start_2
    sget-object v3, Lcom/shabakaty/cinemana/ca1/Restart108;->next:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    sget v2, Lcom/shabakaty/cinemana/ca1/Restart108;->generation:I

    add-int/2addr v2, v1

    sput v2, Lcom/shabakaty/cinemana/ca1/Restart108;->generation:I

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/shabakaty/cinemana/ca1/Restart108$$ExternalSyntheticLambda2;-><init>(I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->next:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static wanted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 49
    const-string v0, "|PAUSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|RUN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 52
    :cond_2
    const-string p0, "PAUSED"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 53
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "RETRY"

    const-string p1, "REGISTERED"

    const-string p2, "PENDING"

    const-string v0, "STARTED"

    const-string v1, "PROGRESS"

    filled-new-array {p2, v0, v1, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 54
    :cond_4
    const-string v0, "PENDING"

    const-string v1, "STARTED"

    const-string v2, "PROGRESS"

    const-string v3, "RETRY"

    const-string v4, "ERROR"

    const-string v5, "WARN"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
