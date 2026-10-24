.class public final Lcom/shabakaty/cinemana/ca1/Persistence123;
.super Ljava/lang/Object;
.source "Persistence123.java"


# static fields
.field static volatile context:Ljava/lang/Object;

.field static databaseStamp:Ljava/lang/String;

.field static inventory:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field static lastContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static lastError:J

.field static ownedContext:Ljava/lang/Object;

.field static ownedDownloads:Ljava/lang/Object;

.field static prefStamp:Ljava/lang/String;

.field static quick:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field static volatile ready:Z

.field static started:Z

.field static watchStamp:Ljava/lang/String;

.field static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    const-string v0, ""

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->databaseStamp:Ljava/lang/String;

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->prefStamp:Ljava/lang/String;

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->watchStamp:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method static captureDatabase(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const-string v0, "j"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->room(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->sql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "i"

    invoke-static {v1, v5, v4}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v4, "local"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Portable123;->LOCAL:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const-string v4, "Downloads"

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->tables:Ljava/util/List;

    invoke-static {v2, p1, v5}, Lcom/shabakaty/cinemana/ca1/Persistence123;->query(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p0, "n"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, p0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method static capturePreferences(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Portable123;->PREFS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ca1_episode_context107"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ca1_continue106"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->preference(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized changed()V
    .locals 6

    const-class v0, Lcom/shabakaty/cinemana/ca1/Persistence123;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-boolean v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->started:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->ready:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->quick:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda1;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x96

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->quick:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static closeOwned()V
    .locals 3

    .line 24
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedDownloads:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "d"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "close"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedDownloads:Ljava/lang/Object;

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedContext:Ljava/lang/Object;

    return-void
.end method

.method static contexts()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    sget-boolean v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ready:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->permitted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ca1_episode_context107"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->preference(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Persistence123;->lastContexts:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->time:J

    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->directory()Ljava/io/File;

    move-result-object v3

    const-string v4, "episodes.v1.bin"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Portable123;->save(Ljava/io/File;Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->lastContexts:Ljava/util/Map;

    :cond_2
    :goto_0
    return-void
.end method

.method static cycle()V
    .locals 6

    .line 76
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->permitted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ready:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->initialize()V

    :cond_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->watch()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->contexts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->fonts(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->error(Ljava/lang/Exception;)V

    :goto_0
    new-instance v1, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->time:J

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->capturePreferences(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Z)V

    const-string v0, "download-speed120.cfg"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->privateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Speed120;->readConfig(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->stamp(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->dbStamp()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->databaseStamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->prefStamp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 77
    :cond_3
    const-string v3, "local"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->captureDatabase(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)V

    const-string v3, "downloads"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->captureDatabase(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->mediaRoot()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Portable123;->finalInventory(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/io/File;)V

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->directory()Ljava/io/File;

    move-result-object v4

    const-string v5, "library.v1.bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/cinemana/ca1/Portable123;->save(Ljava/io/File;Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V

    sput-object v2, Lcom/shabakaty/cinemana/ca1/Persistence123;->databaseStamp:Ljava/lang/String;

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->prefStamp:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVED items="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "CinemanaDownloadItem"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Portable123;->table(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->error(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static dbStamp()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localDatabase.db"

    const-string v2, "shabakaty.cinemana.downloads.database"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "getDatabasePath"

    invoke-static {v3, v2, v4}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const-string v3, ""

    const-string v4, "-wal"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static directory()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->mediaRoot()Ljava/io/File;

    move-result-object v1

    const-string v2, "work"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static error(Ljava/lang/Exception;)V
    .locals 7

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/shabakaty/cinemana/ca1/Persistence123;->lastError:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    sput-wide v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->lastError:J

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RETRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->log(Ljava/lang/String;)V

    return-void
.end method

.method static fonts(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    const-string v0, "subtitle_fonts"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->privateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->directory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    invoke-static {v2, v1, v3}, Lcom/shabakaty/cinemana/ca1/Fonts123;->sync(Ljava/io/File;Ljava/io/File;Z)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/Fonts123;->sync(Ljava/io/File;Ljava/io/File;Z)I

    move-result v1

    :goto_0
    if-eqz p0, :cond_1

    if-lez v1, :cond_1

    :try_start_0
    const-string p0, "com.shabakaty.downloader.FontImportStore"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "b"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "a"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FONTS_RESTORED count="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static initialize()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    const-string v0, "local"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->room(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->sql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "downloads"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->room(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->sql(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->directory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "public storage unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    :goto_0
    const-string v4, "ca1_portable123"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Persistence123;->prefs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "initialized"

    aput-object v9, v7, v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    const-string v10, "getBoolean"

    invoke-static {v4, v10, v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 63
    if-nez v5, :cond_7

    new-instance v5, Ljava/io/File;

    const-string v7, "library.v1.bin"

    invoke-direct {v5, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Portable123;->best(Ljava/io/File;)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    const-string v10, "watch.v1.bin"

    invoke-direct {v7, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/Portable123;->best(Ljava/io/File;)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    move-result-object v7

    new-instance v10, Ljava/io/File;

    const-string v12, "episodes.v1.bin"

    invoke-direct {v10, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Portable123;->best(Ljava/io/File;)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    move-result-object v3

    .line 64
    if-eqz v5, :cond_3

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->mediaRoot()Ljava/io/File;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/shabakaty/cinemana/ca1/Portable123;->finalInventory(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/io/File;)V

    const-string v10, "CinemanaDownloadItem"

    invoke-static {v1, v0, v10}, Lcom/shabakaty/cinemana/ca1/Persistence123;->query(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v1

    .line 66
    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->restoreDatabase(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->restoreDatabase(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVENTORY_RESTORED items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5, v10}, Lcom/shabakaty/cinemana/ca1/Portable123;->table(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->log(Ljava/lang/String;)V

    .line 67
    :cond_2
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Persistence123;->restorePreferences(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V

    iget v0, v5, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    if-ltz v0, :cond_3

    const-string v0, "download-speed120.cfg"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->privateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->privateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget v1, v5, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Speed120;->save(Ljava/io/File;I)V

    .line 69
    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->restorePreferences(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->restorePreferences(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V

    :cond_5
    :try_start_0
    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Persistence123;->fonts(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->error(Ljava/lang/Exception;)V

    :goto_1
    const-string v0, "edit"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "putBoolean"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "commit"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->portableReload(Ljava/lang/Object;)V

    const-string v0, "RESTORE_CHECK_COMPLETE"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "restore marker failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_7
    :goto_2
    sput-boolean v11, Lcom/shabakaty/cinemana/ca1/Persistence123;->ready:Z

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V

    .line 72
    return-void
.end method

.method public static declared-synchronized inventoryChanged()V
    .locals 6

    const-class v0, Lcom/shabakaty/cinemana/ca1/Persistence123;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-boolean v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->started:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->ready:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->inventory:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda3;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x12c

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->inventory:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$changed$2()V
    .locals 1

    .line 19
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->watch()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->contexts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$inventoryChanged$3()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->cycle()V

    return-void
.end method

.method static synthetic lambda$start$1()V
    .locals 0

    .line 18
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->cycle()V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "cinemana-portable123"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 5

    .line 22
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.features.DownloadTrace"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PORTABLE123 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static mediaRoot()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/io/File;

    const-string v1, "android.os.Environment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getExternalStorageDirectory"

    invoke-static {v1, v3, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "Cinemana"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static pending()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->started:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ready:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static permitted()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "android.os.Environment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isExternalStorageManager"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return v1

    :catch_0
    move-exception v3

    :cond_0
    :try_start_1
    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    const-string v4, "checkSelfPermission"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_1
    move-exception v3

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "checkCallingOrSelfPermission"

    invoke-static {v3, v0, v4}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static preference(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->prefs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getAll"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "com.shabakaty.cinemana_preferences"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Portable123;->DEFAULT_KEYS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/util/Set;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/TreeSet;

    check-cast v2, Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    :cond_1
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static prefs(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "getSharedPreferences"

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static privateFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getFilesDir"

    invoke-static {v1, v3, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static query(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    const-string v0, "close"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Portable123;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "y0"

    invoke-static {p0, v3, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    const-string v2, "getColumnNames"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    invoke-direct {v3, p1, p2, v2}, Lcom/shabakaty/cinemana/ca1/Portable123$Table;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "moveToNext"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, p2, v5}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const p2, 0xc350

    if-ge p1, p2, :cond_1

    array-length p1, v2

    new-array p2, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_0

    const-string v6, "getType"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p0, v6, v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance p1, Ljava/io/IOException;

    goto :goto_3

    :pswitch_0
    const-string v6, "getBlob"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p0, v6, v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p2, v5

    goto :goto_2

    :pswitch_1
    const-string v6, "getString"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p0, v6, v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p2, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "getDouble"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p0, v6, v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p2, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "getLong"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p0, v6, v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p2, v5

    goto :goto_2

    :pswitch_4
    const/4 v6, 0x0

    aput-object v6, p2, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_3
    const-string p2, "unknown sqlite type"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p1

    :cond_0
    iget-object p1, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "row limit"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :catchall_0
    move-exception p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, p2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static restoreDatabase(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    move-object/from16 v0, p1

    const-string v1, "userId"

    const-string v2, "settings"

    const-string v3, "close"

    const-string v4, "j"

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->room(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Persistence123;->sql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "i"

    invoke-static {v5, v9, v8}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-object/from16 v8, p0

    :try_start_0
    iget-object v8, v8, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->tables:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    iget-object v10, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->db:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 50
    const-string v10, "y0"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT * FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->name:Ljava/lang/String;

    invoke-static {v14}, Lcom/shabakaty/cinemana/ca1/Portable123;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " LIMIT 0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v6, v10, v12}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v12, Ljava/util/HashSet;

    const-string v13, "getColumnNames"

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v10, v13, v14}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v10, v3, v13}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v10, Ljava/util/HashSet;

    iget-object v13, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v13, "incompatible schema"

    if-eqz v10, :cond_7

    .line 52
    :try_start_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget-object v11, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_2

    iget-object v11, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0x2c

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Portable123;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3f

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INSERT OR IGNORE INTO "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Portable123;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ") VALUES ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    iget-object v11, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->name:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v6, v0, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->query(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 54
    :goto_2
    const/4 v12, 0x2

    const-string v13, "k0"

    if-eqz v11, :cond_4

    :try_start_4
    iget-object v14, v11, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    iget-object v14, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v15, :cond_4

    iget-object v10, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v10}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v9, v1}, Lcom/shabakaty/cinemana/ca1/Portable123;->index(Lcom/shabakaty/cinemana/ca1/Portable123$Table;Ljava/lang/String;)I

    move-result v9

    iget-object v14, v11, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v11, v14, v1}, Lcom/shabakaty/cinemana/ca1/Portable123;->get(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v9

    new-array v9, v12, [Ljava/lang/Object;

    const-string v11, "INSERT OR IGNORE"

    const-string v12, "INSERT OR REPLACE"

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v9, v11

    const/4 v7, 0x1

    aput-object v10, v9, v7

    invoke-static {v6, v13, v9}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 55
    :cond_4
    iget-object v9, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_5

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v16, v11, v16

    aput-object v16, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v12, v14

    const/4 v14, 0x1

    aput-object v15, v12, v14

    invoke-static {v6, v13, v12}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x2

    goto :goto_3

    .line 52
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v3, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    .line 49
    :cond_8
    :goto_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 56
    :cond_9
    const-string v0, "n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void

    .line 57
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method static restorePreferences(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->prefs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getAll"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "edit"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, "putString"

    goto :goto_2

    :cond_1
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_2

    const-string v6, "putLong"

    goto :goto_2

    :cond_2
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    const-string v6, "putInt"

    goto :goto_2

    :cond_3
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_4

    const-string v6, "putFloat"

    goto :goto_2

    :cond_4
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    const-string v6, "putBoolean"

    goto :goto_2

    :cond_5
    instance-of v6, v5, Ljava/util/Set;

    if-eqz v6, :cond_6

    const-string v6, "putStringSet"

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-static {v1, v6, v7}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid preference type"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "commit"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "preference restore failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_a
    return-void
.end method

.method static room(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    const-string v0, "local"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "a"

    if-eqz p0, :cond_0

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    const-string v2, "h"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 28
    :cond_0
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getApplicationContext"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    const-string v2, "c"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedDownloads:Ljava/lang/Object;

    if-eq v2, p0, :cond_1

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->closeOwned()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 30
    :cond_2
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedContext:Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    if-eq p0, v2, :cond_3

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->closeOwned()V

    :cond_3
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedDownloads:Ljava/lang/Object;

    if-nez p0, :cond_4

    const-string p0, "com.shabakaty.cinemana.features.MkvExporter"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    aput-object v3, v2, v0

    const-string v0, "getDownloadsDao"

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedDownloads:Ljava/lang/Object;

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedContext:Ljava/lang/Object;

    :cond_4
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ownedDownloads:Ljava/lang/Object;

    return-object p0
.end method

.method static sql(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    const-string v0, "d"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getWritableDatabase"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static stamp(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized start(Ljava/lang/Object;)V
    .locals 8

    const-class v0, Lcom/shabakaty/cinemana/ca1/Persistence123;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-boolean v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "getApplicationContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Persistence123;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->context:Ljava/lang/Object;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/shabakaty/cinemana/ca1/Persistence123;->started:Z

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Persistence123$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Persistence123;->error(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static watch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    sget-boolean v0, Lcom/shabakaty/cinemana/ca1/Persistence123;->ready:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->permitted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->time:J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->capturePreferences(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Persistence123;->stamp(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Persistence123;->watchStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->directory()Ljava/io/File;

    move-result-object v3

    const-string v4, "watch.v1.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->save(Ljava/io/File;Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Persistence123;->watchStamp:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
